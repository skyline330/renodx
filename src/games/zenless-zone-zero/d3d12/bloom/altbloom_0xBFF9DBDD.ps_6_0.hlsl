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
  float4 _31 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 17.294700622558594f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 17.294700622558594f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _42 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 15.315839767456055f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 15.315839767456055f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _76 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 13.337779998779297f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 13.337779998779297f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _91 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 11.360440254211426f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 11.360440254211426f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _125 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 9.383732795715332f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 9.383732795715332f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _140 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 7.4075751304626465f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 7.4075751304626465f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _174 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 5.431859970092773f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 5.431859970092773f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _189 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 3.456476926803589f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 3.456476926803589f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _223 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 1.4813090562820435f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 1.4813090562820435f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _238 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 0.49376699328422546f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 0.49376699328422546f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _272 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 2.468873977661133f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 2.468873977661133f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _287 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 4.44413423538208f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 4.44413423538208f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _321 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 6.419669151306152f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 6.419669151306152f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _336 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 8.395591735839844f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 8.395591735839844f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _370 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 10.372010231018066f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 10.372010231018066f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _385 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 12.349020004272461f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 12.349020004272461f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _419 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 14.326720237731934f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 14.326720237731934f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _434 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 16.3051700592041f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 16.3051700592041f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _460 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 18.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 18.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = (((((((((((((((((((_42.x * 0.0004767384089063853f) + (_31.x * 9.37651566346176e-05f)) + (_76.x * 0.00198987009935081f)) + (_91.x * 0.006818798836320639f)) + (_125.x * 0.019184879958629608f)) + (_140.x * 0.04432046040892601f)) + (_174.x * 0.08407454937696457f)) + (_189.x * 0.13096550107002258f)) + (_223.x * 0.16753029823303223f)) + (_238.x * 0.1759869009256363f)) + (_272.x * 0.1518165022134781f)) + (_287.x * 0.10754889994859695f)) + (_321.x * 0.06256497651338577f)) + (_336.x * 0.029886910691857338f)) + (_370.x * 0.011722920462489128f)) + (_385.x * 0.0037754790391772985f)) + (_419.x * 0.0009983022464439273f)) + (_434.x * 0.00021670789283234626f)) + (_460.x * 2.7632549972622655e-05f));
  SV_Target.y = (((((((((((((((((((_42.y * 0.0004767384089063853f) + (_31.y * 9.37651566346176e-05f)) + (_76.y * 0.00198987009935081f)) + (_91.y * 0.006818798836320639f)) + (_125.y * 0.019184879958629608f)) + (_140.y * 0.04432046040892601f)) + (_174.y * 0.08407454937696457f)) + (_189.y * 0.13096550107002258f)) + (_223.y * 0.16753029823303223f)) + (_238.y * 0.1759869009256363f)) + (_272.y * 0.1518165022134781f)) + (_287.y * 0.10754889994859695f)) + (_321.y * 0.06256497651338577f)) + (_336.y * 0.029886910691857338f)) + (_370.y * 0.011722920462489128f)) + (_385.y * 0.0037754790391772985f)) + (_419.y * 0.0009983022464439273f)) + (_434.y * 0.00021670789283234626f)) + (_460.y * 2.7632549972622655e-05f));
  SV_Target.z = (((((((((((((((((((_42.z * 0.0004767384089063853f) + (_31.z * 9.37651566346176e-05f)) + (_76.z * 0.00198987009935081f)) + (_91.z * 0.006818798836320639f)) + (_125.z * 0.019184879958629608f)) + (_140.z * 0.04432046040892601f)) + (_174.z * 0.08407454937696457f)) + (_189.z * 0.13096550107002258f)) + (_223.z * 0.16753029823303223f)) + (_238.z * 0.1759869009256363f)) + (_272.z * 0.1518165022134781f)) + (_287.z * 0.10754889994859695f)) + (_321.z * 0.06256497651338577f)) + (_336.z * 0.029886910691857338f)) + (_370.z * 0.011722920462489128f)) + (_385.z * 0.0037754790391772985f)) + (_419.z * 0.0009983022464439273f)) + (_434.z * 0.00021670789283234626f)) + (_460.z * 2.7632549972622655e-05f));
  SV_Target.w = (((((((((((((((((((_42.w * 0.0004767384089063853f) + (_31.w * 9.37651566346176e-05f)) + (_76.w * 0.00198987009935081f)) + (_91.w * 0.006818798836320639f)) + (_125.w * 0.019184879958629608f)) + (_140.w * 0.04432046040892601f)) + (_174.w * 0.08407454937696457f)) + (_189.w * 0.13096550107002258f)) + (_223.w * 0.16753029823303223f)) + (_238.w * 0.1759869009256363f)) + (_272.w * 0.1518165022134781f)) + (_287.w * 0.10754889994859695f)) + (_321.w * 0.06256497651338577f)) + (_336.w * 0.029886910691857338f)) + (_370.w * 0.011722920462489128f)) + (_385.w * 0.0037754790391772985f)) + (_419.w * 0.0009983022464439273f)) + (_434.w * 0.00021670789283234626f)) + (_460.w * 2.7632549972622655e-05f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
