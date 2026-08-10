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
  float4 _31 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 16.285619735717773f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 16.285619735717773f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _42 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 14.308819770812988f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 14.308819770812988f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _76 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 12.333029747009277f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 12.333029747009277f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _91 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 10.358149528503418f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 10.358149528503418f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _125 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 8.384078025817871f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 8.384078025817871f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _140 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 6.410680770874023f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 6.410680770874023f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _174 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 4.437817096710205f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 4.437817096710205f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _189 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 2.465329885482788f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 2.465329885482788f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _223 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 0.49305519461631775f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 0.49305519461631775f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _238 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 1.4791760444641113f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 1.4791760444641113f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _272 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 3.451535940170288f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 3.451535940170288f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _287 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 5.424190998077393f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 5.424190998077393f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _321 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 7.397304058074951f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 7.397304058074951f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _336 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 9.371021270751953f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 9.371021270751953f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _370 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 11.345479965209961f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 11.345479965209961f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _385 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 13.320799827575684f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 13.320799827575684f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _419 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 15.297089576721191f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 15.297089576721191f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _434 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 17.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 17.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = ((((((((((((((((((_42.x * 0.000587444577831775f) + (_31.x * 0.00010733040107879788f)) + (_76.x * 0.002581278095021844f)) + (_91.x * 0.009106948971748352f)) + (_125.x * 0.025800179690122604f)) + (_140.x * 0.058697570115327835f)) + (_174.x * 0.1072492003440857f)) + (_189.x * 0.15738630294799805f)) + (_223.x * 0.1855037957429886f)) + (_238.x * 0.1756134033203125f)) + (_272.x * 0.13353019952774048f)) + (_287.x * 0.0815470963716507f)) + (_321.x * 0.03999686986207962f)) + (_336.x * 0.015754569321870804f)) + (_370.x * 0.004983304068446159f)) + (_385.x * 0.0012656679609790444f)) + (_419.x * 0.0002580891887191683f)) + (_434.x * 3.0655370210297406e-05f));
  SV_Target.y = ((((((((((((((((((_42.y * 0.000587444577831775f) + (_31.y * 0.00010733040107879788f)) + (_76.y * 0.002581278095021844f)) + (_91.y * 0.009106948971748352f)) + (_125.y * 0.025800179690122604f)) + (_140.y * 0.058697570115327835f)) + (_174.y * 0.1072492003440857f)) + (_189.y * 0.15738630294799805f)) + (_223.y * 0.1855037957429886f)) + (_238.y * 0.1756134033203125f)) + (_272.y * 0.13353019952774048f)) + (_287.y * 0.0815470963716507f)) + (_321.y * 0.03999686986207962f)) + (_336.y * 0.015754569321870804f)) + (_370.y * 0.004983304068446159f)) + (_385.y * 0.0012656679609790444f)) + (_419.y * 0.0002580891887191683f)) + (_434.y * 3.0655370210297406e-05f));
  SV_Target.z = ((((((((((((((((((_42.z * 0.000587444577831775f) + (_31.z * 0.00010733040107879788f)) + (_76.z * 0.002581278095021844f)) + (_91.z * 0.009106948971748352f)) + (_125.z * 0.025800179690122604f)) + (_140.z * 0.058697570115327835f)) + (_174.z * 0.1072492003440857f)) + (_189.z * 0.15738630294799805f)) + (_223.z * 0.1855037957429886f)) + (_238.z * 0.1756134033203125f)) + (_272.z * 0.13353019952774048f)) + (_287.z * 0.0815470963716507f)) + (_321.z * 0.03999686986207962f)) + (_336.z * 0.015754569321870804f)) + (_370.z * 0.004983304068446159f)) + (_385.z * 0.0012656679609790444f)) + (_419.z * 0.0002580891887191683f)) + (_434.z * 3.0655370210297406e-05f));
  SV_Target.w = ((((((((((((((((((_42.w * 0.000587444577831775f) + (_31.w * 0.00010733040107879788f)) + (_76.w * 0.002581278095021844f)) + (_91.w * 0.009106948971748352f)) + (_125.w * 0.025800179690122604f)) + (_140.w * 0.058697570115327835f)) + (_174.w * 0.1072492003440857f)) + (_189.w * 0.15738630294799805f)) + (_223.w * 0.1855037957429886f)) + (_238.w * 0.1756134033203125f)) + (_272.w * 0.13353019952774048f)) + (_287.w * 0.0815470963716507f)) + (_321.w * 0.03999686986207962f)) + (_336.w * 0.015754569321870804f)) + (_370.w * 0.004983304068446159f)) + (_385.w * 0.0012656679609790444f)) + (_419.w * 0.0002580891887191683f)) + (_434.w * 3.0655370210297406e-05f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
