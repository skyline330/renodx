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
  float4 _31 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 4.095284938812256f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 4.095284938812256f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _42 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 2.222628116607666f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 2.222628116607666f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _76 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 0.4378030002117157f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 0.4378030002117157f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _91 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 1.3207670450210571f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 1.3207670450210571f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _125 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 3.1479740142822266f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 3.1479740142822266f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _140 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 5.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 5.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = ((((((_42.x * 0.1334843933582306f) + (_31.x * 0.0057046618312597275f)) + (_76.x * 0.5018919706344604f)) + (_91.x * 0.32349690794944763f)) + (_125.x * 0.03487847000360489f)) + (_140.x * 0.0005435675266198814f));
  SV_Target.y = ((((((_42.y * 0.1334843933582306f) + (_31.y * 0.0057046618312597275f)) + (_76.y * 0.5018919706344604f)) + (_91.y * 0.32349690794944763f)) + (_125.y * 0.03487847000360489f)) + (_140.y * 0.0005435675266198814f));
  SV_Target.z = ((((((_42.z * 0.1334843933582306f) + (_31.z * 0.0057046618312597275f)) + (_76.z * 0.5018919706344604f)) + (_91.z * 0.32349690794944763f)) + (_125.z * 0.03487847000360489f)) + (_140.z * 0.0005435675266198814f));
  SV_Target.w = ((((((_42.w * 0.1334843933582306f) + (_31.w * 0.0057046618312597275f)) + (_76.w * 0.5018919706344604f)) + (_91.w * 0.32349690794944763f)) + (_125.w * 0.03487847000360489f)) + (_140.w * 0.0005435675266198814f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
