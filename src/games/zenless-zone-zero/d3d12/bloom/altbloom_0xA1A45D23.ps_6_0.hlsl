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
  float4 _31 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 18.3031005859375f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 18.3031005859375f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _42 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 16.322439193725586f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 16.322439193725586f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _76 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 14.34241008758545f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 14.34241008758545f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _91 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 12.362959861755371f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 12.362959861755371f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _125 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 10.384010314941406f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 10.384010314941406f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _140 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 8.40551471710205f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 8.40551471710205f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _174 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 6.427384853363037f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 6.427384853363037f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _189 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 4.449542045593262f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 4.449542045593262f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _223 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 2.4719018936157227f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 2.4719018936157227f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _238 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 0.49437469244003296f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 0.49437469244003296f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _272 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 1.4831299781799316f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 1.4831299781799316f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _287 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 3.4607019424438477f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 3.4607019424438477f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _321 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 5.4384331703186035f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 5.4384331703186035f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _336 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 7.416409015655518f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 7.416409015655518f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _370 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 9.394713401794434f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 9.394713401794434f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _385 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 11.373419761657715f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 11.373419761657715f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _419 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 13.352620124816895f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 13.352620124816895f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _434 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 15.33234977722168f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 15.33234977722168f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _468 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 17.31269073486328f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 17.31269073486328f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _483 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 19.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 19.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = ((((((((((((((((((((_42.x * 0.00039338661008514464f) + (_31.x * 8.280536712845787e-05f)) + (_76.x * 0.0015637549804523587f)) + (_91.x * 0.005201501771807671f)) + (_125.x * 0.014478430151939392f)) + (_140.x * 0.033726029098033905f)) + (_174.x * 0.06574705243110657f)) + (_189.x * 0.10726729780435562f)) + (_223.x * 0.14646969735622406f)) + (_238.x * 0.16738790273666382f)) + (_272.x * 0.1601026952266693f)) + (_287.x * 0.12816539406776428f)) + (_321.x * 0.0858689397573471f)) + (_336.x * 0.04814891889691353f)) + (_370.x * 0.022594919428229332f)) + (_385.x * 0.00887349620461464f)) + (_419.x * 0.002916224068030715f)) + (_434.x * 0.0008019902743399143f)) + (_468.x * 0.00018455130339134485f)) + (_483.x * 2.5098239348153584e-05f));
  SV_Target.y = ((((((((((((((((((((_42.y * 0.00039338661008514464f) + (_31.y * 8.280536712845787e-05f)) + (_76.y * 0.0015637549804523587f)) + (_91.y * 0.005201501771807671f)) + (_125.y * 0.014478430151939392f)) + (_140.y * 0.033726029098033905f)) + (_174.y * 0.06574705243110657f)) + (_189.y * 0.10726729780435562f)) + (_223.y * 0.14646969735622406f)) + (_238.y * 0.16738790273666382f)) + (_272.y * 0.1601026952266693f)) + (_287.y * 0.12816539406776428f)) + (_321.y * 0.0858689397573471f)) + (_336.y * 0.04814891889691353f)) + (_370.y * 0.022594919428229332f)) + (_385.y * 0.00887349620461464f)) + (_419.y * 0.002916224068030715f)) + (_434.y * 0.0008019902743399143f)) + (_468.y * 0.00018455130339134485f)) + (_483.y * 2.5098239348153584e-05f));
  SV_Target.z = ((((((((((((((((((((_42.z * 0.00039338661008514464f) + (_31.z * 8.280536712845787e-05f)) + (_76.z * 0.0015637549804523587f)) + (_91.z * 0.005201501771807671f)) + (_125.z * 0.014478430151939392f)) + (_140.z * 0.033726029098033905f)) + (_174.z * 0.06574705243110657f)) + (_189.z * 0.10726729780435562f)) + (_223.z * 0.14646969735622406f)) + (_238.z * 0.16738790273666382f)) + (_272.z * 0.1601026952266693f)) + (_287.z * 0.12816539406776428f)) + (_321.z * 0.0858689397573471f)) + (_336.z * 0.04814891889691353f)) + (_370.z * 0.022594919428229332f)) + (_385.z * 0.00887349620461464f)) + (_419.z * 0.002916224068030715f)) + (_434.z * 0.0008019902743399143f)) + (_468.z * 0.00018455130339134485f)) + (_483.z * 2.5098239348153584e-05f));
  SV_Target.w = ((((((((((((((((((((_42.w * 0.00039338661008514464f) + (_31.w * 8.280536712845787e-05f)) + (_76.w * 0.0015637549804523587f)) + (_91.w * 0.005201501771807671f)) + (_125.w * 0.014478430151939392f)) + (_140.w * 0.033726029098033905f)) + (_174.w * 0.06574705243110657f)) + (_189.w * 0.10726729780435562f)) + (_223.w * 0.14646969735622406f)) + (_238.w * 0.16738790273666382f)) + (_272.w * 0.1601026952266693f)) + (_287.w * 0.12816539406776428f)) + (_321.w * 0.0858689397573471f)) + (_336.w * 0.04814891889691353f)) + (_370.w * 0.022594919428229332f)) + (_385.w * 0.00887349620461464f)) + (_419.w * 0.002916224068030715f)) + (_434.w * 0.0008019902743399143f)) + (_468.w * 0.00018455130339134485f)) + (_483.w * 2.5098239348153584e-05f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
