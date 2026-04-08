// ---- Created with 3Dmigoto v1.4.1 on Fri Mar 27 21:00:47 2026
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1) {
  float4 cb1[1];
}

cbuffer cb0 : register(b0) {
  float4 cb0[170];
}

#include "../../shared.h"

// Version 2.7 - Bloom shader (unknown, found in dump)

// 3Dmigoto declarations
#define cmp -

void main(
    float4 v0: SV_POSITION0,
    float2 v1: TEXCOORD0,
    out float4 o0: SV_Target0) {
  float4 r0, r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v1.xy * cb0[167].xy + cb0[167].zw;
  r0.xyzw = t1.Sample(s0_s, r0.xy).xyzw;
  r0.xyzw = cb1[0].yyyy * r0.xyzw;
  r1.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.xyzw = r1.xyzw * cb1[0].xxxx + r0.xyzw;
  r1.xy = v1.xy * cb0[168].xy + cb0[168].zw;
  r1.xyzw = t1.Sample(s0_s, r1.xy).xyzw;
  r0.xyzw = r1.xyzw * cb1[0].zzzz + r0.xyzw;
  r1.xy = v1.xy * cb0[169].xy + cb0[169].zw;
  r1.xyzw = t1.Sample(s0_s, r1.xy).xyzw;
  o0.xyzw = r1.xyzw * cb1[0].wwww + r0.xyzw;

  // Lerp between clamped and unclamped bloom based on slider
  o0.xyz = lerp(saturate(o0.xyz), o0.xyz, injectedData.fxBloomIntensity);

  return;
}
