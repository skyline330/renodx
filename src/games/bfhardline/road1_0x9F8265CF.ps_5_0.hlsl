// Road stripe texture found in episode 6; causes NaNs when behind DoF

// ---- Created with 3Dmigoto v1.4.1 on Thu Aug 21 23:24:43 2025

cbuffer externalConstants : register(b1)
{
  float4 external_worldToHeightfieldUvTransform : packoffset(c0);
  float4 external_heightfieldPixelSizeAndAspect : packoffset(c1);
}

SamplerState sampler0_s : register(s0);
SamplerState sampler1_s : register(s1);
Texture2D<float4> texture_Texture2 : register(t1);
Texture2D<float4> texture_heightfieldAtlas : register(t2);


// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = v2.xzxz * external_worldToHeightfieldUvTransform.xyxy + external_worldToHeightfieldUvTransform.zwzw;
  r1.xyzw = external_heightfieldPixelSizeAndAspect.xyxy * float4(0,-1,-1,0) + r0.zwzw;
  r0.xyzw = external_heightfieldPixelSizeAndAspect.xyxy * float4(1,0,0,1) + r0.xyzw;
  r1.x = texture_heightfieldAtlas.SampleLevel(sampler1_s, r1.xy, 0).x;
  r1.y = texture_heightfieldAtlas.SampleLevel(sampler1_s, r1.zw, 0).x;
  r0.z = texture_heightfieldAtlas.SampleLevel(sampler1_s, r0.zw, 0).x;
  r0.x = texture_heightfieldAtlas.SampleLevel(sampler1_s, r0.xy, 0).x;
  r0.x = r1.y + -r0.x;
  r2.x = external_heightfieldPixelSizeAndAspect.w * r0.x;
  r0.x = r1.x + -r0.z;
  r2.z = external_heightfieldPixelSizeAndAspect.z * r0.x;
  r2.y = 2;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.y = rsqrt(r0.x);
  r0.xz = r2.xz * r0.yy;
  r0.xyz = r0.xyz * float3(0.5,1,0.5) + float3(0.5,0.5,0.5);
  r1.xyzw = float4(1,0.0299999993,0.218484595,0.00655453792) * v3.xyxy;
  r0.w = texture_Texture2.Sample(sampler0_s, r1.zw).z;
  r1.xy = texture_Texture2.Sample(sampler0_s, r1.xy).xz;
  r0.w = dot(r1.yy, r0.ww);
  r0.w = r0.w + -r1.y;
  r0.w = r0.w * 0.862999976 + r1.y;
  r0.w = r1.x * r0.w;
  r0.w = sqrt(r0.w);
  r1.yz = float2(0.699999988,1) + -v1.ww;
  r1.yw = max(float2(0.00999999978,0.0199999996), r1.yz);
  r0.w = -r1.y + r0.w;
  r1.y = r1.w + -r1.y;
  r0.w = saturate(r0.w / r1.y);
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  r0.x = -0.699999988 * r1.x;
  r0.x = r0.x * r1.z + r1.x;
  r0.xyz = float3(0.694000006,0.50999999,0.129999995) * r0.xxx;
  r0.xyz = sqrt(r0.xyz);
  o1.xyz = r0.xyz * r0.www;
  o1.w = r0.w;
  o2.w = r0.w;
  o2.xyz = float3(0,0,0);
  o1 = saturate(o1); // added saturate to prevent NaNs
  return;
}