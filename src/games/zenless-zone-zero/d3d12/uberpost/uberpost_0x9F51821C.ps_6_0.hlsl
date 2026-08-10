#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t7 : register(t7);

cbuffer cb0 : register(b0) {
  int Globals_000 : packoffset(c000.x);
  float4 Globals_016[4] : packoffset(c001.x);
  float4 Globals_080 : packoffset(c005.x);
  float4 Globals_096 : packoffset(c006.x);
  float4 Globals_112 : packoffset(c007.x);
  float4 Globals_128 : packoffset(c008.x);
  float4 Globals_144 : packoffset(c009.x);
  float4 Globals_160 : packoffset(c010.x);
  float4 Globals_176 : packoffset(c011.x);
  float Globals_192 : packoffset(c012.x);
  float4 Globals_208[4] : packoffset(c013.x);
  float4 Globals_272[4] : packoffset(c017.x);
  float4 Globals_336 : packoffset(c021.x);
  float4 Globals_352 : packoffset(c022.x);
  float4 Globals_368[4] : packoffset(c023.x);
  float Globals_432 : packoffset(c027.x);
  float4 Globals_448 : packoffset(c028.x);
  float4 Globals_464 : packoffset(c029.x);
  float3 Globals_480 : packoffset(c030.x);
  float4 Globals_496[4] : packoffset(c031.x);
  float4 Globals_560[4] : packoffset(c035.x);
  float4 Globals_624[4] : packoffset(c039.x);
  float4 Globals_688[4] : packoffset(c043.x);
  float4 Globals_752[4] : packoffset(c047.x);
  float4 Globals_816[4] : packoffset(c051.x);
  float4 Globals_880[4] : packoffset(c055.x);
  float4 Globals_944 : packoffset(c059.x);
  float4 Globals_960 : packoffset(c060.x);
  float Globals_976 : packoffset(c061.x);
  float4 Globals_992 : packoffset(c062.x);
  float4 Globals_1008 : packoffset(c063.x);
  float4 Globals_1024[6] : packoffset(c064.x);
  float4 Globals_1120[4] : packoffset(c070.x);
  float4 Globals_1184[4] : packoffset(c074.x);
  float4 Globals_1248[4] : packoffset(c078.x);
  float4 Globals_1312[4] : packoffset(c082.x);
  float4 Globals_1376[4] : packoffset(c086.x);
  float4 Globals_1440[4] : packoffset(c090.x);
  float4 Globals_1504[4] : packoffset(c094.x);
  float4 Globals_1568[4] : packoffset(c098.x);
  float4 Globals_1632[4] : packoffset(c102.x);
  float4 Globals_1696[4] : packoffset(c106.x);
  float4 Globals_1760[4] : packoffset(c110.x);
  float4 Globals_1824[4] : packoffset(c114.x);
  float4 Globals_1888[4] : packoffset(c118.x);
  float4 Globals_1952[4] : packoffset(c122.x);
  float4 Globals_2016[4] : packoffset(c126.x);
  float4 Globals_2080[4] : packoffset(c130.x);
  float4 Globals_2144[4] : packoffset(c134.x);
  float4 Globals_2208 : packoffset(c138.x);
  float4 Globals_2224 : packoffset(c139.x);
  float4 Globals_2240 : packoffset(c140.x);
  float4 Globals_2256[4] : packoffset(c141.x);
  float4 Globals_2320[4] : packoffset(c145.x);
  float4 Globals_2384[4] : packoffset(c149.x);
  float4 Globals_2448[4] : packoffset(c153.x);
  float4 Globals_2512[4] : packoffset(c157.x);
  float4 Globals_2576[4] : packoffset(c161.x);
  float4 Globals_2640 : packoffset(c165.x);
  float4 Globals_2656 : packoffset(c166.x);
  float4 Globals_2672[4] : packoffset(c167.x);
  float4 Globals_2736 : packoffset(c171.x);
  float4 Globals_2752[4] : packoffset(c172.x);
  float4 Globals_2816[4] : packoffset(c176.x);
  float4 Globals_2880[4] : packoffset(c180.x);
  float4 Globals_2944[4] : packoffset(c184.x);
  float4 Globals_3008 : packoffset(c188.x);
  float Globals_3024 : packoffset(c189.x);
  float4 Globals_3040[4] : packoffset(c190.x);
  float4 Globals_3104[4] : packoffset(c194.x);
  float4 Globals_3168 : packoffset(c198.x);
  float4 Globals_3184 : packoffset(c199.x);
  float4 Globals_3200 : packoffset(c200.x);
  float4 Globals_3216 : packoffset(c201.x);
  float3 Globals_3232 : packoffset(c202.x);
  float4 Globals_3248 : packoffset(c203.x);
  float Globals_3264 : packoffset(c204.x);
  float4 Globals_3280[4] : packoffset(c205.x);
};

cbuffer cb1 : register(b1) {
  float4 UberPostBaseCBuffer_000 : packoffset(c000.x);
  float4 UberPostBaseCBuffer_016 : packoffset(c001.x);
  float4 UberPostBaseCBuffer_032 : packoffset(c002.x);
  float4 UberPostBaseCBuffer_048 : packoffset(c003.x);
  float4 UberPostBaseCBuffer_064 : packoffset(c004.x);
  float4 UberPostBaseCBuffer_080 : packoffset(c005.x);
  float4 UberPostBaseCBuffer_096 : packoffset(c006.x);
  float4 UberPostBaseCBuffer_112 : packoffset(c007.x);
  float4 UberPostBaseCBuffer_128 : packoffset(c008.x);
  float4 UberPostBaseCBuffer_144 : packoffset(c009.x);
  float4 UberPostBaseCBuffer_160 : packoffset(c010.x);
  float4 UberPostBaseCBuffer_176 : packoffset(c011.x);
  float4 UberPostBaseCBuffer_192 : packoffset(c012.x);
  float4 UberPostBaseCBuffer_208 : packoffset(c013.x);
  float4 UberPostBaseCBuffer_224 : packoffset(c014.x);
  float4 UberPostBaseCBuffer_240 : packoffset(c015.x);
  float4 UberPostBaseCBuffer_256 : packoffset(c016.x);
  float4 UberPostBaseCBuffer_272 : packoffset(c017.x);
  float4 UberPostBaseCBuffer_288 : packoffset(c018.x);
  float4 UberPostBaseCBuffer_304 : packoffset(c019.x);
  float4 UberPostBaseCBuffer_320 : packoffset(c020.x);
  float4 UberPostBaseCBuffer_336 : packoffset(c021.x);
  float4 UberPostBaseCBuffer_352 : packoffset(c022.x);
  float4 UberPostBaseCBuffer_368 : packoffset(c023.x);
  float4 UberPostBaseCBuffer_384 : packoffset(c024.x);
  float4 UberPostBaseCBuffer_400 : packoffset(c025.x);
  float4 UberPostBaseCBuffer_416 : packoffset(c026.x);
  float4 UberPostBaseCBuffer_432 : packoffset(c027.x);
  float4 UberPostBaseCBuffer_448 : packoffset(c028.x);
  float4 UberPostBaseCBuffer_464 : packoffset(c029.x);
  float4 UberPostBaseCBuffer_480 : packoffset(c030.x);
  float4 UberPostBaseCBuffer_496 : packoffset(c031.x);
  float4 UberPostBaseCBuffer_512 : packoffset(c032.x);
  float4 UberPostBaseCBuffer_528 : packoffset(c033.x);
  float4 UberPostBaseCBuffer_544 : packoffset(c034.x);
  float4 UberPostBaseCBuffer_560 : packoffset(c035.x);
  float4 UberPostBaseCBuffer_576 : packoffset(c036.x);
  float4 UberPostBaseCBuffer_592 : packoffset(c037.x);
};

cbuffer cb2 : register(b2) {
  float4 UberPostFXColorCorrectionCBuffer_000 : packoffset(c000.x);
  float4 UberPostFXColorCorrectionCBuffer_016 : packoffset(c001.x);
  float4 UberPostFXColorCorrectionCBuffer_032 : packoffset(c002.x);
  float4 UberPostFXColorCorrectionCBuffer_048 : packoffset(c003.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

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
    linear float4 TEXCOORD_1: TEXCOORD1) : SV_Target {
  float4 SV_Target;
  bool _20;
  float _52;
  float _53;
  float _54;
  float _55;
  float _56;
  float _57;
  float _58;
  float _59;
  float _176;
  float _177;
  float _178;
  float _184;
  float _185;
  float _186;
  float _187;
  float _319;
  float _320;
  float _321;
  float _331;
  float _332;
  float _333;
  float _334;
  float _373;
  float _374;
  float _375;
  float _464;
  float _465;
  float _466;
  float _493;
  float _494;
  float _495;
  float _624;
  float _625;
  float _626;
  float4 _24;
  float _28;
  float _29;
  float _34;
  float _35;
  float _71;
  float _73;
  float _77;
  float _79;
  float _81;
  float _83;
  float _90;
  float _95;
  float _97;
  float _99;
  float4 _108;
  float4 _118;
  float4 _128;
  float4 _171;
  bool _194;
  float _204;
  float _212;
  float _215;
  float4 _236;
  float _273;
  float _274;
  float _275;
  float _276;
  bool _279;
  float _292;
  float _293;
  float _294;
  float4 _305;
  float _351;
  float _353;
  float _359;
  float _398;
  float _399;
  float _405;
  float _407;
  float _408;
  float4 _410;
  float4 _414;
  float _424;
  float _425;
  float _426;
  float _446;
  float _450;
  float _471;
  float _478;
  float _479;
  float _480;
  float4 _488;
  float _510;
  float _511;
  float _512;
  float _520;
  float _547;
  float _548;
  float _549;
  float4 _555;
  float _592;
  float _593;
  float _594;
  float _613;
  _20 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_20) {
    _24 = t5.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _28 = _24.x * 0.10000000149011612f;
    _29 = _24.y * 0.10000000149011612f;
    _34 = (_28 * _24.z) * UberPostBaseCBuffer_176.w;
    _35 = (_29 * _24.z) * UberPostBaseCBuffer_176.w;
    _52 = (_28 + TEXCOORD.x);
    _53 = (_29 + TEXCOORD.y);
    _54 = ((_34 * UberPostBaseCBuffer_176.x) + _28);
    _55 = ((_35 * UberPostBaseCBuffer_176.x) + _29);
    _56 = ((_34 * UberPostBaseCBuffer_176.y) + _28);
    _57 = ((_35 * UberPostBaseCBuffer_176.y) + _29);
    _58 = ((UberPostBaseCBuffer_176.z * _34) + _28);
    _59 = ((UberPostBaseCBuffer_176.z * _35) + _29);
  } else {
    _52 = TEXCOORD.x;
    _53 = TEXCOORD.y;
    _54 = 0.0f;
    _55 = 0.0f;
    _56 = 0.0f;
    _57 = 0.0f;
    _58 = 0.0f;
    _59 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _71 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _73 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _77 = dot(float2(_71, _73), float2(_71, _73)) * -0.3333333432674408f;
    _79 = (_77 * _71) * UberPostBaseCBuffer_192.z;
    _81 = (_77 * _73) * UberPostBaseCBuffer_192.z;
    _83 = rsqrt(dot(float3(_79, _81, 9.999999747378752e-05f), float3(_79, _81, 9.999999747378752e-05f)));
    _90 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _95 = exp2(log2(sqrt((_79 * _79) + (_81 * _81)) / _90) * UberPostBaseCBuffer_384.z);
    _97 = ((_79 * _83) * _90) * _95;
    _99 = ((_81 * _83) * _90) * _95;
    _108 = t1.SampleBias(s0, float2(((_54 + TEXCOORD.x) + (_97 * UberPostBaseCBuffer_400.w)), ((_55 + TEXCOORD.y) + (_99 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _118 = t1.SampleBias(s0, float2(((_56 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _97)), ((_57 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _99))), (Globals_976), int2(0, 0));
    _128 = t1.SampleBias(s0, float2(((_58 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _97)), ((_59 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _99))), (Globals_976), int2(0, 0));
    _184 = (((float4)(t1.SampleBias(s0, float2(_52, _53), (Globals_976), int2(0, 0)))).w);
    _185 = (((UberPostBaseCBuffer_416.x * _118.y) + (UberPostBaseCBuffer_400.x * _108.x)) + (UberPostBaseCBuffer_432.x * _128.z));
    _186 = (((UberPostBaseCBuffer_416.y * _118.y) + (UberPostBaseCBuffer_400.y * _108.x)) + (UberPostBaseCBuffer_432.y * _128.z));
    _187 = (((UberPostBaseCBuffer_416.z * _118.y) + (UberPostBaseCBuffer_400.z * _108.x)) + (UberPostBaseCBuffer_432.z * _128.z));
  } else {
    if (_20) {
      _176 = (((float4)(t1.SampleBias(s0, float2((_54 + TEXCOORD.x), (_55 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).x);
      _177 = (((float4)(t1.SampleBias(s0, float2((_56 + TEXCOORD.x), (_57 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).y);
      _178 = (((float4)(t1.SampleBias(s0, float2((_58 + TEXCOORD.x), (_59 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).z);
    } else {
      _171 = t1.SampleBias(s0, float2(_52, _53), (Globals_976), int2(0, 0));
      _176 = _171.x;
      _177 = _171.y;
      _178 = _171.z;
    }
    _184 = (((float4)(t1.SampleBias(s0, float2(_52, _53), (Globals_976), int2(0, 0)))).w);
    _185 = _176;
    _186 = _177;
    _187 = _178;
  }
  _194 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _194)) {
    _204 = fmod((((Globals_2208.y) * _53) * UberPostBaseCBuffer_448.x), 2.0f);
    _212 = (((select((_204 > 1.0f), (2.0f - _204), _204) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _52;
    _215 = (Globals_2208.w) * (Globals_2208.x);
    _236 = t6.SampleBias(s3, float2(_212, ((select(((frac((((_212 + abs(UberPostBaseCBuffer_464.y)) * _215) - (UberPostBaseCBuffer_464.y * _53)) / ((_215 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _53)), (Globals_976), int2(0, 0));
    _273 = ((((-0.699999988079071f - _236.x) + (exp2(log2(abs(_236.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_236.x < 0.30000001192092896f), 0.0f, 1.0f)) + _236.x) * UberPostBaseCBuffer_336.x;
    _274 = ((((-0.699999988079071f - _236.y) + (exp2(log2(abs(_236.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_236.y < 0.30000001192092896f), 0.0f, 1.0f)) + _236.y) * UberPostBaseCBuffer_336.x;
    _275 = ((((-0.699999988079071f - _236.z) + (exp2(log2(abs(_236.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_236.z < 0.30000001192092896f), 0.0f, 1.0f)) + _236.z) * UberPostBaseCBuffer_336.x;
    _276 = dot(float3(_185, _186, _187), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _279 = (UberPostBaseCBuffer_352.x > 0.5f);
    _292 = select(_279, ((((_273 * _276) - _273) * _184) + _273), _273);
    _293 = select(_279, ((((_274 * _276) - _274) * _184) + _274), _274);
    _294 = select(_279, ((((_275 * _276) - _275) * _184) + _275), _275);
    if (_194) {
      _305 = t7.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _52) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _53) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _319 = (((_305.x * _273) * UberPostBaseCBuffer_336.y) + _292);
      _320 = (((_305.y * _274) * UberPostBaseCBuffer_336.y) + _293);
      _321 = (((_305.z * _275) * UberPostBaseCBuffer_336.y) + _294);
    } else {
      _319 = _292;
      _320 = _293;
      _321 = _294;
    }
    _331 = (_319 + _185);
    _332 = (_320 + _186);
    _333 = (_321 + _187);
    _334 = saturate((((_320 + _319) + _321) * 0.33329999446868896f) + _184);
  } else {
    _331 = _185;
    _332 = _186;
    _333 = _187;
    _334 = _184;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _351 = abs(_53 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _353 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_52 - UberPostBaseCBuffer_112.x);
    _359 = exp2(log2(saturate(1.0f - dot(float2(_353, _351), float2(_353, _351)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _373 = (((_359 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _331);
    _374 = (((_359 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _332);
    _375 = (((_359 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _333);
  } else {
    _373 = _331;
    _374 = _332;
    _375 = _333;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_373, _374, _375);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t3, s0, UberPostBaseCBuffer_000.xyz);
    _424 = tonemapped.x;
    _425 = tonemapped.y;
    _426 = tonemapped.z;
  } else {
    _398 = saturate((log2((_375 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _399 = floor(_398);
    _405 = ((saturate((log2((_374 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _407 = (_399 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_373 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _408 = _398 - _399;
    _410 = t3.SampleLevel(s0, float2((_407 + UberPostBaseCBuffer_000.y), _405), 0.0f);
    _414 = t3.SampleLevel(s0, float2(_407, _405), 0.0f);
    _424 = ((_410.x - _414.x) * _408) + _414.x;
    _425 = ((_410.y - _414.y) * _408) + _414.y;
    _426 = ((_410.z - _414.z) * _408) + _414.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _446 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _450 = 1.0f - (sqrt(dot(float3(_424, _425, _426), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _464 = ((((UberPostBaseCBuffer_208.x * _424) * _446) * _450) + _424);
    _465 = ((((UberPostBaseCBuffer_208.x * _425) * _446) * _450) + _425);
    _466 = ((((UberPostBaseCBuffer_208.x * _426) * _446) * _450) + _426);
  } else {
    _464 = _424;
    _465 = _425;
    _466 = _426;
  }
  _471 = ((_465 + _464) + _466) * 0.3333333432674408f;
  _478 = ((_464 - _471) * UberPostFXColorCorrectionCBuffer_000.w) + _471;
  _479 = ((_465 - _471) * UberPostFXColorCorrectionCBuffer_000.w) + _471;
  _480 = ((_466 - _471) * UberPostFXColorCorrectionCBuffer_000.w) + _471;
  if ((Globals_816[3].w) > 0.5f) {
    _488 = t0.SampleBias(s0, float2(dot(float3(_478, _479, _480), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _493 = _488.x;
    _494 = _488.y;
    _495 = _488.z;
  } else {
    _493 = _478;
    _494 = _479;
    _495 = _480;
  }
  _510 = (((1.0f - _493) - saturate(_493)) * UberPostFXColorCorrectionCBuffer_016.w) + _493;
  _511 = (((1.0f - _494) - saturate(_494)) * UberPostFXColorCorrectionCBuffer_016.w) + _494;
  _512 = (((1.0f - _495) - saturate(_495)) * UberPostFXColorCorrectionCBuffer_016.w) + _495;
  _520 = saturate((saturate(dot(float3(_510, _511, _512), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _547 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _510) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _520)) * UberPostFXColorCorrectionCBuffer_032.x) + _510);
  // _548 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _511) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _520)) * UberPostFXColorCorrectionCBuffer_032.x) + _511);
  // _549 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _512) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _520)) * UberPostFXColorCorrectionCBuffer_032.x) + _512);
  _547 = ((((UberPostFXColorCorrectionCBuffer_000.x - _510) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _520)) * UberPostFXColorCorrectionCBuffer_032.x) + _510);
  _548 = ((((UberPostFXColorCorrectionCBuffer_000.y - _511) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _520)) * UberPostFXColorCorrectionCBuffer_032.x) + _511);
  _549 = ((((UberPostFXColorCorrectionCBuffer_000.z - _512) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _520)) * UberPostFXColorCorrectionCBuffer_032.x) + _512);

  // HDR FX Mask Blend
  float3 result = float3(_547, _548, _549);
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    float m = smoothstep(0.0f, 1.0f, t4.Sample(s0, TEXCOORD).x);

    if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
      // Simple lighten
      float3 blend_factor = pow(m, 2.2f);
      result = result * (1.0f + blend_factor * 0.5f);
    } else {
      // Overlay
      float3 blend = UberPostFXColorCorrectionCBuffer_048.xyz;
      result = result * lerp(1.0f, blend * 2.0f, m);
    }
  }
  _624 = result.x;
  _625 = result.y;
  _626 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _555 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _624 = min((_555.x + _547), 1.0f);
        _625 = min((_555.x + _548), 1.0f);
        _626 = min((_555.x + _549), 1.0f);
      } else {
        _592 = select((_547 > 0.5f), 0.0f, 1.0f);
        _593 = select((_548 > 0.5f), 0.0f, 1.0f);
        _594 = select((_549 > 0.5f), 0.0f, 1.0f);
        _613 = 1.0f - _555.x;
        _624 = (((((1.0f - (((1.0f - _547) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _592)) + (((_547 * 2.0f) * _592) * UberPostFXColorCorrectionCBuffer_048.x)) * _555.x) + (_613 * _547));
        _625 = (((((1.0f - (((1.0f - _548) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _593)) + (((_548 * 2.0f) * _593) * UberPostFXColorCorrectionCBuffer_048.y)) * _555.x) + (_613 * _548));
        _626 = (((((1.0f - (((1.0f - _549) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _594)) + (((_549 * 2.0f) * _594) * UberPostFXColorCorrectionCBuffer_048.z)) * _555.x) + (_613 * _549));
      }
  } else {
    _624 = _547;
    _625 = _548;
    _626 = _549;
  }
  */

  SV_Target.x = _624;
  SV_Target.y = _625;
  SV_Target.z = _626;
  SV_Target.w = _334;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
