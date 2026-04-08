#include "../../shared.h"

// Version 2.7 - High quality bloom

// ---- Created with 3Dmigoto v1.4.1 on Fri Mar 27 18:50:05 2026
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  float4 r0, r1, r2, r3, r4, r5, r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t2.Sample(s0_s, v1.xy).xyzw;
  r1.xyzw = t1.Sample(s1_s, v1.xy).xyzw;
  r2.xyz = r1.xyz + r0.xyz;
  r0.w = cmp(0.5 < cb0[167].x);
  if (r0.w != 0) {
    r0.w = cb0[168].y * cb0[166].w;
    // r3.xyz = r2.zxy * r0.www;
    r3.xyz = r2.xyz * r0.www;
    // start of ARRI C3 1000 LUT
    renodx::lut::Config lut_config = renodx::lut::config::Create(
        s0_s,
        1.f,
        0.f,
        renodx::lut::config::type::ARRI_C1000_NO_CUT,
        renodx::lut::config::type::LINEAR);

    float3 sampled = renodx::lut::Sample(t0, lut_config, r3.xyz);

    r3.xyz = renodx::tonemap::UpgradeToneMap(r3.xyz, saturate(r3.xyz), sampled, 1.f);

    /*
      r3.xyz = r3.xyz * float3(5.55555582, 5.55555582, 5.55555582) + float3(0.0479959995, 0.0479959995, 0.0479959995);
      r3.xyz = log2(r3.xyz);
      r3.xyz = saturate(r3.xyz * float3(0.0734997839, 0.0734997839, 0.0734997839) + float3(0.386036009, 0.386036009, 0.386036009));
      r3.yzw = cb0[166].zzz * r3.xyz;
      r0.w = floor(r3.y);
      r4.xy = float2(0.5, 0.5) * cb0[166].xy;
      r4.yz = r3.zw * cb0[166].xy + r4.xy;
      r4.x = r0.w * cb0[166].y + r4.y;
      r5.xyzw = t0.SampleLevel(s0_s, r4.xz, 0).xyzw;
      r6.x = cb0[166].y;
      r6.y = 0;
      r3.yz = r6.xy + r4.xz;
      r4.xyzw = t0.SampleLevel(s0_s, r3.yz, 0).xyzw;
      r0.w = r3.x * cb0[166].z + -r0.w;
      r3.xyz = r4.xyz + -r5.xyz;
      r3.xyz = r0.www * r3.xyz + r5.xyz;
      // end of ARRI C3 1000 LUT
    */
    // r4.xyz = saturate(r3.xyz);
    r4.xyz = r3.xyz;
    r4.xyz = float3(1, 1, 1) + -r4.xyz;
    r4.xyz = r4.xyz + -r3.xyz;
    r3.xyz = cb0[25].zzz * r4.xyz + r3.xyz;
    r0.w = saturate(dot(r3.xyz, float3(0.212672904, 0.715152204, 0.0721750036)));
    r0.w = -cb0[23].z + r0.w;
    r0.w = saturate(cb0[24].z * r0.w);
    r4.x = cb0[23].y + -cb0[23].x;
    r4.y = cb0[24].y + -cb0[24].x;
    r4.z = cb0[25].y + -cb0[25].x;
    r5.x = cb0[23].x;
    r5.y = cb0[24].x;
    r5.z = cb0[25].x;
    r4.xyz = r0.www * r4.xyz + r5.xyz;
    r4.xyz = r4.xyz + -r3.xyz;
    r3.xyz = cb0[26].zzz * r4.xyz + r3.xyz;
  } else {
    r3.xyz = r2.xyz;
  }
  r0.w = dot(r3.xyz, float3(0.212672904, 0.715152204, 0.0721750036));
  r2.x = dot(r2.xyz, float3(0.212672904, 0.715152204, 0.0721750036));
  r2.x = max(1.17549435e-38, r2.x);
  r0.w = r0.w / r2.x;
  r2.x = dot(r0.xyz, float3(0.212672904, 0.715152204, 0.0721750036));
  r2.x = -0.100000001 + r2.x;
  r2.x = saturate(4.99999952 * r2.x);
  r2.yzw = r0.www * r0.xyz + -r0.xyz;
  r2.xyz = r2.xxx * r2.yzw + r0.xyz;
  o0.xyz = r2.xyz + r1.xyz;
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  o0.w = saturate(r0.x * 0.333299994 + r1.w);
  return;
}
