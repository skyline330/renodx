// Metal wall texture found in episode 6; causes NaNs when behind DoF

// ---- Created with 3Dmigoto v1.4.1 on Fri Aug 22 00:27:39 2025

cbuffer functionConstants : register(b0)
{
  float4 lightProbeShR : packoffset(c0);
  float4 lightProbeShG : packoffset(c1);
  float4 lightProbeShB : packoffset(c2);
  float4 lightProbeShO : packoffset(c3);
}

cbuffer externalConstants : register(b1)
{
  float external_Overlay_Tiling : packoffset(c0);
  float3 vc_pad0 : packoffset(c0.y);
  float external_OverlayValue : packoffset(c1);
  float3 vc_pad1 : packoffset(c1.y);
  float external_SpecularScale : packoffset(c2);
  float3 vc_pad2 : packoffset(c2.y);
  float external_SpecularSmoothnessScale : packoffset(c3);
  float3 vc_pad3 : packoffset(c3.y);
  float external_OverlaySmoothness : packoffset(c4);
  float3 vc_pad4 : packoffset(c4.y);
}

SamplerState sampler0_s : register(s0);
Texture2D<float4> texture_Diffuse : register(t1);
Texture2D<float4> texture_Overlay_Mult : register(t2);
Texture2D<float4> texture_Specular : register(t3);
Texture2D<float4> texture_Normal : register(t4);


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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v1.w;
  r0.y = v2.w;
  r1.xyz = texture_Normal.Sample(sampler0_s, r0.xy).xyw;
  r1.x = r1.x * r1.z;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r0.z = dot(r1.xy, r1.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r1.z = sqrt(r0.z);
  r2.x = dot(r1.xyz, v1.xyz);
  r2.y = dot(r1.xyz, v2.xyz);
  r2.z = dot(r1.xyz, v3.xyz);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r2.xyz * r0.zzz;
  o0.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.zw = external_Overlay_Tiling * r0.xy;
  r2.xyz = texture_Overlay_Mult.Sample(sampler0_s, r0.zw).xyz;
  r0.zw = texture_Specular.Sample(sampler0_s, r0.xy).xy;
  r3.xyz = texture_Diffuse.Sample(sampler0_s, r0.xy).xyz;
  r0.x = external_SpecularSmoothnessScale * r0.w;
  r0.y = external_SpecularScale * r0.z;
  o1.w = sqrt(r0.y);
  r0.y = r0.x * r2.x + -r0.x;
  r2.xyz = r3.xyz * r2.xyz + -r3.xyz;
  r2.xyz = r2.xyz * external_OverlayValue + r3.xyz;
  o1.xyz = sqrt(r2.xyz);
  o0.w = r0.y * external_OverlaySmoothness + r0.x;
  r1.w = 1;
  o2.x = dot(r1.xyzw, lightProbeShO.xyzw);
  o2.yzw = float3(0,0,0);
  r0.x = dot(r1.xyzw, lightProbeShR.xyzw);
  r0.y = dot(r1.xyzw, lightProbeShG.xyzw);
  r0.z = dot(r1.xyzw, lightProbeShB.xyzw);
  o3.xyz = max(float3(0,0,0), r0.xyz);
  o3.w = 0;
  o1 = saturate(o1); // Added saturate to prevent NaNs
  return;
}