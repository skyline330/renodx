#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Wed Jun 17 01:21:20 2026
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

  r0.xyzw = cb0[173].xyxy * float4(-9.19568539, -9.19568539, -7.24677086, -7.24677086) + v1.xyxy;
  r0.xyzw = max(v2.xyxy, r0.xyzw);
  r0.xyzw = min(v2.zwzw, r0.xyzw);
  r1.xyzw = t0.Sample(s0_s, r0.zw).xyzw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r1.xyzw = float4(0.00533527322, 0.00533527322, 0.00533527322, 0.00533527322) * r1.xyzw;
  r0.xyzw = r0.xyzw * float4(0.000462143391, 0.000462143391, 0.000462143391, 0.000462143391) + r1.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-5.30611801, -5.30611801, -3.37267494, -3.37267494) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0345309302, 0.0345309302, 0.0345309302, 0.0345309302) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.125586197, 0.125586197, 0.125586197, 0.125586197) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-1.444435, -1.444435, 0.481410086, 0.481410086) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.257140011, 0.257140011, 0.257140011, 0.257140011) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.296748906, 0.296748906, 0.296748906, 0.296748906) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(2.40806508, 2.40806508, 4.33859921, 4.33859921) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.193065301, 0.193065301, 0.193065301, 0.193065301) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0707632825, 0.0707632825, 0.0707632825, 0.0707632825) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(6.275455, 6.275455, 8.22016716, 8.22016716) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0145892203, 0.0145892203, 0.0145892203, 0.0145892203) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.00168830203, 0.00168830203, 0.00168830203, 0.00168830203) + r0.xyzw;
  r1.xy = cb0[173].xy * float2(10, 10) + v1.xy;
  r1.xy = max(v2.xy, r1.xy);
  r1.xy = min(v2.zw, r1.xy);
  r1.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  o0.xyzw = r1.xyzw * float4(9.04348635e-05, 9.04348635e-05, 9.04348635e-05, 9.04348635e-05) + r0.xyzw;

  o0.xyz = ProcessBloom(o0.xyz);

  return;
}
