// Building found in episode 6, caused NaNs when behind DoF

// ---- Created with 3Dmigoto v1.4.1 on Thu Aug 21 23:15:41 2025

cbuffer functionConstants : register(b0)
{
  float4 lightMapUvTransform : packoffset(c0);
  float2 lightMapUvTranslation : packoffset(c1);
  float2 fc_pad1 : packoffset(c1.z);
}

cbuffer externalConstants : register(b1)
{
  float3 external_Color2 : packoffset(c0);
  float1 vc_pad0 : packoffset(c0.w);
  float3 external_Color : packoffset(c1);
  float1 vc_pad1 : packoffset(c1.w);
  float3 external_Color3 : packoffset(c2);
  float1 vc_pad2 : packoffset(c2.w);
  float external_Diffuse2_Max : packoffset(c3);
  float3 vc_pad3 : packoffset(c3.y);
  float external_SpecularScale : packoffset(c4);
  float3 vc_pad4 : packoffset(c4.y);
  float external_SpecularSmoothnessScale : packoffset(c5);
  float3 vc_pad5 : packoffset(c5.y);
}

SamplerState sampler0_s : register(s0);
SamplerState sampler1_s : register(s1);
Texture2D<float4> texture_lightMapIrradianceChromaTexture : register(t1);
Texture2D<float4> texture_lightMapIrradianceLumaTexture : register(t2);
Texture2D<float4> texture_lightMapDirectionTexture : register(t3);
Texture2D<float4> texture_lightMapSkyVisibilityTexture : register(t4);
Texture2D<float4> texture_Diffuse : register(t5);
Texture2D<float4> texture_Diffuse2 : register(t6);
Texture2D<float4> texture_Specular : register(t7);
Texture2D<float4> texture_Normal : register(t8);


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

  r0.xyz = texture_Normal.Sample(sampler1_s, v4.xy).xyw;
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
  r0.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r1.xy = texture_Specular.Sample(sampler1_s, v4.xy).xy;
  o0.w = external_SpecularSmoothnessScale * r1.y;
  r1.x = external_SpecularScale * r1.x;
  o1.w = sqrt(r1.x);
  r1.xyzw = texture_Diffuse.Sample(sampler1_s, v4.xy).xyzw;
  r2.xyz = external_Color2.xyz * r1.xyz;
  r1.xyz = r1.xyz * external_Color.xyz + -r2.xyz;
  r1.xyz = r1.www * r1.xyz + r2.xyz;
  r2.xyzw = texture_Diffuse2.Sample(sampler1_s, v4.zw).xyzw;
  r2.xyz = r2.xyz * external_Color3.xyz + -r1.xyz;
  r1.w = external_Diffuse2_Max * r2.w;
  r1.xyz = r1.www * r2.xyz + r1.xyz;
  o1.xyz = sqrt(r1.xyz);
  o2.yzw = float3(0,0,0);
  r1.xy = lightMapUvTransform.yw * v2.ww;
  r1.xy = lightMapUvTransform.xz * v1.ww + r1.xy;
  r1.xy = lightMapUvTranslation.xy + r1.xy;
  r1.z = texture_lightMapSkyVisibilityTexture.Sample(sampler0_s, r1.xy).x;
  o2.x = r1.z;
  r1.z = texture_lightMapIrradianceLumaTexture.Sample(sampler0_s, r1.xy).x;
  r2.xz = texture_lightMapIrradianceChromaTexture.Sample(sampler0_s, r1.xy).yx;
  r3.xyzw = texture_lightMapDirectionTexture.Sample(sampler0_s, r1.xy).xyzw;
  r1.x = 1 + -r2.x;
  r2.y = r1.x + -r2.z;
  r1.xyz = r2.xyz * r1.zzz;
  r1.xyz = float3(16,16,16) * r1.xyz;
  r2.xyz = r3.zyx * float3(2,2,2) + float3(-1,-1,-1);
  r1.w = max(9.99999975e-05, r3.w);
  r0.w = 0.5;
  r2.w = 1;
  r0.x = dot(r0.xyzw, r2.xyzw);
  r0.xyz = r1.xyz * r0.xxx;
  o3.xyz = r0.xyz / r1.www;
  o3.w = 0;
  o1 = saturate(o1); // added saturate to prevent NaNs
  return;
}