// Causes NaNs on the video boards in the hotel of episode 2
// Haven't found fix yet

// ---- Created with 3Dmigoto v1.4.1 on Mon Aug 11 20:04:48 2025

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
  float3 external_GlassTint : packoffset(c0);
  float1 vc_pad0 : packoffset(c0.w);
  float2 external_UV_Scale_default : packoffset(c1);
  float2 vc_pad1 : packoffset(c1.z);
  float2 external_UV_Offset_default : packoffset(c2);
  float2 vc_pad2 : packoffset(c2.z);
  float external_OpacityScale : packoffset(c3);
  float3 vc_pad3 : packoffset(c3.y);
  float external_GlassOpacityScale : packoffset(c4);
  float3 vc_pad4 : packoffset(c4.y);
  float external_SpecularSmoothnessScale : packoffset(c5);
  float3 vc_pad5 : packoffset(c5.y);
  float external_SpecularScale : packoffset(c6);
  float3 vc_pad6 : packoffset(c6.y);
  float external_movieintensity : packoffset(c7);
  float3 vc_pad7 : packoffset(c7.y);
  float external_Env_Intensity : packoffset(c8);
  float3 vc_pad8 : packoffset(c8.y);
}

SamplerState sampler0_s : register(s0);
SamplerState sampler1_s : register(s1);
Texture2D<float4> texture_bestFitNormalScaleTexture : register(t1);
Texture2D<float4> texture_Normal : register(t2);
Texture2D<float4> texture_Diffuse : register(t3);
Texture2D<float4> texture_g_yChannel : register(t4);
Texture2D<float4> texture_g_crChannel : register(t5);
Texture2D<float4> texture_g_cbChannel : register(t6);
Texture2D<float4> texture_Specular : register(t7);


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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cameraPos.xyz + -v1.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.x = v1.w;
  r1.y = v2.w;
  r1.zw = r1.xy * external_UV_Scale_default.xy + external_UV_Offset_default.xy;
  r2.xyz = texture_Normal.Sample(sampler1_s, r1.zw).xyw;
  r2.x = r2.x * r2.z;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r3.x = dot(r2.xyz, v3.xyz);
  r3.y = dot(r2.xyz, v4.xyz);
  r3.z = dot(r2.xyz, v5.xyz);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r3.xyz * r0.www + -v2.xyz;
  r3.xyzw = texture_Diffuse.Sample(sampler1_s, r1.zw).xyzw;
  r1.zw = texture_Specular.Sample(sampler1_s, r1.zw).xy;
  r0.w = saturate(external_OpacityScale * r3.w);
  r2.xyz = r0.www * r2.xyz + v2.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r2.w = dot(r2.xyz, r0.xyz);
  r2.w = cmp(r2.w >= 0);
  r2.xyz = r2.www ? r2.xyz : -r2.xyz;
  r3.w = max(abs(r2.x), abs(r2.y));
  r3.w = max(r3.w, abs(r2.z));
  r4.xyz = abs(r2.xyz) / r3.www;
  r5.xy = cmp(abs(r2.zy) < r3.ww);
  r4.xyz = float3(511.5,511.5,511.5) * r4.xyz;
  r4.xyz = floor(r4.xyz);
  r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
  r4.xyz = float3(0.001953125,0.001953125,0.001953125) * r4.xyz;
  r5.yz = r5.yy ? r4.yz : r4.xz;
  r5.xy = r5.xx ? r5.yz : r4.xy;
  r3.w = texture_bestFitNormalScaleTexture.Sample(sampler0_s, r5.xy).x;
  r5.xyz = cmp(float3(0,0,0) < r2.xyz);
  r6.xyz = cmp(r2.xyz < float3(0,0,0));
  r5.xyz = (int3)-r5.xyz + (int3)r6.xyz;
  r5.xyz = (int3)r5.xyz;
  r4.xyz = r5.xyz * r4.xyz;
  r4.xyz = r4.xyz * r3.www;
  o0.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.w = saturate(external_SpecularSmoothnessScale * r1.w);
  r1.z = saturate(external_SpecularScale * r1.z);
  r3.w = -1 + r1.w;
  o0.w = r0.w * r3.w + 1;
  r4.y = texture_g_crChannel.Sample(sampler1_s, r1.xy).x;
  r4.z = texture_g_cbChannel.Sample(sampler1_s, r1.xy).x;
  r4.x = texture_g_yChannel.Sample(sampler1_s, r1.xy).x;
  r4.w = 1;
  r5.y = dot(r4.xyzw, float4(1.16412354,-0.813476622,-0.391449004,0.529704988));
  r5.x = dot(r4.xyw, float3(1.16412354,1.59579468,-0.870655119));
  r5.z = dot(r4.xzw, float3(1.16412354,2.01782227,-1.08166885));
  r0.x = dot(r2.xyz, r0.xyz);
  r0.x = 1.00100005 + -r0.x;
  r0.x = r0.x * r0.x;
  r0.x = r0.x * r0.x;
  r0.x = min(1, r0.x);
  r4.xyz = r0.xxx * -external_GlassTint.xyz + external_GlassTint.xyz;
  r3.xyz = -r4.xyz + r3.xyz;
  r3.xyz = r0.www * r3.xyz + r4.xyz;
  r3.xyz = r5.xyz * float3(0.100000001,0.100000001,0.100000001) + r3.xyz;
  o1.xyz = sqrt(r3.xyz);
  r0.y = r1.w * r1.w;
  r0.y = r0.y * r1.w;
  r0.z = r1.w * 0.0399999991 + 0.0399999991;
  r0.y = r0.y * 0.899999976 + 0.100000001;
  r0.y = r0.y + -r0.z;
  r0.y = r0.x * r0.y + r0.z;
  r0.z = saturate(1 + -external_GlassOpacityScale);
  r1.x = r0.z * -0.5 + 1;
  r1.y = 0.0799999982 * r1.x;
  r1.x = -r1.x * 0.0799999982 + 1;
  r0.x = r0.x * r1.x + r1.y;
  r1.x = 1 + -r0.x;
  r1.y = r1.x * r0.z;
  r1.x = -r1.y * r1.x + 1;
  r0.z = r1.y * r0.z + 1;
  r0.x = r0.x * r0.z;
  r0.z = min(1, r1.x);
  r0.x = r0.x / r0.z;
  r0.y = r1.z * r0.y + -r0.x;
  r0.x = r0.w * r0.y + r0.x;
  o1.w = sqrt(r0.x);
  r2.w = 1;
  o2.x = dot(r2.xyzw, lightProbeShO.xyzw);
  o2.yzw = float3(0,0,0);
  r0.x = dot(r2.xyzw, lightProbeShR.xyzw);
  r0.y = dot(r2.xyzw, lightProbeShG.xyzw);
  r0.z = dot(r2.xyzw, lightProbeShB.xyzw);
  o3.xyz = max(float3(0,0,0), r0.xyz);
  o3.w = 0;
  return;
}