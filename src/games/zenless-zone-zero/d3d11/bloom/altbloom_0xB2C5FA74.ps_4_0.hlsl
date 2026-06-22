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

  r0.xyzw = cb0[173].xyxy * float4(-14.26509, -14.26509, -12.2933798, -12.2933798) + v1.xyxy;
  r0.xyzw = max(v2.xyxy, r0.xyzw);
  r0.xyzw = min(v2.zwzw, r0.xyzw);
  r1.xyzw = t0.Sample(s0_s, r0.zw).xyzw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r1.xyzw = float4(0.000947096676, 0.000947096676, 0.000947096676, 0.000947096676) * r1.xyzw;
  r0.xyzw = r0.xyzw * float4(0.000146320002, 0.000146320002, 0.000146320002, 0.000146320002) + r1.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-10.3233604, -10.3233604, -8.35486317, -8.35486317) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.00464627193, 0.00464627193, 0.00464627193, 0.00464627193) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0172795802, 0.0172795802, 0.0172795802, 0.0172795802) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-6.38767719, -6.38767719, -4.42154217, -4.42154217) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0487266295, 0.0487266295, 0.0487266295, 0.0487266295) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.104202203, 0.104202203, 0.104202203, 0.104202203) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-2.45616198, -2.45616198, -0.491210788, -0.491210788) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.169012904, 0.169012904, 0.169012904, 0.169012904) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.207937002, 0.207937002, 0.207937002, 0.207937002) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(1.47365403, 1.47365403, 3.43877792, 3.43877792) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.194056496, 0.194056496, 0.194056496, 0.194056496) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.137373805, 0.137373805, 0.137373805, 0.137373805) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(5.40449619, 5.40449619, 7.37112093, 7.37112093) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0737620592, 0.0737620592, 0.0737620592, 0.0737620592) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0300378799, 0.0300378799, 0.0300378799, 0.0300378799) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(9.33893299, 9.33893299, 11.3081703, 11.3081703) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.00927573629, 0.00927573629, 0.00927573629, 0.00927573629) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.00217165402, 0.00217165402, 0.00217165402, 0.00217165402) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(13.2790203, 13.2790203, 15, 15) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.000385392312, 0.000385392312, 0.000385392312, 0.000385392312) + r0.xyzw;
  o0.xyzw = r1.xyzw * float4(3.87885193e-05, 3.87885193e-05, 3.87885193e-05, 3.87885193e-05) + r0.xyzw;

  o0.xyz = ProcessBloom(o0.xyz);

  return;
}
