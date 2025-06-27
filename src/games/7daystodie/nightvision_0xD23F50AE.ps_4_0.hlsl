#include "./shared.h"

// ---- Created with 3Dmigoto v1.4.1 on Wed Jun 25 23:50:23 2025
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v1.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = -0.5 + r0.x;
  r0.x = saturate(-19.9999962 * r0.x);
  r0.y = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = r0.y * r0.x;
  r1.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  // r0.y = dot(r1.xyz, float3(0.298999995, 0.587000012, 0.114));
  r0.y = renodx::color::y::from::BT709(r1.xyz);
  r0.z = saturate(-0.200000003 + r0.y);
  r0.z = 1.25 * r0.z;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * r0.z;
  r0.z = 20 * r0.z;
  r0.y = r0.y * 3.5 + r0.z;
  r1.xyz = cb0[3].xyz * r0.yyy;
  o0.xyzw = r1.xyzw * r0.xxxx;
  return;
}