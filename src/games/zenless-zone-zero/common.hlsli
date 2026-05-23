#include "./macleod_boynton.hlsli"
#include "./shared.h"

// From the Resident Evil 4 Remake mod
struct UserGradingConfig {
  float exposure;
  float highlights;
  float shadows;
  float contrast;
  float flare;
  float gamma;
  float saturation;
  float dechroma;
  float highlight_saturation;
  float hue_emulation;
  float chrominance_emulation;
};

float Highlights(float x, float highlights, float mid_gray) {
  if (highlights == 1.f) return x;

  if (highlights > 1.f) {
    return max(x, lerp(x, mid_gray * pow(x / mid_gray, highlights), min(x, 1.f)));
  } else {  // highlights < 1.f
    x /= mid_gray;
    return lerp(x, pow(x, highlights), step(1.f, x)) * mid_gray;
  }
}

float Shadows(float x, float shadows, float mid_gray) {
  if (shadows == 1.f) return x;

  const float ratio = max(renodx::math::DivideSafe(x, mid_gray, 0.f), 0.f);
  const float base_term = x * mid_gray;
  const float base_scale = renodx::math::DivideSafe(base_term, ratio, 0.f);

  if (shadows > 1.f) {
    float raised = x * (1.f + renodx::math::DivideSafe(base_term, pow(ratio, shadows), 0.f));
    float reference = x * (1.f + base_scale);
    return max(x, x + (raised - reference));
  } else {  // shadows < 1.f
    float lowered = x * (1.f - renodx::math::DivideSafe(base_term, pow(ratio, 2.f - shadows), 0.f));
    float reference = x * (1.f - base_scale);
    return clamp(x + (lowered - reference), 0.f, x);
  }
}

float3 ApplyLuminosityGrading(float3 untonemapped, float lum, UserGradingConfig config, float mid_gray = 0.18f) {
  if (config.exposure == 1.f && config.shadows == 1.f && config.highlights == 1.f && config.contrast == 1.f && config.flare == 0.f && config.gamma == 1.f) {
    return untonemapped;
  }
  float3 color = untonemapped;

  color *= config.exposure;

  // gamma
  float lum_gamma_adjusted = renodx::math::Select(lum < 1.f, pow(lum, config.gamma), lum);

  // contrast & flare
  const float lum_normalized = lum_gamma_adjusted / mid_gray;
  float flare = renodx::math::DivideSafe(lum_normalized + config.flare, lum_normalized, 1.f);
  float exponent = config.contrast * flare;
  const float lum_contrasted = pow(lum_normalized, exponent) * mid_gray;

  // highlights
  float lum_highlighted = Highlights(lum_contrasted, config.highlights, mid_gray);

  // shadows
  float lum_shadowed = Shadows(lum_highlighted, config.shadows, mid_gray);

  const float lum_final = lum_shadowed;

  color = renodx::color::correct::Luminance(color, lum, lum_final);

  return color;
}

float3 ApplyHueAndPurityGrading(
    float3 ungraded_bt2020,
    float3 reference_bt2020,
    float lum,
    UserGradingConfig config,
    float curve_gamma = 1.f,
    float2 mb_white_override = float2(-1.f, -1.f),
    float t_min = 1e-7f) {
  float3 color_bt2020 = ungraded_bt2020;
  if (config.saturation == 1.f && config.dechroma == 0.f && config.hue_emulation == 0.f && config.chrominance_emulation == 0.f && config.highlight_saturation == 0.f) {
    return color_bt2020;
  }

  const float kNearWhiteEpsilon = renodx_custom::color::macleod_boynton::MB_NEAR_WHITE_EPSILON;
  const float2 white = (mb_white_override.x >= 0.f && mb_white_override.y >= 0.f)
                           ? mb_white_override
                           : renodx_custom::color::macleod_boynton::MB_White_D65();

  float color_purity01 = renodx_custom::color::macleod_boynton::ApplyBT2020(
                             color_bt2020, 1.f, 1.f, mb_white_override, t_min)
                             .purityCur01;

  // MB hue + purity emulation (analog of OkLab hue/chrominance section).
  if (config.hue_emulation != 0.f || config.chrominance_emulation != 0.f) {
    float reference_purity01 = renodx_custom::color::macleod_boynton::ApplyBT2020(
                                   reference_bt2020, 1.f, 1.f, mb_white_override, t_min)
                                   .purityCur01;

    float purity_current = color_purity01;
    float purity_ratio = 1.f;
    float3 hue_seed_bt2020 = color_bt2020;

    if (config.hue_emulation != 0.f) {
      float3 target_lms = mul(renodx_custom::color::macleod_boynton::XYZ_TO_LMS_2006,
                              mul(renodx::color::BT2020_TO_XYZ_MAT, color_bt2020));
      float3 reference_lms = mul(renodx_custom::color::macleod_boynton::XYZ_TO_LMS_2006,
                                 mul(renodx::color::BT2020_TO_XYZ_MAT, reference_bt2020));

      float target_t = target_lms.x + target_lms.y;
      if (target_t > t_min) {
        float2 target_direction = renodx_custom::color::macleod_boynton::MB_From_LMS(target_lms) - white;
        float2 reference_direction = renodx_custom::color::macleod_boynton::MB_From_LMS(reference_lms) - white;

        float target_len_sq = dot(target_direction, target_direction);
        float reference_len_sq = dot(reference_direction, reference_direction);

        if (target_len_sq > kNearWhiteEpsilon || reference_len_sq > kNearWhiteEpsilon) {
          float2 target_unit = (target_len_sq > kNearWhiteEpsilon)
                                   ? target_direction * rsqrt(target_len_sq)
                                   : float2(0.f, 0.f);
          float2 reference_unit = (reference_len_sq > kNearWhiteEpsilon)
                                      ? reference_direction * rsqrt(reference_len_sq)
                                      : target_unit;

          if (target_len_sq <= kNearWhiteEpsilon) {
            target_unit = reference_unit;
          }

          float2 blended_unit = lerp(target_unit, reference_unit, config.hue_emulation);
          float blended_len_sq = dot(blended_unit, blended_unit);
          if (blended_len_sq <= kNearWhiteEpsilon) {
            blended_unit = (config.hue_emulation >= 0.5f) ? reference_unit : target_unit;
            blended_len_sq = dot(blended_unit, blended_unit);
          }
          blended_unit *= rsqrt(max(blended_len_sq, 1e-20f));

          float seed_len = sqrt(max(target_len_sq, 0.f));
          if (seed_len <= 1e-6f) {
            seed_len = sqrt(max(reference_len_sq, 0.f));
          }
          seed_len = max(seed_len, 1e-6f);

          hue_seed_bt2020 = mul(
              renodx::color::XYZ_TO_BT2020_MAT,
              mul(renodx_custom::color::macleod_boynton::LMS_TO_XYZ_2006,
                  renodx_custom::color::macleod_boynton::LMS_From_MB_T(white + blended_unit * seed_len, target_t)));

          float purity_post = renodx_custom::color::macleod_boynton::ApplyBT2020(
                                  hue_seed_bt2020, 1.f, 1.f, mb_white_override, t_min)
                                  .purityCur01;
          purity_ratio = renodx::math::SafeDivision(purity_current, purity_post, 1.f);
          purity_current = purity_post;
        }
      }
    }

    if (config.chrominance_emulation != 0.f) {
      float target_purity_ratio = renodx::math::SafeDivision(reference_purity01, purity_current, 1.f);
      purity_ratio = lerp(purity_ratio, target_purity_ratio, config.chrominance_emulation);
    }

    float applied_purity01 = saturate(purity_current * max(purity_ratio, 0.f));
    color_bt2020 = renodx_custom::color::macleod_boynton::ApplyBT2020(
                       hue_seed_bt2020, applied_purity01, curve_gamma, mb_white_override, t_min)
                       .rgbOut;
    color_purity01 = applied_purity01;
  }

  float purity_scale = 1.f;

  // dechroma
  if (config.dechroma != 0.f) {
    purity_scale *= lerp(1.f, 0.f, saturate(pow(lum / (10000.f / 100.f), (1.f - config.dechroma))));
  }

  // highlight saturation
  if (config.highlight_saturation != 0.f) {
    float percent_max = saturate(lum * 100.f / 10000.f);
    // positive = 1 to 0, negative = 1 to 2
    float blowout_strength = 100.f;
    float blowout_change = pow(1.f - percent_max, blowout_strength * abs(config.highlight_saturation));
    if (config.highlight_saturation < 0) {
      blowout_change = (2.f - blowout_change);
    }

    purity_scale *= blowout_change;
  }

  // saturation
  purity_scale *= config.saturation;

  if (purity_scale != 1.f) {
    float scaled_purity01 = saturate(color_purity01 * max(purity_scale, 0.f));
    color_bt2020 = renodx_custom::color::macleod_boynton::ApplyBT2020(
                       color_bt2020, scaled_purity01, curve_gamma, mb_white_override, t_min)
                       .rgbOut;
  }

  return color_bt2020;
}

float3 ApplyCustomGrading(float3 ungraded_bt709) {
  float3 ungraded_bt2020 = renodx::color::bt2020::from::BT709(ungraded_bt709);

  const UserGradingConfig cg_config = {
    RENODX_TONE_MAP_EXPOSURE,                             // float exposure;
    RENODX_TONE_MAP_HIGHLIGHTS,                           // float highlights;
    RENODX_TONE_MAP_SHADOWS,                              // float shadows;
    RENODX_TONE_MAP_CONTRAST,                             // float contrast;
    0.10f * pow(RENODX_TONE_MAP_FLARE, 10.f),             // float flare;
    1.f,                                                  // float gamma;
    RENODX_TONE_MAP_SATURATION,                           // float saturation;
    RENODX_TONE_MAP_DECHROMA,                             // float dechroma;
    -1.f * (RENODX_TONE_MAP_HIGHLIGHT_SATURATION - 1.f),  // float highlight_saturation;
    RENODX_TONE_MAP_HUE_SHIFT,                            // float hue_emulation;
    RENODX_TONE_MAP_BLOWOUT                               // float chrominance_emulation;
  };

  float luminosity = LuminosityFromBT2020LuminanceNormalized(ungraded_bt2020);

  float3 chrominance_hue_reference_bt2020 = renodx::tonemap::ReinhardPiecewise(ungraded_bt2020, 5.f, 1.5f);

  float3 graded_bt2020 = ApplyLuminosityGrading(ungraded_bt2020, luminosity, cg_config, 0.1f);

  graded_bt2020 = ApplyHueAndPurityGrading(graded_bt2020, chrominance_hue_reference_bt2020, luminosity, cg_config);

  float3 graded_bt709 = renodx::color::bt709::from::BT2020(graded_bt2020);

  return graded_bt709;
}

// From the Dishonored mod
float HDRBoost(float color, float power = 0.20f, float normalization_point = 0.02f) {
  const float smoothing = power * 2.f;

  float boosted = max(color, lerp(color, normalization_point * pow(color / normalization_point, 1.f + power), renodx::tonemap::Reinhard(color, smoothing)));

  return boosted;
}

float3 HDRBoost(float3 color, float power = 0.20f, float normalization_point = 0.02f) {
  return float3(
      HDRBoost(color.r, power, normalization_point),
      HDRBoost(color.g, power, normalization_point),
      HDRBoost(color.b, power, normalization_point));
}

float3 ApplyHDRBoost(float3 color, float power = 0.20f, int mode = 1, float normalization_point = 0.04f) {
  color = max(0, renodx::color::bt2020::from::BT709(color));
  float y_in = renodx::color::y::from::BT709(color);
  float y_out = HDRBoost(y_in, power, normalization_point);
  color = renodx::color::correct::Luminance(color, y_in, y_out);
  color = renodx::color::bt709::from::BT2020(color);

  return color;
}

float3 LutSample(float3 color, float4 lut_params, Texture2D lut_texture, SamplerState lut_sample) {
  float3 lut_input_color = (color);

  bool useSDRLut = (lut_params.w > 0.0f);

  renodx::lut::Config lut_config = renodx::lut::config::Create();
  lut_config.lut_sampler = lut_sample;
  lut_config.strength = useSDRLut ? lut_params.w * RENODX_COLOR_GRADE_LUT_STRENGTH : 0.f;
  lut_config.scaling = RENODX_COLOR_GRADE_LUT_SCALING;
  lut_config.type_input = renodx::lut::config::type::SRGB;
  lut_config.type_output = renodx::lut::config::type::SRGB;
  lut_config.precompute = lut_params.xyz;
  color = renodx::lut::Sample(lut_texture, lut_config, color);
  color = lerp(lut_input_color, color, RENODX_COLOR_GRADE_LUT_STRENGTH);
  return color;
}

float3 ApplyDisplayMap(float3 untonemapped) {
  const float peak_ratio = RENODX_PEAK_WHITE_NITS / RENODX_DIFFUSE_WHITE_NITS;

  float3 untonemapped_bt2020 = renodx::color::bt2020::from::BT709(untonemapped);
  float3 tonemapped_bt2020 = renodx::tonemap::neutwo::PerChannel(untonemapped_bt2020, peak_ratio);
  float3 tonemapped_bt709 = renodx::color::bt709::from::BT2020(tonemapped_bt2020);

  return tonemapped_bt709;
}

float3 DisplayMap(float3 hdr_color, float3 hdr_color_tm, float3 sdr_color, float2 texcoord) {
  float3 output_color;
  float3 inversed_color;
  if (RENODX_TONE_MAP_TYPE == 0.f) {
    output_color = saturate(sdr_color);
  } else {
    float3 inversed_color = (sdr_color / hdr_color_tm);
    output_color = lerp(hdr_color, inversed_color, saturate(RENODX_COLOR_GRADE_STRENGTH));
    output_color = ApplyCustomGrading(output_color);
    output_color = ApplyDisplayMap(output_color);
  }
  if (CUSTOM_FILM_GRAIN != 0) {
    output_color = renodx::effects::ApplyFilmGrain(
        output_color,
        texcoord,
        CUSTOM_RANDOM,
        CUSTOM_FILM_GRAIN * 0.03f,
        1.f);
  }
  return output_color;
}

float3 FilmGrain(float3 output_color, float2 texcoord) {
  if (CUSTOM_FILM_GRAIN != 0) {
    output_color = renodx::effects::ApplyFilmGrain(
        output_color,
        texcoord,
        CUSTOM_RANDOM,
        CUSTOM_FILM_GRAIN * 0.03f,
        1.f);
  }
  return output_color;
}

float3 ComputeGamutCompressionScaleAndCompress(float3 color_linear, inout float gamut_compression_scale) {
  const float MID_GRAY_GAMMA = log(1 / (pow(10, 0.75))) / log(0.5f);  // ~2.49f

  float3 encoded = renodx::color::gamma::EncodeSafe(color_linear, MID_GRAY_GAMMA);
  float encoded_gray = renodx::color::gamma::Encode(renodx::color::y::from::BT709(color_linear), MID_GRAY_GAMMA);

  gamut_compression_scale = renodx::color::correct::ComputeGamutCompressionScale(encoded, encoded_gray);

  float3 compressed = renodx::color::correct::GamutCompress(encoded, encoded_gray, gamut_compression_scale);

  return renodx::color::gamma::DecodeSafe(compressed, MID_GRAY_GAMMA);
}

float3 GamutDecompress(float3 color_linear, float gamut_compression_scale) {
  const float MID_GRAY_GAMMA = log(1 / (pow(10, 0.75))) / log(0.5f);  // ~2.49f

  float3 encoded = renodx::color::gamma::EncodeSafe(color_linear, MID_GRAY_GAMMA);
  float encoded_gray = renodx::color::gamma::Encode(renodx::color::y::from::BT709(color_linear), MID_GRAY_GAMMA);

  float3 decompressed = renodx::color::correct::GamutDecompress(encoded, encoded_gray, gamut_compression_scale);

  return renodx::color::gamma::DecodeSafe(decompressed, MID_GRAY_GAMMA);
}

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
