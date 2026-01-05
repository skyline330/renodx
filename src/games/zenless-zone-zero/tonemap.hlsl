#include "./shared.h"

static inline float3 AutoHDRVideo(float3 sdr_video) {
  if (RENODX_TONE_MAP_TYPE == 0.f || RENODX_TONE_MAP_HDR_VIDEO == 0.f) {
    return sdr_video;
  }
  renodx::draw::Config config = renodx::draw::BuildConfig();
  config.peak_white_nits = RENODX_VIDEO_NITS;

  float3 hdr_video = renodx::draw::UpscaleVideoPass(saturate(sdr_video), config);
  hdr_video = renodx::color::srgb::DecodeSafe(hdr_video);
  return renodx::draw::RenderIntermediatePass(hdr_video);
}

float3 applyUserToneMap(float3 color, float4 lutParams, Texture2D<float4> lutTexture, SamplerState lutSampler) {
  float3 outputColor = color;

  bool useSDRLut = (lutParams.w > 0.0f);

  renodx::lut::Config lutConfig = renodx::lut::config::Create(
      lutSampler,
      useSDRLut ? lutParams.w * injectedData.colorGradeLUTStrength : 0,
      injectedData.colorGradeLUTScaling,
      renodx::lut::config::type::SRGB,
      renodx::lut::config::type::SRGB,
      lutParams.xyz  // precompute
  );

  float3 gradedColor = renodx::lut::Sample(
      renodx::tonemap::renodrt::NeutralSDR(color),
      lutConfig,
      lutTexture);

  return renodx::draw::ToneMapPass(outputColor, gradedColor);
}
