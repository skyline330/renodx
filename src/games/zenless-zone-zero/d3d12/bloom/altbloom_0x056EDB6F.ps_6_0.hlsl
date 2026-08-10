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
  float4 _23 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 12.240830421447754f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 12.240830421447754f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _45 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 10.275989532470703f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 10.275989532470703f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _71 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 8.314164161682129f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 8.314164161682129f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _97 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 6.355024814605713f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 6.355024814605713f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _123 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 4.398115158081055f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 4.398115158081055f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _149 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 2.442845106124878f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 2.442845106124878f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _175 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 0.4885208010673523f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 0.4885208010673523f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _201 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 1.4656109809875488f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 1.4656109809875488f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _227 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 3.420315980911255f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 3.420315980911255f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _253 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 5.376326084136963f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 5.376326084136963f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _279 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 7.334283828735352f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 7.334283828735352f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _305 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 9.294718742370605f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 9.294718742370605f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _331 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 11.258020401000977f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 11.258020401000977f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _357 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 13.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 13.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = ((((((((((((((_45.x * 0.0016913360450416803f) + (_23.x * 0.00021382429986260831f)) + (_71.x * 0.009327604435384274f)) + (_97.x * 0.03588441014289856f)) + (_123.x * 0.09634613990783691f)) + (_149.x * 0.18059709668159485f)) + (_175.x * 0.2363951951265335f)) + (_201.x * 0.21610459685325623f)) + (_227.x * 0.13796569406986237f)) + (_253.x * 0.06150142103433609f)) + (_279.x * 0.019137060269713402f)) + (_305.x * 0.004154935013502836f)) + (_331.x * 0.0006291262106969953f)) + (_357.x * 5.149576099938713e-05f));
  SV_Target.y = ((((((((((((((_45.y * 0.0016913360450416803f) + (_23.y * 0.00021382429986260831f)) + (_71.y * 0.009327604435384274f)) + (_97.y * 0.03588441014289856f)) + (_123.y * 0.09634613990783691f)) + (_149.y * 0.18059709668159485f)) + (_175.y * 0.2363951951265335f)) + (_201.y * 0.21610459685325623f)) + (_227.y * 0.13796569406986237f)) + (_253.y * 0.06150142103433609f)) + (_279.y * 0.019137060269713402f)) + (_305.y * 0.004154935013502836f)) + (_331.y * 0.0006291262106969953f)) + (_357.y * 5.149576099938713e-05f));
  SV_Target.z = ((((((((((((((_45.z * 0.0016913360450416803f) + (_23.z * 0.00021382429986260831f)) + (_71.z * 0.009327604435384274f)) + (_97.z * 0.03588441014289856f)) + (_123.z * 0.09634613990783691f)) + (_149.z * 0.18059709668159485f)) + (_175.z * 0.2363951951265335f)) + (_201.z * 0.21610459685325623f)) + (_227.z * 0.13796569406986237f)) + (_253.z * 0.06150142103433609f)) + (_279.z * 0.019137060269713402f)) + (_305.z * 0.004154935013502836f)) + (_331.z * 0.0006291262106969953f)) + (_357.z * 5.149576099938713e-05f));
  SV_Target.w = ((((((((((((((_45.w * 0.0016913360450416803f) + (_23.w * 0.00021382429986260831f)) + (_71.w * 0.009327604435384274f)) + (_97.w * 0.03588441014289856f)) + (_123.w * 0.09634613990783691f)) + (_149.w * 0.18059709668159485f)) + (_175.w * 0.2363951951265335f)) + (_201.w * 0.21610459685325623f)) + (_227.w * 0.13796569406986237f)) + (_253.w * 0.06150142103433609f)) + (_279.w * 0.019137060269713402f)) + (_305.w * 0.004154935013502836f)) + (_331.w * 0.0006291262106969953f)) + (_357.w * 5.149576099938713e-05f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
