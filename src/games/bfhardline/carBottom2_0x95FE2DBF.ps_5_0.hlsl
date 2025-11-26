// Bottom of car found in episode 6, causes NaNs when behind DoF

// ---- Created with 3Dmigoto v1.4.1 on Thu Aug 21 23:58:29 2025

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
  float3 external_PaintColor01 : packoffset(c1);
  float1 vc_pad1 : packoffset(c1.w);
  float3 external_DirtColour : packoffset(c2);
  float1 vc_pad2 : packoffset(c2.w);
  float external_Dirt_Strength : packoffset(c3);
  float3 vc_pad3 : packoffset(c3.y);
  float2 external_Dirt_Tiling : packoffset(c4);
  float2 vc_pad4 : packoffset(c4.z);
  float external_Dirt_DiffuseMaskOpacity : packoffset(c5);
  float3 vc_pad5 : packoffset(c5.y);
  float2 external_DamageScortchandDustTile : packoffset(c6);
  float2 vc_pad6 : packoffset(c6.z);
  float4 external_DamageIntensity : packoffset(c7);
  float external_AO_Intensity : packoffset(c8);
  float3 vc_pad8 : packoffset(c8.y);
  float2 external_DetailN_Scratch_Tiling : packoffset(c9);
  float2 vc_pad9 : packoffset(c9.z);
  float external_SpecIntensity : packoffset(c10);
  float3 vc_pad10 : packoffset(c10.y);
  float external_Dirt_Specular : packoffset(c11);
  float3 vc_pad11 : packoffset(c11.y);
  float external_Dirt_SpecularOpacity : packoffset(c12);
  float3 vc_pad12 : packoffset(c12.y);
  float external_Dirt_SpecularMaskOpacity : packoffset(c13);
  float3 vc_pad13 : packoffset(c13.y);
  float external_Dirt_SpecularMaskWhitePoint : packoffset(c14);
  float3 vc_pad14 : packoffset(c14.y);
  float external_AO_IntensitySpecular : packoffset(c15);
  float3 vc_pad15 : packoffset(c15.y);
  float external_Smoothness : packoffset(c16);
  float3 vc_pad16 : packoffset(c16.y);
  float external_PaintSmoothness : packoffset(c17);
  float3 vc_pad17 : packoffset(c17.y);
  float external_Dirt_Smoothness_Opacity : packoffset(c18);
  float3 vc_pad18 : packoffset(c18.y);
  float external_DetailN_Scale : packoffset(c19);
  float3 vc_pad19 : packoffset(c19.y);
  float2 external_DamageNTile : packoffset(c20);
  float2 vc_pad20 : packoffset(c20.z);
  float external_Damage_Normal_AlwaysOnAmount : packoffset(c21);
  float3 vc_pad21 : packoffset(c21.y);
  float external_DamageN_Scale : packoffset(c22);
  float3 vc_pad22 : packoffset(c22.y);
}

SamplerState sampler0_s : register(s0);
SamplerState sampler1_s : register(s1);
SamplerState sampler2_s : register(s2);
Texture2D<float4> texture_bestFitNormalScaleTexture : register(t1);
Texture2D<float4> texture_BaseDiffuse : register(t2);
Texture2D<float4> texture_Decal : register(t3);
Texture2D<float4> texture_DamageMask : register(t4);
Texture2D<float4> texture_Texture8 : register(t5);
Texture2D<float4> texture_AO : register(t6);
Texture2D<float4> texture_BaseSpecularPacked : register(t7);
Texture2D<float4> texture_Texture2 : register(t8);
Texture2D<float4> texture_DamageNormal : register(t9);
Texture2D<float4> texture_BaseNormal : register(t10);


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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = external_DamageNTile.xy * v4.zw;
  r0.xyz = texture_DamageNormal.Sample(sampler1_s, r0.xy).xyw;
  r0.x = r0.x * r0.z;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.zw = external_DetailN_Scratch_Tiling.xy * v4.zw;
  r1.xyz = texture_Texture2.Sample(sampler1_s, r0.zw).xyw;
  r0.z = texture_Texture8.Sample(sampler1_s, r0.zw).y;
  r1.x = r1.x * r1.z;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r1.zw = -external_DetailN_Scale * r1.xy + r0.xy;
  r1.xy = external_DetailN_Scale * r1.xy;
  r0.w = external_DetailN_Scale * external_Damage_Normal_AlwaysOnAmount + external_DamageIntensity.x;
  r2.xyz = texture_DamageMask.Sample(sampler1_s, v4.zw).xyz;
  r0.w = r2.x * r0.w;
  r1.xy = r0.ww * r1.zw + r1.xy;
  r0.xy = external_DamageN_Scale * r0.xy + -r1.xy;
  r1.zw = external_DamageIntensity.xy * r2.xy;
  r0.xy = r1.zz * r0.xy + r1.xy;
  r1.xyz = texture_BaseNormal.Sample(sampler1_s, v4.xy).xyw;
  r1.x = r1.x * r1.z;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r3.xy = r1.xy + r0.xy;
  r0.x = dot(r1.xy, r1.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r3.z = sqrt(r0.x);
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyw = r3.xyz * r0.xxx;
  r1.x = dot(r0.xyw, v1.xyz);
  r1.y = dot(r0.xyw, v2.xyz);
  r1.z = dot(r0.xyw, v3.xyz);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r3.xyz = r1.xyz * r0.xxx;
  r0.x = max(abs(r3.x), abs(r3.y));
  r0.x = max(abs(r3.z), r0.x);
  r1.xyz = abs(r3.xyz) / r0.xxx;
  r0.xy = cmp(abs(r3.zy) < r0.xx);
  r1.xyz = float3(511.5,511.5,511.5) * r1.xyz;
  r1.xyz = floor(r1.xyz);
  r1.xyz = float3(0.5,0.5,0.5) + r1.xyz;
  r1.xyz = float3(0.001953125,0.001953125,0.001953125) * r1.xyz;
  r0.yw = r0.yy ? r1.yz : r1.xz;
  r0.xy = r0.xx ? r0.yw : r1.xy;
  r0.x = texture_bestFitNormalScaleTexture.Sample(sampler0_s, r0.xy).x;
  r2.xyw = cmp(float3(0,0,0) < r3.xyz);
  r4.xyz = cmp(r3.xyz < float3(0,0,0));
  r2.xyw = (int3)-r2.xyw + (int3)r4.xyz;
  r2.xyw = (int3)r2.xyw;
  r1.xyz = r2.xyw * r1.xyz;
  r0.xyw = r1.xyz * r0.xxx;
  o0.xyz = r0.xyw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = cmp(v4.x < 0);
  r0.y = cmp(1 < v4.x);
  r0.xy = r0.xy ? float2(1,1) : 0;
  r0.w = max(r0.x, r0.y);
  r1.x = external_PaintSmoothness + -external_Smoothness;
  r0.w = r0.w * r1.x + external_Smoothness;
  r1.xyz = texture_BaseSpecularPacked.Sample(sampler1_s, v4.xy).xyz;
  r0.zw = r1.xy * r0.zw;
  r1.y = rsqrt(r2.z);
  r1.y = 1 / r1.y;
  r2.x = external_Dirt_Smoothness_Opacity * r1.y;
  r0.w = r2.x * -r0.w + r0.w;
  r2.xy = external_DamageScortchandDustTile.xy * v4.zw;
  r2.x = texture_Texture8.Sample(sampler1_s, r2.xy).z;
  r2.y = r0.w * r2.x + -r0.w;
  r4.xy = float2(0.75,0.5) * r1.ww;
  r1.w = saturate(r1.w * 1.5 + -0.100000001);
  o0.w = r2.y * r4.y + r0.w;
  r4.yzw = texture_BaseDiffuse.Sample(sampler1_s, v4.xy).xyz;
  r5.xyz = r4.yzw * external_PaintColor00.xyz + -r4.yzw;
  r4.yzw = r5.xyz * r0.xxx + r4.yzw;
  r5.xyz = r4.yzw * external_PaintColor01.xyz + -r4.yzw;
  r0.xyw = r5.xyz * r0.yyy + r4.yzw;
  r5.xyzw = texture_Decal.Sample(sampler2_s, float2(0,0)).xyzw;
  r4.yzw = r5.xyz + -r0.xyw;
  r0.xyw = r5.www * r4.yzw + r0.xyw;
  r2.y = 1 + -r5.w;
  o2.y = r2.y * r1.z;
  r4.yzw = external_DirtColour.xyz + -r0.xyw;
  r1.xz = external_Dirt_Tiling.xy * v4.zw;
  r1.x = texture_Texture8.Sample(sampler1_s, r1.xz).x;
  r1.x = r2.z * r1.x;
  r1.x = saturate(external_Dirt_Strength * r1.x + -0.0500000007);
  r1.z = r1.y + -r1.x;
  r1.z = external_Dirt_DiffuseMaskOpacity * r1.z + r1.x;
  r1.x = rsqrt(r1.x);
  r1.x = 1 / r1.x;
  r0.xyw = r1.zzz * r4.yzw + r0.xyw;
  r2.yzw = r0.xyw * r2.xxx + -r0.xyw;
  r0.xyw = r2.yzw * r4.xxx + r0.xyw;
  r1.z = texture_AO.Sample(sampler1_s, v4.zw).x;
  r1.z = -1 + r1.z;
  r2.y = saturate(external_AO_Intensity * r1.z + 1);
  r1.z = saturate(external_AO_IntensitySpecular * r1.z + 1);
  r0.xyw = r2.yyy * r0.xyw;
  o1.xyz = sqrt(r0.xyw);
  r0.x = 1 + -external_Dirt_SpecularOpacity;
  r0.x = saturate(r1.x / r0.x);
  r0.y = r1.y + -r0.x;
  r0.x = saturate(external_Dirt_SpecularMaskOpacity * r0.y + r0.x);
  r0.x = saturate(external_Dirt_SpecularMaskWhitePoint * r0.x);
  r0.y = external_SpecIntensity * r0.z;
  r0.z = -r0.z * external_SpecIntensity + external_Dirt_Specular;
  r0.x = r0.x * r0.z + r0.y;
  r0.y = r0.x * r2.x + -r0.x;
  r0.x = r0.y * r1.w + r0.x;
  r0.x = r0.x * r1.z;
  o1.w = sqrt(r0.x);
  r3.w = 1;
  o2.x = dot(r3.xyzw, lightProbeShO.xyzw);
  o2.zw = float2(0,0.0196077991);
  r0.x = dot(r3.xyzw, lightProbeShR.xyzw);
  r0.y = dot(r3.xyzw, lightProbeShG.xyzw);
  r0.z = dot(r3.xyzw, lightProbeShB.xyzw);
  o3.xyz = max(float3(0,0,0), r0.xyz);
  o3.w = 0;
  o1 = saturate(o1); // Added saturate to prevent NaNs
  return;
}