// Brick texture in episode 3, caused NaNs

// ---- Created with 3Dmigoto v1.4.1 on Mon Aug 11 23:29:49 2025

cbuffer functionConstants : register(b0)
{
  float4 lightProbeShR : packoffset(c0);
  float4 lightProbeShG : packoffset(c1);
  float4 lightProbeShB : packoffset(c2);
  float4 lightProbeShO : packoffset(c3);
}

cbuffer externalConstants : register(b1)
{
  float3 external_Color2 : packoffset(c0);
  float1 vc_pad0 : packoffset(c0.w);
  float3 external_Color : packoffset(c1);
  float1 vc_pad1 : packoffset(c1.w);
  float external_OverlayValue : packoffset(c2);
  float3 vc_pad2 : packoffset(c2.y);
  float external_SpecularScale : packoffset(c3);
  float3 vc_pad3 : packoffset(c3.y);
  float external_SpecularSmoothnessScale : packoffset(c4);
  float3 vc_pad4 : packoffset(c4.y);
  float external_OverlaySmoothness : packoffset(c5);
  float3 vc_pad5 : packoffset(c5.y);
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
  float4 v4 : TEXCOORD3,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = texture_Normal.Sample(sampler0_s, v4.xy).xyw;
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
  r1.xyz = texture_Overlay_Mult.Sample(sampler0_s, v4.zw).xyz;
  r2.xy = texture_Specular.Sample(sampler0_s, v4.xy).xy;
  r1.w = external_SpecularSmoothnessScale * r2.y;
  r2.x = external_SpecularScale * r2.x;
  o1.w = sqrt(r2.x);
  r2.x = r1.w * r1.x + -r1.w;
  o0.w = r2.x * external_OverlaySmoothness + r1.w;
  r2.xyzw = texture_Diffuse.Sample(sampler0_s, v4.xy).xyzw;
  r3.xyz = external_Color2.xyz * r2.xyz;
  r2.xyz = r2.xyz * external_Color.xyz + -r3.xyz;
  r2.xyz = r2.www * r2.xyz + r3.xyz;
  r1.xyz = r2.xyz * r1.xyz + -r2.xyz;
  r1.xyz = r1.xyz * external_OverlayValue + r2.xyz;
  o1.xyz = sqrt(r1.xyz);
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