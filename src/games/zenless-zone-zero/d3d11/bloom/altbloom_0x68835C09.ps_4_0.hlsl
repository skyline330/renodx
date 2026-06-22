#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Wed Jun 17 01:21:23 2026
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

  r0.xyzw = cb0[173].xyxy * float4(-13.25348, -13.25348, -11.2849302, -11.2849302) + v1.xyxy;
  r0.xyzw = max(v2.xyxy, r0.xyzw);
  r0.xyzw = min(v2.zwzw, r0.xyzw);
  r1.xyzw = t0.Sample(s0_s, r0.zw).xyzw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r1.xyzw = float4(0.00124706305, 0.00124706305, 0.00124706305, 0.00124706305) * r1.xyzw;
  r0.xyzw = r0.xyzw * float4(0.000175079898, 0.000175079898, 0.000175079898, 0.000175079898) + r1.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-9.31862354, -9.31862354, -7.35432482, -7.35432482) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0064835432, 0.0064835432, 0.0064835432, 0.0064835432) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0246125292, 0.0246125292, 0.0246125292, 0.0246125292) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-5.39172697, -5.39172697, -3.43044496, -3.43044496) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.068241708, 0.068241708, 0.068241708, 0.068241708) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.138228595, 0.138228595, 0.138228595, 0.138228595) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(-1.47003198, -1.47003198, 0.49000001, 0.49000001) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.204586595, 0.204586595, 0.204586595, 0.204586595) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.221274197, 0.221274197, 0.221274197, 0.221274197) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(2.45015907, 2.45015907, 4.4109478, 4.4109478) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.174891099, 0.174891099, 0.174891099, 0.174891099) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.101009399, 0.101009399, 0.101009399, 0.101009399) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(6.37283611, 6.37283611, 8.33624077, 8.33624077) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0426238105, 0.0426238105, 0.0426238105, 0.0426238105) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0131385699, 0.0131385699, 0.0131385699, 0.0131385699) + r0.xyzw;
  r1.xyzw = cb0[173].xyxy * float4(10.3015099, 10.3015099, 12.2689199, 12.2689199) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.00295754801, 0.00295754801, 0.00295754801, 0.00295754801) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.000486030098, 0.000486030098, 0.000486030098, 0.000486030098) + r0.xyzw;
  r1.xy = cb0[173].xy * float2(14, 14) + v1.xy;
  r1.xy = max(v2.xy, r1.xy);
  r1.xy = min(v2.zw, r1.xy);
  r1.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  o0.xyzw = r1.xyzw * float4(4.43790414e-05, 4.43790414e-05, 4.43790414e-05, 4.43790414e-05) + r0.xyzw;

  o0.xyz = ProcessBloom(o0.xyz);

  return;
}
