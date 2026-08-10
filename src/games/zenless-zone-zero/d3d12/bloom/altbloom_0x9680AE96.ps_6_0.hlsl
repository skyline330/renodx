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
  float4 _23 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 8.177948951721191f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 8.177948951721191f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _45 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 6.236813068389893f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 6.236813068389893f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _71 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 4.30785608291626f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 4.30785608291626f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _97 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 2.389338970184326f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 2.389338970184326f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _123 = t0.SampleBias(s0, float2(min(max((TEXCOORD.x - (cb0_173x * 0.4775106906890869f)), TEXCOORD_1.x), TEXCOORD_1.z), min(max((TEXCOORD.y - (cb0_173y * 0.4775106906890869f)), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _149 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 1.432893991470337f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 1.432893991470337f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _175 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 3.3474819660186768f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 3.3474819660186768f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _201 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 5.270873069763184f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 5.270873069763184f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _227 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 7.2058258056640625f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 7.2058258056640625f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  float4 _253 = t0.SampleBias(s0, float2(min(max(((cb0_173x * 9.0f) + TEXCOORD.x), TEXCOORD_1.x), TEXCOORD_1.z), min(max(((cb0_173y * 9.0f) + TEXCOORD.y), TEXCOORD_1.y), TEXCOORD_1.w)), cb0_061x, int2(0, 0));
  SV_Target.x = ((((((((((_45.x * 0.008681291714310646f) + (_23.x * 0.0006481502787210047f)) + (_71.x * 0.057930249720811844f)) + (_97.x * 0.193389892578125f)) + (_123.x * 0.3239915072917938f)) + (_149.x * 0.27280500531196594f)) + (_175.x * 0.11539039760828018f)) + (_201.x * 0.024459630250930786f)) + (_227.x * 0.0025886530056595802f)) + (_253.x * 0.00011533770157257095f));
  SV_Target.y = ((((((((((_45.y * 0.008681291714310646f) + (_23.y * 0.0006481502787210047f)) + (_71.y * 0.057930249720811844f)) + (_97.y * 0.193389892578125f)) + (_123.y * 0.3239915072917938f)) + (_149.y * 0.27280500531196594f)) + (_175.y * 0.11539039760828018f)) + (_201.y * 0.024459630250930786f)) + (_227.y * 0.0025886530056595802f)) + (_253.y * 0.00011533770157257095f));
  SV_Target.z = ((((((((((_45.z * 0.008681291714310646f) + (_23.z * 0.0006481502787210047f)) + (_71.z * 0.057930249720811844f)) + (_97.z * 0.193389892578125f)) + (_123.z * 0.3239915072917938f)) + (_149.z * 0.27280500531196594f)) + (_175.z * 0.11539039760828018f)) + (_201.z * 0.024459630250930786f)) + (_227.z * 0.0025886530056595802f)) + (_253.z * 0.00011533770157257095f));
  SV_Target.w = ((((((((((_45.w * 0.008681291714310646f) + (_23.w * 0.0006481502787210047f)) + (_71.w * 0.057930249720811844f)) + (_97.w * 0.193389892578125f)) + (_123.w * 0.3239915072917938f)) + (_149.w * 0.27280500531196594f)) + (_175.w * 0.11539039760828018f)) + (_201.w * 0.024459630250930786f)) + (_227.w * 0.0025886530056595802f)) + (_253.w * 0.00011533770157257095f));

  SV_Target.xyz = ProcessBloom(SV_Target.xyz);

  return SV_Target;
}
