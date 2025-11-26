// Wood texture found in episode 6; causes NaNs when behind DoF

// ---- Created with 3Dmigoto v1.4.1 on Fri Aug 22 00:03:59 2025

cbuffer functionConstants : register(b0)
{
  float4 lightMapUvTransform : packoffset(c0);
  float2 lightMapUvTranslation : packoffset(c1);
  float2 fc_pad1 : packoffset(c1.z);
}

cbuffer externalConstants : register(b1)
{
  float2 external_UV3_Scale : packoffset(c0);
  float2 vc_pad0 : packoffset(c0.z);
  float2 external_UV3_Offset : packoffset(c1);
  float2 vc_pad1 : packoffset(c1.z);
  float external_Blend3_Mag : packoffset(c2);
  float3 vc_pad2 : packoffset(c2.y);
  float2 external_UV2_Scale : packoffset(c3);
  float2 vc_pad3 : packoffset(c3.z);
  float2 external_UV2_Offset : packoffset(c4);
  float2 vc_pad4 : packoffset(c4.z);
  float external_Blend1_Mag : packoffset(c5);
  float3 vc_pad5 : packoffset(c5.y);
  float external_Blend1_Sharpness : packoffset(c6);
  float3 vc_pad6 : packoffset(c6.y);
  float external_Blend2_Mag : packoffset(c7);
  float3 vc_pad7 : packoffset(c7.y);
  float external_Blend2_Sharpness : packoffset(c8);
  float3 vc_pad8 : packoffset(c8.y);
  float external_SpecularScale : packoffset(c9);
  float3 vc_pad9 : packoffset(c9.y);
  float external_SpecularSmoothnessScale : packoffset(c10);
  float3 vc_pad10 : packoffset(c10.y);
  float2 external_Detail_UVScale : packoffset(c11);
  float2 vc_pad11 : packoffset(c11.z);
  float external_DetailNormalScale : packoffset(c12);
  float3 vc_pad12 : packoffset(c12.y);
}

SamplerState sampler0_s : register(s0);
SamplerState sampler1_s : register(s1);
Texture2D<float4> texture_lightMapIrradianceChromaTexture : register(t1);
Texture2D<float4> texture_lightMapIrradianceLumaTexture : register(t2);
Texture2D<float4> texture_lightMapDirectionTexture : register(t3);
Texture2D<float4> texture_lightMapSkyVisibilityTexture : register(t4);
Texture2D<float4> texture_Diffuse3 : register(t5);
Texture2D<float4> texture_Diffuse : register(t6);
Texture2D<float4> texture_Diffuse2 : register(t7);
Texture2D<float4> texture_Specular : register(t8);
Texture2D<float4> texture_Specular2 : register(t9);
Texture2D<float4> texture_DetailNormal : register(t10);
Texture2D<float4> texture_Normal : register(t11);
Texture2D<float4> texture_Normal2 : register(t12);


// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = external_Detail_UVScale.xy * v5.xy;
  r0.xyz = texture_DetailNormal.Sample(sampler1_s, r0.xy).xyw;
  r0.x = r0.x * r0.z;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r1.xyz = texture_Normal.Sample(sampler1_s, v5.xy).xyw;
  r1.x = r1.x * r1.z;
  r0.zw = r1.xy * float2(2,2) + float2(-1,-1);
  r1.xy = r0.xy * external_DetailNormalScale + r0.zw;
  r0.x = dot(r0.zw, r0.zw);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r1.z = sqrt(r0.x);
  r0.x = dot(r1.xyz, v2.xyz);
  r0.y = dot(r1.xyz, v3.xyz);
  r0.z = dot(r1.xyz, v4.xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xy = v5.xy * external_UV2_Scale.xy + external_UV2_Offset.xy;
  r2.xyz = texture_Normal2.Sample(sampler1_s, r1.xy).xyw;
  r2.x = r2.x * r2.z;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r3.x = dot(r2.xyz, v2.xyz);
  r3.y = dot(r2.xyz, v3.xyz);
  r3.z = dot(r2.xyz, v4.xyz);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r3.xyz * r0.www + -r0.xyz;
  r0.w = external_Blend2_Mag * v1.y;
  r1.z = external_Blend2_Sharpness + external_Blend2_Sharpness;
  r0.w = r0.w * r1.z + -external_Blend2_Sharpness;
  r3.xyzw = texture_Diffuse2.Sample(sampler1_s, r1.xy).xyzw;
  r1.xy = texture_Specular2.Sample(sampler1_s, r1.xy).xy;
  r0.w = saturate(r3.w * external_Blend2_Sharpness + r0.w);
  r1.z = external_Blend1_Mag * v1.x;
  r1.w = external_Blend1_Sharpness + external_Blend1_Sharpness;
  r1.z = r1.z * r1.w + -external_Blend1_Sharpness;
  r4.xyzw = texture_Diffuse.Sample(sampler1_s, v5.xy).xyzw;
  r1.z = saturate(r4.w * external_Blend1_Sharpness + r1.z);
  r0.w = r1.z * r0.w;
  r0.xyz = r0.www * r2.xyz + r0.xyz;
  o0.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r2.xyz = float3(0.5,0.5,0.5) * r0.xyz;
  r0.xy = texture_Specular.Sample(sampler1_s, v5.xy).xy;
  r1.xy = r1.xy + -r0.xy;
  r0.xy = r0.ww * r1.xy + r0.xy;
  o0.w = external_SpecularSmoothnessScale * r0.y;
  r0.x = external_SpecularScale * r0.x;
  o1.w = sqrt(r0.x);
  r0.xyz = -r4.xyz + r3.xyz;
  r0.xyz = r0.www * r0.xyz + r4.xyz;
  r0.w = external_Blend3_Mag * v1.z;
  r1.xy = v5.xy * external_UV3_Scale.xy + external_UV3_Offset.xy;
  r1.xyzw = texture_Diffuse3.Sample(sampler1_s, r1.xy).xyzw;
  r0.w = r1.w * r0.w;
  r1.xyz = float3(-1,-1,-1) + r1.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  r0.xyz = r1.xyz * r0.xyz;
  o1.xyz = sqrt(r0.xyz);
  o2.yzw = float3(0,0,0);
  r0.x = dot(lightMapUvTransform.xy, v5.zw);
  r0.z = dot(lightMapUvTransform.zw, v5.zw);
  r0.xy = lightMapUvTranslation.xy + r0.xz;
  r0.z = texture_lightMapSkyVisibilityTexture.Sample(sampler0_s, r0.xy).x;
  o2.x = r0.z;
  r0.z = texture_lightMapIrradianceLumaTexture.Sample(sampler0_s, r0.xy).x;
  r1.xz = texture_lightMapIrradianceChromaTexture.Sample(sampler0_s, r0.xy).yx;
  r3.xyzw = texture_lightMapDirectionTexture.Sample(sampler0_s, r0.xy).xyzw;
  r0.x = 1 + -r1.x;
  r1.y = r0.x + -r1.z;
  r0.xyz = r1.xyz * r0.zzz;
  r0.xyz = float3(16,16,16) * r0.xyz;
  r1.xyz = r3.zyx * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = max(9.99999975e-05, r3.w);
  r2.w = 0.5;
  r1.w = 1;
  r1.x = dot(r2.xyzw, r1.xyzw);
  r0.xyz = r1.xxx * r0.xyz;
  o3.xyz = r0.xyz / r0.www;
  o3.w = 0;
  o1 = saturate(o1); // Added saturate to prevent NaNs
  return;
}