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
  float4 _31 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 14.265089988708496f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 14.265089988708496f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _42 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 12.293379783630371f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 12.293379783630371f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _76 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 10.323360443115234f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 10.323360443115234f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _91 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 8.354863166809082f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 8.354863166809082f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _125 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 6.387677192687988f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 6.387677192687988f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _140 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 4.421542167663574f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 4.421542167663574f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _174 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 2.4561619758605957f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 2.4561619758605957f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _189 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 0.49121078848838806f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 0.49121078848838806f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _223 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 1.47365403175354f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 1.47365403175354f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _238 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 3.4387779235839844f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 3.4387779235839844f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _272 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 5.404496192932129f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 5.404496192932129f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _287 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 7.371120929718018f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 7.371120929718018f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _321 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 9.338932991027832f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 9.338932991027832f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _336 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 11.308170318603516f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 11.308170318603516f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _370 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 13.279020309448242f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 13.279020309448242f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _385 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 15.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 15.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = ((((((((((((((((_42.x * 0.0009470966761000454f) + (_31.x * 0.00014632000238634646f)) + (_76.x * 0.00464627193287015f)) + (_91.x * 0.017279580235481262f)) + (_125.x * 0.048726629465818405f)) + (_140.x * 0.10420220345258713f)) + (_174.x * 0.1690129041671753f)) + (_189.x * 0.20793700218200684f)) + (_223.x * 0.19405649602413177f)) + (_238.x * 0.13737380504608154f)) + (_272.x * 0.07376205921173096f)) + (_287.x * 0.030037879943847656f)) + (_321.x * 0.009275736287236214f)) + (_336.x * 0.0021716540213674307f)) + (_370.x * 0.0003853923117276281f)) + (_385.x * 3.87885193049442e-05f));
  SV_Target.y = ((((((((((((((((_42.y * 0.0009470966761000454f) + (_31.y * 0.00014632000238634646f)) + (_76.y * 0.00464627193287015f)) + (_91.y * 0.017279580235481262f)) + (_125.y * 0.048726629465818405f)) + (_140.y * 0.10420220345258713f)) + (_174.y * 0.1690129041671753f)) + (_189.y * 0.20793700218200684f)) + (_223.y * 0.19405649602413177f)) + (_238.y * 0.13737380504608154f)) + (_272.y * 0.07376205921173096f)) + (_287.y * 0.030037879943847656f)) + (_321.y * 0.009275736287236214f)) + (_336.y * 0.0021716540213674307f)) + (_370.y * 0.0003853923117276281f)) + (_385.y * 3.87885193049442e-05f));
  SV_Target.z = ((((((((((((((((_42.z * 0.0009470966761000454f) + (_31.z * 0.00014632000238634646f)) + (_76.z * 0.00464627193287015f)) + (_91.z * 0.017279580235481262f)) + (_125.z * 0.048726629465818405f)) + (_140.z * 0.10420220345258713f)) + (_174.z * 0.1690129041671753f)) + (_189.z * 0.20793700218200684f)) + (_223.z * 0.19405649602413177f)) + (_238.z * 0.13737380504608154f)) + (_272.z * 0.07376205921173096f)) + (_287.z * 0.030037879943847656f)) + (_321.z * 0.009275736287236214f)) + (_336.z * 0.0021716540213674307f)) + (_370.z * 0.0003853923117276281f)) + (_385.z * 3.87885193049442e-05f));
  SV_Target.w = ((((((((((((((((_42.w * 0.0009470966761000454f) + (_31.w * 0.00014632000238634646f)) + (_76.w * 0.00464627193287015f)) + (_91.w * 0.017279580235481262f)) + (_125.w * 0.048726629465818405f)) + (_140.w * 0.10420220345258713f)) + (_174.w * 0.1690129041671753f)) + (_189.w * 0.20793700218200684f)) + (_223.w * 0.19405649602413177f)) + (_238.w * 0.13737380504608154f)) + (_272.w * 0.07376205921173096f)) + (_287.w * 0.030037879943847656f)) + (_321.w * 0.009275736287236214f)) + (_336.w * 0.0021716540213674307f)) + (_370.w * 0.0003853923117276281f)) + (_385.w * 3.87885193049442e-05f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
