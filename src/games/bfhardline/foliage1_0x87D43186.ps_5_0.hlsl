// Foliage found in episode 4, causes NaNs when behind DoF

// ---- Created with 3Dmigoto v1.4.1 on Tue Aug 12 01:39:42 2025

cbuffer viewConstants : register(b2)
{
  float1 time : packoffset(c0);
  float3 vc_pad0_ : packoffset(c0.y);
  float4 screenSize : packoffset(c1);
  float3 debugNonFiniteColor : packoffset(c2);
  float1 vc_pad2_ : packoffset(c2.w);
  float4x4 viewMatrix : packoffset(c3);
  float4x4 projMatrix : packoffset(c7);
  float4x4 viewProjMatrix : packoffset(c11);
  float4x4 crViewProjMatrix : packoffset(c15);
  float4 projectionKxKyKzKw : packoffset(c19);
  float3 cameraPos : packoffset(c20);
  float1 vc_pad8_ : packoffset(c20.w);
  float3 transparentStartAndSlopeAndClamp : packoffset(c21);
  float1 vc_pad9_ : packoffset(c21.w);
  float4 transparentCurve : packoffset(c22);
}

SamplerState sampler0_s : register(s0);
Buffer<float4> instanceVectorBuffer : register(t0);
Texture2D<float4> texture_Texture : register(t1);
Texture2D<float4> texture_Texture2 : register(t2);
Texture2D<float4> texture_Texture3 : register(t3);


// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  nointerpolation int v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v2.w;
  r0.y = v3.w;
  r1.xyz = texture_Texture3.Sample(sampler0_s, r0.xy).xyw;
  r1.x = r1.x * r1.z;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r0.z = dot(r1.xy, r1.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r1.z = sqrt(r0.z);
  r2.x = dot(r1.xyz, v4.xyz);
  r2.y = dot(r1.xyz, v5.xyz);
  r2.z = dot(r1.xyz, v6.xyz);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = -r2.xyz * r0.zzz + v3.xyz;
  r2.xyz = r2.xyz * r0.zzz;
  r1.xyz = v1.zzz * r1.xyz;
  r1.xyz = r1.xyz * float3(0.768000007,0.768000007,0.768000007) + r2.xyz;
  o0.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.w = 0.300000012;
  r0.zw = r0.xy + r0.xy;
  r2.xyz = texture_Texture.Sample(sampler0_s, r0.xy).xyz;
  r0.xyz = texture_Texture2.Sample(sampler0_s, r0.zw).xyz;
  r0.yzw = r0.xyz + -r2.xyz;
  r0.yzw = v1.zzz * r0.yzw + r2.xyz;
  r2.x = -r0.x * 3 + r2.x;
  r0.x = 3 * r0.x;
  r2.yzw = float3(-1.48500001,-1.45949996,-1.5) * r0.yzw;
  r2.yzw = v1.yyy * r2.yzw;
  r0.yzw = r0.yzw * float3(1.5,1.5,1.5) + r2.yzw;
  o1.xyz = sqrt(r0.yzw);
  r0.yz = float2(1,1) + -v1.zy;
  r0.y = saturate(r0.y + r0.y);
  r0.x = r0.y * r2.x + r0.x;
  r0.x = 0.100000001 * r0.x;
  r0.x = r0.z * r0.x;
  r0.yzw = cameraPos.xyz + -v2.xyz;
  r2.x = dot(r0.yzw, r0.yzw);
  r2.x = rsqrt(r2.x);
  r0.yzw = r2.xxx * r0.yzw;
  r0.y = dot(r1.xyz, r0.yzw);
  r0.y = 1.00100005 + -r0.y;
  r0.z = r0.y * r0.y;
  r0.y = saturate(r0.y * r0.z);
  r0.y = r0.y * 0.399999976 + 0.600000024;
  r0.x = r0.x * r0.y;
  o1.w = sqrt(r0.x);
  r0.xyz = (int3)v7.xxx + int3(1,2,3);
  r2.xyzw = instanceVectorBuffer.Load(r0.z).xyzw;
  r1.w = 1;
  o2.x = dot(r1.xyzw, r2.xyzw);
  o2.yzw = float3(0,0,0);
  r2.xyzw = instanceVectorBuffer.Load(r0.x).xyzw;
  r0.xyzw = instanceVectorBuffer.Load(r0.y).xyzw;
  r0.z = dot(r1.xyzw, r0.xyzw);
  r0.y = dot(r1.xyzw, r2.xyzw);
  r2.xyzw = instanceVectorBuffer.Load(v7.x).xyzw;
  r0.x = dot(r1.xyzw, r2.xyzw);
  o3.xyz = max(float3(0,0,0), r0.xyz);
  o3.w = 0;
  o1 = saturate(o1); // added saturate to prevent NaNs
  return;
}