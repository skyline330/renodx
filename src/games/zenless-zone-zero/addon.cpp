/*
 * Copyright (C) 2023 Carlos Lopez
 * SPDX-License-Identifier: MIT
 */

#define ImTextureID ImU64

// #define DEBUG_LEVEL_0

#define RENODX_MODS_SWAPCHAIN_VERSION 2

#include <algorithm>
#include <atomic>
#include <cstddef>
#include <cstring>
#include <filesystem>
#include <mutex>
#include <shared_mutex>
#include <string>
#include <vector>

#include <deps/imgui/imgui.h>
#include <include/reshade.hpp>

#include <embed/shaders.h>

#include "../../mods/shader.hpp"
#include "../../mods/swapchain.hpp"
#include "../../utils/detour.hpp"
#include "../../utils/dlss_hook.hpp"
#include "../../utils/path.hpp"
#include "../../utils/random.hpp"
#include "../../utils/settings.hpp"
#include "../../utils/vtable.hpp"
#include "./shared.h"

namespace {

renodx::mods::shader::CustomShaders custom_shaders = {
    __ALL_CUSTOM_SHADERS,
};

ShaderInjectData shader_injection;

float current_settings_mode = 0;

const std::string build_date = __DATE__;
const std::string build_time = __TIME__;

// Forward declarations for preset functions
void OnPresetOff();
void OnPresetHdrLook();
bool IsCustomToneMapperEnabled() { return shader_injection.tone_map_type != RENODX_TONE_MAP_TYPE_VANILLA; }
bool IsRenoDRTEnabled() { return shader_injection.tone_map_type == RENODX_TONE_MAP_TYPE_RENODRT; }
bool IsPsychoV17Enabled() { return shader_injection.tone_map_type == RENODX_TONE_MAP_TYPE_PSYCHOV17; }

// Streamline v2 hooks must precede the game's Streamline/DXGI/D3D12 setup, which needs ReShade's early addon load.
HMODULE addon_module = nullptr;
bool has_early_load_entry = false;
bool early_load_entry_added = false;

std::filesystem::path GetAddonPath() {
  std::wstring path(32768, L'\0');
  path.resize(GetModuleFileNameW(addon_module, path.data(), static_cast<DWORD>(path.size())));
  return path;
}

// ReShade config values are UTF-8.
std::filesystem::path Utf8Path(const std::string& value) {
  return std::u8string(value.begin(), value.end());
}

// ReShade loads [ADDON] LoadFromDllMain entries relative to its base path, or to [ADDON] AddonPath under it.
std::filesystem::path GetAddonSearchPath() {
  auto path = renodx::utils::path::GetReShadeBasePath();
  size_t size = 0;
  if (reshade::get_config_value(nullptr, "ADDON", "AddonPath", nullptr, &size) && size > 1) {
    std::string value(size, '\0');
    reshade::get_config_value(nullptr, "ADDON", "AddonPath", value.data(), &size);
    value.resize(strnlen(value.data(), value.size()));
    path /= Utf8Path(value);
  }
  return path;
}

// ReShade stores [ADDON] LoadFromDllMain as a null-separated list.
std::vector<std::string> ReadLoadFromDllMain() {
  size_t size = 0;
  if (!reshade::get_config_value(nullptr, "ADDON", "LoadFromDllMain", nullptr, &size) || size == 0) return {};
  std::string raw(size, '\0');
  if (!reshade::get_config_value(nullptr, "ADDON", "LoadFromDllMain", raw.data(), &size)) return {};

  // Elements can be empty, so walk the returned byte count instead of stopping at the first empty one.
  std::vector<std::string> values;
  for (size_t offset = 0; offset < size;) {
    const size_t length = strnlen(raw.data() + offset, size - offset);
    if (length != 0) values.emplace_back(raw.data() + offset, length);
    offset += length + 1;
  }
  return values;
}

// Only an entry that resolves to this module counts; a stale entry with the same file name fails to load early.
bool HasLoadFromDllMainEntry(const std::vector<std::string>& values) {
  const auto search_path = GetAddonSearchPath();
  const auto addon_path = GetAddonPath();
  return std::ranges::any_of(values, [&](const auto& value) {
    std::error_code error;
    return std::filesystem::equivalent(search_path / Utf8Path(value), addon_path, error);
  });
}

void AddLoadFromDllMainEntry() {
  early_load_entry_added = true;
  auto values = ReadLoadFromDllMain();
  if (HasLoadFromDllMainEntry(values)) return;
  // Replace stale entries for this addon with its path relative to the search path (absolute on another drive).
  const auto addon_path = GetAddonPath();
  std::erase_if(values, [&](const auto& value) {
    return _wcsicmp(Utf8Path(value).filename().c_str(), addon_path.filename().c_str()) == 0;
  });
  std::error_code error;
  auto entry = std::filesystem::relative(addon_path, GetAddonSearchPath(), error);
  if (entry.empty()) entry = addon_path;
  const auto utf8_entry = entry.u8string();
  values.emplace_back(utf8_entry.begin(), utf8_entry.end());

  std::string serialized;
  for (const auto& value : values) {
    serialized.append(value);
    serialized.push_back('\0');
  }
  reshade::set_config_value(nullptr, "ADDON", "LoadFromDllMain", serialized.c_str(), serialized.size());
  reshade::log::message(reshade::log::level::info, "Added this addon to [ADDON] LoadFromDllMain. Restart required.");
}

// Streamline answers this IID with the object below its proxy. The Streamline v2 hooks put ReShade's device, queues
// and swapchain above Streamline's, and ReShade forwards unknown IIDs, so tools that unwrap Streamline proxies
// (OptiScaler) get native objects and work past ReShade and Streamline. Only Streamline may unwrap through ReShade.
constexpr GUID IID_STREAMLINE_BASE_INTERFACE = {0xADEC44E2, 0x61F0, 0x45C3, {0xAD, 0x9F, 0x1B, 0x37, 0x37, 0x92, 0x84, 0xFF}};

using QueryInterfaceFn = HRESULT(STDMETHODCALLTYPE*)(IUnknown*, REFIID, void**);

// Original QueryInterface per Streamline proxy class (device, command queue, swapchain); each class shares its vtable
// across instances. Published before the vtable can reach the hook, and never cleared.
std::atomic<QueryInterfaceFn> streamline_query_interfaces[3] = {};
std::mutex streamline_query_interface_mutex;

HMODULE GetModuleFromAddress(void* address) {
  HMODULE module = nullptr;
  GetModuleHandleExW(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS | GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT,
                     static_cast<LPCWSTR>(address), &module);
  return module;
}

template <size_t Index>
HRESULT STDMETHODCALLTYPE StreamlineQueryInterface(IUnknown* proxy, REFIID riid, void** object) {
  if (riid == IID_STREAMLINE_BASE_INTERFACE) {
    void* callers[2] = {};
    const auto count = RtlCaptureStackBackTrace(1, 2, callers, nullptr);
    // ReShade forwards with a call or a tail call, so look past its frame when present.
    HMODULE requester = count > 0 ? GetModuleFromAddress(callers[0]) : nullptr;
    if (requester == reshade::internal::get_reshade_module_handle()) {
      requester = count > 1 ? GetModuleFromAddress(callers[1]) : nullptr;
    }
    wchar_t path[MAX_PATH] = L"";
    if (requester != nullptr && GetModuleFileNameW(requester, path, ARRAYSIZE(path)) != 0
        && _wcsnicmp(std::filesystem::path(path).filename().c_str(), L"sl.", 3) != 0) {
      if (object != nullptr) *object = nullptr;
      return E_NOINTERFACE;
    }
  }
  return streamline_query_interfaces[Index].load(std::memory_order_acquire)(proxy, riid, object);
}

constexpr QueryInterfaceFn STREAMLINE_QUERY_INTERFACE_HOOKS[] = {
    &StreamlineQueryInterface<0>,
    &StreamlineQueryInterface<1>,
    &StreamlineQueryInterface<2>,
};

void GuardStreamlineUnwrap(uint64_t native, size_t index) {
  auto* proxy = reinterpret_cast<IUnknown*>(native);
  if (proxy == nullptr || streamline_query_interfaces[index].load(std::memory_order_acquire) != nullptr) return;
  IUnknown* base = nullptr;
  if (FAILED(proxy->QueryInterface(IID_STREAMLINE_BASE_INTERFACE, reinterpret_cast<void**>(&base)))) return;
  base->Release();

  const std::scoped_lock lock(streamline_query_interface_mutex);
  if (streamline_query_interfaces[index].load(std::memory_order_relaxed) != nullptr) return;
  auto** entry = *reinterpret_cast<void***>(proxy);
  void* original = *entry;
  if (std::ranges::find(STREAMLINE_QUERY_INTERFACE_HOOKS, reinterpret_cast<QueryInterfaceFn>(original))
      != std::end(STREAMLINE_QUERY_INTERFACE_HOOKS)) {
    return;
  }
  streamline_query_interfaces[index].store(reinterpret_cast<QueryInterfaceFn>(original), std::memory_order_release);
  try {
    renodx::utils::vtable::internal::Replace(entry, original, reinterpret_cast<void*>(STREAMLINE_QUERY_INTERFACE_HOOKS[index]));
  } catch (const std::exception& e) {
    // Replace can roll back after the hook was briefly reachable, so the original stays published. This also leaves
    // one install attempt per class; without the guard OptiScaler unwraps as before.
    reshade::log::message(reshade::log::level::warning, e.what());
    return;
  }
  // The hook is never removed: ReShade does not unload early-loaded addons, and Streamline may be gone by exit.
  HMODULE pinned = nullptr;
  GetModuleHandleExW(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS | GET_MODULE_HANDLE_EX_FLAG_PIN,
                     reinterpret_cast<LPCWSTR>(addon_module), &pinned);
  reshade::log::message(reshade::log::level::info, "Guarding Streamline unwrap behind ReShade.");
}

// Registered after the Streamline v2 hooks, so these see objects Streamline has already upgraded.
void OnInitStreamlineDevice(reshade::api::device* device) {
  GuardStreamlineUnwrap(device->get_native(), 0);
}

void OnInitStreamlineCommandQueue(reshade::api::command_queue* queue) {
  GuardStreamlineUnwrap(queue->get_native(), 1);
}

// FSR frame generation: FidelityFX creates its back buffer copies and interpolation outputs on the native device, so
// RenoDX never sees them and the game's output is clipped to their R10G10B10A2 format. Track them with FP16 clones,
// run frame generation on the clones as linear HDR and leave the HDR10 encode to the swapchain proxy.
namespace ffx {

// Subset of the FidelityFX API 2.1 headers (AMD FidelityFX SDK v2.1.0, MIT License).
struct Header {
  uint64_t type;
  Header* next;
};

struct ResourceDescription {
  uint32_t type;
  uint32_t format;
  uint32_t width;   // or buffer size
  uint32_t height;  // or buffer stride
  uint32_t depth;   // or buffer alignment
  uint32_t mip_count;
  uint32_t flags;
  uint32_t usage;
};

struct Resource {
  void* resource;
  ResourceDescription description;
  uint32_t state;
};

struct Rect {
  int32_t left, top, width, height;
};

struct CreateContextFrameGeneration {
  Header header;
  uint32_t flags;
  uint32_t display_size[2];
  uint32_t max_render_size[2];
  uint32_t back_buffer_format;
};

// Common prefix of the Wrap, New and ForHwnd swapchain creation descs.
struct CreateContextSwapChain {
  Header header;
  IDXGISwapChain4** swapchain;
};

struct CallbackFrameGenerationPresent {
  Header header;
  void* device;
  void* command_list;
  Resource current_back_buffer;
  Resource current_ui;
  Resource output_swap_chain_buffer;
  bool is_generated_frame;
  uint64_t frame_id;
};

using PresentCallback = uint32_t (*)(CallbackFrameGenerationPresent*, void*);

struct ConfigureFrameGeneration {
  Header header;
  void* swapchain;
  PresentCallback present_callback;
  void* present_callback_user_context;
  void* frame_generation_callback;
  void* frame_generation_callback_user_context;
  bool frame_generation_enabled;
  bool allow_async_workloads;
  Resource hudless_color;
  uint32_t flags;
  bool only_present_generated;
  Rect generation_rect;
  uint64_t frame_id;
};

struct ConfigureSwapChainRegisterUiResource {
  Header header;
  Resource ui_resource;
  uint32_t flags;
};

struct DispatchFrameGeneration {
  Header header;
  void* command_list;
  Resource present_color;
  Resource outputs[4];
  uint32_t num_generated_frames;
  bool reset;
  uint32_t back_buffer_transfer_function;
  float min_max_luminance[2];
  Rect generation_rect;
  uint64_t frame_id;
};

// Guards the copied layouts against an edit that drifts from the SDK headers (x64).
static_assert(sizeof(Resource) == 48 && offsetof(Resource, state) == 40);
static_assert(sizeof(CreateContextFrameGeneration) == 40 && offsetof(CreateContextFrameGeneration, back_buffer_format) == 36);
static_assert(sizeof(CallbackFrameGenerationPresent) == 192 && offsetof(CallbackFrameGenerationPresent, current_ui) == 80
              && offsetof(CallbackFrameGenerationPresent, frame_id) == 184);
static_assert(sizeof(ConfigureFrameGeneration) == 144 && offsetof(ConfigureFrameGeneration, hudless_color) == 64
              && offsetof(ConfigureFrameGeneration, frame_id) == 136);
static_assert(sizeof(ConfigureSwapChainRegisterUiResource) == 72 && offsetof(ConfigureSwapChainRegisterUiResource, flags) == 64);
static_assert(sizeof(DispatchFrameGeneration) == 312 && offsetof(DispatchFrameGeneration, back_buffer_transfer_function) == 272
              && offsetof(DispatchFrameGeneration, frame_id) == 304);

constexpr uint64_t CREATE_CONTEXT_FRAMEGENERATION = 0x00020001;
constexpr uint64_t CONFIGURE_FRAMEGENERATION = 0x00020002;
constexpr uint64_t DISPATCH_FRAMEGENERATION = 0x00020003;
constexpr uint64_t CREATE_CONTEXT_SWAPCHAIN_WRAP_DX12 = 0x00030001;
constexpr uint64_t CONFIGURE_SWAPCHAIN_REGISTERUIRESOURCE_DX12 = 0x00030002;
constexpr uint64_t CREATE_CONTEXT_SWAPCHAIN_NEW_DX12 = 0x00030005;
constexpr uint64_t CREATE_CONTEXT_SWAPCHAIN_FOR_HWND_DX12 = 0x00030006;
constexpr uint32_t SURFACE_FORMAT_R16G16B16A16_FLOAT = 4;
constexpr uint32_t FRAMEGENERATION_ENABLE_HIGH_DYNAMIC_RANGE = 1u << 5;
constexpr uint32_t BACKBUFFER_TRANSFER_FUNCTION_SCRGB = 2;

using CreateContextFn = uint32_t (*)(void**, Header*, const void*);
using ConfigureFn = uint32_t (*)(void**, const Header*);
using DispatchFn = uint32_t (*)(void**, const Header*);

CreateContextFn real_create_context = nullptr;
ConfigureFn real_configure = nullptr;
DispatchFn real_dispatch = nullptr;
std::atomic<PresentCallback> game_present_callback = nullptr;
// The UI clone last registered with FidelityFX, the source of its per-present UI copy. Only RenoDX clones: the game
// never copies from those itself.
std::atomic<void*> registered_ui = nullptr;

renodx::utils::resource::ResourceUpgradeInfo clone_info = {
    .new_format = reshade::api::format::r16g16b16a16_float,
    .usage_set = static_cast<uint32_t>(
        reshade::api::resource_usage::shader_resource
        | reshade::api::resource_usage::render_target
        | reshade::api::resource_usage::unordered_access),
    .use_resource_view_cloning_and_upgrade = true,
};

// The swapchain below FidelityFX's frame generation swapchain, and the FidelityFX resources tracked for it.
std::mutex mutex;
reshade::api::swapchain* swapchain = nullptr;
IDXGISwapChain4* frame_generation_swapchain = nullptr;
std::vector<reshade::api::resource> tracked_resources;
thread_local bool creating_swapchain = false;

void Track(void* native, reshade::api::resource_usage initial_state) {
  const reshade::api::resource resource = {reinterpret_cast<uint64_t>(native)};
  const std::scoped_lock lock(mutex);
  if (swapchain == nullptr || native == nullptr || std::ranges::find(tracked_resources, resource) != tracked_resources.end()) return;
  auto* device = swapchain->get_device();
  renodx::utils::resource::OnInitResource(device, device->get_resource_desc(resource), nullptr, initial_state, resource);
  renodx::utils::resource::UpdateResourceInfo(resource, [](renodx::utils::resource::ResourceInfo* info) {
    info->clone_target = &clone_info;
    info->clone_enabled = true;
    info->clone_can_deactivate = false;
  });
  tracked_resources.push_back(resource);
}

// The game renders into the back buffer copies right after GetBuffer, so track them before it gets them.
void TrackBackBuffers() {
  DXGI_SWAP_CHAIN_DESC1 desc = {};
  if (frame_generation_swapchain == nullptr || FAILED(frame_generation_swapchain->GetDesc1(&desc))) return;
  for (UINT index = 0; index < desc.BufferCount; ++index) {
    ID3D12Resource* buffer = nullptr;
    if (FAILED(frame_generation_swapchain->GetBuffer(index, IID_PPV_ARGS(&buffer)))) continue;
    Track(buffer, reshade::api::resource_usage::present);
    buffer->Release();
  }
}

// FidelityFX releases its resources before resizing or destroying the swapchain below it.
void ReleaseTracked() {
  const std::scoped_lock lock(mutex);
  for (const auto resource : tracked_resources) {
    renodx::utils::resource::OnDestroyResource(swapchain->get_device(), resource);
  }
  tracked_resources.clear();
}

bool UseClone(Resource* resource) {
  if (resource->resource == nullptr) return false;
  const auto clone = renodx::utils::resource::upgrade::CloneResource({reinterpret_cast<uint64_t>(resource->resource)});
  if (clone.handle == 0u) {
    // The context is already HDR, so this can't fall back cleanly; at least make it visible once.
    static std::atomic_flag warned;
    if (!warned.test_and_set()) {
      renodx::utils::log::w("No HDR copy for a FidelityFX resource; FSR frame generation output may be clipped.");
    }
    return false;
  }
  resource->resource = reinterpret_cast<void*>(clone.handle);
  resource->description.format = SURFACE_FORMAT_R16G16B16A16_FLOAT;
  return true;
}

// FidelityFX recreates its UI copy on the native device whenever frame generation turns on, often at an address where
// RenoDX still holds a destroyed resource's record. RenoDX's copy redirect trusts that record: its copy of the UI was
// skipped (UI missing for a frame) or written to the old resource's freed clone (crash). Its first use is this copy,
// so reset the record first; registered before RenoDX's own copy_resource handler.
bool OnCopyResource(reshade::api::command_list* cmd_list, reshade::api::resource source, reshade::api::resource dest) {
  if (source.handle == 0u || source.handle != reinterpret_cast<uint64_t>(registered_ui.load())) return false;
  auto* device = cmd_list->get_device();
  const auto desc = device->get_resource_desc(dest);
  bool stale = true;
  renodx::utils::resource::GetResourceInfo(dest, [&](const renodx::utils::resource::ResourceInfo& info) {
    stale = info.destroyed || info.clone_target != nullptr || info.desc.texture.format != desc.texture.format
            || info.desc.texture.width != desc.texture.width || info.desc.texture.height != desc.texture.height;
  });
  if (stale) {
    renodx::utils::resource::OnInitResource(device, desc, nullptr, reshade::api::resource_usage::copy_dest, dest);
  }
  return false;
}

uint32_t OnPresentCallback(CallbackFrameGenerationPresent* params, void* user_context) {
  UseClone(&params->current_back_buffer);
  return game_present_callback.load()(params, user_context);
}

uint32_t OnCreateContext(void** context, Header* desc, const void* allocation_callbacks) {
  IDXGISwapChain4** created_swapchain = nullptr;
  for (auto* item = desc; item != nullptr; item = item->next) {
    if (item->type == CREATE_CONTEXT_FRAMEGENERATION) {
      auto* frame_generation = reinterpret_cast<CreateContextFrameGeneration*>(item);
      frame_generation->flags |= FRAMEGENERATION_ENABLE_HIGH_DYNAMIC_RANGE;
      frame_generation->back_buffer_format = SURFACE_FORMAT_R16G16B16A16_FLOAT;
    } else if (item->type == CREATE_CONTEXT_SWAPCHAIN_WRAP_DX12
               || item->type == CREATE_CONTEXT_SWAPCHAIN_NEW_DX12
               || item->type == CREATE_CONTEXT_SWAPCHAIN_FOR_HWND_DX12) {
      created_swapchain = reinterpret_cast<CreateContextSwapChain*>(item)->swapchain;
    }
  }

  creating_swapchain = created_swapchain != nullptr;
  const auto result = real_create_context(context, desc, allocation_callbacks);
  creating_swapchain = false;
  if (result == 0 && created_swapchain != nullptr) {
    frame_generation_swapchain = *created_swapchain;
    TrackBackBuffers();
  }
  return result;
}

uint32_t OnConfigure(void** context, const Header* desc) {
  if (desc == nullptr) return real_configure(context, desc);
  if (desc->type == CONFIGURE_FRAMEGENERATION) {
    auto config = *reinterpret_cast<const ConfigureFrameGeneration*>(desc);
    if (config.present_callback != nullptr && config.present_callback != &OnPresentCallback) {
      game_present_callback.store(config.present_callback);
      config.present_callback = &OnPresentCallback;
    }
    return real_configure(context, &config.header);
  }
  if (desc->type == CONFIGURE_SWAPCHAIN_REGISTERUIRESOURCE_DX12) {
    // The game draws its UI into RenoDX's clone; FidelityFX copies the registered resource for composition.
    auto register_ui = *reinterpret_cast<const ConfigureSwapChainRegisterUiResource*>(desc);
    registered_ui = UseClone(&register_ui.ui_resource) ? register_ui.ui_resource.resource : nullptr;
    return real_configure(context, &register_ui.header);
  }
  return real_configure(context, desc);
}

uint32_t OnDispatch(void** context, const Header* desc) {
  if (desc == nullptr || desc->type != DISPATCH_FRAMEGENERATION) return real_dispatch(context, desc);

  auto dispatch = *reinterpret_cast<const DispatchFrameGeneration*>(desc);
  // Without the back buffer clone there is no HDR source; leave the dispatch as the game sent it.
  if (!UseClone(&dispatch.present_color)) return real_dispatch(context, desc);
  for (uint32_t index = 0; index < dispatch.num_generated_frames && index < std::size(dispatch.outputs); ++index) {
    Track(dispatch.outputs[index].resource, reshade::api::resource_usage::unordered_access);
    UseClone(&dispatch.outputs[index]);
  }
  // Settings are written under the global mutex, from the overlay on FidelityFX's presenter thread.
  float peak_white_nits = 0.f;
  float graphics_white_nits = 0.f;
  {
    const std::shared_lock lock(renodx::utils::mutex::global_mutex);
    peak_white_nits = shader_injection.peak_white_nits;
    graphics_white_nits = shader_injection.graphics_white_nits;
  }
  // scRGB is 80 nits per 1.0, the clones hold 1.0 at UI brightness.
  const float scale = 80.f / graphics_white_nits;
  dispatch.back_buffer_transfer_function = BACKBUFFER_TRANSFER_FUNCTION_SCRGB;
  dispatch.min_max_luminance[0] *= scale;
  dispatch.min_max_luminance[1] = peak_white_nits * scale;
  return real_dispatch(context, &dispatch.header);
}

// Hook the frame generation provider rather than the loader: the loader forwards to its exports, and OptiScaler calls
// them directly. The game's version queries load it at startup, before frame generation contexts exist.
void Install() {
  static std::mutex install_mutex;
  const std::scoped_lock lock(install_mutex);
  if (real_create_context != nullptr) return;
  // Pinned: the detours stay installed for the lifetime of the process.
  HMODULE provider = nullptr;
  if (!GetModuleHandleExW(GET_MODULE_HANDLE_EX_FLAG_PIN, L"amd_fidelityfx_framegeneration_dx12.dll", &provider)) return;
  static const renodx::utils::detour::Export EXPORTS[] = {
      {"ffxCreateContext", &real_create_context, &OnCreateContext},
      {"ffxConfigure", &real_configure, &OnConfigure},
      {"ffxDispatch", &real_dispatch, &OnDispatch},
  };
  // All or nothing: a partial hook would leave FidelityFX half configured for HDR.
  if (std::ranges::any_of(EXPORTS, [&](const auto& item) { return GetProcAddress(provider, item.name) == nullptr; })
      || !renodx::utils::detour::Install(provider, EXPORTS).Complete()) {
    renodx::utils::log::w("Failed to hook FidelityFX API; FSR frame generation will not use HDR.");
    return;
  }
  // The detours are never removed, so keep this module loaded even when ReShade unloads late-loaded addons.
  HMODULE pinned = nullptr;
  GetModuleHandleExW(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS | GET_MODULE_HANDLE_EX_FLAG_PIN,
                     reinterpret_cast<LPCWSTR>(addon_module), &pinned);
  reshade::log::message(reshade::log::level::info, "Hooked FidelityFX API for FSR frame generation.");
}

void OnInitSwapchain(reshade::api::swapchain* new_swapchain, bool resize) {
  if (new_swapchain->get_device()->get_api() == reshade::api::device_api::d3d12) Install();
  if (creating_swapchain) {
    const std::scoped_lock lock(mutex);
    swapchain = new_swapchain;
  } else if (resize && new_swapchain == swapchain) {
    TrackBackBuffers();
  }
}

void OnDestroySwapchain(reshade::api::swapchain* old_swapchain, bool resize) {
  if (old_swapchain != swapchain) return;
  ReleaseTracked();
  if (resize) return;
  const std::scoped_lock lock(mutex);
  swapchain = nullptr;
  frame_generation_swapchain = nullptr;
}

}  // namespace ffx

renodx::utils::settings::Settings settings = {
    new renodx::utils::settings::Setting{
        .key = "SettingsMode",
        .binding = &current_settings_mode,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .can_reset = false,
        .label = "Settings Mode",
        .labels = {"Simple", "Advanced"},
        .is_global = true,
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapPeakNits",
        .binding = &shader_injection.peak_white_nits,
        .default_value = 1000.f,
        .label = "Peak Brightness",
        .section = "Tone Mapping",
        .tooltip = "Sets the value of peak white in nits",
        .min = 80.f,
        .max = 4000.f,
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapGameNits",
        .binding = &shader_injection.diffuse_white_nits,
        .default_value = 203.f,
        .label = "Game Brightness",
        .section = "Tone Mapping",
        .tooltip = "Sets the value of 100% white in nits",
        .min = 80.f,
        .max = 500.f,
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapUINits",
        .binding = &shader_injection.graphics_white_nits,
        .default_value = 203.f,
        .label = "UI Brightness",
        .section = "Tone Mapping",
        .tooltip = "Sets the brightness of UI and HUD elements in nits",
        .min = 80.f,
        .max = 500.f,
    },
    new renodx::utils::settings::Setting{
        .key = "GammaCorrection",
        .binding = &shader_injection.gamma_correction,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "SDR EOTF Emulation",
        .section = "Tone Mapping",
        .tooltip = "Emulates a display EOTF.",
        .labels = {"Off", "2.2", "BT.1886"},
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapType",
        .binding = &shader_injection.tone_map_type,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .can_reset = true,
        .label = "Tone Mapper",
        .section = "Tone Mapping",
        .tooltip = "Sets the tone mapper type",
        .labels = {"Vanilla", "RenoDRT", "PsychoV-17"},
        .parse = [](float value) {
            if (value == 1.f) return RENODX_TONE_MAP_TYPE_RENODRT;
            if (value == 2.f) return RENODX_TONE_MAP_TYPE_PSYCHOV17;
            return RENODX_TONE_MAP_TYPE_VANILLA; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapHueProcessor",
        .binding = &shader_injection.tone_map_hue_processor,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Hue Processor",
        .section = "Grading",
        .tooltip = "Selects hue processor",
        .labels = {"OKLab", "ICtCp", "darkTable UCS"},
        .is_enabled = &IsRenoDRTEnabled,
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapWhiteClip",
        .binding = &shader_injection.tone_map_white_clip,
        .default_value = 100.f,
        .label = "White Clip",
        .section = "Grading",
        .min = 0.f,
        .max = 100.f,
        .is_enabled = &IsRenoDRTEnabled,
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeExposure",
        .binding = &shader_injection.tone_map_exposure,
        .default_value = 1.f,
        .label = "Exposure",
        .section = "Grading",
        .max = 2.f,
        .format = "%.2f",
        .is_enabled = &IsCustomToneMapperEnabled,
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeHighlights",
        .binding = &shader_injection.tone_map_highlights,
        .default_value = 50.f,
        .label = "Highlights",
        .section = "Grading",
        .max = 100.f,
        .is_enabled = &IsCustomToneMapperEnabled,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeShadows",
        .binding = &shader_injection.tone_map_shadows,
        .default_value = 50.f,
        .label = "Shadows",
        .section = "Grading",
        .max = 100.f,
        .is_enabled = &IsCustomToneMapperEnabled,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeContrast",
        .binding = &shader_injection.tone_map_contrast,
        .default_value = 50.f,
        .label = "Contrast",
        .section = "Grading",
        .max = 100.f,
        .is_enabled = &IsCustomToneMapperEnabled,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeSaturation",
        .binding = &shader_injection.tone_map_saturation,
        .default_value = 50.f,
        .label = "Saturation",
        .section = "Grading",
        .max = 100.f,
        .is_enabled = &IsCustomToneMapperEnabled,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeConeResponse",
        .binding = &shader_injection.custom_cone_response,
        .default_value = 50.f,
        .label = "Cone Response",
        .section = "Grading",
        .tooltip = "Scales PsychoV cone response.",
        .max = 100.f,
        .is_enabled = &IsPsychoV17Enabled,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeHighlightSaturation",
        .binding = &shader_injection.tone_map_highlight_saturation,
        .default_value = 50.f,
        .label = "Highlight Saturation",
        .section = "Grading",
        .tooltip = "Adds or removes highlight color.",
        .max = 100.f,
        .is_enabled = &IsRenoDRTEnabled,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeBlowout",
        .binding = &shader_injection.tone_map_blowout,
        .default_value = 0.f,
        .label = "Blowout",
        .section = "Grading",
        .tooltip = "Controls highlight desaturation due to overexposure.",
        .max = 100.f,
        .is_enabled = &IsCustomToneMapperEnabled,
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeFlare",
        .binding = &shader_injection.tone_map_flare,
        .default_value = 0.f,
        .label = "Flare",
        .section = "Grading",
        .tooltip = "Flare/Glare Compensation",
        .max = 100.f,
        .is_enabled = &IsRenoDRTEnabled,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "SwapChainCustomColorSpace",
        .binding = &shader_injection.swap_chain_custom_color_space,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Custom Color Space",
        .section = "Color Grading",
        .tooltip = "Selects output color space"
                   "\nUS Modern for BT.709 D65."
                   "\nJPN Modern for BT.709 D93."
                   "\nUS CRT for BT.601 (NTSC-U)."
                   "\nJPN CRT for BT.601 ARIB-TR-B9 D93 (NTSC-J)."
                   "\nDefault: US Modern",
        .labels = {
            "US Modern",
            "JPN Modern",
            "US CRT",
            "JPN CRT",
        },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeLUTStrength",
        .binding = &shader_injection.color_grade_lut_strength,
        .default_value = 100.f,
        .label = "LUT Strength",
        .section = "LUT Grading",
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeLUTScaling",
        .binding = &shader_injection.color_grade_lut_scaling,
        .default_value = 100.f,
        .label = "LUT Scaling",
        .section = "LUT Grading",
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting{
        .key = "FxBloomIntensity",
        .binding = &shader_injection.custom_bloom,
        .default_value = 50.f,
        .label = "Bloom Intensity",
        .section = "Effects",
        .tooltip = "Adjusts bloom intensity by clamping bloom shader output."
                   "\n0% = Off"
                   "\n100% = Unclamped",
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting{
        .key = "FxVignetteStrength",
        .binding = &shader_injection.custom_vignette,
        .default_value = 50.f,
        .label = "Vignette Strength",
        .section = "Effects",
        .tooltip = "Adjusts vignette strength."
                   "\n50 = Vanilla",
        .min = 0.f,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting{
        .key = "FxRCASAmount",
        .binding = &shader_injection.custom_rcas,
        .default_value = 0.f,
        .label = "RCAS Sharpening Amount",
        .section = "Effects",
        .tooltip = "Adjusts RCAS sharpening strength."
                   "\n0 = Disabled",
        .max = 100.f,
        .parse = [](float value) { return value == 0 ? 0.f : exp2(-(1.f - (value * 0.01f))); },
    },
    new renodx::utils::settings::Setting{
        .key = "FxFilmGrainAmount",
        .binding = &shader_injection.custom_film_grain,
        .default_value = 0.f,
        .label = "Film Grain",
        .section = "Effects",
        .tooltip = "Adjusts perceptual film grain strength."
                   "\n0 = Disabled",
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "VideoAutoHDR",
        .binding = &shader_injection.tone_map_hdr_video,
        .value_type = renodx::utils::settings::SettingValueType::BOOLEAN,
        .default_value = 1.f,
        .label = "Video AutoHDR",
        .section = "Effects",
        .tooltip = "Upgrades SDR videos to HDR using inverse tonemapping.",
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapVideoNits",
        .binding = &shader_injection.tone_map_video_nits,
        .default_value = 400.f,
        .label = "Video Peak Brightness",
        .section = "Effects",
        .tooltip = "Sets the peak brightness for video content in nits."
                   "\nNot recommended to exceed 600 nits.",
        .min = 80.f,
        .max = 1000.f,
    },
    new renodx::utils::settings::Setting{
        .key = "HideUI",
        .binding = &shader_injection.custom_hide_ui,
        .value_type = renodx::utils::settings::SettingValueType::BOOLEAN,
        .default_value = 0.f,
        .label = "Hide UI (DX12 DLSSFG ONLY)",
        .section = "Effects",
        .tooltip = "Hides the user interface.\n"
                   "Only works with DLSSFG enabled, otherwise it does nothing.",
    },
    new renodx::utils::settings::Setting{
        .key = "SwapchainClampColorSpace",
        .binding = &shader_injection.swap_chain_clamp_color_space,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 2.f,
        .label = "Clamp Color Space",
        .section = "Display Output",
        .labels = {"None", "BT709", "BT2020", "AP1"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .parse = [](float value) { return value - 1.f; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Enable DLSS HDR / Frame Generation (Restart Required)",
        .section = "Display Output",
        .tooltip = "Adds this addon to ReShade's [ADDON] LoadFromDllMain.\n"
                   "Without it, DLSS output is limited to SDR range and frame generation may render black.",
        .tint = 0xFFB84D,
        .is_enabled = []() { return !early_load_entry_added; },
        .on_change = AddLoadFromDllMainEntry,
        .is_visible = []() { return !has_early_load_entry; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Reset All",
        .section = "Presets",
        .group = "button-line-1",
        .on_change = []() {
          for (auto setting : settings) {
            if (setting->key.empty()) continue;
            if (!setting->can_reset) continue;
            renodx::utils::settings::UpdateSetting(setting->key, setting->default_value);
          }
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "HDR Look",
        .section = "Presets",
        .group = "button-line-1",
        .on_change = OnPresetHdrLook,
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Thanks to ShortFuse for creating the RenoDX framework,"
                 "\nMaple for the original game mod, and Spiwar for previously maintaining it."
                 "\nCurrently maintained by Nick.",
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Note: Changes to the LUT Grading section may require a scene change to apply!",
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "HDR Den Discord",
        .section = "About",
        .group = "button-line-1",
        .tint = 0x5865F2,
        .on_change = []() {
          static const std::string obfuscated_link = std::string("start https://discord.gg/XUhv") + std::string("tR54yc");
          system(obfuscated_link.c_str());
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "GitHub",
        .section = "About",
        .group = "button-line-1",
        .on_change = []() {
          ShellExecute(0, "open", "https://github.com/clshortfuse/renodx", 0, 0, SW_SHOW);
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Nick's Ko-fi",
        .section = "About",
        .group = "button-line-2",
        .on_change = []() {
          ShellExecute(0, "open", "https://ko-fi.com/vietnick", 0, 0, SW_SHOW);
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Nick's Steam Wishlist",
        .section = "About",
        .group = "button-line-2",
        .on_change = []() {
          ShellExecute(0, "open", "https://store.steampowered.com/wishlist/id/skyline330/?sort=discount", 0, 0, SW_SHOW);
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "This build was compiled on " + build_date + " at " + build_time + ".",
        .section = "About",
    },
};

void OnPresetOff() {
  renodx::utils::settings::UpdateSettings({
      {"ToneMapType", 0.f},
      {"ToneMapPeakNits", 203.f},
      {"ToneMapGameNits", 203.f},
      {"ToneMapUINits", 203.f},
      {"GammaCorrection", 0.f},
      {"ToneMapHueProcessor", 0.f},
      {"ToneMapHueCorrection", 0.f},
      {"ToneMapHueShift", 0.f},
      {"ToneMapWhiteClip", 1.f},
      {"ToneMapSdrGamutCompression", 0.f},
      {"ColorGradeExposure", 1.f},
      {"ColorGradeHighlights", 50.f},
      {"ColorGradeShadows", 50.f},
      {"ColorGradeContrast", 50.f},
      {"ColorGradeSaturation", 50.f},
      {"ColorGradeConeResponse", 50.f},
      {"ColorGradeHighlightSaturation", 50.f},
      {"ColorGradeBlowout", 0.f},
      {"ColorGradeFlare", 0.f},
      {"FxVignette", 50.f},
      {"FxBloom", 50.f},
      {"FxRCASAmount", 0.f},
      {"FxGrainStrength", 0.f},
  });
}

void OnPresetHdrLook() {
  renodx::utils::settings::ResetSettings();
  renodx::utils::settings::UpdateSettings({
      {"ToneMapWhiteClip", 20.f},
      {"ColorGradeHighlights", 50.f},
      {"ColorGradeShadows", 50.f},
      {"ColorGradeContrast", 60.f},
      {"ColorGradeSaturation", 60.f},
      {"ColorGradeBlowout", 25.f},
      {"FxVignette", 50.f},
      {"FxBloom", 25.f},
      {"FxGrainStrength", 25.f},
  });
}

void OnInitDevice(reshade::api::device* device) {
  if (device->get_api() == reshade::api::device_api::d3d12) {
    // Only use resource cloning on D3D12 where it is required.
    renodx::mods::swapchain::resource_upgrade_infos[0].use_resource_view_cloning = true;
    ffx::Install();
  }
}

bool fired_on_init_swapchain = false;

void OnInitSwapchain(reshade::api::swapchain* swapchain, bool resize) {
  // ReShade's native swapchain is Streamline's proxy when the Streamline v2 hooks are active.
  if (has_early_load_entry) {
    GuardStreamlineUnwrap(swapchain->get_device()->get_native(), 0);
    GuardStreamlineUnwrap(swapchain->get_native(), 2);
  }

  if (fired_on_init_swapchain) return;
  fired_on_init_swapchain = true;

  auto peak = renodx::utils::swapchain::GetPeakNits(swapchain);
  if (!peak.has_value()) {
    peak = 1000.f;
  }
  settings[1]->default_value = peak.value();
}

}  // namespace

extern "C" __declspec(dllexport) constexpr const char* NAME = "RenoDX";
extern "C" __declspec(dllexport) constexpr const char* DESCRIPTION = "RenoDX for Zenless Zone Zero";

BOOL APIENTRY DllMain(HMODULE h_module, DWORD fdw_reason, LPVOID lpv_reserved) {
  switch (fdw_reason) {
    case DLL_PROCESS_ATTACH: {
      if (!reshade::register_addon(h_module)) return FALSE;

      addon_module = h_module;
      has_early_load_entry = HasLoadFromDllMainEntry(ReadLoadFromDllMain());
      if (!has_early_load_entry) {
        reshade::log::message(reshade::log::level::warning,
                             "Not listed in [ADDON] LoadFromDllMain: DLSS HDR/frame generation support disabled.");
      }

      // Check if we're a raytracing pipeline using NvAPI SER, it follows this layout:
      // [0] | TBL | 1885845696336 | TUAV, array_size: 1, binding: 0, count: 1, register: 0, space: 2, visibility: all
      renodx::mods::shader::on_create_pipeline_layout = [](auto, std::span<reshade::api::pipeline_layout_param> params) {
        if (params.size() != 1) {
          return true;
        }

        bool has_tbl = std::ranges::any_of(params, [](auto param) {
          return (param.type == reshade::api::pipeline_layout_param_type::descriptor_table);
        });

        return !has_tbl || params[0].descriptor_table.ranges->type != reshade::api::descriptor_type::texture_unordered_access_view
               || params[0].descriptor_table.ranges->dx_register_index != 0
               || params[0].descriptor_table.ranges->dx_register_space != 2;
      };

      renodx::mods::shader::expected_constant_buffer_index = 13;
      renodx::mods::shader::expected_constant_buffer_space = 50;
      renodx::mods::shader::force_pipeline_cloning = true;
      renodx::mods::swapchain::expected_constant_buffer_index = 13;
      renodx::mods::swapchain::expected_constant_buffer_space = 50;
      renodx::mods::swapchain::use_resource_cloning = true;
      renodx::utils::random::binds.push_back(&shader_injection.custom_random);

      renodx::mods::swapchain::swap_chain_proxy_shaders = {
          {
              reshade::api::device_api::d3d11,
              {
                  .vertex_shader = __swap_chain_proxy_vertex_shader_dx11,
                  .pixel_shader = __swap_chain_proxy_pixel_shader_dx11,
              },
          },
          {
              reshade::api::device_api::d3d12,
              {
                  .vertex_shader = __swap_chain_proxy_vertex_shader_dx12,
                  .pixel_shader = __swap_chain_proxy_pixel_shader_dx12,
              },
          },
      };
      /*
      //  RG11B10_float (UAV stuff)
      renodx::mods::swapchain::resource_upgrade_infos.push_back({
          .old_format = reshade::api::format::r11g11b10_float,
          .new_format = reshade::api::format::r16g16b16a16_float,
          // .ignore_size = true,
          .use_resource_view_cloning = true,
          .usage_include = reshade::api::resource_usage::render_target | reshade::api::resource_usage::unordered_access,
      });
      */
      //  R8G8B8A8_typeless resources - Main game
      renodx::mods::swapchain::resource_upgrade_infos.push_back({
          .old_format = reshade::api::format::r8g8b8a8_typeless,
          .new_format = reshade::api::format::r16g16b16a16_float,
          .ignore_size = true,
          .use_resource_view_cloning = true,
          // .aspect_ratio = renodx::mods::swapchain::SwapChainUpgradeTarget::BACK_BUFFER,
          // .aspect_ratio_tolerance = 0.02f,
      });
      /*
      //  R8G8B8A8_unorm resources - VR Training lut
      renodx::mods::swapchain::resource_upgrade_infos.push_back({
          .old_format = reshade::api::format::r8g8b8a8_unorm,
          .new_format = reshade::api::format::r16g16b16a16_typeless,
          .use_resource_view_cloning = true,
          .dimensions = {.height = 64},
          .usage_include = reshade::api::resource_usage::render_target,
      });
      */
      /*
      //  R10G10B10A2_UNORM
      renodx::mods::swapchain::resource_upgrade_infos.push_back({
          .old_format = reshade::api::format::r10g10b10a2_unorm,
          .new_format = reshade::api::format::r16g16b16a16_float,
          // .aspect_ratio = renodx::mods::swapchain::SwapChainUpgradeTarget::BACK_BUFFER,
          // .aspect_ratio_tolerance = 0.02f,
          // .ignore_size = true,
      });
      */
      {
        auto* setting = new renodx::utils::settings::Setting{
            .key = "SwapChainEncoding",
            .binding = &shader_injection.swap_chain_encoding,
            .value_type = renodx::utils::settings::SettingValueType::INTEGER,
            .default_value = 4.f,
            .label = "Encoding",
            .section = "Display Output",
            .labels = {"None", "SRGB", "2.2", "2.4", "HDR10", "scRGB"},
            .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
            .on_change_value = [](float previous, float current) {
              bool is_hdr10 = current == 4;
              shader_injection.swap_chain_encoding_color_space = (is_hdr10 ? 1.f : 0.f);
              // return void
            },
            .is_global = true,
        };
        renodx::utils::settings::LoadSetting(renodx::utils::settings::global_name, setting);
        bool is_hdr10 = setting->GetValue() == 4;
        renodx::mods::swapchain::SetUseHDR10(is_hdr10);
        renodx::mods::swapchain::use_resize_buffer = setting->GetValue() < 4;
        shader_injection.swap_chain_encoding_color_space = is_hdr10 ? 1.f : 0.f;
        settings.push_back(setting);
      }

      reshade::register_event<reshade::addon_event::init_device>(OnInitDevice);

      // Streamline v2: DLSS HDR mode and FP16 clone tags for DLSS and frame generation.
      renodx::utils::dlss_hook::nvngx_dlss_file_path = (renodx::utils::path::GetExecutableBasePath() / "nvngx_dlss.dll").string();
      renodx::utils::dlss_hook::streamline_interposer_file_path = (renodx::utils::path::GetExecutableBasePath() / "sl.interposer.dll").string();

      // peak nits
      reshade::register_event<reshade::addon_event::init_swapchain>(OnInitSwapchain);

      reshade::register_event<reshade::addon_event::init_swapchain>(ffx::OnInitSwapchain);
      reshade::register_event<reshade::addon_event::destroy_swapchain>(ffx::OnDestroySwapchain);
      // Before mods::swapchain::Use below, so it runs ahead of RenoDX's copy redirect.
      reshade::register_event<reshade::addon_event::copy_resource>(ffx::OnCopyResource);

      break;
    }
    case DLL_PROCESS_DETACH:
      reshade::unregister_addon(h_module);
      reshade::unregister_event<reshade::addon_event::init_device>(OnInitDevice);
      reshade::unregister_event<reshade::addon_event::init_swapchain>(ffx::OnInitSwapchain);
      reshade::unregister_event<reshade::addon_event::destroy_swapchain>(ffx::OnDestroySwapchain);
      reshade::unregister_event<reshade::addon_event::copy_resource>(ffx::OnCopyResource);
      break;
  }

  renodx::utils::settings::Use(fdw_reason, &settings, &OnPresetOff);
  renodx::mods::swapchain::Use(fdw_reason, &shader_injection);
  renodx::mods::shader::Use(fdw_reason, custom_shaders, &shader_injection);
  renodx::utils::random::Use(fdw_reason);
  // Late Streamline hooks miss the game's setup and break rendering, so leave DLSS untouched instead.
  if (has_early_load_entry) {
    renodx::utils::dlss_hook::Use(fdw_reason);
    if (fdw_reason == DLL_PROCESS_ATTACH) {
      reshade::register_event<reshade::addon_event::init_device>(OnInitStreamlineDevice);
      reshade::register_event<reshade::addon_event::init_command_queue>(OnInitStreamlineCommandQueue);
    } else if (fdw_reason == DLL_PROCESS_DETACH) {
      reshade::unregister_event<reshade::addon_event::init_device>(OnInitStreamlineDevice);
      reshade::unregister_event<reshade::addon_event::init_command_queue>(OnInitStreamlineCommandQueue);
    }
  }

  return TRUE;
}
