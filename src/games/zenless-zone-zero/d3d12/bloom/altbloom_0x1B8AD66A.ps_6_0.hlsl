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
  float4 _23 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 10.212030410766602f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 10.212030410766602f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _45 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 8.256797790527344f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 8.256797790527344f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _71 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 6.307329177856445f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 6.307329177856445f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _97 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 4.3629469871521f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 4.3629469871521f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _123 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 2.422492027282715f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 2.422492027282715f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _149 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 0.48437750339508057f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 0.48437750339508057f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _175 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 1.453253984451294f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 1.453253984451294f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _201 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 3.3923189640045166f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 3.3923189640045166f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _227 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 5.334564208984375f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 5.334564208984375f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _253 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 7.281373977661133f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 7.281373977661133f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _279 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 9.233671188354492f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 9.233671188354492f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _305 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 11.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 11.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = ((((((((((((_45.x * 0.0034741300623863935f) + (_23.x * 0.0003452383098192513f)) + (_71.x * 0.021456949412822723f)) + (_97.x * 0.08144757896661758f)) + (_123.x * 0.19022630155086517f)) + (_149.x * 0.27358248829841614f)) + (_175.x * 0.24237440526485443f)) + (_201.x * 0.1322554051876068f)) + (_227.x * 0.044423799961805344f)) + (_253.x * 0.009176325052976608f)) + (_279.x * 0.001164186978712678f)) + (_305.x * 7.320166332647204e-05f));
  SV_Target.y = ((((((((((((_45.y * 0.0034741300623863935f) + (_23.y * 0.0003452383098192513f)) + (_71.y * 0.021456949412822723f)) + (_97.y * 0.08144757896661758f)) + (_123.y * 0.19022630155086517f)) + (_149.y * 0.27358248829841614f)) + (_175.y * 0.24237440526485443f)) + (_201.y * 0.1322554051876068f)) + (_227.y * 0.044423799961805344f)) + (_253.y * 0.009176325052976608f)) + (_279.y * 0.001164186978712678f)) + (_305.y * 7.320166332647204e-05f));
  SV_Target.z = ((((((((((((_45.z * 0.0034741300623863935f) + (_23.z * 0.0003452383098192513f)) + (_71.z * 0.021456949412822723f)) + (_97.z * 0.08144757896661758f)) + (_123.z * 0.19022630155086517f)) + (_149.z * 0.27358248829841614f)) + (_175.z * 0.24237440526485443f)) + (_201.z * 0.1322554051876068f)) + (_227.z * 0.044423799961805344f)) + (_253.z * 0.009176325052976608f)) + (_279.z * 0.001164186978712678f)) + (_305.z * 7.320166332647204e-05f));
  SV_Target.w = ((((((((((((_45.w * 0.0034741300623863935f) + (_23.w * 0.0003452383098192513f)) + (_71.w * 0.021456949412822723f)) + (_97.w * 0.08144757896661758f)) + (_123.w * 0.19022630155086517f)) + (_149.w * 0.27358248829841614f)) + (_175.w * 0.24237440526485443f)) + (_201.w * 0.1322554051876068f)) + (_227.w * 0.044423799961805344f)) + (_253.w * 0.009176325052976608f)) + (_279.w * 0.001164186978712678f)) + (_305.w * 7.320166332647204e-05f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
