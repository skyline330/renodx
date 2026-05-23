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

  r0.xyzw = cb0[169].xyxy * float4(-15.2757797, -15.2757797, -13.3013401, -13.3013401) + v1.xyxy;
  r0.xyzw = max(v2.xyxy, r0.xyzw);
  r0.xyzw = min(v2.zwzw, r0.xyzw);
  r1.xyzw = t0.SampleBias(s0_s, r0.zw, cb0[61].x).xyzw;
  r0.xyzw = t0.SampleBias(s0_s, r0.xy, cb0[61].x).xyzw;
  r1.xyzw = float4(0.00073777209, 0.00073777209, 0.00073777209, 0.00073777209) * r1.xyzw;
  r0.xyzw = r0.xyzw * float4(0.000124405997, 0.000124405997, 0.000124405997, 0.000124405997) + r1.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(-11.3282003, -11.3282003, -9.35622978, -9.35622978) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.00342145795, 0.00342145795, 0.00342145795, 0.00342145795) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0124100903, 0.0124100903, 0.0124100903, 0.0124100903) + r0.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(-7.38528299, -7.38528299, -5.41517782, -5.41517782) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0352105983, 0.0352105983, 0.0352105983, 0.0352105983) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0781549811, 0.0781549811, 0.0781549811, 0.0781549811) + r0.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(-3.44570994, -3.44570994, -1.47665799, -1.47665799) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.135726601, 0.135726601, 0.135726601, 0.135726601) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.184427902, 0.184427902, 0.184427902, 0.184427902) + r0.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(0.492214203, 0.492214203, 2.46114707, 2.46114707) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.196091294, 0.196091294, 0.196091294, 0.196091294) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.163140893, 0.163140893, 0.163140893, 0.163140893) + r0.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(4.43037796, 4.43037796, 6.40013695, 6.40013695) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.1062015, 0.1062015, 0.1062015, 0.1062015) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0540927611, 0.0540927611, 0.0540927611, 0.0540927611) + r0.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(8.3706398, 8.3706398, 10.3420801, 10.3420801) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0215553008, 0.0215553008, 0.0215553008, 0.0215553008) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.00671939086, 0.00671939086, 0.00671939086, 0.00671939086) + r0.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(12.3146095, 12.3146095, 14.2883902, 14.2883902) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.001638368, 0.001638368, 0.001638368, 0.001638368) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.000312417309, 0.000312417309, 0.000312417309, 0.000312417309) + r0.xyzw;
  r1.xy = cb0[169].xy * float2(16, 16) + v1.xy;
  r1.xy = max(v2.xy, r1.xy);
  r1.xy = min(v2.zw, r1.xy);
  r1.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  o0.xyzw = r1.xyzw * float4(3.43081992e-05, 3.43081992e-05, 3.43081992e-05, 3.43081992e-05) + r0.xyzw;

  // Lerp between clamped and unclamped bloom based on slider
  o0.xyz = lerp(saturate(o0.xyz), o0.xyz, CUSTOM_BLOOM);

  return;
}
