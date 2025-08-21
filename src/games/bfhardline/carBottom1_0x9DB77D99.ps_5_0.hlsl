// Bottom of car found in episode 4, causes NaNs when behind DoF

// ---- Created with 3Dmigoto v1.4.1 on Tue Aug 12 01:09:10 2025

cbuffer functionConstants : register(b0)
{
  float4 lightProbeShR : packoffset(c0);
  float4 lightProbeShG : packoffset(c1);
  float4 lightProbeShB : packoffset(c2);
  float4 lightProbeShO : packoffset(c3);
}

cbuffer externalConstants : register(b1)
{
  float3 external_PaintColor00 : packoffset(c0);
  float1 vc_pad0 : packoffset(c0.w);
  float2 external_DetailN_Scratch_Tiling : packoffset(c1);
  float2 vc_pad1 : packoffset(c1.z);
  float external_PaintDecay : packoffset(c2);
  float3 vc_pad2 : packoffset(c2.y);
  float external_PaintOpacity : packoffset(c3);
  float3 vc_pad3 : packoffset(c3.y);
  float3 external_Dirt_Color : packoffset(c4);
  float1 vc_pad4 : packoffset(c4.w);
  float2 external_DamageScortchandDustTile : packoffset(c5);
  float2 vc_pad5 : packoffset(c5.z);
  float external_Dirt_Strength : packoffset(c6);
  float3 vc_pad6 : packoffset(c6.y);
  float external_Dirt_DiffuseMaskOpacity : packoffset(c7);
  float3 vc_pad7 : packoffset(c7.y);
  float4 external_DamageIntensity : packoffset(c8);
  float4 external_FLIRDataVehicles : packoffset(c9);
  float external_FLIRScale : packoffset(c10);
  float3 vc_pad10 : packoffset(c10.y);
  float external_SpecIntensity : packoffset(c11);
  float3 vc_pad11 : packoffset(c11.y);
  float external_Smoothness : packoffset(c12);
  float3 vc_pad12 : packoffset(c12.y);
  float external_PaintSmoothness : packoffset(c13);
  float3 vc_pad13 : packoffset(c13.y);
  float external_DamageN_Scale : packoffset(c14);
  float3 vc_pad14 : packoffset(c14.y);
  float2 external_DamageNTile : packoffset(c15);
  float2 vc_pad15 : packoffset(c15.z);
}

SamplerState sampler0_s : register(s0);
Texture2D<float4> texture_BaseDiffuse : register(t1);
Texture2D<float4> texture_Texture3 : register(t2);
Texture2D<float4> texture_BaseSpecularPacked : register(t3);
Texture2D<float4> texture_DamageMask : register(t4);
Texture2D<float4> texture_DamageNormal : register(t5);
Texture2D<float4> texture_BaseNormal : register(t6);


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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = texture_BaseNormal.Sample(sampler0_s, v4.xy).xyw;
  r0.x = r0.x * r0.z;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.z = dot(r0.xy, r0.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r1.z = sqrt(r0.z);
  r0.zw = external_DamageNTile.xy * v4.zw;
  r2.xyz = texture_DamageNormal.Sample(sampler0_s, r0.zw).xyw;
  r2.x = r2.x * r2.z;
  r0.zw = r2.xy * float2(2,2) + float2(-1,-1);
  r0.zw = external_DamageN_Scale * r0.zw;
  r2.xyz = texture_DamageMask.Sample(sampler0_s, v4.zw).xyz;
  r2.xy = external_DamageIntensity.xy * r2.xy;
  r1.xy = r2.xx * r0.zw + r0.xy;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r1.xyz * r0.xxx;
  r1.x = dot(r0.xyz, v1.xyz);
  r1.y = dot(r0.xyz, v2.xyz);
  r1.z = dot(r0.xyz, v3.xyz);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r1.xyz * r0.xxx;
  o0.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.x = cmp(v4.x < 0);
  r1.x = r1.x ? 0 : 1;
  r1.yz = external_DetailN_Scratch_Tiling.xy * v4.xy;
  r1.y = texture_Texture3.Sample(sampler0_s, r1.yz).y;
  r1.z = 1 + -r1.y;
  r3.xyz = texture_BaseSpecularPacked.Sample(sampler0_s, v4.xy).xyz;
  r1.z = saturate(external_PaintDecay * r3.y + r1.z);
  r1.z = log2(r1.z);
  r1.z = external_PaintOpacity * r1.z;
  r1.z = exp2(r1.z);
  r1.z = 1 + -r1.z;
  r1.x = r1.x * r1.z;
  r1.z = r3.y * external_PaintSmoothness + -r3.y;
  r1.z = r1.z * r1.x + r3.y;
  r1.z = external_Smoothness * r1.z;
  r2.xw = external_DamageScortchandDustTile.xy * v4.zw;
  r2.xw = texture_Texture3.Sample(sampler0_s, r2.xw).xz;
  r1.w = r2.z * r2.x;
  r2.x = rsqrt(r2.z);
  r2.x = 1 / r2.x;
  r1.w = saturate(external_Dirt_Strength * r1.w);
  r2.z = 1 + -r1.w;
  r2.z = r2.z * r2.z;
  r1.z = r2.z * r1.z;
  r3.y = r1.z * r2.w + -r1.z;
  r4.xy = float2(0.75,0.5) * r2.yy;
  r2.y = saturate(r2.y * 1.5 + -0.100000001);
  o0.w = r3.y * r4.y + r1.z;
  r1.z = -0.699999988 * r3.x;
  r1.z = r1.z * r1.x + r3.x;
  r3.x = -r3.z * r1.x + r3.z;
  r1.y = r1.z * r1.y;
  r1.y = external_SpecIntensity * r1.y;
  r1.y = r1.y * r2.z;
  r1.z = r1.y * r2.w + -r1.y;
  r1.y = r1.z * r2.y + r1.y;
  o1.w = sqrt(r1.y);
  r1.y = r2.x + -r1.w;
  r1.y = external_Dirt_DiffuseMaskOpacity * r1.y + r1.w;
  r2.xyz = float3(3,3,3) * external_PaintColor00.xyz;
  r3.yzw = texture_BaseDiffuse.Sample(sampler0_s, v4.xy).xyz;
  r2.xyz = r3.yzw * r2.xyz + -r3.yzw;
  r1.xzw = r2.xyz * r1.xxx + r3.yzw;
  r2.xyz = external_Dirt_Color.xyz + -r1.xzw;
  r1.xyz = r1.yyy * r2.xyz + r1.xzw;
  r2.xyz = r1.xyz * r2.www + -r1.xyz;
  r1.xyz = r2.xyz * r4.xxx + r1.xyz;
  r2.xyz = float3(0.5,0,0.5) + -r1.xyz;
  r1.w = external_FLIRScale * external_FLIRDataVehicles.w;
  r1.xyz = r1.www * r2.xyz + r1.xyz;
  o2.y = r1.w * -r3.x + r3.x;
  o1.xyz = sqrt(r1.xyz);
  r0.w = 1;
  o2.x = dot(r0.xyzw, lightProbeShO.xyzw);
  o2.zw = float2(0,0.0196077991);
  r1.x = dot(r0.xyzw, lightProbeShR.xyzw);
  r1.y = dot(r0.xyzw, lightProbeShG.xyzw);
  r1.z = dot(r0.xyzw, lightProbeShB.xyzw);
  o3.xyz = max(float3(0,0,0), r1.xyz);
  o3.w = 0;
  o0 = saturate(o0); // added saturate to prevent NaNs
  o1 = saturate(o1); // added saturate to prevent NaNs
  o2 = saturate(o2); // added saturate to prevent NaNs
  return;
}