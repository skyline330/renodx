#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Wed May  6 19:17:19 2026
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

  r0.xyzw = cb0[169].xyxy * float4(-18.3031006, -18.3031006, -16.3224392, -16.3224392) + v1.xyxy;
  r0.xyzw = max(v2.xyxy, r0.xyzw);
  r0.xyzw = min(v2.zwzw, r0.xyzw);
  r1.xyzw = t0.SampleBias(s0_s, r0.zw, cb0[61].x).xyzw;
  r0.xyzw = t0.SampleBias(s0_s, r0.xy, cb0[61].x).xyzw;
  r1.xyzw = float4(0.00039338661, 0.00039338661, 0.00039338661, 0.00039338661) * r1.xyzw;
  r0.xyzw = r0.xyzw * float4(8.28053671e-05, 8.28053671e-05, 8.28053671e-05, 8.28053671e-05) + r1.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(-14.3424101, -14.3424101, -12.3629599, -12.3629599) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.00156375498, 0.00156375498, 0.00156375498, 0.00156375498) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.00520150177, 0.00520150177, 0.00520150177, 0.00520150177) + r0.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(-10.3840103, -10.3840103, -8.40551472, -8.40551472) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0144784302, 0.0144784302, 0.0144784302, 0.0144784302) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0337260291, 0.0337260291, 0.0337260291, 0.0337260291) + r0.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(-6.42738485, -6.42738485, -4.44954205, -4.44954205) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0657470524, 0.0657470524, 0.0657470524, 0.0657470524) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.107267298, 0.107267298, 0.107267298, 0.107267298) + r0.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(-2.47190189, -2.47190189, -0.494374692, -0.494374692) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.146469697, 0.146469697, 0.146469697, 0.146469697) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.167387903, 0.167387903, 0.167387903, 0.167387903) + r0.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(1.48312998, 1.48312998, 3.46070194, 3.46070194) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.160102695, 0.160102695, 0.160102695, 0.160102695) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.128165394, 0.128165394, 0.128165394, 0.128165394) + r0.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(5.43843317, 5.43843317, 7.41640902, 7.41640902) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0858689398, 0.0858689398, 0.0858689398, 0.0858689398) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0481489189, 0.0481489189, 0.0481489189, 0.0481489189) + r0.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(9.3947134, 9.3947134, 11.3734198, 11.3734198) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.0225949194, 0.0225949194, 0.0225949194, 0.0225949194) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.0088734962, 0.0088734962, 0.0088734962, 0.0088734962) + r0.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(13.3526201, 13.3526201, 15.3323498, 15.3323498) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.00291622407, 0.00291622407, 0.00291622407, 0.00291622407) + r0.xyzw;
  r0.xyzw = r1.xyzw * float4(0.000801990274, 0.000801990274, 0.000801990274, 0.000801990274) + r0.xyzw;
  r1.xyzw = cb0[169].xyxy * float4(17.3126907, 17.3126907, 19, 19) + v1.xyxy;
  r1.xyzw = max(v2.xyxy, r1.xyzw);
  r1.xyzw = min(v2.zwzw, r1.xyzw);
  r2.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xyzw = t0.SampleBias(s0_s, r1.zw, cb0[61].x).xyzw;
  r0.xyzw = r2.xyzw * float4(0.000184551303, 0.000184551303, 0.000184551303, 0.000184551303) + r0.xyzw;
  o0.xyzw = r1.xyzw * float4(2.50982393e-05, 2.50982393e-05, 2.50982393e-05, 2.50982393e-05) + r0.xyzw;

  // Lerp between clamped and unclamped bloom based on slider
  o0.xyz = lerp(saturate(o0.xyz), o0.xyz, CUSTOM_BLOOM);

  return;
}
