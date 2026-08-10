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
  float cb0_062z : packoffset(c062.z);
  float cb0_062w : packoffset(c062.w);
  float cb0_144z : packoffset(c144.z);
  float cb0_145z : packoffset(c145.z);
  float cb0_146z : packoffset(c146.z);
  float cb0_147z : packoffset(c147.z);
  float cb0_148z : packoffset(c148.z);
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
  float4 _12 = t3.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
  float4 _16 = t0.SampleLevel(s1, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
  bool _24 = ((1.0f / ((cb0_062z * _16.y) + cb0_062w)) > 1000.0f);
  float _25 = select(_24, 0.0f, _12.x);
  float _26 = select(_24, 0.0f, _12.y);
  float _27 = select(_24, 0.0f, _12.z);
  float4 _28 = t2.SampleBias(s1, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
  float _33 = _28.x + _25;
  float _34 = _28.y + _26;
  float _35 = _28.z + _27;
  float _151;
  float _152;
  float _153;
  if (cb0_172x > 0.5f) {
    float _44 = cb0_173y * cb0_171w;

    float3 input = float3(_33, _34, _35);
    input = input.xyz * _44;
    float _95;
    float _96;
    float _97;

    float3 output = HighQualityBloomLutSample(input, t1, s0);
    _95 = output.x;
    _96 = output.y;
    _97 = output.z;

    /*
    float _69 = cb0_171z * saturate((log2(((_35 * 5.555555820465088f) * _44) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f);
    float _70 = floor(_69);
    float _76 = ((cb0_171z * saturate((log2(((_34 * 5.555555820465088f) * _44) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f)) + 0.5f) * cb0_171y;
    float _78 = (((cb0_171z * saturate((log2(((_33 * 5.555555820465088f) * _44) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f)) + 0.5f) * cb0_171x) + (_70 * cb0_171y);
    float _79 = _69 - _70;
    float4 _81 = t1.SampleLevel(s0, float2((_78 + cb0_171y), _76), 0.0f);
    float4 _85 = t1.SampleLevel(s0, float2(_78, _76), 0.0f);
    float _95 = ((_81.x - _85.x) * _79) + _85.x;
    float _96 = ((_81.y - _85.y) * _79) + _85.y;
    float _97 = ((_81.z - _85.z) * _79) + _85.z;
    */

    // float _112 = (((1.0f - saturate(_95)) - _95) * cb0_025z) + _95;
    // float _113 = (((1.0f - saturate(_96)) - _96) * cb0_025z) + _96;
    // float _114 = (((1.0f - saturate(_97)) - _97) * cb0_025z) + _97;
    float _112 = (((1.0f - (_95)) - _95) * cb0_025z) + _95;
    float _113 = (((1.0f - (_96)) - _96) * cb0_025z) + _96;
    float _114 = (((1.0f - (_97)) - _97) * cb0_025z) + _97;

    float _123 = saturate((saturate(dot(float3(_112, _113, _114), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - cb0_023z) * cb0_024z);
    _151 = ((cb0_026z * ((cb0_023x - _112) + ((cb0_023y - cb0_023x) * _123))) + _112);
    _152 = ((((cb0_024x - _113) + ((cb0_024y - cb0_024x) * _123)) * cb0_026z) + _113);
    _153 = ((((cb0_025x - _114) + ((cb0_025y - cb0_025x) * _123)) * cb0_026z) + _114);
  } else {
    _151 = _33;
    _152 = _34;
    _153 = _35;
  }
  float _158 = cb0_144z * cb0_148z;
  SV_Target.x = (lerp(_151, cb0_145z, _158));
  SV_Target.y = (lerp(_152, cb0_146z, _158));
  SV_Target.z = (lerp(_153, cb0_147z, _158));
  SV_Target.w = saturate(_28.w + (((_25 + _26) + _27) * 0.33329999446868896f));
  return SV_Target;
}
