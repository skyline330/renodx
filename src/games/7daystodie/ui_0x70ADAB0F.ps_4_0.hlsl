#include "./shared.h"

// ---- Created with 3Dmigoto v1.4.1 on Sat Jun 28 20:13:07 2025
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float4 v2 : COLOR0,
  out float4 o0 : SV_Target0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;
  
  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  o0.xyzw = v2.xyzw * r0.xyzw;

  // fix ui being darkened with swapchain upgrade
  o0.rgb = renodx::color::srgb::EncodeSafe(o0.rgb);
  return;
}