#include "./common.hlsl"

// ---- Created with 3Dmigoto v1.4.1 on Sun Aug 10 23:24:45 2025

cbuffer _Globals : register(b0)
{
  float2 invPixelSize : packoffset(c0);
  float4 depthFactors : packoffset(c1);
  float2 fadeParams : packoffset(c2);
  float4 color : packoffset(c3);
  float4 colorMatrix0 : packoffset(c4);
  float4 colorMatrix1 : packoffset(c5);
  float4 colorMatrix2 : packoffset(c6);
  float exponent : packoffset(c7);
  float4 ironsightsDofParams : packoffset(c8);
  uint4 mainTextureDimensions : packoffset(c9);
  float4 combineTextureWeights[2] : packoffset(c10);
  float4 colorScale : packoffset(c12);
  float2 invTexelSize : packoffset(c13);
  float4 downsampleQuarterZOffset : packoffset(c14);
  int sampleCount : packoffset(c15);
  float filterWidth : packoffset(c15.y);
  float mipLevelSource : packoffset(c15.z);
  float convolveSpecularPower : packoffset(c15.w);
  float convolveBlurRadius : packoffset(c16);
  int convolveSampleCount : packoffset(c16.y);
  float3 dofDepthScaleFactors : packoffset(c17);
  float4 radialBlurScales : packoffset(c18);
  float2 radialBlurCenter : packoffset(c19);
  float4 poissonRadialBlurConstants : packoffset(c20);
  float blendFactor : packoffset(c21);
  float3 filmGrainColorScale : packoffset(c21.y);
  float4 filmGrainTextureScaleAndOffset : packoffset(c22);
  float3 depthScaleFactors : packoffset(c23);
  float4 dofParams : packoffset(c24);
  float4 dofParams2 : packoffset(c25);
  float4 dofDebugParams : packoffset(c26);
  float3 bloomScale : packoffset(c27);
  float3 invGamma : packoffset(c28);
  float3 luminanceVector : packoffset(c29);
  float3 vignetteParams : packoffset(c30);
  float4 vignetteColor : packoffset(c31);
  float4 chromostereopsisParams : packoffset(c32);
  float4 distortionScaleOffset : packoffset(c33);
}

SamplerState mainTextureSampler_s : register(s0);
SamplerState colorGradingTextureSampler_s : register(s1);
SamplerState distortionTextureSampler_s : register(s2);
SamplerState tonemapBloomTextureSampler_s : register(s3);
SamplerState filmGrainTextureSampler_s : register(s4);
Texture2D<float4> mainTexture : register(t0);
Texture3D<float4> colorGradingTexture : register(t1);
Texture2D<float4> distortionTexture : register(t2);
Texture2D<float4> tonemapBloomTexture : register(t3);
Texture2D<float4> filmGrainTexture : register(t4);


// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD0,
  float2 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = distortionTexture.Sample(distortionTextureSampler_s, v2.xy).xy;
  r0.xy = r0.xy * distortionScaleOffset.xy + distortionScaleOffset.zw;
  r0.xy = v2.xy + r0.xy;
  r1.xyz = mainTexture.Sample(mainTextureSampler_s, r0.xy).xyz;
  r0.xyz = tonemapBloomTexture.Sample(tonemapBloomTextureSampler_s, r0.xy).xyz;
  r2.xyz = (int3)r1.xyz & int3(0x7fffffff,0x7fffffff,0x7fffffff);
  r2.xyz = cmp((int3)r2.xyz == int3(0x7f800000,0x7f800000,0x7f800000));
  r1.xyz = r2.xyz ? float3(10000,10000,10000) : r1.xyz;
  r0.xyz = r0.xyz * bloomScale.xyz * injectedData.fxBloom+ r1.xyz;
  r0.xyz = colorScale.xyz * r0.xyz;
  r1.xy = float2(-0.5,-0.5) + v2.xy;
  r1.xy = vignetteParams.xy * r1.xy * min(1, injectedData.fxVignette);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = saturate(-r0.w * vignetteColor.w + 1);
  r0.w = log2(r0.w);
  r0.w = vignetteParams.z * r0.w * max(1, injectedData.fxVignette);
  r0.w = exp2(r0.w);
  r0.xyz = r0.xyz * r0.www;
  float3 untonemapped = r0.rgb;
  r1.xyz = float3(0.985521019,0.985521019,0.985521019) * r0.xyz;
  r2.xyz = r0.xyz * float3(0.985521019,0.985521019,0.985521019) + float3(0.058662001,0.058662001,0.058662001);
  r1.xyz = r2.xyz * r1.xyz;
  r2.xyz = r0.xyz * float3(0.774596989,0.774596989,0.774596989) + float3(0.0482814983,0.0482814983,0.0482814983);
  r0.xyz = r0.xyz * float3(0.774596989,0.774596989,0.774596989) + float3(1.24270999,1.24270999,1.24270999);
  r0.xyz = r2.xyz * r0.xyz;
  r0.xyz = r1.xyz / r0.xyz;
  float3 LUTless = r0.xyz;
  float midGray = 0.161404936911f;
  // r0.xyz = sqrt(r0.xyz);
  // r0.xyz = r0.xyz * float3(0.96875,0.96875,0.96875) + float3(0.015625,0.015625,0.015625);
  // r0.xyz = colorGradingTexture.Sample(colorGradingTextureSampler_s, r0.xyz).xyz;
  // r1.xy = v2.xy * filmGrainTextureScaleAndOffset.xy + filmGrainTextureScaleAndOffset.zw;
  // r0.w = filmGrainTexture.Sample(filmGrainTextureSampler_s, r1.xy).x;
  // r0.w = -0.5 + r0.w;
  // r0.xyz = r0.www * filmGrainColorScale.xyz + r0.xyz;
  // o0.w = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  // o0.xyz = r0.xyz;
  o0.rgb = applyUserTonemap(untonemapped, colorGradingTexture, colorGradingTextureSampler_s, LUTless, midGray, true);
  if (!injectedData.resScaleCheck) {
  if (injectedData.custom_grain_strength > 0.f) {
    o0.rgb = renodx::effects::ApplyFilmGrain(o0.rgb, v2, CUSTOM_RANDOM, CUSTOM_GRAIN_STRENGTH * 0.03f);
  }
  o0.rgb = PostToneMapScale(o0.rgb);
  } else {
    o0.rgb = renodx::color::gamma::EncodeSafe(o0.rgb, 2.2f);
  }
  o0.a = renodx::color::y::from::BT709(o0.rgb);
  return;
}