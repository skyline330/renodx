#include "../../shared.h"

// Main blit shader
// Only active when DLSS is disabled

Texture2D<float4> _BlitTex : register(t0);

SamplerState sampler_BlitTex : register(s0);

// FSR 1.0 EASU
// Based on AMD FidelityFX FSR

float4 FsrEasuRF(float2 pos) {
  return _BlitTex.GatherRed(sampler_BlitTex, pos, int2(0, 0));
}

float4 FsrEasuGF(float2 pos) {
  return _BlitTex.GatherGreen(sampler_BlitTex, pos, int2(0, 0));
}

float4 FsrEasuBF(float2 pos) {
  return _BlitTex.GatherBlue(sampler_BlitTex, pos, int2(0, 0));
}

float3 FsrEasuSampleF(float2 pos) {
  return _BlitTex.Sample(sampler_BlitTex, pos, 0).rgb;
}

float ffxApproximateReciprocal(float value) {
  return asfloat(uint(0x7ef07ebb) - asuint(value));
}

float ffxApproximateReciprocalSquareRoot(float value) {
  return asfloat(uint(0x5f347d74) - (asuint(value) >> uint(1)));
}

void FsrEasuCon(
    out float4 con0,
    out float4 con1,
    out float4 con2,
    out float4 con3,
    float2 input,
    float2 output) {
  con0 = float4(input * rcp(output), mad(0.5f, input * rcp(output), -0.5f));
  con1 = float4(1, 1, 1, -1) * rcp(input.xyxy);
  con2 = float4(-1, 2, 1, 2) * rcp(input.xyxy);
  con3 = float4(0, 4, 0, 0) * rcp(input.xyxy);
}

void fsrEasuTapFloat(
    inout float3 accumulatedColor,
    inout float accumulatedWeight,
    in float2 pixelOffset,
    in float2 gradientDirection,
    in float2 length,
    in float negativeLobeStrength,
    in float clippingPoint,
    in float3 color) {
  float2 rotatedOffset;
  rotatedOffset.x = (pixelOffset.x * (gradientDirection.x)) + (pixelOffset.y * gradientDirection.y);
  rotatedOffset.y = (pixelOffset.x * (-gradientDirection.y)) + (pixelOffset.y * gradientDirection.x);
  rotatedOffset *= length;

  float distanceSquared = rotatedOffset.x * rotatedOffset.x + rotatedOffset.y * rotatedOffset.y;
  distanceSquared = min(distanceSquared, clippingPoint);

  float weightB = float(2.0 / 5.0) * distanceSquared + float(-1.0);
  float weightA = negativeLobeStrength * distanceSquared + float(-1.0);
  weightB *= weightB;
  weightA *= weightA;
  weightB = float(25.0 / 16.0) * weightB + float(-(25.0 / 16.0 - 1.0));
  float weight = weightB * weightA;

  accumulatedColor += color * weight;
  accumulatedWeight += weight;
}

void FsrEasuFastFloat(
    out float3 pix,
    uint2 ip,
    float4 con0,
    float4 con1,
    float4 con2,
    float4 con3) {
  float2 pp = float2(ip) * (con0.xy) + (con0.zw);
  float2 tc = (pp + float(0.5)) * con1.xy;
  float3 sA = FsrEasuSampleF(tc - float2(0, con1.y));
  float3 sB = FsrEasuSampleF(tc - float2(con1.x, 0));
  float3 sC = FsrEasuSampleF(tc);
  float3 sD = FsrEasuSampleF(tc + float2(con1.x, 0));
  float3 sE = FsrEasuSampleF(tc + float2(0, con1.y));
  float lA = sA.r * float(0.5) + sA.g;
  float lB = sB.r * float(0.5) + sB.g;
  float lC = sC.r * float(0.5) + sC.g;
  float lD = sD.r * float(0.5) + sD.g;
  float lE = sE.r * float(0.5) + sE.g;

  float dc = lD - lC;
  float cb = lC - lB;
  float lenX = max(abs(dc), abs(cb));
  lenX = ffxApproximateReciprocal(lenX);
  float dirX = lD - lB;
  lenX = saturate(abs(dirX) * lenX);
  lenX *= lenX;

  float ec = lE - lC;
  float ca = lC - lA;
  float lenY = max(abs(ec), abs(ca));
  lenY = ffxApproximateReciprocal(lenY);
  float dirY = lE - lA;
  lenY = saturate(abs(dirY) * lenY);
  float len = lenY * lenY + lenX;
  float2 dir = float2(dirX, dirY);

  float2 dir2 = dir * dir;
  float dirR = dir2.x + dir2.y;
  if (dirR < float(1.0 / 64.0)) {
    pix = sC;
    return;
  }
  dirR = ffxApproximateReciprocalSquareRoot(dirR);
  dir *= float(dirR);
  len = len * float(0.5);
  len *= len;
  float stretch = (dir.x * dir.x + dir.y * dir.y) * ffxApproximateReciprocal(max(abs(dir.x), abs(dir.y)));
  float2 len2 = float2(float(1.0) + (stretch - float(1.0)) * len, float(1.0) + float(-0.5) * len);
  float lob = float(0.5) + float((1.0 / 4.0 - 0.04) - 0.5) * len;
  float clp = ffxApproximateReciprocal(lob);

  float2 fp = floor(pp);
  pp -= fp;
  float2 ppp = float2(pp);
  float2 p0 = fp * (con1.xy) + (con1.zw);
  float2 p1 = p0 + (con2.xy);
  float2 p2 = p0 + (con2.zw);
  float2 p3 = p0 + (con3.xy);
  p0.y -= con1.w;
  p3.y += con1.w;

  float4 bczzR = FsrEasuRF(p0);
  float4 bczzG = FsrEasuGF(p0);
  float4 bczzB = FsrEasuBF(p0);
  float4 ijfeR = FsrEasuRF(p1);
  float4 ijfeG = FsrEasuGF(p1);
  float4 ijfeB = FsrEasuBF(p1);
  float4 klhgR = FsrEasuRF(p2);
  float4 klhgG = FsrEasuGF(p2);
  float4 klhgB = FsrEasuBF(p2);
  float4 zzonR = FsrEasuRF(p3);
  float4 zzonG = FsrEasuGF(p3);
  float4 zzonB = FsrEasuBF(p3);

  float3 aC = 0.0f;
  float aW = float(0.0);
  fsrEasuTapFloat(aC, aW, float2(0.0, -1.0) - pp, dir, len2, lob, clp, float3(bczzR.x, bczzG.x, bczzB.x));
  fsrEasuTapFloat(aC, aW, float2(1.0, -1.0) - pp, dir, len2, lob, clp, float3(bczzR.y, bczzG.y, bczzB.y));
  fsrEasuTapFloat(aC, aW, float2(-1.0, 1.0) - pp, dir, len2, lob, clp, float3(ijfeR.x, ijfeG.x, ijfeB.x));
  fsrEasuTapFloat(aC, aW, float2(0.0, 1.0) - pp, dir, len2, lob, clp, float3(ijfeR.y, ijfeG.y, ijfeB.y));
  fsrEasuTapFloat(aC, aW, float2(0.0, 0.0) - pp, dir, len2, lob, clp, float3(ijfeR.z, ijfeG.z, ijfeB.z));
  fsrEasuTapFloat(aC, aW, float2(-1.0, 0.0) - pp, dir, len2, lob, clp, float3(ijfeR.w, ijfeG.w, ijfeB.w));
  fsrEasuTapFloat(aC, aW, float2(1.0, 1.0) - pp, dir, len2, lob, clp, float3(klhgR.x, klhgG.x, klhgB.x));
  fsrEasuTapFloat(aC, aW, float2(2.0, 1.0) - pp, dir, len2, lob, clp, float3(klhgR.y, klhgG.y, klhgB.y));
  fsrEasuTapFloat(aC, aW, float2(2.0, 0.0) - pp, dir, len2, lob, clp, float3(klhgR.z, klhgG.z, klhgB.z));
  fsrEasuTapFloat(aC, aW, float2(1.0, 0.0) - pp, dir, len2, lob, clp, float3(klhgR.w, klhgG.w, klhgB.w));
  fsrEasuTapFloat(aC, aW, float2(1.0, 2.0) - pp, dir, len2, lob, clp, float3(zzonR.z, zzonG.z, zzonB.z));
  fsrEasuTapFloat(aC, aW, float2(0.0, 2.0) - pp, dir, len2, lob, clp, float3(zzonR.w, zzonG.w, zzonB.w));

  pix = aC * rcp(aW);
}

// Lilium RCAS (Robust Contrast Adaptive Sharpening)
float3 ApplyRCAS(
    float3 center_color,
    float2 tex_coord,
    float2 texel_size,
    float sharpness_strength) {
  if (sharpness_strength == 0.0f) return center_color;

  static const float NORMALIZATION_POINT = 100.0f;  // HDR normalization

  // Sample 3x3 cross pattern:
  //    b
  //  d e f
  //    h
  float3 b = _BlitTex.SampleLevel(sampler_BlitTex, tex_coord + float2(0, -1) * texel_size, 0).rgb;
  float3 d = _BlitTex.SampleLevel(sampler_BlitTex, tex_coord + float2(-1, 0) * texel_size, 0).rgb;
  float3 e = center_color;
  float3 f = _BlitTex.SampleLevel(sampler_BlitTex, tex_coord + float2(1, 0) * texel_size, 0).rgb;
  float3 h = _BlitTex.SampleLevel(sampler_BlitTex, tex_coord + float2(0, 1) * texel_size, 0).rgb;

  // Normalize for HDR
  b /= NORMALIZATION_POINT;
  d /= NORMALIZATION_POINT;
  e /= NORMALIZATION_POINT;
  f /= NORMALIZATION_POINT;
  h /= NORMALIZATION_POINT;

  // Peak constants
  static const float2 peakC = float2(1.0f, -4.0f);

  // Calculate BT.709 relative luminance
  static const float3 BT709_LUMA = float3(0.2126f, 0.7152f, 0.0722f);
  float bLum = dot(b, BT709_LUMA);
  float dLum = dot(d, BT709_LUMA);
  float eLum = dot(e, BT709_LUMA);
  float fLum = dot(f, BT709_LUMA);
  float hLum = dot(h, BT709_LUMA);

  // Min and max of ring
  float min4Lum = min(min(min(bLum, dLum), fLum), hLum);
  float max4Lum = max(max(max(bLum, dLum), fLum), hLum);

  // 0.99 limiter to prevent overshoot
  float limitedMax4Lum = min(max4Lum, 0.99f);

  float hitMinLum = min4Lum * rcp(4.0f * limitedMax4Lum);
  float hitMaxLum = (peakC.x - limitedMax4Lum) * rcp(4.0f * min4Lum + peakC.y);
  float localLobe = max(-hitMinLum, hitMaxLum);

  // FSR RCAS limit
  static const float FSR_RCAS_LIMIT = 0.1875f;  // 0.25 - 1.0/16.0

  float lobe = max(-FSR_RCAS_LIMIT, min(localLobe, 0.0f)) * sharpness_strength;

  // Noise removal
  float bLuma2x = bLum * 2.0f;
  float dLuma2x = dLum * 2.0f;
  float eLuma2x = eLum * 2.0f;
  float fLuma2x = fLum * 2.0f;
  float hLuma2x = hLum * 2.0f;

  float nz = 0.25f * bLuma2x
             + 0.25f * dLuma2x
             + 0.25f * fLuma2x
             + 0.25f * hLuma2x
             - eLuma2x;

  float maxLuma2x = max(max(max(max(bLuma2x, dLuma2x), eLuma2x), fLuma2x), hLuma2x);
  float minLuma2x = min(min(min(min(bLuma2x, dLuma2x), eLuma2x), fLuma2x), hLuma2x);

  nz = saturate(abs(nz) * rcp(maxLuma2x - minLuma2x));
  nz = -0.5f * nz + 1.0f;

  lobe *= nz;

  // Resolve
  float rcpL = rcp(4.0f * lobe + 1.0f);
  float pixLum = ((bLum + dLum + hLum + fLum) * lobe + eLum) * rcpL;
  float3 pix = clamp(pixLum / eLum, 0.0f, 4.0f) * e;

  // Denormalize
  return pix * NORMALIZATION_POINT;
}

float4 main(
    noperspective float4 SV_Position: SV_Position,
    linear float2 TEXCOORD: TEXCOORD) : SV_Target {
  float4 SV_Target;

  // Get input texture dimensions
  uint inputWidth, inputHeight;
  _BlitTex.GetDimensions(inputWidth, inputHeight);
  float2 inputRes = float2(inputWidth, inputHeight);

  // Estimate output resolution from screen-space derivatives
  float2 ddxUV = ddx(TEXCOORD);
  float2 ddyUV = ddy(TEXCOORD);

  float2 outputRes = float2(
      abs(ddxUV.x) > 0.0 ? 1.0 / abs(ddxUV.x) : inputWidth,
      abs(ddyUV.y) > 0.0 ? 1.0 / abs(ddyUV.y) : inputHeight);

  // Check if FSR upscaling or RCAS sharpening is enabled
  bool enableFSR = injectedData.fxFSRUpscaling >= 1.f;
  bool enableRCAS = injectedData.fxRCASSharpening >= 1.f;
  float rcasAmount = injectedData.fxRCASAmount;

  // Only apply FSR EASU if enabled and we're actually upscaling
  if (enableFSR && (inputWidth < outputRes.x || inputHeight < outputRes.y)) {
    // EASU upscaling
    float3 color;
    float4 con0, con1, con2, con3;
    FsrEasuCon(con0, con1, con2, con3, inputRes, outputRes);
    FsrEasuFastFloat(color, uint2(TEXCOORD * outputRes), con0, con1, con2, con3);

    // Apply RCAS sharpening after upscaling if enabled
    if (enableRCAS && rcasAmount > 0.0f) {
      float2 texelSize = 1.0f / outputRes;
      color = ApplyRCAS(color, TEXCOORD, texelSize, rcasAmount);
    }

    float alpha = _BlitTex.Sample(sampler_BlitTex, TEXCOORD).a;
    SV_Target = float4(color, alpha);
  } else if (enableRCAS && rcasAmount > 0.0f) {
    // Apply RCAS without upscaling (standalone sharpening)
    float3 color = _BlitTex.Sample(sampler_BlitTex, TEXCOORD).rgb;
    float2 texelSize = 1.0f / inputRes;
    color = ApplyRCAS(color, TEXCOORD, texelSize, rcasAmount);

    float alpha = _BlitTex.Sample(sampler_BlitTex, TEXCOORD).a;
    SV_Target = float4(color, alpha);
  } else {
    // Passthrough if both disabled
    SV_Target = _BlitTex.Sample(sampler_BlitTex, TEXCOORD);
  }

  return SV_Target;
}
