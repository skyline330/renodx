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
  float cb0_142x : packoffset(c142.x);
  float cb0_143x : packoffset(c143.x);
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
  float cb0_148x : packoffset(c148.x);
  float cb0_148y : packoffset(c148.y);
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
  float4 _16 = t5.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
  float4 _20 = t1.SampleLevel(s1, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
  bool _28 = ((1.0f / ((cb0_062z * _20.y) + cb0_062w)) > 1000.0f);
  float _29 = select(_28, 0.0f, _16.x);
  float _30 = select(_28, 0.0f, _16.y);
  float _31 = select(_28, 0.0f, _16.z);
  float4 _32 = t3.SampleBias(s1, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
  float _37 = _32.x + _29;
  float _38 = _32.y + _30;
  float _39 = _32.z + _31;
  float _155;
  float _156;
  float _157;

  if (cb0_172x > 0.5f) {
    float _48 = cb0_173y * cb0_171w;

    float3 input = float3(_37, _38, _39);
    input = input.xyz * _48;
    float _99;
    float _100;
    float _101;

    float3 output = HighQualityBloomLutSample(input, t2, s0);
    _99 = output.x;
    _100 = output.y;
    _101 = output.z;

    /*
    float _73 = cb0_171z * saturate((log2(((_39 * 5.555555820465088f) * _48) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f);
    float _74 = floor(_73);
    float _80 = ((cb0_171z * saturate((log2(((_38 * 5.555555820465088f) * _48) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f)) + 0.5f) * cb0_171y;
    float _82 = (((cb0_171z * saturate((log2(((_37 * 5.555555820465088f) * _48) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f)) + 0.5f) * cb0_171x) + (_74 * cb0_171y);
    float _83 = _73 - _74;
    float4 _85 = t2.SampleLevel(s0, float2((_82 + cb0_171y), _80), 0.0f);
    float4 _89 = t2.SampleLevel(s0, float2(_82, _80), 0.0f);
    float _99 = ((_85.x - _89.x) * _83) + _89.x;
    float _100 = ((_85.y - _89.y) * _83) + _89.y;
    float _101 = ((_85.z - _89.z) * _83) + _89.z;
    */

    // float _116 = (((1.0f - saturate(_99)) - _99) * cb0_025z) + _99;
    // float _117 = (((1.0f - saturate(_100)) - _100) * cb0_025z) + _100;
    // float _118 = (((1.0f - saturate(_101)) - _101) * cb0_025z) + _101;
    float _116 = (((1.0f - (_99)) - _99) * cb0_025z) + _99;
    float _117 = (((1.0f - (_100)) - _100) * cb0_025z) + _100;
    float _118 = (((1.0f - (_101)) - _101) * cb0_025z) + _101;

    float _127 = saturate((saturate(dot(float3(_116, _117, _118), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - cb0_023z) * cb0_024z);
    _155 = ((cb0_026z * ((cb0_023x - _116) + ((cb0_023y - cb0_023x) * _127))) + _116);
    _156 = ((((cb0_024x - _117) + ((cb0_024y - cb0_024x) * _127)) * cb0_026z) + _117);
    _157 = ((((cb0_025x - _118) + ((cb0_025y - cb0_025x) * _127)) * cb0_026z) + _118);
  } else {
    _155 = _37;
    _156 = _38;
    _157 = _39;
  }
  float4 _158 = t0.SampleLevel(s1, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
  float _187 = ((SV_Position.x * 2.0f) * cb0_138z) + -1.0f;
  float _189 = -0.0f - (((SV_Position.y * 2.0f) * cb0_138w) + -1.0f);
  float _205 = mad(cb0_136w, _158.x, mad(cb0_135w, _189, (_187 * cb0_134w))) + cb0_137w;
  float _213 = cb0_030x - ((mad(cb0_136x, _158.x, mad(cb0_135x, _189, (_187 * cb0_134x))) + cb0_137x) / _205);
  float _214 = cb0_030y - ((mad(cb0_136y, _158.x, mad(cb0_135y, _189, (_187 * cb0_134y))) + cb0_137y) / _205);
  float _215 = cb0_030z - ((mad(cb0_136z, _158.x, mad(cb0_135z, _189, (_187 * cb0_134z))) + cb0_137z) / _205);
  float _221 = sqrt(((_213 * _213) + (_214 * _214)) + (_215 * _215));
  float4 _222 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
  float _236 = saturate(cb0_143x * (_221 - cb0_141x));
  float _246 = ((_236 * _236) * _236) * ((((_236 * 6.0f) + -15.0f) * _236) + 10.0f);
  float _249 = ((_236 - _246) * cb0_148y) + _246;
  float _268 = ((_249 * (cb0_145y - cb0_145x)) + cb0_145x) * _155;
  float _269 = (lerp(cb0_146x, cb0_146y, _249)) * _156;
  float _270 = (lerp(cb0_147x, cb0_147y, _249)) * _157;
  float _274 = (cb0_148x * saturate(cb0_144x * (_221 - cb0_142x))) * cb0_144z;
  float _284 = ((cb0_145z - _268) * _274) + _268;
  float _285 = ((cb0_146z - _269) * _274) + _269;
  float _286 = ((cb0_147z - _270) * _274) + _270;
  SV_Target.x = (lerp(_284, _155, _222.x));
  SV_Target.y = (lerp(_285, _156, _222.x));
  SV_Target.z = (lerp(_286, _157, _222.x));
  SV_Target.w = saturate(_32.w + (((_29 + _30) + _31) * 0.33329999446868896f));
  return SV_Target;
}
