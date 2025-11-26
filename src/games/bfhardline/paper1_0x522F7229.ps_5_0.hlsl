// Floating paper texture found in episode 6, causes NaNs

// ---- Created with 3Dmigoto v1.4.1 on Fri Aug 22 00:37:11 2025

SamplerState sampler0_s : register(s0);
Texture2D<float4> texture_BaseTexture1 : register(t1);


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
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = texture_BaseTexture1.Sample(sampler0_s, v4.xy).xyzw;
  r0.w = saturate(r0.w * v4.w + -v4.z);
  r0.xyz = v1.xyz * r0.xyz;
  o1.xyz = sqrt(r0.xyz);
  r0.x = log2(r0.w);
  r0.x = v2.w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * v1.w + -0.5;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyz = v3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.w = 0;
  o1.w = 0;
  o2.xyzw = float4(0,0,0,0);
  o3.xyz = v2.xyz;
  o3.w = 0;
  o1 = saturate(o1); // Added saturate to prevent NaNs
  return;
}