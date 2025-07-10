#include "./shared.h"
// applies to blood textures drawn on screen when damaged or killed

// ---- Created with 3Dmigoto v1.4.1 on Tue Jun 24 18:24:19 2025
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  // o0.xyzw = r0.xyzw * float4(1.20000005,1.20000005,1.20000005,1.20000005) + cb0[2].xyzw;
  o0.xyzw = r0.xyzw;
  return;
}