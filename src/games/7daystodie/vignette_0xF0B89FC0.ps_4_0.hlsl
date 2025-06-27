// ---- Created with 3Dmigoto v1.4.1 on Tue Jun 24 17:33:23 2025
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s1_s, v1.xy).xyzw;
  r1.yzw = cb0[2].xyz * r0.xyz;
  r1.x = r0.w * cb0[2].w + cb0[3].x;
  r0.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r2.xyzw = r1.yzwx + -r0.xyzw;
  r1.x = (r1.x); // removed saturate
  r1.y = saturate(cb0[3].y);
  r1.x = r1.x * r1.y;
  o0.xyzw = r1.xxxx * r2.xyzw + r0.xyzw;
  return;
}