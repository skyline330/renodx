#include "./common.hlsl"

// ---- Created with 3Dmigoto v1.4.1 on Tue Aug  5 02:20:22 2025

SamplerState mainTextureSampler_s : register(s0);
SamplerState mainTexture2Sampler_s : register(s1);
SamplerState mainTexture3Sampler_s : register(s2);
Texture2D<float4> mainTexture : register(t0);
Texture2D<float4> mainTexture2 : register(t1);
Texture2D<float4> mainTexture3 : register(t2);


// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.w = 1;
  r1.y = mainTexture2.Sample(mainTexture2Sampler_s, v1.xy).x;
  r1.z = mainTexture3.Sample(mainTexture3Sampler_s, v1.xy).x;
  r1.x = mainTexture.Sample(mainTextureSampler_s, v1.xy).x;
  r1.w = 1;
  r0.y = dot(r1.xyzw, float4(1.16412354,-0.813476562,-0.391448975,0.529705048));
  r0.x = dot(r1.xyw, float3(1.16412354,1.59579468,-0.87065506));
  r0.z = dot(r1.xzw, float3(1.16412354,2.01782227,-1.08166885));
  o0.xyzw = v2.xyzw * r0.xyzw;
  o0 = saturate(o0);
  o0.rgb = InverseToneMap(o0.rgb);
  o0.rgb = PostToneMapScale(o0.rgb);
  return;
}