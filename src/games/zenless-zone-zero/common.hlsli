#include "./shared.h"

static inline float3 AutoHDRVideo(float3 sdr_video) {
  if (RENODX_TONE_MAP_TYPE == 0.f || RENODX_TONE_MAP_HDR_VIDEO == 0.f) {
    return renodx::color::srgb::DecodeSafe(sdr_video);
  }
  renodx::draw::Config config = renodx::draw::BuildConfig();
  config.peak_white_nits = RENODX_VIDEO_NITS;

  float3 hdr_video = renodx::color::correct::GammaSafe(sdr_video);
  hdr_video = renodx::draw::UpscaleVideoPass(saturate(hdr_video), config);
  hdr_video = renodx::color::srgb::DecodeSafe(hdr_video);
  hdr_video = renodx::draw::RenderIntermediatePass(hdr_video);
  return hdr_video = max(0, hdr_video);  // bt709 clamp
}

// From Lilium
// RCAS - Robust Contrast Adaptive Sharpening
float3 ApplyRCAS(
    float3 center_color, float2 tex_coord,
    Texture2D<float4> SamplerFrameBuffer_TEX, SamplerState SamplerFrameBuffer_SMP_s) {
  if (CUSTOM_RCAS == 0.f) return center_color;  // Skip sharpening if amount is zero

#define ENABLE_NOISE_REMOVAL           1u  // Always good to be enabled
#define ENABLE_NORMALIZATION           1u
#define SHARPENING_NORMALIZATION_POINT 125

  uint width, height;
  SamplerFrameBuffer_TEX.GetDimensions(width, height);
  float2 texel_size = 1.0 / float2(width, height);

  // Algorithm uses minimal 3x3 pixel neighborhood.
  //    b
  //  d e f
  //    h
  float3 b =
      SamplerFrameBuffer_TEX.SampleLevel(SamplerFrameBuffer_SMP_s, tex_coord + float2(0, -1) * texel_size, 0).rgb;
  float3 d =
      SamplerFrameBuffer_TEX.SampleLevel(SamplerFrameBuffer_SMP_s, tex_coord + float2(-1, 0) * texel_size, 0).rgb;
  float3 e =
      center_color;
  float3 f =
      SamplerFrameBuffer_TEX.SampleLevel(SamplerFrameBuffer_SMP_s, tex_coord + float2(1, 0) * texel_size, 0).rgb;
  float3 h =
      SamplerFrameBuffer_TEX.SampleLevel(SamplerFrameBuffer_SMP_s, tex_coord + float2(0, 1) * texel_size, 0).rgb;

#if ENABLE_NORMALIZATION
  b /= SHARPENING_NORMALIZATION_POINT;
  d /= SHARPENING_NORMALIZATION_POINT;
  e /= SHARPENING_NORMALIZATION_POINT;
  f /= SHARPENING_NORMALIZATION_POINT;
  h /= SHARPENING_NORMALIZATION_POINT;
#endif

  // Immediate constants for peak range.
  static const float2 peakC = float2(1.f, -4.f);

  // Calculate luminance of center and neighbors
  float bLum = renodx::color::y::from::BT709(b);
  float dLum = renodx::color::y::from::BT709(d);
  float eLum = renodx::color::y::from::BT709(e);
  float fLum = renodx::color::y::from::BT709(f);
  float hLum = renodx::color::y::from::BT709(h);

  // Min and max of ring.
  float min4Lum = renodx::math::Min(bLum, dLum, fLum, hLum);
  float max4Lum = renodx::math::Max(bLum, dLum, fLum, hLum);

  // 0.99 found through testing -> see my latest desmos or https://www.desmos.com/calculator/4dyqhishpl
  // this helps reducing massive overshoot that would happen otherwise
  // normal CAS applies a limiter too so that there is no overshoot
  float limited_max4Lum = min(max4Lum, 0.99f);

  float hitMinLum = min4Lum
                    * rcp(4.f * limited_max4Lum);

  float hitMaxLum = (peakC.x - limited_max4Lum)
                    * rcp(4.f * min4Lum + peakC.y);

  float localLobe = max(-hitMinLum, hitMaxLum);

// This is set at the limit of providing unnatural results for sharpening.
// 0.25f - (1.f / 16.f)
#define FSR_RCAS_LIMIT 0.1875f

  float lobe = max(float(-FSR_RCAS_LIMIT),
                   min(localLobe, 0.f))
               * CUSTOM_RCAS;

#if ENABLE_NOISE_REMOVAL
  float bLuma2x = bLum * 2.f;
  float dLuma2x = dLum * 2.f;
  float eLuma2x = eLum * 2.f;
  float fLuma2x = fLum * 2.f;
  float hLuma2x = hLum * 2.f;
  // Noise detection.
  float nz = 0.25f * bLuma2x
             + 0.25f * dLuma2x
             + 0.25f * fLuma2x
             + 0.25f * hLuma2x
             - eLuma2x;

  float maxLuma2x = renodx::math::Max(renodx::math::Max(bLuma2x, dLuma2x, eLuma2x), fLuma2x, hLuma2x);
  float minLuma2x = renodx::math::Min(renodx::math::Min(bLuma2x, dLuma2x, eLuma2x), fLuma2x, hLuma2x);

  nz = saturate(abs(nz) * rcp(maxLuma2x - minLuma2x));
  nz = -0.5f * nz + 1.f;

  lobe *= nz;
#endif

  // Resolve, which needs the medium precision rcp approximation to avoid visible tonality changes.
  float rcpL = rcp(4.f * lobe + 1.f);

  float pixLum = ((bLum + dLum + hLum + fLum) * lobe + eLum) * rcpL;
  float3 pix = clamp((pixLum / eLum), 0.f, 4.f) * e;

#if ENABLE_NORMALIZATION
  pix *= SHARPENING_NORMALIZATION_POINT;
#endif

  return pix;
}

float3 UberpostArriLutSample(float3 color_lut_input, Texture2D<float4> lut_texture, SamplerState lut_sample) {
  // color_lut_input = max(0, color_lut_input);

  // float3 hdr_color = color_lut_input;
  // float3 hdr_color_tm = renodx::tonemap::neutwo::ComputeMaxChannelScale(hdr_color);

  renodx::lut::Config lut_config = renodx::lut::config::Create();
  lut_config.lut_sampler = lut_sample;
  lut_config.strength = 1.f;
  lut_config.scaling = 0.f;
  lut_config.type_input = renodx::lut::config::type::ARRI_C1000_NO_CUT;
  lut_config.type_output = renodx::lut::config::type::LINEAR;
  lut_config.recolor = 0.f;
  lut_config.max_channel = 1.f;
  lut_config.gamut_compress = 1.f;

  return renodx::lut::Sample(
      lut_texture,
      lut_config,
      color_lut_input);
}

float3 UberpostArriLutSampleDX12(float3 color_lut_input, Texture2D<float4> lut_texture, SamplerState lut_sample, float3 lut_params) {
  // color_lut_input = max(0, color_lut_input);

  // float3 hdr_color = color_lut_input;
  // float3 hdr_color_tm = renodx::tonemap::neutwo::ComputeMaxChannelScale(hdr_color);

  renodx::lut::Config lut_config = renodx::lut::config::Create();
  lut_config.lut_sampler = lut_sample;
  lut_config.strength = 1.f;
  lut_config.scaling = 0.f;
  lut_config.type_input = renodx::lut::config::type::ARRI_C1000_NO_CUT;
  lut_config.type_output = renodx::lut::config::type::LINEAR;
  lut_config.recolor = 0.f;
  lut_config.max_channel = 1.f;
  lut_config.gamut_compress = 1.f;
  lut_config.precompute = lut_params;

  return renodx::lut::Sample(
      lut_texture,
      lut_config,
      color_lut_input);
}

float3 UberpostSrgbLutSample(float3 color_lut_input, float4 lut_params, Texture2D<float4> lut_texture, SamplerState lut_sample) {
  // color_lut_input = max(0, color_lut_input);

  // float3 hdr_color = color_lut_input;
  // float3 hdr_color_tm = renodx::tonemap::neutwo::ComputeMaxChannelScale(hdr_color);

  bool useSDRLut = (lut_params.w > 0.0f);

  renodx::lut::Config lut_config = renodx::lut::config::Create();
  lut_config.lut_sampler = lut_sample;
  lut_config.strength = useSDRLut ? lut_params.w * RENODX_COLOR_GRADE_LUT_STRENGTH : 0;
  lut_config.scaling = RENODX_COLOR_GRADE_LUT_SCALING;
  lut_config.type_input = renodx::lut::config::type::SRGB;
  lut_config.type_output = renodx::lut::config::type::SRGB;
  lut_config.recolor = 0.f;
  lut_config.max_channel = 1.f;
  lut_config.gamut_compress = 1.f;

  return renodx::lut::Sample(
      lut_texture,
      lut_config,
      color_lut_input);
}

float3 UberpostVRLutSample(float3 color_lut_input, float4 lut_params, Texture2D<float4> lut_texture, SamplerState lut_sample) {
  // color_lut_input = max(0, color_lut_input);

  // float3 hdr_color = color_lut_input;
  // float3 hdr_color_tm = renodx::tonemap::neutwo::ComputeMaxChannelScale(hdr_color);

  bool useSDRLut = (lut_params.w > 0.0f);

  renodx::lut::Config lut_config = renodx::lut::config::Create();
  lut_config.lut_sampler = lut_sample;
  lut_config.strength = useSDRLut ? lut_params.w * RENODX_COLOR_GRADE_LUT_STRENGTH : 0;
  lut_config.scaling = RENODX_COLOR_GRADE_LUT_SCALING;
  lut_config.type_input = renodx::lut::config::type::SRGB;
  lut_config.type_output = renodx::lut::config::type::SRGB;
  lut_config.recolor = 0.f;
  lut_config.max_channel = 0.f;
  lut_config.gamut_compress = 1.f;

  float scale = renodx::tonemap::neutwo::ComputeMaxChannelScale(color_lut_input);
  float3 color_lut_input_tonemapped = (color_lut_input * scale);  // Tonemap input MaxCh to 1
  float3 lutted = renodx::lut::Sample(
      lut_texture,
      lut_config,
      color_lut_input_tonemapped);
  float3 lutted_inversed = (lutted / scale);  // Inverse scale
  float3 color_output = lerp(color_lut_input, lutted_inversed, saturate(RENODX_COLOR_GRADE_LUT_STRENGTH));

  return color_output;
}

float3 HighQualityBloomLutSample(float3 color_lut_input, Texture2D<float4> lut_texture, SamplerState lut_sample) {
  // Start of ARRI C3 1000 LUT
  renodx::lut::Config lut_config = renodx::lut::config::Create();
  lut_config.lut_sampler = lut_sample;
  lut_config.strength = 1.f;
  lut_config.scaling = 0.f;
  lut_config.type_input = renodx::lut::config::type::ARRI_C1000_NO_CUT;
  lut_config.type_output = renodx::lut::config::type::LINEAR;
  lut_config.recolor = 0.f;
  lut_config.max_channel = 0.f;
  lut_config.gamut_compress = 0.f;

  float scale = renodx::tonemap::neutwo::ComputeMaxChannelScale(color_lut_input);
  float3 color_lut_input_tonemapped = (color_lut_input * scale);  // Tonemap input MaxCh to 1
  float3 lutted = renodx::lut::Sample(lut_texture, lut_config, color_lut_input_tonemapped);
  float3 lutted_inversed = (lutted / scale);  // Inverse scale
  float3 color_output = lerp(color_lut_input, lutted_inversed, saturate(RENODX_COLOR_GRADE_LUT_STRENGTH));

  return color_output;
}

float3 ProcessBloom(float3 color) {
  if (RENODX_TONE_MAP_TYPE > 0) {
    color = lerp(0.f, color, CUSTOM_BLOOM);
  } else {
    color = saturate(color);
  }
  return color;
}

float3 ApplyPsychoV17(float3 untonemapped_bt709) {
  float3 bt709_scene = untonemapped_bt709 * RENODX_TONE_MAP_EXPOSURE;

  float3 lms_in = renodx::color::lms::from::BT709(bt709_scene);
  float yf_input = renodx::color::yf::from::LMS(lms_in);
  float yf_midgray = renodx::color::yf::from::BT709(0.18f);
  float yf_target = yf_input;

  if (RENODX_TONE_MAP_HIGHLIGHTS != 1.f) {
    yf_target = renodx::color::grade::Highlights(yf_target, RENODX_TONE_MAP_HIGHLIGHTS, yf_midgray);
  }
  if (RENODX_TONE_MAP_SHADOWS != 1.f) {
    yf_target = renodx::color::grade::Shadows(yf_target, RENODX_TONE_MAP_SHADOWS, yf_midgray);
  }
  if (RENODX_TONE_MAP_CONTRAST != 1.f) {
    yf_target = renodx::color::grade::ContrastSafe(yf_target, RENODX_TONE_MAP_CONTRAST, yf_midgray);
  }

  float yf_scale = renodx::math::DivideSafe(yf_target, yf_input, 1.f);
  bt709_scene *= yf_scale;

  return renodx::tonemap::psychov::psychotm_test17(
      bt709_scene,
      (RENODX_PEAK_WHITE_NITS / RENODX_DIFFUSE_WHITE_NITS),
      1.f,
      1.f,
      1.f,
      1.f,
      RENODX_TONE_MAP_SATURATION,
      RENODX_TONE_MAP_BLOWOUT,
      100.f,
      1.f,
      1.f,
      1,
      max(0.f, CUSTOM_CONE_RESPONSE),
      0.18f.xxx,
      0.18f.xxx,
      1.f,
      1);
}

float3 ApplyOutputToneMap(float3 untonemapped_bt709, float2 texcoord) {
  float3 output_color;
  if (RENODX_TONE_MAP_TYPE == 0.f) {
    output_color = saturate(untonemapped_bt709);
  } else {
    output_color = renodx::draw::ToneMapPass(untonemapped_bt709);
    if (RENODX_TONE_MAP_TYPE == RENODX_TONE_MAP_TYPE_PSYCHOV17) {
      output_color = ApplyPsychoV17(untonemapped_bt709);
    }
  }
  return output_color;
}
