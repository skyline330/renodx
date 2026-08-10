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
  float4 _31 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 7.158820152282715f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 7.158820152282715f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _42 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 5.2274980545043945f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 5.2274980545043945f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _76 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 3.3147621154785156f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 3.3147621154785156f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _91 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 1.4174120426177979f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 1.4174120426177979f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _125 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 0.47224459052085876f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 0.47224459052085876f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _140 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 2.3645479679107666f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 2.3645479679107666f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _174 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 4.268898010253906f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 4.268898010253906f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _189 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 6.190807819366455f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 6.190807819366455f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _215 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 8.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 8.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = (((((((((_42.x * 0.015129810199141502f) + (_31.x * 0.0009648678242228925f)) + (_76.x * 0.10095830261707306f)) + (_91.x * 0.2888999879360199f)) + (_125.x * 0.3564035892486572f)) + (_140.x * 0.18977080285549164f)) + (_174.x * 0.04346562922000885f)) + (_189.x * 0.0042536258697509766f)) + (_215.x * 0.0001532399037387222f));
  SV_Target.y = (((((((((_42.y * 0.015129810199141502f) + (_31.y * 0.0009648678242228925f)) + (_76.y * 0.10095830261707306f)) + (_91.y * 0.2888999879360199f)) + (_125.y * 0.3564035892486572f)) + (_140.y * 0.18977080285549164f)) + (_174.y * 0.04346562922000885f)) + (_189.y * 0.0042536258697509766f)) + (_215.y * 0.0001532399037387222f));
  SV_Target.z = (((((((((_42.z * 0.015129810199141502f) + (_31.z * 0.0009648678242228925f)) + (_76.z * 0.10095830261707306f)) + (_91.z * 0.2888999879360199f)) + (_125.z * 0.3564035892486572f)) + (_140.z * 0.18977080285549164f)) + (_174.z * 0.04346562922000885f)) + (_189.z * 0.0042536258697509766f)) + (_215.z * 0.0001532399037387222f));
  SV_Target.w = (((((((((_42.w * 0.015129810199141502f) + (_31.w * 0.0009648678242228925f)) + (_76.w * 0.10095830261707306f)) + (_91.w * 0.2888999879360199f)) + (_125.w * 0.3564035892486572f)) + (_140.w * 0.18977080285549164f)) + (_174.w * 0.04346562922000885f)) + (_189.w * 0.0042536258697509766f)) + (_215.w * 0.0001532399037387222f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
