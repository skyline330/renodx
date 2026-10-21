// The Talos Principle 2 (UE 5.2.0.0)

#include "./composite.hlsli"

Texture2D<float4> UITexture : register(t0);

Texture2D<float4> SceneTexture : register(t1);

cbuffer $Globals : register(b0) {
  float3 InverseGamma : packoffset(c000.x);
  float FilmSlope : packoffset(c000.w);
  float FilmToe : packoffset(c001.x);
  float FilmShoulder : packoffset(c001.y);
  float FilmBlackClip : packoffset(c001.z);
  float FilmWhiteClip : packoffset(c001.w);
  uint OutputDevice : packoffset(c002.x);
  uint OutputGamut : packoffset(c002.y);
  float OutputMaxLuminance : packoffset(c002.z);
  float4 ACESMinMaxData : packoffset(c003.x);
  float4 ACESMidData : packoffset(c004.x);
  float4 ACESCoefsLow_0 : packoffset(c005.x);
  float4 ACESCoefsHigh_0 : packoffset(c006.x);
  float ACESCoefsLow_4 : packoffset(c007.x);
  float ACESCoefsHigh_4 : packoffset(c007.y);
  float UILevel : packoffset(c007.z);
  float UILuminance : packoffset(c007.w);
};

SamplerState UISampler : register(s0);

SamplerState SceneSampler : register(s1);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) {
  return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value));
}
uint firstbithigh_msb(uint value) {
  return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value));
}

float4 main(
    noperspective float2 TEXCOORD: TEXCOORD,
    precise noperspective float4 SV_Position: SV_Position) : SV_Target {
  float4 SV_Target;
  float4 _11;
  float _16;
  float _17;
  float _18;
  float _40;
  float _41;
  float _42;
  float4 _59;
  float _69;
  float _70;
  float _71;
  float _96;
  float _97;
  float _98;
  float _119;
  float _120;
  float _121;
  float _104;
  float _105;
  float _106;
  float _114;
  float _122;
  float _141;
  float _142;
  float _143;

  _11 = UITexture.Sample(UISampler, float2(TEXCOORD.x, TEXCOORD.y));

  _59 = SceneTexture.Sample(SceneSampler, float2(TEXCOORD.x, TEXCOORD.y));

  if (HandleUICompositing(_11, _59, SV_Target, TEXCOORD.xy, SceneTexture, SceneSampler)) {
    return SV_Target;
  }

  _16 = max(6.103519990574569e-05f, _11.x);
  _17 = max(6.103519990574569e-05f, _11.y);
  _18 = max(6.103519990574569e-05f, _11.z);
  _40 = select((_16 > 0.040449999272823334f), exp2(log2((_16 * 0.9478672742843628f) + 0.05213269963860512f) * 2.4000000953674316f), (_16 * 0.07739938050508499f));
  _41 = select((_17 > 0.040449999272823334f), exp2(log2((_17 * 0.9478672742843628f) + 0.05213269963860512f) * 2.4000000953674316f), (_17 * 0.07739938050508499f));
  _42 = select((_18 > 0.040449999272823334f), exp2(log2((_18 * 0.9478672742843628f) + 0.05213269963860512f) * 2.4000000953674316f), (_18 * 0.07739938050508499f));
  // _59 = SceneTexture.Sample(SceneSampler, float2(TEXCOORD.x, TEXCOORD.y));
  _69 = (pow(_59.x, 0.012683313339948654f));
  _70 = (pow(_59.y, 0.012683313339948654f));
  _71 = (pow(_59.z, 0.012683313339948654f));
  _96 = exp2(log2(max(0.0f, (_69 + -0.8359375f)) / (18.8515625f - (_69 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _97 = exp2(log2(max(0.0f, (_70 + -0.8359375f)) / (18.8515625f - (_70 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _98 = exp2(log2(max(0.0f, (_71 + -0.8359375f)) / (18.8515625f - (_71 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  if ((_11.w > 0.0f) && (_11.w < 1.0f)) {
    _104 = max(_96, 0.0f);
    _105 = max(_97, 0.0f);
    _106 = max(_98, 0.0f);
    _114 = ((((1.0f / ((dot(float3(_104, _105, _106), float3(0.26269999146461487f, 0.6779999732971191f, 0.059300001710653305f)) / UILevel) + 1.0f)) * UILevel) + -1.0f) * _11.w) + 1.0f;
    _119 = (_114 * _104);
    _120 = (_114 * _105);
    _121 = (_114 * _106);
  } else {
    _119 = _96;
    _120 = _97;
    _121 = _98;
  }
  _122 = 1.0f - _11.w;
  _141 = exp2(log2(((_119 * _122) + ((UILuminance * mad(0.04330150783061981f, _42, mad(0.32926714420318604f, _41, (_40 * 0.6274880170822144f)))) * UILevel)) * 9.999999747378752e-05f) * 0.1593017578125f);
  _142 = exp2(log2(((_120 * _122) + ((UILuminance * mad(0.011359544470906258f, _42, mad(0.9195171594619751f, _41, (_40 * 0.06910824030637741f)))) * UILevel)) * 9.999999747378752e-05f) * 0.1593017578125f);
  _143 = exp2(log2(((_121 * _122) + ((UILuminance * mad(0.8954997062683105f, _42, mad(0.08802297711372375f, _41, (_40 * 0.016396233811974525f)))) * UILevel)) * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_141 * 18.6875f) + 1.0f)) * ((_141 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_142 * 18.6875f) + 1.0f)) * ((_142 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_143 * 18.6875f) + 1.0f)) * ((_143 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _11.w;
  return SV_Target;
}
