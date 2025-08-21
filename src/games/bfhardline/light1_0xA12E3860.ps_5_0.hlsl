// Alarm light found in episode 4, causes NaNs when behind DoF

// ---- Created with 3Dmigoto v1.4.1 on Tue Aug 12 00:32:30 2025

cbuffer functionConstants : register(b0)
{
  float4 lightProbeShR : packoffset(c0);
  float4 lightProbeShG : packoffset(c1);
  float4 lightProbeShB : packoffset(c2);
  float4 lightProbeShO : packoffset(c3);
}

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

cbuffer externalConstants : register(b1)
{
  float3 external_BlinkColor : packoffset(c0);
  float1 vc_pad0 : packoffset(c0.w);
  float3 external_xEmissive : packoffset(c1);
  float1 vc_pad1 : packoffset(c1.w);
}

SamplerState sampler0_s : register(s0);
Texture2D<float4> texture_DefaultNormal : register(t1);


// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v1.w;
  r0.y = v2.w;
  r0.xyz = texture_DefaultNormal.Sample(sampler0_s, r0.xy).xyw;
  r0.x = r0.x * r0.z;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.z = sqrt(r0.w);
  r1.x = dot(r0.xyz, v1.xyz);
  r1.y = dot(r0.xyz, v2.xyz);
  r1.z = dot(r0.xyz, v3.xyz);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r1.xyz * r0.xxx;
  o0.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.w = 0.5;
  r1.x = 3 * time;
  r1.x = sin(r1.x);
  r1.xyz = external_BlinkColor.xyz * r1.xxx;
  r1.w = external_xEmissive.x * r1.x;
  o1.xyzw = sqrt(r1.xyzw);
  r0.w = 1;
  o2.x = dot(r0.xyzw, lightProbeShO.xyzw);
  o2.yzw = float3(0,0,0);
  r1.x = dot(r0.xyzw, lightProbeShR.xyzw);
  r1.y = dot(r0.xyzw, lightProbeShG.xyzw);
  r1.z = dot(r0.xyzw, lightProbeShB.xyzw);
  o3.xyz = max(float3(0,0,0), r1.xyz);
  o3.w = 0;
  o1 = saturate(o1); // added saturate to prevent NaNs
  return;
}