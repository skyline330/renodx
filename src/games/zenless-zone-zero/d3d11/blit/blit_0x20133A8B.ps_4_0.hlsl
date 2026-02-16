#include "../../tonemap.hlsl"

// ---- Created with 3Dmigoto v1.4.1 on Sun Feb  8 15:56:26 2026

SamplerState BlitSampler_s : register(s0);
Texture2D<float4> BlitTexture : register(t0);


// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  o0.xyzw = BlitTexture.Sample(BlitSampler_s, v0.xy).xyzw;

  float2 textureDimensions;
  BlitTexture.GetDimensions(textureDimensions.x, textureDimensions.y);
  float aspectRatio = textureDimensions.x / textureDimensions.y;

// Apply RCAS if texture aspect ratio is not 0.5, 1, or 1.5
  if (injectedData.fxRCASAmount > 0.0f && aspectRatio != 0.5f && aspectRatio != 1.0f && aspectRatio != 1.5f) {
    o0.xyz = ApplyRCAS(o0.xyz, v0.xy, BlitTexture, BlitSampler_s);
  }

  return;
}