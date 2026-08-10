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
  float4 _23 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 9.195685386657715f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 9.195685386657715f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _45 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 7.246770858764648f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 7.246770858764648f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _71 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 5.306118011474609f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 5.306118011474609f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _97 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 3.3726749420166016f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 3.3726749420166016f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _123 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 1.4444350004196167f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 1.4444350004196167f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _149 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 0.48141008615493774f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 0.48141008615493774f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _175 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 2.4080650806427f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 2.4080650806427f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _201 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 4.33859920501709f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 4.33859920501709f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _227 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 6.275454998016357f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 6.275454998016357f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _253 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 8.22016716003418f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 8.22016716003418f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _279 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 10.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 10.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = (((((((((((_45.x * 0.0053352732211351395f) + (_23.x * 0.00046214339090511203f)) + (_71.x * 0.03453093022108078f)) + (_97.x * 0.12558619678020477f)) + (_123.x * 0.25714001059532166f)) + (_149.x * 0.29674890637397766f)) + (_175.x * 0.19306530058383942f)) + (_201.x * 0.07076328247785568f)) + (_227.x * 0.01458922028541565f)) + (_253.x * 0.0016883020289242268f)) + (_279.x * 9.043486352311447e-05f));
  SV_Target.y = (((((((((((_45.y * 0.0053352732211351395f) + (_23.y * 0.00046214339090511203f)) + (_71.y * 0.03453093022108078f)) + (_97.y * 0.12558619678020477f)) + (_123.y * 0.25714001059532166f)) + (_149.y * 0.29674890637397766f)) + (_175.y * 0.19306530058383942f)) + (_201.y * 0.07076328247785568f)) + (_227.y * 0.01458922028541565f)) + (_253.y * 0.0016883020289242268f)) + (_279.y * 9.043486352311447e-05f));
  SV_Target.z = (((((((((((_45.z * 0.0053352732211351395f) + (_23.z * 0.00046214339090511203f)) + (_71.z * 0.03453093022108078f)) + (_97.z * 0.12558619678020477f)) + (_123.z * 0.25714001059532166f)) + (_149.z * 0.29674890637397766f)) + (_175.z * 0.19306530058383942f)) + (_201.z * 0.07076328247785568f)) + (_227.z * 0.01458922028541565f)) + (_253.z * 0.0016883020289242268f)) + (_279.z * 9.043486352311447e-05f));
  SV_Target.w = (((((((((((_45.w * 0.0053352732211351395f) + (_23.w * 0.00046214339090511203f)) + (_71.w * 0.03453093022108078f)) + (_97.w * 0.12558619678020477f)) + (_123.w * 0.25714001059532166f)) + (_149.w * 0.29674890637397766f)) + (_175.w * 0.19306530058383942f)) + (_201.w * 0.07076328247785568f)) + (_227.w * 0.01458922028541565f)) + (_253.w * 0.0016883020289242268f)) + (_279.w * 9.043486352311447e-05f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
