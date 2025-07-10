#include "./shared.h"
// bloom off sunshafts off/on

// ---- Created with 3Dmigoto v1.4.1 on Wed Jun 25 23:16:42 2025
Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[43];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s1_s, v1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, w1.xy).xyzw;
  r1.xyz = r1.xyz * r0.xxx;
  r0.xyzw = cb0[36].zzzz * r1.xyzw;
  float3 untonemapped = r0.rgb;

  // ARRI encoding
  r0.xyz = r0.xyz * float3(5.55555582,5.55555582,5.55555582) + float3(0.0479959995,0.0479959995,0.0479959995);
  r0.xyz = log2(r0.xyz);
  r0.xyz = saturate(r0.xyz * float3(0.0734997839,0.0734997839,0.0734997839) + float3(0.386036009,0.386036009,0.386036009));
  // r0.xyz = renodx::color::arri::logc::c800::Encode(r0.xyz);

  // r0.xyz = cb0[36].yyy * r0.xyz;
  // r1.x = 0.5 * cb0[36].x;
  // r0.xyz = r0.xyz * cb0[36].xxx + r1.xxx;
  // r1.xyzw = t2.Sample(s2_s, r0.xyz).wxyz;
  r1.gba = renodx::lut::SampleTetrahedral(t2, r0.xyz, 1 / cb0[36].x);

  r0.x = cmp(0.5 < cb0[42].x);
  if (r0.x != 0) {
    // r0.xyz = saturate(r1.yzw);
    // r1.x = dot(r0.xyz, float3(0.212672904,0.715152204,0.0721750036));
    r1.x = renodx::color::y::from::BT709(r1.gba);
  } else {
    r1.x = r0.w;
  }
  o0.xyzw = r1.yzwx;
  o0.rgb = untonemapped;
  return;
} 