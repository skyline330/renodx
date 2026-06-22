#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Wed Jun 17 01:21:26 2026
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0) {
  float4 cb0[174];
}

// 3Dmigoto declarations
#define cmp -

void main(
    float4 v0: SV_POSITION0,
    float4 v1: TEXCOORD0,
    float4 v2: TEXCOORD1,
    out float4 o0: SV_Target0) {
  float4 r0, r1, r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[173].xyxy * float4(-6.13840723, -6.13840723, -4.21995306, -4.21995306) + v1.xyxy;
  r0.xyzw = max(v2.xyxy, r0.xyzw);
  r0.xyzw = min(v2.zwzw, r0.xyzw);
  r1.xyzw = t0.Sample(s0_s, r0.zw).xyzw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r1.xyzw = float4(0.0285764094, 0.0285764094, 0.0285764094, 0.0285764094) * r1.xyzw;
  r0.xyzw = r0.xyzw * float4(0.00155262905, 0.00155262905, 0.00155262905, 0.00155262905) + r1.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-2.33108091, -2.33108091, -0.464892805, -0.464892805) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.180222899, 0.180222899, 0.180222899, 0.180222899) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.395452797, 0.395452797, 0.395452797, 0.395452797) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(1.39604294, 1.39604294, 3.27197599, 3.27197599) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.304397702, 0.304397702, 0.304397702, 0.304397702) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0819592923, 0.0819592923, 0.0819592923, 0.0819592923) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(5.1754818, 5.1754818, 7, 7) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.00762319518, 0.00762319518, 0.00762319518, 0.00762319518) + r0.xyzw;
  o0.xyzw = r1.xyzw * float4(0.000214895306, 0.000214895306, 0.000214895306, 0.000214895306) + r0.xyzw;

  o0.xyz = ProcessBloom(o0.xyz);

  return;
}
