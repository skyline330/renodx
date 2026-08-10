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
  float4 _23 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 6.138407230377197f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 6.138407230377197f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _45 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 4.2199530601501465f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 4.2199530601501465f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _71 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 2.331080913543701f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 2.331080913543701f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _97 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 0.46489280462265015f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 0.46489280462265015f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _123 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 1.3960429430007935f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 1.3960429430007935f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _149 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 3.2719759941101074f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 3.2719759941101074f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _175 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 5.175481796264648f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 5.175481796264648f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _201 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 7.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 7.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = ((((((((_45.x * 0.028576409444212914f) + (_23.x * 0.0015526290517300367f)) + (_71.x * 0.18022289872169495f)) + (_97.x * 0.3954527974128723f)) + (_123.x * 0.30439770221710205f)) + (_149.x * 0.08195929229259491f)) + (_175.x * 0.007623195182532072f)) + (_201.x * 0.00021489530627150089f));
  SV_Target.y = ((((((((_45.y * 0.028576409444212914f) + (_23.y * 0.0015526290517300367f)) + (_71.y * 0.18022289872169495f)) + (_97.y * 0.3954527974128723f)) + (_123.y * 0.30439770221710205f)) + (_149.y * 0.08195929229259491f)) + (_175.y * 0.007623195182532072f)) + (_201.y * 0.00021489530627150089f));
  SV_Target.z = ((((((((_45.z * 0.028576409444212914f) + (_23.z * 0.0015526290517300367f)) + (_71.z * 0.18022289872169495f)) + (_97.z * 0.3954527974128723f)) + (_123.z * 0.30439770221710205f)) + (_149.z * 0.08195929229259491f)) + (_175.z * 0.007623195182532072f)) + (_201.z * 0.00021489530627150089f));
  SV_Target.w = ((((((((_45.w * 0.028576409444212914f) + (_23.w * 0.0015526290517300367f)) + (_71.w * 0.18022289872169495f)) + (_97.w * 0.3954527974128723f)) + (_123.w * 0.30439770221710205f)) + (_149.w * 0.08195929229259491f)) + (_175.w * 0.007623195182532072f)) + (_201.w * 0.00021489530627150089f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
