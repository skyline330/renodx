/*
 * Copyright (C) 2023 Carlos Lopez
 * SPDX-License-Identifier: MIT
 */

#define ImTextureID ImU64

#define DEBUG_LEVEL_0

#include <embed/shaders.h>

#include <deps/imgui/imgui.h>
#include <include/reshade.hpp>

#include "../../mods/shader.hpp"
#include "../../mods/swapchain.hpp"
#include "../../utils/settings.hpp"
#include "../../utils/date.hpp"
#include "../../utils/random.hpp"
#include "./shared.h"

namespace {

renodx::mods::shader::CustomShaders custom_shaders = {
  CustomShaderEntry(0x99BBA5F9),  // videos
  CustomShaderEntry(0x94CFA97C),  // worldmap
  CustomShaderEntry(0x2594436A),  // tonemap
  CustomShaderEntry(0x5EB8FCF2),  // LUT
  CustomShaderEntry(0x457E22C2),  // Final
};

ShaderInjectData shader_injection;
float current_settings_mode = 0;
renodx::utils::settings::Settings settings = {
    new renodx::utils::settings::Setting{
        .key = "SettingsMode",
        .binding = &current_settings_mode,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .can_reset = false,
        .label = "Settings Mode",
        .labels = {"Simple", "Intermediate", "Advanced"},
        .is_global = true,
    },
    new renodx::utils::settings::Setting{
        .key = "toneMapType",
        .binding = &shader_injection.toneMapType,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 3.f,
        .can_reset = true,
        .label = "Tone Mapper",
        .section = "Tone Mapping",
        .tooltip = "Sets the tone mapper type",
        .labels = {"Vanilla", "None", "RenoDRT (Daniele)", "RenoDRT (Reinhard)"},
        .tint = 0xBD8259,
        .is_visible = []() { return settings[0]->GetValue() >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "toneMapPeakNits",
        .binding = &shader_injection.toneMapPeakNits,
        .default_value = 1000.f,
        .can_reset = false,
        .label = "Peak Brightness",
        .section = "Tone Mapping",
        .tooltip = "Sets the value of peak white in nits",
        .tint = 0xAE8B60,
        .min = 48.f,
        .max = 4000.f,
        .is_enabled = []() { return shader_injection.toneMapType >= 2.f; },
    },
    new renodx::utils::settings::Setting{
        .key = "toneMapGameNits",
        .binding = &shader_injection.toneMapGameNits,
        .default_value = 203.f,
        .label = "Game Brightness",
        .section = "Tone Mapping",
        .tooltip = "Sets the value of 100% white in nits",
        .tint = 0xAE8B60,
        .min = 48.f,
        .max = 500.f,
    },
    new renodx::utils::settings::Setting{
        .key = "toneMapUINits",
        .binding = &shader_injection.toneMapUINits,
        .default_value = 203.f,
        .label = "UI Brightness",
        .section = "Tone Mapping",
        .tooltip = "Sets the brightness of UI and HUD elements in nits",
        .tint = 0xAE8B60,
        .min = 48.f,
        .max = 500.f,
    },
    new renodx::utils::settings::Setting{
        .key = "toneMapGammaCorrection",
        .binding = &shader_injection.toneMapGammaCorrection,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Gamma Correction",
        .section = "Tone Mapping",
        .tooltip = "Emulates a display EOTF.",
        .labels = {"SRGB", "Off", "BT.1886"},
        .tint = 0xAE8B60,
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "toneMapPerChannel",
        .binding = &shader_injection.toneMapPerChannel,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Scaling",
        .section = "Tone Mapping",
        .tooltip = "Luminance scales colors consistently while per-channel saturates and blows out sooner",
        .labels = {"Luminance", "Per Channel"},
        .tint = 0xAE8B60,
        .is_enabled = []() { return shader_injection.toneMapType >= 2.f; },
        .is_visible = []() { return current_settings_mode >= 2; },
    },
    new renodx::utils::settings::Setting{
        .key = "toneMapHueProcessor",
        .binding = &shader_injection.toneMapHueProcessor,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Hue Processor",
        .section = "Tone Mapping",
        .labels = {"OKLab", "ICtCp", "darktable UCS"},
        .tint = 0xAE8B60,
        .is_enabled = []() { return shader_injection.toneMapType >= 2.f; },
        .is_visible = []() { return current_settings_mode >= 2; },
    },
    new renodx::utils::settings::Setting{
        .key = "toneMapHueShift",
        .binding = &shader_injection.toneMapHueShift,
        .default_value = 50.f,
        .label = "Hue Shift",
        .section = "Tone Mapping",
        .tooltip = "Hue-shift emulation strength.",
        .tint = 0xAE8B60,
        .min = 0.f,
        .max = 100.f,
        .is_enabled = []() { return shader_injection.toneMapType >= 2.f && shader_injection.toneMapPerChannel == 0.f; },
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "toneMapHueCorrection",
        .binding = &shader_injection.toneMapHueCorrection,
        .default_value = 0.f,
        .label = "Hue Correction",
        .section = "Tone Mapping",
        .tint = 0xAE8B60,
        .max = 100.f,
        .is_enabled = []() { return shader_injection.toneMapType >= 2.f; },
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode >= 2; },
    },
    new renodx::utils::settings::Setting{
        .key = "colorGradeExposure",
        .binding = &shader_injection.colorGradeExposure,
        .default_value = 1.f,
        .label = "Exposure",
        .section = "Color Grading",
        .tint = 0x79705C,
        .max = 10.f,
        .format = "%.2f",
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "colorGradeHighlights",
        .binding = &shader_injection.colorGradeHighlights,
        .default_value = 50.f,
        .label = "Highlights",
        .section = "Color Grading",
        .tint = 0x79705C,
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "colorGradeShadows",
        .binding = &shader_injection.colorGradeShadows,
        .default_value = 50.f,
        .label = "Shadows",
        .section = "Color Grading",
        .tint = 0x79705C,
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "colorGradeContrast",
        .binding = &shader_injection.colorGradeContrast,
        .default_value = 50.f,
        .label = "Contrast",
        .section = "Color Grading",
        .tint = 0x79705C,
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "colorGradeSaturation",
        .binding = &shader_injection.colorGradeSaturation,
        .default_value = 50.f,
        .label = "Saturation",
        .section = "Color Grading",
        .tint = 0x79705C,
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "colorGradeBlowout",
        .binding = &shader_injection.colorGradeBlowout,
        .default_value = 50.f,
        .label = "Highlights Saturation",
        .section = "Color Grading",
        .tooltip = "Adds or removes highlights color.",
        .tint = 0x79705C,
        .max = 100.f,
        .is_enabled = []() { return shader_injection.toneMapType >= 2.f; },
        .parse = [](float value) { return 1.f - value * 0.02f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "colorGradeDechroma",
        .binding = &shader_injection.colorGradeDechroma,
        .default_value = 0.f,
        .label = "Blowout",
        .section = "Color Grading",
        .tooltip = "Controls highlight desaturation due to overexposure.",
        .tint = 0x79705C,
        .max = 100.f,
        .is_enabled = []() { return shader_injection.toneMapType >= 2.f; },
        .parse = [](float value) { return fmax(0.00001f, value * 0.01f); },
    },
    new renodx::utils::settings::Setting{
        .key = "colorGradeFlare",
        .binding = &shader_injection.colorGradeFlare,
        .default_value = 0.f,
        .label = "Flare",
        .section = "Color Grading",
        .tint = 0x79705C,
        .max = 100.f,
        .is_enabled = []() { return shader_injection.toneMapType >= 2.f; },
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting{
        .key = "colorGradeClip",
        .binding = &shader_injection.colorGradeClip,
        .default_value = 8.f,
        .label = "Clipping",
        .section = "Color Grading",
        .tint = 0x79705C,
        .max = 100.f,
        .is_enabled = []() { return shader_injection.toneMapType == 3.f; },
        .parse = [](float value) { return value; },
    },
    new renodx::utils::settings::Setting{
        .key = "colorGradeLUTStrength",
        .binding = &shader_injection.colorGradeLUTStrength,
        .default_value = 100.f,
        .label = "LUT Strength",
        .section = "Color Grading",
        .tint = 0x79705C,
        .max = 100.f,
        .is_enabled = []() { return shader_injection.toneMapType != 1.f; },
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "colorGradeLUTSampling",
        .binding = &shader_injection.colorGradeLUTSampling,
        .value_type = renodx::utils::settings::SettingValueType::BOOLEAN,
        .default_value = 1.f,
        .label = "LUT Sampling",
        .section = "Color Grading",
        .labels = {"Trilinear", "Tetrahedral"},
        .tint = 0x79705C,
        .is_enabled = []() { return shader_injection.toneMapType != 1.f; },
        .is_visible = []() { return current_settings_mode >= 2; },
    },
    new renodx::utils::settings::Setting{
        .key = "fxBloom",
        .binding = &shader_injection.fxBloom,
        .default_value = 50.f,
        .label = "Bloom",
        .section = "Effects",
        .tint = 0x895434,
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "fxGodRays",
        .binding = &shader_injection.fxGodRays,
        .default_value = 50.f,
        .label = "God Rays",
        .section = "Effects",
        .tint = 0x895434,
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "fxVignette",
        .binding = &shader_injection.fxVignette,
        .default_value = 50.f,
        .label = "Vignette",
        .section = "Effects",
        .tint = 0x895434,
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "fxFilmGrain",
        .binding = &shader_injection.fxFilmGrain,
        .default_value = 50.f,
        .label = "Film Grain",
        .section = "Effects",
        .tint = 0x895434,
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "fxFilmGrainType",
        .binding = &shader_injection.fxFilmGrainType,
        .value_type = renodx::utils::settings::SettingValueType::BOOLEAN,
        .default_value = 0.f,
        .label = "Film Grain Type",
        .section = "Effects",
        .labels = {"Vanilla", "Perceptual"},
        .tint = 0x895434,
        .is_visible = []() { return current_settings_mode >= 1 && shader_injection.fxFilmGrain != 0.f; },
    },
    new renodx::utils::settings::Setting{
        .key = "fxHDRVideos",
        .binding = &shader_injection.fxHDRVideos,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 2.f,
        .label = "HDR Videos",
        .section = "Effects",
        .labels = {"Off", "BT.2446a", "RenoDRT"},
        .tint = 0x895434,
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Reset",
        .section = "Color Grading Templates",
        .group = "button-line-1",
        .tint = 0xF26E1C,
        .on_change = []() {
          renodx::utils::settings::UpdateSetting("toneMapType", 3.f);
          renodx::utils::settings::UpdateSetting("toneMapPerChannel", 1.f);
          renodx::utils::settings::UpdateSetting("toneMapHueProcessor", 1.f);
          renodx::utils::settings::UpdateSetting("toneMapHueShift", 50.f);
          renodx::utils::settings::UpdateSetting("toneMapHueCorrection", 0.f);
          renodx::utils::settings::UpdateSetting("colorGradeExposure", 1.f);
          renodx::utils::settings::UpdateSetting("colorGradeHighlights", 50.f);
          renodx::utils::settings::UpdateSetting("colorGradeShadows", 50.f);
          renodx::utils::settings::UpdateSetting("colorGradeContrast", 50.f);
          renodx::utils::settings::UpdateSetting("colorGradeSaturation", 50.f);
          renodx::utils::settings::UpdateSetting("colorGradeBlowout", 50.f);
          renodx::utils::settings::UpdateSetting("colorGradeDechroma", 0.f);
          renodx::utils::settings::UpdateSetting("colorGradeFlare", 0.f);
          renodx::utils::settings::UpdateSetting("colorGradeLUTStrength", 100.f);
          renodx::utils::settings::UpdateSetting("colorGradeLUTSampling", 1.f);
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "HDR Look",
        .section = "Color Grading Templates",
        .group = "button-line-1",
        .tint = 0xF2971D,
        .on_change = []() {
          renodx::utils::settings::UpdateSetting("toneMapType", 2.f);
          renodx::utils::settings::UpdateSetting("toneMapPerChannel", 1.f);
          renodx::utils::settings::UpdateSetting("toneMapHueProcessor", 1.f);
          renodx::utils::settings::UpdateSetting("toneMapHueCorrection", 20.f);
          renodx::utils::settings::UpdateSetting("colorGradeExposure", 1.f);
          renodx::utils::settings::UpdateSetting("colorGradeHighlights", 50.f);
          renodx::utils::settings::UpdateSetting("colorGradeShadows", 53.f);
          renodx::utils::settings::UpdateSetting("colorGradeContrast", 55.f);
          renodx::utils::settings::UpdateSetting("colorGradeSaturation", 65.f);
          renodx::utils::settings::UpdateSetting("colorGradeBlowout", 65.f);
          renodx::utils::settings::UpdateSetting("colorGradeDechroma", 0.f);
          renodx::utils::settings::UpdateSetting("colorGradeFlare", 50.f);
          renodx::utils::settings::UpdateSetting("colorGradeLUTStrength", 100.f);
          renodx::utils::settings::UpdateSetting("colorGradeLUTSampling", 1.f);
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "HDR Look 2",
        .section = "Color Grading Templates",
        .group = "button-line-1",
        .tint = 0xF2971D,
        .on_change = []() {
          renodx::utils::settings::UpdateSetting("toneMapType", 3.f);
          renodx::utils::settings::UpdateSetting("toneMapHueProcessor", 1.f);
          renodx::utils::settings::UpdateSetting("toneMapHueShift", 50.f);
          renodx::utils::settings::UpdateSetting("toneMapHueCorrection", 100.f);
          renodx::utils::settings::UpdateSetting("toneMapPerChannel", 0.f);
          renodx::utils::settings::UpdateSetting("colorGradeExposure", 1.f);
          renodx::utils::settings::UpdateSetting("colorGradeHighlights", 50.f);
          renodx::utils::settings::UpdateSetting("colorGradeShadows", 45.f);
          renodx::utils::settings::UpdateSetting("colorGradeContrast", 45.f);
          renodx::utils::settings::UpdateSetting("colorGradeSaturation", 80.f);
          renodx::utils::settings::UpdateSetting("colorGradeBlowout", 35.f);
          renodx::utils::settings::UpdateSetting("colorGradeDechroma", 65.f);
          renodx::utils::settings::UpdateSetting("colorGradeFlare", 65.f);
          renodx::utils::settings::UpdateSetting("colorGradeLUTStrength", 100.f);
          renodx::utils::settings::UpdateSetting("colorGradeLUTSampling", 1.f);
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "HDR Den Discord",
        .section = "About",
        .group = "button-line-2",
        .tint = 0x5865F2,
        .on_change = []() {
          renodx::utils::platform::LaunchURL("https://discord.gg/XUhv", "tR54yc");
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Github",
        .section = "About",
        .group = "button-line-2",
        .on_change = []() {
          renodx::utils::platform::LaunchURL("https://github.com/clshortfuse/renodx");
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Version: " + std::string(renodx::utils::date::ISO_DATE),
        .section = "About",
        .tooltip = std::string(__DATE__),
    },
};

void OnPresetOff() {
  renodx::utils::settings::UpdateSetting("toneMapType", 0.f);
  renodx::utils::settings::UpdateSetting("toneMapPeakNits", 203.f);
  renodx::utils::settings::UpdateSetting("toneMapGameNits", 203.f);
  renodx::utils::settings::UpdateSetting("toneMapUINits", 203.f);
  renodx::utils::settings::UpdateSetting("toneMapGammaCorrection", 1.f);
  renodx::utils::settings::UpdateSetting("colorGradeExposure", 1.f);
  renodx::utils::settings::UpdateSetting("colorGradeHighlights", 50.f);
  renodx::utils::settings::UpdateSetting("colorGradeShadows", 50.f);
  renodx::utils::settings::UpdateSetting("colorGradeContrast", 50.f);
  renodx::utils::settings::UpdateSetting("colorGradeSaturation", 50.f);
  renodx::utils::settings::UpdateSetting("colorGradeLUTStrength", 100.f);
  renodx::utils::settings::UpdateSetting("colorGradeLUTSampling", 0.f);
  renodx::utils::settings::UpdateSetting("fxBloom", 50.f);
  renodx::utils::settings::UpdateSetting("fxGodRays", 50.f);
  renodx::utils::settings::UpdateSetting("fxVignette", 50.f);
  renodx::utils::settings::UpdateSetting("fxFilmGrain", 50.f);
  renodx::utils::settings::UpdateSetting("fxFilmGrainType", 0.f);
  renodx::utils::settings::UpdateSetting("fxHDRVideos", 0.f);
}

bool fired_on_init_swapchain = false;

void OnInitSwapchain(reshade::api::swapchain* swapchain, bool resize) {
  if (fired_on_init_swapchain) return;
  fired_on_init_swapchain = true;
  auto peak = renodx::utils::swapchain::GetPeakNits(swapchain);
  if (peak.has_value()) {
    settings[2]->default_value = peak.value();
    settings[2]->can_reset = true;
  }
}

}  // namespace

extern "C" __declspec(dllexport) constexpr const char* NAME = "RenoDX";
extern "C" __declspec(dllexport) constexpr const char* DESCRIPTION = "RenoDX for GreedFall";

const float screen_width = GetSystemMetrics(SM_CXSCREEN);
const float screen_height = GetSystemMetrics(SM_CYSCREEN);
BOOL APIENTRY DllMain(HMODULE h_module, DWORD fdw_reason, LPVOID lpv_reserved) {
  switch (fdw_reason) {
    case DLL_PROCESS_ATTACH:
      if (!reshade::register_addon(h_module)) return FALSE;
      renodx::mods::swapchain::force_borderless = false;
      renodx::mods::swapchain::prevent_full_screen = true;
      renodx::mods::swapchain::use_resource_cloning = true;
      renodx::mods::swapchain::swapchain_proxy_compatibility_mode = false;
      renodx::mods::swapchain::swap_chain_proxy_vertex_shader = __swap_chain_proxy_vertex_shader;
      renodx::mods::swapchain::swap_chain_proxy_pixel_shader = __swap_chain_proxy_pixel_shader;
      renodx::utils::random::binds.push_back(&shader_injection.random);

      //  RGBA8_unorm
      renodx::mods::swapchain::swap_chain_upgrade_targets.push_back({
          .old_format = reshade::api::format::r8g8b8a8_unorm,
          .new_format = reshade::api::format::r16g16b16a16_float,
          .ignore_size = false,
      });
      //  RG11B10_float (UAV stuff)
      renodx::mods::swapchain::swap_chain_upgrade_targets.push_back({
          .old_format = reshade::api::format::r11g11b10_float,
          .new_format = reshade::api::format::r16g16b16a16_float,
          .ignore_size = true,
      });
      
      //  RGB10A2_typeless
      renodx::mods::swapchain::swap_chain_upgrade_targets.push_back({
          .old_format = reshade::api::format::r10g10b10a2_typeless,
          .new_format = reshade::api::format::r16g16b16a16_typeless,
          .ignore_size = true,
          .use_resource_view_cloning = true,
      });

      reshade::register_event<reshade::addon_event::init_swapchain>(OnInitSwapchain);

      break;
    case DLL_PROCESS_DETACH:
      reshade::unregister_addon(h_module);
      reshade::unregister_event<reshade::addon_event::init_swapchain>(OnInitSwapchain);
      break;
  }

  renodx::utils::settings::Use(fdw_reason, &settings, &OnPresetOff);
  renodx::mods::swapchain::Use(fdw_reason, &shader_injection);
  renodx::mods::shader::Use(fdw_reason, custom_shaders, &shader_injection);
  renodx::utils::random::Use(fdw_reason);

  return TRUE;
}
