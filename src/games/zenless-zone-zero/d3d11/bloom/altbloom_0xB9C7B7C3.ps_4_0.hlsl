#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Wed May  6 19:17:21 2026
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0) {
  float4 cb0[170];
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

  r0.xyzw = cb0[169].xyxy * float4(-5.11701679, -5.11701679, -3.21651697, -3.21651697) + v1.xyxy;
  r0.xyzw = max(v2.xyxy, r0.xyzw);
  r0.xyzw = min(v2.zwzw, r0.xyzw);
  r1.xyzw = t0.SampleBias(s0_s, r0.zw, cb0[61].x).xyzw;
  r0.xyzw = t0.SampleBias(s0_s, r0.xy, cb0[61].x).xyzw;
  r1.xyzw = float4(0.0590728, 0.0590728, 0.0590728, 0.0590728) * r1.xyzw;
  r0.xyzw = r0.xyzw * float4(0.00277208304, 0.00277208304, 0.00277208304, 0.00277208304) + r1.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(-1.36559105, -1.36559105, 0.454197288, 0.454197288) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.3172324, 0.3172324, 0.3172324, 0.3172324) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.443100512, 0.443100512, 0.443100512, 0.443100512) + r0.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(2.28523707, 2.28523707, 4.16063213, 4.16063213) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.162259907, 0.162259907, 0.162259907, 0.162259907) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0152379498, 0.0152379498, 0.0152379498, 0.0152379498) + r0.xyzw;
  r1.xy = cb0[169].xy * float2(6, 6) + v1.xy;
  r1.xy = max(v2.xy, r1.xy);
  r1.xy = min(v2.zw, r1.xy);
  r1.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  o0.xyzw = r1.xyzw * float4(0.000324381195, 0.000324381195, 0.000324381195, 0.000324381195) + r0.xyzw;

  // Lerp between clamped and unclamped bloom based on slider
  o0.xyz = lerp(saturate(o0.xyz), o0.xyz, CUSTOM_BLOOM);

  return;
}
