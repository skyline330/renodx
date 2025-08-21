// ---- Created with 3Dmigoto v1.4.1 on Mon Aug 11 18:28:12 2025

SamplerState g_LinearMipSampler_s : register(s1);
Texture2D<float> g_BokehTexture : register(t2);


// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = g_BokehTexture.Sample(g_LinearMipSampler_s, v2.xy).x;
  r1.xyz = v1.xyz;
  r1.w = 1;
  r0.xyzw = r1.xyzw * r0.xxxx;
  o0.xyzw = v1.wwww * r0.xyzw;
  return;
}