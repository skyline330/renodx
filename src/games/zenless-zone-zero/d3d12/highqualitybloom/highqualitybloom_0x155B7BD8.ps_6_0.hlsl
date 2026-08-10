#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

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
  float cb0_192z : packoffset(c192.z);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

float4 main(
    noperspective float4 SV_Position: SV_Position,
    linear float2 TEXCOORD: TEXCOORD,
    linear float4 TEXCOORD_1: TEXCOORD1) : SV_Target {
  float4 SV_Target;
  float4 _12 = t1.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
  int _16 = int(round(_12.z * 255.0f));
  bool _18 = ((_16 & 16) != 0);
  float _23 = select(((_16 & 2) != 0), cb0_192z, 1.0f);
  float4 _24 = t3.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
  float _31 = select(_18, 0.0f, (_24.x * _23));
  float _32 = select(_18, 0.0f, (_24.y * _23));
  float _33 = select(_18, 0.0f, (_24.z * _23));
  float4 _34 = t2.SampleBias(s1, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
  float _39 = _34.x + _31;
  float _40 = _34.y + _32;
  float _41 = _34.z + _33;
  float _157;
  float _158;
  float _159;

  if (cb0_172x > 0.5f) {
    float _50 = cb0_173y * cb0_171w;

    float3 input = float3(_39, _40, _41);
    input = input.xyz * _50;
    float _101;
    float _102;
    float _103;

    float3 output = HighQualityBloomLutSample(input, t0, s0);
    _101 = output.x;
    _102 = output.y;
    _103 = output.z;

    /*
    float _75 = cb0_171z * saturate((log2(((_41 * 5.555555820465088f) * _50) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f);
    float _76 = floor(_75);
    float _82 = ((cb0_171z * saturate((log2(((_40 * 5.555555820465088f) * _50) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f)) + 0.5f) * cb0_171y;
    float _84 = (((cb0_171z * saturate((log2(((_39 * 5.555555820465088f) * _50) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f)) + 0.5f) * cb0_171x) + (_76 * cb0_171y);
    float _85 = _75 - _76;
    float4 _87 = t0.SampleLevel(s0, float2((_84 + cb0_171y), _82), 0.0f);
    float4 _91 = t0.SampleLevel(s0, float2(_84, _82), 0.0f);
    float _101 = ((_87.x - _91.x) * _85) + _91.x;
    float _102 = ((_87.y - _91.y) * _85) + _91.y;
    float _103 = ((_87.z - _91.z) * _85) + _91.z;
    */

    // float _118 = (((1.0f - saturate(_101)) - _101) * cb0_025z) + _101;
    // float _119 = (((1.0f - saturate(_102)) - _102) * cb0_025z) + _102;
    // float _120 = (((1.0f - saturate(_103)) - _103) * cb0_025z) + _103;
    float _118 = (((1.0f - (_101)) - _101) * cb0_025z) + _101;
    float _119 = (((1.0f - (_102)) - _102) * cb0_025z) + _102;
    float _120 = (((1.0f - (_103)) - _103) * cb0_025z) + _103;

    float _129 = saturate((saturate(dot(float3(_118, _119, _120), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - cb0_023z) * cb0_024z);
    _157 = ((cb0_026z * ((cb0_023x - _118) + ((cb0_023y - cb0_023x) * _129))) + _118);
    _158 = ((((cb0_024x - _119) + ((cb0_024y - cb0_024x) * _129)) * cb0_026z) + _119);
    _159 = ((((cb0_025x - _120) + ((cb0_025y - cb0_025x) * _129)) * cb0_026z) + _120);
  } else {
    _157 = _39;
    _158 = _40;
    _159 = _41;
  }
  float _163 = dot(float3(_157, _158, _159), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)) / max(dot(float3(_39, _40, _41), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 1.1754943508222875e-38f);
  float _170 = saturate((dot(float3(_31, _32, _33), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)) + -0.10000000149011612f) * 4.999999523162842f);
  SV_Target.x = (_39 + (_170 * ((_163 * _31) - _31)));
  SV_Target.y = (_40 + (_170 * ((_163 * _32) - _32)));
  SV_Target.z = (_41 + (_170 * ((_163 * _33) - _33)));
  SV_Target.w = saturate(_34.w + (((_31 + _32) + _33) * 0.33329999446868896f));
  return SV_Target;
}
