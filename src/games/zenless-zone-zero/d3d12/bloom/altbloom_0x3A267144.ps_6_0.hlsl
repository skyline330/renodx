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
  float4 _31 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 15.275779724121094f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 15.275779724121094f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _42 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 13.301340103149414f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 13.301340103149414f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _76 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 11.328200340270996f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 11.328200340270996f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _91 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 9.356229782104492f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 9.356229782104492f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _125 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 7.38528299331665f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 7.38528299331665f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _140 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 5.415177822113037f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 5.415177822113037f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _174 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 3.4457099437713623f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 3.4457099437713623f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _189 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 1.4766579866409302f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 1.4766579866409302f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _223 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 0.4922142028808594f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 0.4922142028808594f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _238 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 2.4611470699310303f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 2.4611470699310303f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _272 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 4.430377960205078f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 4.430377960205078f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _287 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 6.400136947631836f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 6.400136947631836f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _321 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 8.37063980102539f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 8.37063980102539f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _336 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 10.342080116271973f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 10.342080116271973f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _370 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 12.31460952758789f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 12.31460952758789f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _385 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 14.288390159606934f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 14.288390159606934f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _411 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 16.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 16.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = (((((((((((((((((_42.x * 0.0007377720903605223f) + (_31.x * 0.00012440599675755948f)) + (_76.x * 0.003421457950025797f)) + (_91.x * 0.012410090304911137f)) + (_125.x * 0.03521059826016426f)) + (_140.x * 0.07815498113632202f)) + (_174.x * 0.13572660088539124f)) + (_189.x * 0.1844279021024704f)) + (_223.x * 0.19609129428863525f)) + (_238.x * 0.1631408929824829f)) + (_272.x * 0.10620149970054626f)) + (_287.x * 0.054092761129140854f)) + (_321.x * 0.021555300801992416f)) + (_336.x * 0.006719390861690044f)) + (_370.x * 0.0016383680049329996f)) + (_385.x * 0.0003124173090327531f)) + (_411.x * 3.430819924687967e-05f));
  SV_Target.y = (((((((((((((((((_42.y * 0.0007377720903605223f) + (_31.y * 0.00012440599675755948f)) + (_76.y * 0.003421457950025797f)) + (_91.y * 0.012410090304911137f)) + (_125.y * 0.03521059826016426f)) + (_140.y * 0.07815498113632202f)) + (_174.y * 0.13572660088539124f)) + (_189.y * 0.1844279021024704f)) + (_223.y * 0.19609129428863525f)) + (_238.y * 0.1631408929824829f)) + (_272.y * 0.10620149970054626f)) + (_287.y * 0.054092761129140854f)) + (_321.y * 0.021555300801992416f)) + (_336.y * 0.006719390861690044f)) + (_370.y * 0.0016383680049329996f)) + (_385.y * 0.0003124173090327531f)) + (_411.y * 3.430819924687967e-05f));
  SV_Target.z = (((((((((((((((((_42.z * 0.0007377720903605223f) + (_31.z * 0.00012440599675755948f)) + (_76.z * 0.003421457950025797f)) + (_91.z * 0.012410090304911137f)) + (_125.z * 0.03521059826016426f)) + (_140.z * 0.07815498113632202f)) + (_174.z * 0.13572660088539124f)) + (_189.z * 0.1844279021024704f)) + (_223.z * 0.19609129428863525f)) + (_238.z * 0.1631408929824829f)) + (_272.z * 0.10620149970054626f)) + (_287.z * 0.054092761129140854f)) + (_321.z * 0.021555300801992416f)) + (_336.z * 0.006719390861690044f)) + (_370.z * 0.0016383680049329996f)) + (_385.z * 0.0003124173090327531f)) + (_411.z * 3.430819924687967e-05f));
  SV_Target.w = (((((((((((((((((_42.w * 0.0007377720903605223f) + (_31.w * 0.00012440599675755948f)) + (_76.w * 0.003421457950025797f)) + (_91.w * 0.012410090304911137f)) + (_125.w * 0.03521059826016426f)) + (_140.w * 0.07815498113632202f)) + (_174.w * 0.13572660088539124f)) + (_189.w * 0.1844279021024704f)) + (_223.w * 0.19609129428863525f)) + (_238.w * 0.1631408929824829f)) + (_272.w * 0.10620149970054626f)) + (_287.w * 0.054092761129140854f)) + (_321.w * 0.021555300801992416f)) + (_336.w * 0.006719390861690044f)) + (_370.w * 0.0016383680049329996f)) + (_385.w * 0.0003124173090327531f)) + (_411.w * 3.430819924687967e-05f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
