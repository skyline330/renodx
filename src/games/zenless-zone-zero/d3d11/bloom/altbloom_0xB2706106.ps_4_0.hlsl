#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Wed Jun 17 01:21:28 2026
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

  r0.xyzw = cb0[173].xyxy * float4(-7.15882015, -7.15882015, -5.22749805, -5.22749805) + v1.xyxy;
  r0.xyzw = max(v2.xyxy, r0.xyzw);
  r0.xyzw = min(v2.zwzw, r0.xyzw);
  r1.xyzw = t0.Sample(s0_s, r0.zw).xyzw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r1.xyzw = float4(0.0151298102, 0.0151298102, 0.0151298102, 0.0151298102) * r1.xyzw;
  r0.xyzw = r0.xyzw * float4(0.000964867824, 0.000964867824, 0.000964867824, 0.000964867824) + r1.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-3.31476212, -3.31476212, -1.41741204, -1.41741204) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.100958303, 0.100958303, 0.100958303, 0.100958303) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.288899988, 0.288899988, 0.288899988, 0.288899988) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(0.472244591, 0.472244591, 2.36454797, 2.36454797) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.356403589, 0.356403589, 0.356403589, 0.356403589) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.189770803, 0.189770803, 0.189770803, 0.189770803) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(4.26889801, 4.26889801, 6.19080782, 6.19080782) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0434656292, 0.0434656292, 0.0434656292, 0.0434656292) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.00425362587, 0.00425362587, 0.00425362587, 0.00425362587) + r0.xyzw;
  r1.xy = cb0[173].xy * float2(8, 8) + v1.xy;
  r1.xy = max(v2.xy, r1.xy);
  r1.xy = min(v2.zw, r1.xy);
  r1.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  o0.xyzw = r1.xyzw * float4(0.000153239904, 0.000153239904, 0.000153239904, 0.000153239904) + r0.xyzw;

  o0.xyz = ProcessBloom(o0.xyz);

  return;
}
