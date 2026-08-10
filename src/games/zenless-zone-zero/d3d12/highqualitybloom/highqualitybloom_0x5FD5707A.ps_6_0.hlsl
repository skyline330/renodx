#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

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
  float cb0_030x : packoffset(c030.x);
  float cb0_030y : packoffset(c030.y);
  float cb0_030z : packoffset(c030.z);
  float cb0_061x : packoffset(c061.x);
  float cb0_062z : packoffset(c062.z);
  float cb0_062w : packoffset(c062.w);
  float cb0_134x : packoffset(c134.x);
  float cb0_134y : packoffset(c134.y);
  float cb0_134z : packoffset(c134.z);
  float cb0_134w : packoffset(c134.w);
  float cb0_135x : packoffset(c135.x);
  float cb0_135y : packoffset(c135.y);
  float cb0_135z : packoffset(c135.z);
  float cb0_135w : packoffset(c135.w);
  float cb0_136x : packoffset(c136.x);
  float cb0_136y : packoffset(c136.y);
  float cb0_136z : packoffset(c136.z);
  float cb0_136w : packoffset(c136.w);
  float cb0_137x : packoffset(c137.x);
  float cb0_137y : packoffset(c137.y);
  float cb0_137z : packoffset(c137.z);
  float cb0_137w : packoffset(c137.w);
  float cb0_138z : packoffset(c138.z);
  float cb0_138w : packoffset(c138.w);
  float cb0_141x : packoffset(c141.x);
  float cb0_141z : packoffset(c141.z);
  float cb0_142x : packoffset(c142.x);
  float cb0_142z : packoffset(c142.z);
  float cb0_143x : packoffset(c143.x);
  float cb0_143z : packoffset(c143.z);
  float cb0_144x : packoffset(c144.x);
  float cb0_144z : packoffset(c144.z);
  float cb0_145x : packoffset(c145.x);
  float cb0_145y : packoffset(c145.y);
  float cb0_145z : packoffset(c145.z);
  float cb0_146x : packoffset(c146.x);
  float cb0_146y : packoffset(c146.y);
  float cb0_146z : packoffset(c146.z);
  float cb0_147x : packoffset(c147.x);
  float cb0_147y : packoffset(c147.y);
  float cb0_147z : packoffset(c147.z);
  float cb0_147w : packoffset(c147.w);
  float cb0_148x : packoffset(c148.x);
  float cb0_148y : packoffset(c148.y);
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
  float4 _16 = t3.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
  int _20 = int(round(_16.z * 255.0f));
  float _27 = select(((_20 & 2) != 0), cb0_192z, 1.0f);
  float4 _28 = t5.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
  float4 _35 = t4.SampleBias(s1, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
  float4 _40 = t1.SampleLevel(s1, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
  bool _49 = (bool)((_20 & 16) != 0) || (bool)((1.0f / ((cb0_062z * _40.y) + cb0_062w)) > 1000.0f);
  float _50 = select(_49, 0.0f, (_28.x * _27));
  float _51 = select(_49, 0.0f, (_28.y * _27));
  float _52 = select(_49, 0.0f, (_28.z * _27));
  float _53 = _50 + _35.x;
  float _54 = _51 + _35.y;
  float _55 = _52 + _35.z;
  float _171;
  float _172;
  float _173;
  float _296;
  float _297;
  float _356;
  float _357;
  float _358;

  if (cb0_172x > 0.5f) {
    float _64 = cb0_173y * cb0_171w;

    float3 input = float3(_53, _54, _55);
    input = input.xyz * _64;
    float _115;
    float _116;
    float _117;

    float3 output = HighQualityBloomLutSample(input, t2, s0);
    _115 = output.x;
    _116 = output.y;
    _117 = output.z;

    /*
    float _89 = cb0_171z * saturate((log2(((_55 * 5.555555820465088f) * _64) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f);
    float _90 = floor(_89);
    float _96 = ((cb0_171z * saturate((log2(((_54 * 5.555555820465088f) * _64) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f)) + 0.5f) * cb0_171y;
    float _98 = (((cb0_171z * saturate((log2(((_53 * 5.555555820465088f) * _64) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f)) + 0.5f) * cb0_171x) + (_90 * cb0_171y);
    float _99 = _89 - _90;
    float4 _101 = t2.SampleLevel(s0, float2((_98 + cb0_171y), _96), 0.0f);
    float4 _105 = t2.SampleLevel(s0, float2(_98, _96), 0.0f);
    float _115 = ((_101.x - _105.x) * _99) + _105.x;
    float _116 = ((_101.y - _105.y) * _99) + _105.y;
    float _117 = ((_101.z - _105.z) * _99) + _105.z;
    */

    // float _132 = (((1.0f - saturate(_115)) - _115) * cb0_025z) + _115;
    // float _133 = (((1.0f - saturate(_116)) - _116) * cb0_025z) + _116;
    // float _134 = (((1.0f - saturate(_117)) - _117) * cb0_025z) + _117;
    float _132 = (((1.0f - (_115)) - _115) * cb0_025z) + _115;
    float _133 = (((1.0f - (_116)) - _116) * cb0_025z) + _116;
    float _134 = (((1.0f - (_117)) - _117) * cb0_025z) + _117;

    float _143 = saturate((saturate(dot(float3(_132, _133, _134), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - cb0_023z) * cb0_024z);
    _171 = ((cb0_026z * ((cb0_023x - _132) + ((cb0_023y - cb0_023x) * _143))) + _132);
    _172 = ((((cb0_024x - _133) + ((cb0_024y - cb0_024x) * _143)) * cb0_026z) + _133);
    _173 = ((((cb0_025x - _134) + ((cb0_025y - cb0_025x) * _143)) * cb0_026z) + _134);
  } else {
    _171 = _53;
    _172 = _54;
    _173 = _55;
  }
  float _177 = dot(float3(_171, _172, _173), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)) / max(dot(float3(_53, _54, _55), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 1.1754943508222875e-38f);
  float _184 = saturate((dot(float3(_50, _51, _52), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)) + -0.10000000149011612f) * 4.999999523162842f);
  float _191 = _53 + (_184 * ((_177 * _50) - _50));
  float _192 = _54 + (_184 * ((_177 * _51) - _51));
  float _193 = _55 + (_184 * ((_177 * _52) - _52));
  float4 _194 = t0.SampleLevel(s1, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
  float _223 = ((SV_Position.x * 2.0f) * cb0_138z) + -1.0f;
  float _225 = -0.0f - (((SV_Position.y * 2.0f) * cb0_138w) + -1.0f);
  float _241 = mad(cb0_136w, _194.x, mad(cb0_135w, _225, (_223 * cb0_134w))) + cb0_137w;
  float _249 = cb0_030x - ((mad(cb0_136x, _194.x, mad(cb0_135x, _225, (_223 * cb0_134x))) + cb0_137x) / _241);
  float _250 = cb0_030y - ((mad(cb0_136y, _194.x, mad(cb0_135y, _225, (_223 * cb0_134y))) + cb0_137y) / _241);
  float _251 = cb0_030z - ((mad(cb0_136z, _194.x, mad(cb0_135z, _225, (_223 * cb0_134z))) + cb0_137z) / _241);
  float _257 = sqrt(((_249 * _249) + (_250 * _250)) + (_251 * _251));
  if (cb0_143z > 0.5f) {
    bool _262 = (cb0_143z > 1.5f);
    do {
      if (_262) {
        float _275 = saturate(cb0_143x * (_257 - cb0_141x));
        float _285 = ((_275 * _275) * _275) * ((((_275 * 6.0f) + -15.0f) * _275) + 10.0f);
        _296 = (lerp(_285, _275, cb0_148y));
        _297 = saturate(cb0_144x * (_257 - cb0_142x));
      } else {
        float _294 = saturate((_257 - cb0_141z) * cb0_142z);
        _296 = _294;
        _297 = _294;
      }
      float _316 = (lerp(cb0_145x, cb0_145y, _296)) * _191;
      float _317 = (lerp(cb0_146x, cb0_146y, _296)) * _192;
      float _318 = (lerp(cb0_147x, cb0_147y, _296)) * _193;
      float _320 = _316 - _191;
      float _321 = _317 - _192;
      float _322 = _318 - _193;
      if (_262) {
        float _329 = (cb0_148x * _297) * cb0_144z;
        _356 = ((cb0_147w * (_320 + ((cb0_145z - _316) * _329))) + _191);
        _357 = (((_321 + ((cb0_146z - _317) * _329)) * cb0_147w) + _192);
        _358 = (((_322 + ((cb0_147z - _318) * _329)) * cb0_147w) + _193);
      } else {
        _356 = ((cb0_147w * _320) + _191);
        _357 = ((cb0_147w * _321) + _192);
        _358 = ((cb0_147w * _322) + _193);
      }
    } while (false);
  } else {
    _356 = _191;
    _357 = _192;
    _358 = _193;
  }
  SV_Target.x = _356;
  SV_Target.y = _357;
  SV_Target.z = _358;
  SV_Target.w = saturate((((_50 + _51) + _52) * 0.33329999446868896f) + _35.w);
  return SV_Target;
}
