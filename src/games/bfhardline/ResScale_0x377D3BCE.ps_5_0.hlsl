#include "./common.hlsl"

// ---- Created with 3Dmigoto v1.4.1 on Tue Aug  5 01:18:10 2025

cbuffer _Globals : register(b0)
{
  float2 invPixelSize : packoffset(c0);
  float4 mainTextureDimensions : packoffset(c1);
}

SamplerState mainTextureSampler_s : register(s0);
Texture2D<float4> mainTexture : register(t0);


// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.z = 1;
  r1.xy = float2(1,1) / mainTextureDimensions.xy;
  r1.zw = -r1.xy * float2(0.5,0.5) + v1.xy;
  r2.xy = mainTextureDimensions.xy * r1.zw;
  r2.xy = frac(r2.xy);
  r3.xy = r2.xy * r2.xy;
  r4.xz = r3.xy * r2.xy;
  r3.z = r4.z;
  r0.xy = r3.zy;
  r5.y = dot(r0.xzy, float3(1,1,-2));
  r5.w = dot(r0.xy, float2(1,-1));
  r3.w = r2.y;
  r5.x = dot(r3.zwy, float3(-1,-1,2));
  r5.z = dot(r3.zyw, float3(-1,1,1));
  r4.y = r3.x;
  r0.x = dot(r5.xyzw, float4(1,1,1,1));
  r0.xyzw = r5.xyzw / r0.xxxx;
  r4.w = r2.x;
  r2.xy = float2(-0.5,-0.5) + -r2.xy;
  r2.xw = r2.xy * r1.xy + r1.zw;
  r3.x = dot(r4.xwy, float3(-1,-1,2));
  r3.z = dot(r4.xyw, float3(-1,1,1));
  r4.z = 1;
  r3.y = dot(r4.xzy, float3(1,1,-2));
  r3.w = dot(r4.xy, float2(1,-1));
  r1.z = dot(r3.xyzw, float4(1,1,1,1));
  r3.xyzw = r3.xyzw / r1.zzzz;
  r2.yz = r2.wx + r1.yx;
  r4.xyz = mainTexture.Sample(mainTextureSampler_s, r2.zy).xyz;
  r4.xyz = r4.xyz * r3.yyy;
  r5.xyz = mainTexture.Sample(mainTextureSampler_s, r2.xy).xyz;
  r4.xyz = r3.xxx * r5.xyz + r4.xyz;
  r5.yz = r2.wy;
  r5.xw = r1.yx * float2(2,2) + r2.wx;
  r1.xy = r1.xy * float2(3,3) + r2.xw;
  r6.xyz = mainTexture.Sample(mainTextureSampler_s, r5.wz).xyz;
  r4.xyz = r3.zzz * r6.xyz + r4.xyz;
  r1.zw = r5.yz;
  r6.xyz = mainTexture.Sample(mainTextureSampler_s, r5.wy).xyz;
  r7.xyz = mainTexture.Sample(mainTextureSampler_s, r1.xw).xyz;
  r8.xyz = mainTexture.Sample(mainTextureSampler_s, r1.xz).xyz;
  r4.xyz = r3.www * r7.xyz + r4.xyz;
  r4.xyz = r4.xyz * r0.yyy;
  r7.xyz = mainTexture.Sample(mainTextureSampler_s, r2.xw).xyz;
  r9.xyz = mainTexture.Sample(mainTextureSampler_s, r2.zw).xyz;
  r9.xyz = r9.xyz * r3.yyy;
  r7.xyz = r3.xxx * r7.xyz + r9.xyz;
  r6.xyz = r3.zzz * r6.xyz + r7.xyz;
  r6.xyz = r3.www * r8.xyz + r6.xyz;
  r4.xyz = r0.xxx * r6.xyz + r4.xyz;
  r6.xyz = mainTexture.Sample(mainTextureSampler_s, r5.wx).xyz;
  r2.y = r5.x;
  r7.xyz = mainTexture.Sample(mainTextureSampler_s, r2.xy).xyz;
  r8.xyz = mainTexture.Sample(mainTextureSampler_s, r2.zy).xyz;
  r5.xz = r2.xz;
  r8.xyz = r8.xyz * r3.yyy;
  r7.xyz = r3.xxx * r7.xyz + r8.xyz;
  r6.xyz = r3.zzz * r6.xyz + r7.xyz;
  r2.w = r1.x;
  r2.xyz = mainTexture.Sample(mainTextureSampler_s, r2.wy).xyz;
  r2.xyz = r3.www * r2.xyz + r6.xyz;
  r0.xyz = r0.zzz * r2.xyz + r4.xyz;
  r5.y = r1.y;
  r1.xyz = mainTexture.Sample(mainTextureSampler_s, r1.xy).xyz;
  r2.xyz = mainTexture.Sample(mainTextureSampler_s, r5.zy).xyz;
  r4.xyz = mainTexture.Sample(mainTextureSampler_s, r5.xy).xyz;
  r5.xyz = mainTexture.Sample(mainTextureSampler_s, r5.wy).xyz;
  r2.xyz = r3.yyy * r2.xyz;
  r2.xyz = r3.xxx * r4.xyz + r2.xyz;
  r2.xyz = r3.zzz * r5.xyz + r2.xyz;
  r1.xyz = r3.www * r1.xyz + r2.xyz;
  o0.xyz = r0.www * r1.xyz + r0.xyz;
  o0.w = 1;
  o0.rgb = renodx::color::gamma::DecodeSafe(o0.rgb, 2.2f);
  if (injectedData.custom_grain_strength > 0.f) {
    o0.rgb = renodx::effects::ApplyFilmGrain(o0.rgb, v1, CUSTOM_RANDOM, CUSTOM_GRAIN_STRENGTH * 0.03f);
  }
  o0.rgb = PostToneMapScale(o0.rgb);
  return;
}