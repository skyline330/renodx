
#include "../../shared.h"

// Version 2.7 - Bloom shader (unknown, found in dump)

// ---- Created with 3Dmigoto v1.4.1 on Thu Mar 26 19:56:20 2026
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0) {
  float4 cb0[169];
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

  r0.xyzw = cb0[168].xyxy * float4(-16.2856197, -16.2856197, -14.3088198, -14.3088198) + v1.xyxy;
  r0.xyzw = max(v2.xyxy, r0.xyzw);
  r0.xyzw = min(v2.zwzw, r0.xyzw);
  r1.xyzw = t0.Sample(s0_s, r0.zw).xyzw;
  r0.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
  r1.xyzw = float4(0.000587444578, 0.000587444578, 0.000587444578, 0.000587444578) * r1.xyzw;
  r0.xyzw = r0.xyzw * float4(0.000107330401, 0.000107330401, 0.000107330401, 0.000107330401) + r1.xyzw;
  r1.xyzw = cb0[168].xyxy * float4(-12.3330297, -12.3330297, -10.3581495, -10.3581495) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0025812781, 0.0025812781, 0.0025812781, 0.0025812781) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.00910694897, 0.00910694897, 0.00910694897, 0.00910694897) + r0.xyzw;
  r1.xyzw = cb0[168].xyxy * float4(-8.38407803, -8.38407803, -6.41068077, -6.41068077) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0258001797, 0.0258001797, 0.0258001797, 0.0258001797) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0586975701, 0.0586975701, 0.0586975701, 0.0586975701) + r0.xyzw;
  r1.xyzw = cb0[168].xyxy * float4(-4.4378171, -4.4378171, -2.46532989, -2.46532989) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.1072492, 0.1072492, 0.1072492, 0.1072492) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.157386303, 0.157386303, 0.157386303, 0.157386303) + r0.xyzw;
  r1.xyzw = cb0[168].xyxy * float4(-0.493055195, -0.493055195, 1.47917604, 1.47917604) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.185503796, 0.185503796, 0.185503796, 0.185503796) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.175613403, 0.175613403, 0.175613403, 0.175613403) + r0.xyzw;
  r1.xyzw = cb0[168].xyxy * float4(3.45153594, 3.45153594, 5.424191, 5.424191) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.1335302, 0.1335302, 0.1335302, 0.1335302) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0815470964, 0.0815470964, 0.0815470964, 0.0815470964) + r0.xyzw;
  r1.xyzw = cb0[168].xyxy * float4(7.39730406, 7.39730406, 9.37102127, 9.37102127) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0399968699, 0.0399968699, 0.0399968699, 0.0399968699) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0157545693, 0.0157545693, 0.0157545693, 0.0157545693) + r0.xyzw;
  r1.xyzw = cb0[168].xyxy * float4(11.34548, 11.34548, 13.3207998, 13.3207998) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.00498330407, 0.00498330407, 0.00498330407, 0.00498330407) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.00126566796, 0.00126566796, 0.00126566796, 0.00126566796) + r0.xyzw;
  r1.xyzw = cb0[168].xyxy * float4(15.2970896, 15.2970896, 17, 17) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r0.xyzw = r2.xyzw * float4(0.000258089189, 0.000258089189, 0.000258089189, 0.000258089189) + r0.xyzw;
  o0.xyzw = r1.xyzw * float4(3.06553702e-05, 3.06553702e-05, 3.06553702e-05, 3.06553702e-05) + r0.xyzw;

  // Lerp between clamped and unclamped bloom based on slider
  o0.xyz = lerp(saturate(o0.xyz), o0.xyz, injectedData.fxBloomIntensity);

  return;
}
