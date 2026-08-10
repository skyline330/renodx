#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

cbuffer cb0 : register(b0) {
  float cb0_023x : packoffset(c023.x);
  float cb0_023y : packoffset(c023.y);
  float cb0_023z : packoffset(c023.z);
  float cb0_024x : packoffset(c024.x);
  float cb0_024y : packoffset(c024.y);
  float cb0_024z : packoffset(c024.z);
  float cb0_025x : packoffset(c025.x);
  float cb0_025y : packoffset(c025.y);
  float cb0_025z : packoffset(c025.z);
  float cb0_026z : packoffset(c026.z);
  float cb0_061x : packoffset(c061.x);
  float cb0_171x : packoffset(c171.x);
  float cb0_171y : packoffset(c171.y);
  float cb0_171z : packoffset(c171.z);
  float cb0_171w : packoffset(c171.w);
  float cb0_172x : packoffset(c172.x);
  float cb0_173y : packoffset(c173.y);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

float4 main(
    noperspective float4 SV_Position: SV_Position,
    linear float2 TEXCOORD: TEXCOORD,
    linear float4 TEXCOORD_1: TEXCOORD1) : SV_Target {
  float4 SV_Target;
  float4 _11 = t2.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
  float4 _15 = t1.SampleBias(s1, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
  float _20 = _15.x + _11.x;
  float _21 = _15.y + _11.y;
  float _22 = _15.z + _11.z;
  float _138;
  float _139;
  float _140;

  if (cb0_172x > 0.5f) {
    float _31 = cb0_173y * cb0_171w;

    float3 input = float3(_20, _21, _22);
    input = input.xyz * _31;
    float _82;
    float _83;
    float _84;

    float3 output = HighQualityBloomLutSample(input, t0, s0);
    _82 = output.x;
    _83 = output.y;
    _84 = output.z;

    /*
    float _56 = cb0_171z * saturate((log2(((_22 * 5.555555820465088f) * _31) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f);
    float _57 = floor(_56);
    float _63 = ((cb0_171z * saturate((log2(((_21 * 5.555555820465088f) * _31) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f)) + 0.5f) * cb0_171y;
    float _65 = (((cb0_171z * saturate((log2(((_20 * 5.555555820465088f) * _31) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f)) + 0.5f) * cb0_171x) + (_57 * cb0_171y);
    float _66 = _56 - _57;
    float4 _68 = t0.SampleLevel(s0, float2((_65 + cb0_171y), _63), 0.0f);
    float4 _72 = t0.SampleLevel(s0, float2(_65, _63), 0.0f);
    float _82 = ((_68.x - _72.x) * _66) + _72.x;
    float _83 = ((_68.y - _72.y) * _66) + _72.y;
    float _84 = ((_68.z - _72.z) * _66) + _72.z;
    */

    // float _99 = (((1.0f - saturate(_82)) - _82) * cb0_025z) + _82;
    // float _100 = (((1.0f - saturate(_83)) - _83) * cb0_025z) + _83;
    // float _101 = (((1.0f - saturate(_84)) - _84) * cb0_025z) + _84;
    float _99 = (((1.0f - (_82)) - _82) * cb0_025z) + _82;
    float _100 = (((1.0f - (_83)) - _83) * cb0_025z) + _83;
    float _101 = (((1.0f - (_84)) - _84) * cb0_025z) + _84;

    float _110 = saturate((saturate(dot(float3(_99, _100, _101), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - cb0_023z) * cb0_024z);
    _138 = ((cb0_026z * ((cb0_023x - _99) + ((cb0_023y - cb0_023x) * _110))) + _99);
    _139 = ((((cb0_024x - _100) + ((cb0_024y - cb0_024x) * _110)) * cb0_026z) + _100);
    _140 = ((((cb0_025x - _101) + ((cb0_025y - cb0_025x) * _110)) * cb0_026z) + _101);
  } else {
    _138 = _20;
    _139 = _21;
    _140 = _22;
  }
  SV_Target.x = _138;
  SV_Target.y = _139;
  SV_Target.z = _140;
  SV_Target.w = saturate(_15.w + (((_11.x + _11.y) + _11.z) * 0.33329999446868896f));
  return SV_Target;
}
