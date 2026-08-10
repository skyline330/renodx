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
  float4 _23 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 11.227049827575684f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 11.227049827575684f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _45 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 9.266590118408203f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 9.266590118408203f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _71 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 7.3102521896362305f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 7.3102521896362305f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _97 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 5.357579231262207f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 5.357579231262207f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _123 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 3.4078550338745117f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 3.4078550338745117f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _149 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 1.460137963294983f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 1.460137963294983f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _175 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 0.4866875112056732f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 0.4866875112056732f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _201 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 2.433811902999878f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 2.433811902999878f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _227 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 4.382401943206787f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 4.382401943206787f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _253 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 6.33349609375f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 6.33349609375f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _279 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 8.287928581237793f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 8.287928581237793f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _305 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 10.24629020690918f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 10.24629020690918f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _331 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 12.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 12.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = (((((((((((((_45.x * 0.0023748879320919514f) + (_23.x * 0.0002676529111340642f)) + (_71.x * 0.013883939944207668f)) + (_97.x * 0.05352329835295677f)) + (_123.x * 0.13615749776363373f)) + (_149.x * 0.22868619859218597f)) + (_175.x * 0.2536720931529999f)) + (_201.x * 0.18585209548473358f)) + (_227.x * 0.08991709351539612f)) + (_253.x * 0.02871520072221756f)) + (_279.x * 0.006049291230738163f)) + (_305.x * 0.0008400048245675862f)) + (_331.x * 6.077072976040654e-05f));
  SV_Target.y = (((((((((((((_45.y * 0.0023748879320919514f) + (_23.y * 0.0002676529111340642f)) + (_71.y * 0.013883939944207668f)) + (_97.y * 0.05352329835295677f)) + (_123.y * 0.13615749776363373f)) + (_149.y * 0.22868619859218597f)) + (_175.y * 0.2536720931529999f)) + (_201.y * 0.18585209548473358f)) + (_227.y * 0.08991709351539612f)) + (_253.y * 0.02871520072221756f)) + (_279.y * 0.006049291230738163f)) + (_305.y * 0.0008400048245675862f)) + (_331.y * 6.077072976040654e-05f));
  SV_Target.z = (((((((((((((_45.z * 0.0023748879320919514f) + (_23.z * 0.0002676529111340642f)) + (_71.z * 0.013883939944207668f)) + (_97.z * 0.05352329835295677f)) + (_123.z * 0.13615749776363373f)) + (_149.z * 0.22868619859218597f)) + (_175.z * 0.2536720931529999f)) + (_201.z * 0.18585209548473358f)) + (_227.z * 0.08991709351539612f)) + (_253.z * 0.02871520072221756f)) + (_279.z * 0.006049291230738163f)) + (_305.z * 0.0008400048245675862f)) + (_331.z * 6.077072976040654e-05f));
  SV_Target.w = (((((((((((((_45.w * 0.0023748879320919514f) + (_23.w * 0.0002676529111340642f)) + (_71.w * 0.013883939944207668f)) + (_97.w * 0.05352329835295677f)) + (_123.w * 0.13615749776363373f)) + (_149.w * 0.22868619859218597f)) + (_175.w * 0.2536720931529999f)) + (_201.w * 0.18585209548473358f)) + (_227.w * 0.08991709351539612f)) + (_253.w * 0.02871520072221756f)) + (_279.w * 0.006049291230738163f)) + (_305.w * 0.0008400048245675862f)) + (_331.w * 6.077072976040654e-05f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
