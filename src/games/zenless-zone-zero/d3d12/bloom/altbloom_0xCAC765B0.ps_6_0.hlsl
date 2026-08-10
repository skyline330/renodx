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
  float4 _23 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 3.074398994445801f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 3.074398994445801f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _45 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 1.253424048423767f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 1.253424048423767f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _71 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 0.4109247028827667f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 0.4109247028827667f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _97 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 2.1417629718780518f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 2.1417629718780518f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _123 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 4.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 4.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = (((((_45.x * 0.31638631224632263f) + (_23.x * 0.014308660291135311f)) + (_71.x * 0.5748165249824524f)) + (_97.x * 0.09342406690120697f)) + (_123.x * 0.0010645430302247405f));
  SV_Target.y = (((((_45.y * 0.31638631224632263f) + (_23.y * 0.014308660291135311f)) + (_71.y * 0.5748165249824524f)) + (_97.y * 0.09342406690120697f)) + (_123.y * 0.0010645430302247405f));
  SV_Target.z = (((((_45.z * 0.31638631224632263f) + (_23.z * 0.014308660291135311f)) + (_71.z * 0.5748165249824524f)) + (_97.z * 0.09342406690120697f)) + (_123.z * 0.0010645430302247405f));
  SV_Target.w = (((((_45.w * 0.31638631224632263f) + (_23.w * 0.014308660291135311f)) + (_71.w * 0.5748165249824524f)) + (_97.w * 0.09342406690120697f)) + (_123.w * 0.0010645430302247405f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
