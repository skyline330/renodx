#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Wed Jun 17 01:21:21 2026
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

  r0.xyzw = cb0[173].xyxy * float4(-8.17794895, -8.17794895, -6.23681307, -6.23681307) + v1.xyxy;
  r0.xyzw = max(v2.xyxy, r0.xyzw);
  r0.xyzw = min(v2.zwzw, r0.xyzw);
  r1.xyzw = t0.Sample(s0_s, r0.zw).xyzw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r1.xyzw = float4(0.00868129171, 0.00868129171, 0.00868129171, 0.00868129171) * r1.xyzw;
  r0.xyzw = r0.xyzw * float4(0.000648150279, 0.000648150279, 0.000648150279, 0.000648150279) + r1.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-4.30785608, -4.30785608, -2.38933897, -2.38933897) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0579302497, 0.0579302497, 0.0579302497, 0.0579302497) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.193389893, 0.193389893, 0.193389893, 0.193389893) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-0.477510691, -0.477510691, 1.43289399, 1.43289399) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.323991507, 0.323991507, 0.323991507, 0.323991507) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.272805005, 0.272805005, 0.272805005, 0.272805005) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(3.34748197, 3.34748197, 5.27087307, 5.27087307) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.115390398, 0.115390398, 0.115390398, 0.115390398) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0244596303, 0.0244596303, 0.0244596303, 0.0244596303) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(7.20582581, 7.20582581, 9, 9) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.00258865301, 0.00258865301, 0.00258865301, 0.00258865301) + r0.xyzw;
  o0.xyzw = r1.xyzw * float4(0.000115337702, 0.000115337702, 0.000115337702, 0.000115337702) + r0.xyzw;

  o0.xyz = ProcessBloom(o0.xyz);

  return;
}
