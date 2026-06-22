#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Wed Jun 17 01:21:19 2026
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

  r0.xyzw = cb0[173].xyxy * float4(-12.2408304, -12.2408304, -10.2759895, -10.2759895) + v1.xyxy;
  r0.xyzw = max(v2.xyxy, r0.xyzw);
  r0.xyzw = min(v2.zwzw, r0.xyzw);
  r1.xyzw = t0.Sample(s0_s, r0.zw).xyzw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r1.xyzw = float4(0.00169133605, 0.00169133605, 0.00169133605, 0.00169133605) * r1.xyzw;
  r0.xyzw = r0.xyzw * float4(0.0002138243, 0.0002138243, 0.0002138243, 0.0002138243) + r1.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-8.31416416, -8.31416416, -6.35502481, -6.35502481) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.00932760444, 0.00932760444, 0.00932760444, 0.00932760444) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0358844101, 0.0358844101, 0.0358844101, 0.0358844101) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-4.39811516, -4.39811516, -2.44284511, -2.44284511) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0963461399, 0.0963461399, 0.0963461399, 0.0963461399) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.180597097, 0.180597097, 0.180597097, 0.180597097) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-0.488520801, -0.488520801, 1.46561098, 1.46561098) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.236395195, 0.236395195, 0.236395195, 0.236395195) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.216104597, 0.216104597, 0.216104597, 0.216104597) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(3.42031598, 3.42031598, 5.37632608, 5.37632608) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.137965694, 0.137965694, 0.137965694, 0.137965694) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.061501421, 0.061501421, 0.061501421, 0.061501421) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(7.33428383, 7.33428383, 9.29471874, 9.29471874) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0191370603, 0.0191370603, 0.0191370603, 0.0191370603) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.00415493501, 0.00415493501, 0.00415493501, 0.00415493501) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(11.2580204, 11.2580204, 13, 13) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.000629126211, 0.000629126211, 0.000629126211, 0.000629126211) + r0.xyzw;
  o0.xyzw = r1.xyzw * float4(5.1495761e-05, 5.1495761e-05, 5.1495761e-05, 5.1495761e-05) + r0.xyzw;

  o0.xyz = ProcessBloom(o0.xyz);

  return;
}
