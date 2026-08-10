#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0) {
  float cb0_061x : packoffset(c061.x);
  float cb0_173x : packoffset(c173.x);
  float cb0_173y : packoffset(c173.y);
};

SamplerState s0 : register(s0);

float4 main(
    noperspective float4 SV_Position: SV_Position,
    linear float2 TEXCOORD: TEXCOORD,
    linear float4 TEXCOORD_1: TEXCOORD1) : SV_Target {
  float4 SV_Target;
  float4 _23 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 0.09515541791915894f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 0.09515541791915894f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _43 = t0.SampleBias(s0, float2(min(max((cb0_173x + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max((cb0_173y + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = ((_43.x * 0.08688758313655853f) + (_23.x * 0.9131125211715698f));
  SV_Target.y = ((_43.y * 0.08688758313655853f) + (_23.y * 0.9131125211715698f));
  SV_Target.z = ((_43.z * 0.08688758313655853f) + (_23.z * 0.9131125211715698f));
  SV_Target.w = ((_43.w * 0.08688758313655853f) + (_23.w * 0.9131125211715698f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
