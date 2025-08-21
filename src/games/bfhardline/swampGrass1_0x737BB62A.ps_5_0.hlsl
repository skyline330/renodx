// Swamp grass in episode 3, caused NaNs when behind DoF

// ---- Created with 3Dmigoto v1.4.1 on Mon Aug 11 19:59:42 2025

cbuffer externalConstants : register(b1)
{
  float3 external_ColorTint : packoffset(c0);
  float1 vc_pad0 : packoffset(c0.w);
  float external_SpecIntensity : packoffset(c1);
  float3 vc_pad1 : packoffset(c1.y);
  float4 external_worldToEnlightenUvTransform : packoffset(c2);
  float4 external_worldToEnlightenUvTranslation : packoffset(c3);
}

SamplerState sampler0_s : register(s0);
Texture2D<float4> texture_Diffuse_Alpha : register(t1);
Texture2D<float4> texture_Normal : register(t2);


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
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v3.w;
  r0.y = v4.w;
  r1.xyzw = texture_Diffuse_Alpha.Sample(sampler0_s, r0.xy).xyzw;
  r0.xyz = texture_Normal.Sample(sampler0_s, r0.xy).xyw;
  r0.w = v2.w + r1.w;
  r2.x = cmp(0 != r1.w);
  r0.w = r2.x ? r0.w : 0;
  r0.w = -0.5 + r0.w;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r0.x = r0.x * r0.z;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.z = sqrt(r0.w);
  r2.x = dot(r0.xyz, v3.xyz);
  r2.y = dot(r0.xyz, v4.xyz);
  r2.z = dot(r0.xyz, v5.xyz);
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r2.xyz * r0.xxx;
  o0.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.w = 0;
  r0.xyz = external_ColorTint.xyz * r1.xyz;
  r0.w = external_SpecIntensity * r1.w;
  r0.w = v1.x * r0.w;
  r0.xyz = r0.xyz + r0.xyz;
  o1.xyzw = sqrt(r0.xyzw);
  o1 = saturate(o1); // added saturate to prevent NaNs
  return;
}