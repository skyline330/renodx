// SLAM TANK (UE 5.8.3.0 ini HDR)

#include "./composite.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

cbuffer cb0 : register(b0) {
  float cb0_001z : packoffset(c001.z);
  float cb0_001w : packoffset(c001.w);
  int cb0_002x : packoffset(c002.x);
  float cb0_002y : packoffset(c002.y);
  int cb0_002z : packoffset(c002.z);
  float cb0_002w : packoffset(c002.w);
  float cb0_003x : packoffset(c003.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) {
  return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value));
}
uint firstbithigh_msb(uint value) {
  return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value));
}

float4 main(
    noperspective float4 TEXCOORD: TEXCOORD,
    precise noperspective float4 SV_Position: SV_Position) : SV_Target {
  float4 SV_Target;
  float4 _11;
  bool _13;
  float _22;
  float _23;
  float _24;
  float _69;
  float _70;
  float _71;
  float _215;
  float _216;
  float _217;
  float4 _75;
  float _85;
  float _86;
  float _87;
  float _109;
  float _110;
  float _111;
  float _112;
  float _113;
  float _114;
  float _128;
  float _129;
  float _130;
  float _131;
  float _138;
  float _139;
  float _140;
  float _148;
  float _149;
  float _150;
  float _151;
  float _188;
  float _189;
  float _190;
  float _227;
  float _228;
  float _229;

  _11 = t0.Sample(s0, float2(TEXCOORD.x, TEXCOORD.y));
  _75 = t1.Sample(s1, float2(TEXCOORD.x, TEXCOORD.y));

  if (HandleUICompositing(_11, _75, SV_Target, TEXCOORD.xy, t1, s1)) {
    return SV_Target;
  }

  _13 = (_11.w > 0.0f);
  if (_13) {
    _22 = (_11.x / _11.w);
    _23 = (_11.y / _11.w);
    _24 = (_11.z / _11.w);
  } else {
    _22 = 0.0f;
    _23 = 0.0f;
    _24 = 0.0f;
  }
  if (cb0_002x == 0) {
    _69 = (pow(_22, cb0_002y));
    _70 = (pow(_23, cb0_002y));
    _71 = (pow(_24, cb0_002y));
  } else {
    _69 = select((_22 > 0.040449999272823334f), exp2(log2((abs(_22) * 0.9478672742843628f) + 0.05213269963860512f) * 2.4000000953674316f), (_22 * 0.07739938050508499f));
    _70 = select((_23 > 0.040449999272823334f), exp2(log2((abs(_23) * 0.9478672742843628f) + 0.05213269963860512f) * 2.4000000953674316f), (_23 * 0.07739938050508499f));
    _71 = select((_24 > 0.040449999272823334f), exp2(log2((abs(_24) * 0.9478672742843628f) + 0.05213269963860512f) * 2.4000000953674316f), (_24 * 0.07739938050508499f));
  }
  // _75 = t1.Sample(s1, float2(TEXCOORD.x, TEXCOORD.y));
  _85 = (pow(_75.x, 0.012683313339948654f));
  _86 = (pow(_75.y, 0.012683313339948654f));
  _87 = (pow(_75.z, 0.012683313339948654f));
  _109 = exp2(log2(max(0.0f, (_85 + -0.8359375f)) / (18.8515625f - (_85 * 18.6875f))) * 6.277394771575928f);
  _110 = exp2(log2(max(0.0f, (_86 + -0.8359375f)) / (18.8515625f - (_86 * 18.6875f))) * 6.277394771575928f);
  _111 = exp2(log2(max(0.0f, (_87 + -0.8359375f)) / (18.8515625f - (_87 * 18.6875f))) * 6.277394771575928f);
  _112 = _109 * 10000.0f;
  _113 = _110 * 10000.0f;
  _114 = _111 * 10000.0f;
  [branch]
  if (_13) {
    _128 = cb0_001z * cb0_001w;
    _129 = _128 * mad(0.043313056230545044f, _71, mad(0.3292830288410187f, _70, (_69 * 0.6274039149284363f)));
    _130 = _128 * mad(0.011362319812178612f, _71, mad(0.919540286064148f, _70, (_69 * 0.06909731030464172f)));
    _131 = _128 * mad(0.8955953121185303f, _71, mad(0.08801331371068954f, _70, (_69 * 0.016391439363360405f)));
    [branch]
    if (_11.w < 1.0f) {
      [branch]
      if (cb0_002z == 0) {
        _188 = exp2(log2(saturate(_109)) * cb0_003x);
        _189 = exp2(log2(saturate(_110)) * cb0_003x);
        _190 = exp2(log2(saturate(_111)) * cb0_003x);
        _215 = (exp2(log2(((exp2(log2(saturate(_129 * 9.999999747378752e-05f)) * cb0_003x) - _188) * _11.w) + _188) * cb0_002w) * 10000.0f);
        _216 = (exp2(log2(((exp2(log2(saturate(_130 * 9.999999747378752e-05f)) * cb0_003x) - _189) * _11.w) + _189) * cb0_002w) * 10000.0f);
        _217 = (exp2(log2(((exp2(log2(saturate(_131 * 9.999999747378752e-05f)) * cb0_003x) - _190) * _11.w) + _190) * cb0_002w) * 10000.0f);
      } else {
        _138 = max(_112, 0.0f);
        _139 = max(_113, 0.0f);
        _140 = max(_114, 0.0f);
        _148 = ((((1.0f / ((dot(float3(_138, _139, _140), float3(0.26269999146461487f, 0.6779999732971191f, 0.059300001710653305f)) / cb0_001z) + 1.0f)) * cb0_001z) + -1.0f) * _11.w) + 1.0f;
        _149 = _148 * _138;
        _150 = _148 * _139;
        _151 = _148 * _140;
        _215 = (lerp(_149, _129, _11.w));
        _216 = (lerp(_150, _130, _11.w));
        _217 = (lerp(_151, _131, _11.w));
      }
    } else {
      _215 = _129;
      _216 = _130;
      _217 = _131;
    }
  } else {
    _215 = _112;
    _216 = _113;
    _217 = _114;
  }
  _227 = exp2(log2(_215 * 9.999999747378752e-05f) * 0.1593017578125f);
  _228 = exp2(log2(_216 * 9.999999747378752e-05f) * 0.1593017578125f);
  _229 = exp2(log2(_217 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_227 * 18.6875f) + 1.0f)) * ((_227 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_228 * 18.6875f) + 1.0f)) * ((_228 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_229 * 18.6875f) + 1.0f)) * ((_229 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _11.w;
  return SV_Target;
}
