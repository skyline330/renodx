#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Wed Jun 17 01:21:18 2026
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  float4 r0, r1, r2, r3, r4, r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t5.Sample(s0_s, v1.xy).xyzw;
  r1.xyzw = t1.SampleLevel(s1_s, v1.xy, 0).xyzw;
  r0.w = cb0[62].z * r1.y + cb0[62].w;
  r0.w = 1 / r0.w;
  r0.w = cmp(1000 < r0.w);
  r0.xyz = r0.www ? float3(0, 0, 0) : r0.xyz;
  r1.xyzw = t3.Sample(s1_s, v1.xy).xyzw;
  r1.xyz = r1.xyz + r0.xyz;

  r0.w = cmp(0.5 < cb0[172].x);
  if (r0.w != 0) {
    r0.w = cb0[173].y * cb0[171].w;

    if (RENODX_TONE_MAP_TYPE > 0) {
      r2.xyz = r1.xyz * r0.www;
      r2.xyz = HighQualityBloomLutSample(r2.xyz, t2, s0_s);
      r3.xyz = (r2.xyz);
    } else {
      r2.xyz = r1.zxy * r0.www;
      r2.xyz = r2.xyz * float3(5.55555582, 5.55555582, 5.55555582) + float3(0.0479959995, 0.0479959995, 0.0479959995);
      r2.xyz = log2(r2.xyz);
      r2.xyz = saturate(r2.xyz * float3(0.0734997839, 0.0734997839, 0.0734997839) + float3(0.386036009, 0.386036009, 0.386036009));
      r2.yzw = cb0[171].zzz * r2.xyz;
      r0.w = floor(r2.y);
      r3.xy = float2(0.5, 0.5) * cb0[171].xy;
      r3.yz = r2.zw * cb0[171].xy + r3.xy;
      r3.x = r0.w * cb0[171].y + r3.y;
      r4.xyzw = t2.SampleLevel(s0_s, r3.xz, 0).xyzw;
      r5.x = cb0[171].y;
      r5.y = 0;
      r2.yz = r5.xy + r3.xz;
      r3.xyzw = t2.SampleLevel(s0_s, r2.yz, 0).xyzw;
      r0.w = r2.x * cb0[171].z + -r0.w;
      r2.xyz = r3.xyz + -r4.xyz;
      r2.xyz = r0.www * r2.xyz + r4.xyz;
      r3.xyz = saturate(r2.xyz);
    }

    r3.xyz = float3(1, 1, 1) + -r3.xyz;
    r3.xyz = r3.xyz + -r2.xyz;
    r2.xyz = cb0[25].zzz * r3.xyz + r2.xyz;
    r0.w = saturate(dot(r2.xyz, float3(0.212672904, 0.715152204, 0.0721750036)));
    r0.w = -cb0[23].z + r0.w;
    r0.w = saturate(cb0[24].z * r0.w);
    r3.x = cb0[23].y + -cb0[23].x;
    r3.y = cb0[24].y + -cb0[24].x;
    r3.z = cb0[25].y + -cb0[25].x;
    r4.x = cb0[23].x;
    r4.y = cb0[24].x;
    r4.z = cb0[25].x;
    r3.xyz = r0.www * r3.xyz + r4.xyz;
    r3.xyz = r3.xyz + -r2.xyz;
    r1.xyz = cb0[26].zzz * r3.xyz + r2.xyz;
  }
  r2.xyzw = t0.SampleLevel(s1_s, v1.xy, 0).xyzw;
  r2.yz = cb0[138].zw * v0.xy;
  r2.yz = r2.yz * float2(2, 2) + float2(-1, -1);
  r3.xyzw = cb0[135].xyzw * -r2.zzzz;
  r3.xyzw = cb0[134].xyzw * r2.yyyy + r3.xyzw;
  r2.xyzw = cb0[136].xyzw * r2.xxxx + r3.xyzw;
  r2.xyzw = cb0[137].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r2.xyz = cb0[30].xyz + -r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r2.xyzw = t4.Sample(s0_s, v1.xy).xyzw;
  r3.x = -cb0[141].x;
  r3.y = -cb0[142].x;
  r2.yz = r3.xy + r0.ww;
  r0.w = saturate(cb0[143].x * r2.y);
  r2.y = saturate(cb0[144].x * r2.z);
  r2.z = r0.w * r0.w;
  r2.z = r2.z * r0.w;
  r2.w = r0.w * 6 + -15;
  r2.w = r0.w * r2.w + 10;
  r3.x = r2.z * r2.w;
  r0.w = -r2.z * r2.w + r0.w;
  r0.w = cb0[146].w * r0.w + r3.x;
  r3.xyz = cb0[146].xyz + -cb0[145].xyz;
  r3.xyz = r0.www * r3.xyz + cb0[145].xyz;
  r4.xyz = r3.xyz * r1.xyz;
  r0.w = cb0[145].w * r2.y;
  r0.w = cb0[144].z * r0.w;
  r2.yzw = -r3.xyz * r1.xyz + cb0[147].xyz;
  r2.yzw = r0.www * r2.yzw + r4.xyz;
  r1.xyz = -r2.yzw + r1.xyz;
  o0.xyz = r2.xxx * r1.xyz + r2.yzw;
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  o0.w = saturate(r0.x * 0.333299994 + r1.w);
  return;
}
