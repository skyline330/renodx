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
  float4 _23 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 13.253479957580566f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 13.253479957580566f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _45 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 11.284930229187012f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 11.284930229187012f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _71 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 9.318623542785645f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 9.318623542785645f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _97 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 7.354324817657471f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 7.354324817657471f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _123 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 5.391726970672607f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 5.391726970672607f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _149 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 3.4304449558258057f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 3.4304449558258057f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _175 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 1.470031976699829f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 1.470031976699829f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _201 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 0.49000000953674316f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 0.49000000953674316f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _227 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 2.4501590728759766f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 2.4501590728759766f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _253 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 4.410947799682617f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 4.410947799682617f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _279 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 6.372836112976074f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 6.372836112976074f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _305 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 8.336240768432617f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 8.336240768432617f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _331 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 10.301509857177734f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 10.301509857177734f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _357 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 12.268919944763184f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 12.268919944763184f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _383 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 14.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 14.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = (((((((((((((((_45.x * 0.0012470630463212729f) + (_23.x * 0.0001750798983266577f)) + (_71.x * 0.006483543198555708f)) + (_97.x * 0.024612529203295708f)) + (_123.x * 0.06824170798063278f)) + (_149.x * 0.13822859525680542f)) + (_175.x * 0.20458659529685974f)) + (_201.x * 0.22127419710159302f)) + (_227.x * 0.17489109933376312f)) + (_253.x * 0.10100939869880676f)) + (_279.x * 0.04262381047010422f)) + (_305.x * 0.01313856989145279f)) + (_331.x * 0.002957548014819622f)) + (_357.x * 0.0004860300978180021f)) + (_383.x * 4.4379041355568916e-05f));
  SV_Target.y = (((((((((((((((_45.y * 0.0012470630463212729f) + (_23.y * 0.0001750798983266577f)) + (_71.y * 0.006483543198555708f)) + (_97.y * 0.024612529203295708f)) + (_123.y * 0.06824170798063278f)) + (_149.y * 0.13822859525680542f)) + (_175.y * 0.20458659529685974f)) + (_201.y * 0.22127419710159302f)) + (_227.y * 0.17489109933376312f)) + (_253.y * 0.10100939869880676f)) + (_279.y * 0.04262381047010422f)) + (_305.y * 0.01313856989145279f)) + (_331.y * 0.002957548014819622f)) + (_357.y * 0.0004860300978180021f)) + (_383.y * 4.4379041355568916e-05f));
  SV_Target.z = (((((((((((((((_45.z * 0.0012470630463212729f) + (_23.z * 0.0001750798983266577f)) + (_71.z * 0.006483543198555708f)) + (_97.z * 0.024612529203295708f)) + (_123.z * 0.06824170798063278f)) + (_149.z * 0.13822859525680542f)) + (_175.z * 0.20458659529685974f)) + (_201.z * 0.22127419710159302f)) + (_227.z * 0.17489109933376312f)) + (_253.z * 0.10100939869880676f)) + (_279.z * 0.04262381047010422f)) + (_305.z * 0.01313856989145279f)) + (_331.z * 0.002957548014819622f)) + (_357.z * 0.0004860300978180021f)) + (_383.z * 4.4379041355568916e-05f));
  SV_Target.w = (((((((((((((((_45.w * 0.0012470630463212729f) + (_23.w * 0.0001750798983266577f)) + (_71.w * 0.006483543198555708f)) + (_97.w * 0.024612529203295708f)) + (_123.w * 0.06824170798063278f)) + (_149.w * 0.13822859525680542f)) + (_175.w * 0.20458659529685974f)) + (_201.w * 0.22127419710159302f)) + (_227.w * 0.17489109933376312f)) + (_253.w * 0.10100939869880676f)) + (_279.w * 0.04262381047010422f)) + (_305.w * 0.01313856989145279f)) + (_331.w * 0.002957548014819622f)) + (_357.w * 0.0004860300978180021f)) + (_383.w * 4.4379041355568916e-05f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
