#include "../../common.hlsli"

struct sampler2D {
};

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

cbuffer cb0 : register(b0) {
  float4 Globals_000 : packoffset(c000.x);
  float4 Globals_016 : packoffset(c001.x);
  float4 Globals_032 : packoffset(c002.x);
  float4 Globals_048 : packoffset(c003.x);
  float4 Globals_064 : packoffset(c004.x);
  float Globals_080 : packoffset(c005.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) {
  return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value));
}
uint firstbithigh_msb(uint value) {
  return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value));
}

float4 main(
    precise noperspective float4 SV_Position: SV_Position,
    linear float2 TEXCOORD: TEXCOORD,
    linear float2 TEXCOORD_1: TEXCOORD1) : SV_Target {
  float4 SV_Target;
  float _19;
  float _20;
  float _21;
  float _22;
  float _24;
  float _25;
  _19 = (((float4)(t1.Sample(s1, float2(TEXCOORD_1.x, TEXCOORD_1.y)))).w) + -0.5019599795341492f;
  _20 = (((float4)(t2.Sample(s2, float2(TEXCOORD_1.x, TEXCOORD_1.y)))).w) + -0.5019599795341492f;
  _21 = ((((float4)(t0.Sample(s0, float2(TEXCOORD.x, TEXCOORD.y)))).w) + -0.06274999678134918f) * 1.1643799543380737f;
  _22 = mad(1.5960299968719482f, _20, _21);
  _24 = mad(-0.812969982624054f, _20, mad(-0.391759991645813f, _19, _21));
  _25 = mad(2.0172300338745117f, _19, _21);

  /*
  // srgb to Linear
  SV_Target.x = select((_22 <= 0.040449999272823334f), (_22 * 0.07739938050508499f), exp2(log2(abs((_22 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  SV_Target.y = select((_24 <= 0.040449999272823334f), (_24 * 0.07739938050508499f), exp2(log2(abs((_24 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  SV_Target.z = select((_25 <= 0.040449999272823334f), (_25 * 0.07739938050508499f), exp2(log2(abs((_25 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  */

  float3 hdr_video = AutoHDRVideo(float3(_22, _24, _25));
  SV_Target.xyz = hdr_video;
  SV_Target.xyz = renodx::effects::ApplyFilmGrain(
      SV_Target.xyz,
      TEXCOORD.xy,
      CUSTOM_RANDOM,
      CUSTOM_FILM_GRAIN * 0.03f);

  SV_Target.w = (1.0f - (Globals_080));
  return SV_Target;
}
