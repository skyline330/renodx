#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Sat Jun 20 01:57:41 2026
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0) {
  float4 cb0[193];
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

  r0.xyzw = t1.Sample(s0_s, v1.xy).xyzw;
  r0.x = 255 * r0.z;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x >> 1;
  r0.x = (int)r0.x & 1;
  r0.x = r0.x ? cb0[192].z : 1;
  r1.xyzw = t3.Sample(s0_s, v1.xy).xyzw;
  r0.yzw = r1.xyz * r0.xxx;
  r2.xyzw = t2.Sample(s1_s, v1.xy).xyzw;
  r1.xyw = r0.xxx * r1.xyz + r2.xyz;

  r3.x = cmp(0.5 < cb0[172].x);
  if (r3.x != 0) {
    r3.x = cb0[173].y * cb0[171].w;

    if (RENODX_TONE_MAP_TYPE > 0) {
      r3.xyz = r3.xxx * r1.xyw;
      r3.xyz = HighQualityBloomLutSample(r3.xyz, t0, s0_s);
      r4.xyz = (r3.xyz);
    } else {
      r3.xyz = r3.xxx * r1.wxy;
      r3.xyz = r3.xyz * float3(5.55555582, 5.55555582, 5.55555582) + float3(0.0479959995, 0.0479959995, 0.0479959995);
      r3.xyz = log2(r3.xyz);
      r3.xyz = saturate(r3.xyz * float3(0.0734997839, 0.0734997839, 0.0734997839) + float3(0.386036009, 0.386036009, 0.386036009));
      r3.yzw = cb0[171].zzz * r3.xyz;
      r3.y = floor(r3.y);
      r4.xy = float2(0.5, 0.5) * cb0[171].xy;
      r4.yz = r3.zw * cb0[171].xy + r4.xy;
      r4.x = r3.y * cb0[171].y + r4.y;
      r5.xyzw = t0.SampleLevel(s0_s, r4.xz, 0).xyzw;
      r6.x = cb0[171].y;
      r6.y = 0;
      r3.zw = r6.xy + r4.xz;
      r4.xyzw = t0.SampleLevel(s0_s, r3.zw, 0).xyzw;
      r3.x = r3.x * cb0[171].z + -r3.y;
      r3.yzw = r4.xyz + -r5.xyz;
      r3.xyz = r3.xxx * r3.yzw + r5.xyz;
      r4.xyz = saturate(r3.xyz);
    }

    r4.xyz = float3(1, 1, 1) + -r4.xyz;
    r4.xyz = r4.xyz + -r3.xyz;
    r3.xyz = cb0[25].zzz * r4.xyz + r3.xyz;
    r3.w = saturate(dot(r3.xyz, float3(0.212672904, 0.715152204, 0.0721750036)));
    r3.w = -cb0[23].z + r3.w;
    r3.w = saturate(cb0[24].z * r3.w);
    r4.x = cb0[23].y + -cb0[23].x;
    r4.y = cb0[24].y + -cb0[24].x;
    r4.z = cb0[25].y + -cb0[25].x;
    r5.x = cb0[23].x;
    r5.y = cb0[24].x;
    r5.z = cb0[25].x;
    r4.xyz = r3.www * r4.xyz + r5.xyz;
    r4.xyz = r4.xyz + -r3.xyz;
    r3.xyz = cb0[26].zzz * r4.xyz + r3.xyz;
  } else {
    r3.xyz = r1.xyw;
  }
  r3.x = dot(r3.xyz, float3(0.212672904, 0.715152204, 0.0721750036));
  r1.x = dot(r1.xyw, float3(0.212672904, 0.715152204, 0.0721750036));
  r1.x = max(1.17549435e-38, r1.x);
  r1.x = r3.x / r1.x;
  r1.y = dot(r0.yzw, float3(0.212672904, 0.715152204, 0.0721750036));
  r1.y = -0.100000001 + r1.y;
  r1.y = saturate(4.99999952 * r1.y);
  r3.xyz = r1.xxx * r0.yzw + -r0.yzw;
  r1.xyw = r1.yyy * r3.xyz + r0.yzw;
  o0.xyz = r2.xyz + r1.xyw;
  r0.y = r0.y + r0.z;
  r0.x = r0.x * r1.z + r0.y;
  o0.w = saturate(r0.x * 0.333299994 + r2.w);
  return;
}
