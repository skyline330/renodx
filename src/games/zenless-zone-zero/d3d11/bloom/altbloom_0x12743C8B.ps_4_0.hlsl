#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Wed Jun 17 01:21:18 2026
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

  r0.xyzw = cb0[173].xyxy * float4(-11.2270498, -11.2270498, -9.26659012, -9.26659012) + v1.xyxy;
  r0.xyzw = max(v2.xyxy, r0.xyzw);
  r0.xyzw = min(v2.zwzw, r0.xyzw);
  r1.xyzw = t0.Sample(s0_s, r0.zw).xyzw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r1.xyzw = float4(0.00237488793, 0.00237488793, 0.00237488793, 0.00237488793) * r1.xyzw;
  r0.xyzw = r0.xyzw * float4(0.000267652911, 0.000267652911, 0.000267652911, 0.000267652911) + r1.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-7.31025219, -7.31025219, -5.35757923, -5.35757923) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0138839399, 0.0138839399, 0.0138839399, 0.0138839399) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0535232984, 0.0535232984, 0.0535232984, 0.0535232984) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-3.40785503, -3.40785503, -1.46013796, -1.46013796) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.136157498, 0.136157498, 0.136157498, 0.136157498) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.228686199, 0.228686199, 0.228686199, 0.228686199) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(0.486687511, 0.486687511, 2.4338119, 2.4338119) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.253672093, 0.253672093, 0.253672093, 0.253672093) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.185852095, 0.185852095, 0.185852095, 0.185852095) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(4.38240194, 4.38240194, 6.33349609, 6.33349609) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0899170935, 0.0899170935, 0.0899170935, 0.0899170935) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0287152007, 0.0287152007, 0.0287152007, 0.0287152007) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(8.28792858, 8.28792858, 10.2462902, 10.2462902) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.00604929123, 0.00604929123, 0.00604929123, 0.00604929123) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.000840004825, 0.000840004825, 0.000840004825, 0.000840004825) + r0.xyzw;
  r1.xy = cb0[173].xy * float2(12, 12) + v1.xy;
  r1.xy = max(v2.xy, r1.xy);
  r1.xy = min(v2.zw, r1.xy);
  r1.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  o0.xyzw = r1.xyzw * float4(6.07707298e-05, 6.07707298e-05, 6.07707298e-05, 6.07707298e-05) + r0.xyzw;

  o0.xyz = ProcessBloom(o0.xyz);

  return;
}
