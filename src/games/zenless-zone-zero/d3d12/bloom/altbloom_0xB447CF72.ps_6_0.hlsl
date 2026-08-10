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
  float4 _23 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 1.0473359823226929f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 1.0473359823226929f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _45 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 0.26881030201911926f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 0.26881030201911926f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _71 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 2.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 2.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = (((_45.x * 0.7718889117240906f) + (_23.x * 0.21780140697956085f)) + (_71.x * 0.010309750214219093f));
  SV_Target.y = (((_45.y * 0.7718889117240906f) + (_23.y * 0.21780140697956085f)) + (_71.y * 0.010309750214219093f));
  SV_Target.z = (((_45.z * 0.7718889117240906f) + (_23.z * 0.21780140697956085f)) + (_71.z * 0.010309750214219093f));
  SV_Target.w = (((_45.w * 0.7718889117240906f) + (_23.w * 0.21780140697956085f)) + (_71.w * 0.010309750214219093f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
