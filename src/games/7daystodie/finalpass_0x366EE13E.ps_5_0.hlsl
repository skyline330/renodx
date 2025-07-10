#include "./shared.h"
// applies after uberpost 1 and 3

// ---- Created with 3Dmigoto v1.4.1 on Thu Jun 26 18:45:12 2025
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[29];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r1.xyzw = t1.Sample(s1_s, w1.xy).xyzw;
  float3 untonemapped = r1.rgb;
  r0.xy = v1.xy * cb0[28].xy + cb0[28].zw;
  r0.x = t0.Sample(s0_s, r0.xy).w;
  r0.x = r0.x * 2 + -1;
  r0.y = 1 + -abs(r0.x);
  r0.x = saturate(r0.x * 3.40282347e+38 + 0.5);
  r0.x = r0.x * 2 + -1;
  r0.y = sqrt(r0.y);
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;

  // sRGB encoding
  // r0.yzw = max(float3(1.1920929e-07,1.1920929e-07,1.1920929e-07), abs(r1.xyz));
  // r0.yzw = log2(r0.yzw);
  // r0.yzw = float3(0.416666657,0.416666657,0.416666657) * r0.yzw;
  // r0.yzw = exp2(r0.yzw);
  // r0.yzw = r0.yzw * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
  // r2.xyz = float3(12.9200001,12.9200001,12.9200001) * r1.xyz;
  // r1.xyz = cmp(float3(0.00313080009, 0.00313080009, 0.00313080009) >= r1.xyz);
  // r0.yzw = r1.xyz ? r2.xyz : r0.yzw;
  o0.w = r1.w;
  r0.gba = r1.rgb;
  // r0.gba = renodx::color::srgb::EncodeSafe(r1.rgb);

  // r0.xyz = r0.xxx * float3(0.00392156886,0.00392156886,0.00392156886) + r0.yzw;
  // sRGB decoding
  // r1.xyz = float3(0.0549999997,0.0549999997,0.0549999997) + r0.xyz;
  // r1.xyz = float3(0.947867334,0.947867334,0.947867334) * r1.xyz;
  // r1.xyz = max(float3(1.1920929e-07,1.1920929e-07,1.1920929e-07), abs(r1.xyz));
  // r1.xyz = log2(r1.xyz);
  // r1.xyz = float3(2.4000001,2.4000001,2.4000001) * r1.xyz;
  // r1.xyz = exp2(r1.xyz);
  // r2.xyz = float3(0.0773993805,0.0773993805,0.0773993805) * r0.xyz;
  // r0.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r0.xyz);
  // o0.xyz = r0.xyz ? r2.xyz : r1.xyz;
  o0.rgb = r0.gba;
  // o0.rgb = renodx::color::srgb::DecodeSafe(r0.rgb);

  float3 outputColor = o0.rgb;

  if (RENODX_TONE_MAP_TYPE != 0.f) {
    outputColor = renodx::draw::ToneMapPass(untonemapped, outputColor);
  } else {
    outputColor = saturate(outputColor);
  }
  if (CUSTOM_FILM_GRAIN_STRENGTH != 0) {
    outputColor = renodx::effects::ApplyFilmGrain(
        outputColor,
        v1.xy,
        CUSTOM_RANDOM,
        CUSTOM_FILM_GRAIN_STRENGTH * 0.03f);
  }
  o0.rgb = renodx::draw::RenderIntermediatePass(outputColor);
  return;
}