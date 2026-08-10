#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t9 : register(t9);

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
  float4 Globals_3344 : packoffset(c209.x);
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
  float _54;
  float _55;
  float _56;
  float _57;
  float _58;
  float _59;
  float _60;
  float _61;
  float _225;
  float _226;
  float _227;
  float _233;
  float _234;
  float _235;
  float _236;
  float _368;
  float _369;
  float _370;
  float _387;
  float _388;
  float _389;
  float _390;
  float _429;
  float _430;
  float _431;
  float _520;
  float _521;
  float _522;
  float _549;
  float _550;
  float _551;
  float _680;
  float _681;
  float _682;
  float4 _26;
  float _30;
  float _31;
  float _36;
  float _37;
  float4 _64;
  float _86;
  float _87;
  float _88;
  float _89;
  float _90;
  float _91;
  float _94;
  float _97;
  float _98;
  float _101;
  float _104;
  float _105;
  float _117;
  float _119;
  float _123;
  float _125;
  float _127;
  float _129;
  float _136;
  float _141;
  float _143;
  float _145;
  float4 _154;
  float4 _164;
  float4 _174;
  float4 _220;
  bool _243;
  float _253;
  float _261;
  float _264;
  float4 _285;
  float _322;
  float _323;
  float _324;
  float _325;
  bool _328;
  float _341;
  float _342;
  float _343;
  float4 _354;
  float _374;
  float _407;
  float _409;
  float _415;
  float _454;
  float _455;
  float _461;
  float _463;
  float _464;
  float4 _466;
  float4 _470;
  float _480;
  float _481;
  float _482;
  float _502;
  float _506;
  float _527;
  float _534;
  float _535;
  float _536;
  float4 _544;
  float _566;
  float _567;
  float _568;
  float _576;
  float _603;
  float _604;
  float _605;
  float4 _611;
  float _648;
  float _649;
  float _650;
  float _669;
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _26 = t7.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _30 = _26.x * 0.10000000149011612f;
    _31 = _26.y * 0.10000000149011612f;
    _36 = (_30 * _26.z) * UberPostBaseCBuffer_176.w;
    _37 = (_31 * _26.z) * UberPostBaseCBuffer_176.w;
    _54 = (_30 + TEXCOORD.x);
    _55 = (_31 + TEXCOORD.y);
    _56 = ((_36 * UberPostBaseCBuffer_176.x) + _30);
    _57 = ((_37 * UberPostBaseCBuffer_176.x) + _31);
    _58 = ((_36 * UberPostBaseCBuffer_176.y) + _30);
    _59 = ((_37 * UberPostBaseCBuffer_176.y) + _31);
    _60 = ((UberPostBaseCBuffer_176.z * _36) + _30);
    _61 = ((UberPostBaseCBuffer_176.z * _37) + _31);
  } else {
    _54 = TEXCOORD.x;
    _55 = TEXCOORD.y;
    _56 = 0.0f;
    _57 = 0.0f;
    _58 = 0.0f;
    _59 = 0.0f;
    _60 = 0.0f;
    _61 = 0.0f;
  }
  _64 = t5.SampleBias(s1, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
  _86 = saturate(((_64.z + -1.0f) + (((float4)(t6.SampleBias(s1, float2(((Globals_3344.y) + _64.w), 0.5f), (Globals_976), int2(0, 0)))).x)) / _64.z) * _64.z;
  _87 = _86 * (Globals_3344.x);
  _88 = _87 * ((_64.x * 2.0f) + -1.0f);
  _89 = _87 * ((_64.y * 2.0f) + -1.0f);
  _90 = _56 - _88;
  _91 = _57 - _89;
  _94 = (Globals_3344.z) + 1.0f;
  _97 = _58 - (_94 * _88);
  _98 = _59 - (_94 * _89);
  _101 = 1.0f - (Globals_3344.z);
  _104 = _60 - (_101 * _88);
  _105 = _61 - (_101 * _89);
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _117 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _119 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _123 = dot(float2(_117, _119), float2(_117, _119)) * -0.3333333432674408f;
    _125 = (_123 * _117) * UberPostBaseCBuffer_192.z;
    _127 = (_123 * _119) * UberPostBaseCBuffer_192.z;
    _129 = rsqrt(dot(float3(_125, _127, 9.999999747378752e-05f), float3(_125, _127, 9.999999747378752e-05f)));
    _136 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _141 = exp2(log2(sqrt((_125 * _125) + (_127 * _127)) / _136) * UberPostBaseCBuffer_384.z);
    _143 = ((_125 * _129) * _136) * _141;
    _145 = ((_127 * _129) * _136) * _141;
    _154 = t1.SampleBias(s0, float2(((_90 + TEXCOORD.x) + (_143 * UberPostBaseCBuffer_400.w)), ((_91 + TEXCOORD.y) + (_145 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _164 = t1.SampleBias(s0, float2(((_97 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _143)), ((_98 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _145))), (Globals_976), int2(0, 0));
    _174 = t1.SampleBias(s0, float2(((_104 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _143)), ((_105 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _145))), (Globals_976), int2(0, 0));
    _233 = (((float4)(t1.SampleBias(s0, float2(_54, _55), (Globals_976), int2(0, 0)))).w);
    _234 = (((UberPostBaseCBuffer_416.x * _164.y) + (UberPostBaseCBuffer_400.x * _154.x)) + (UberPostBaseCBuffer_432.x * _174.z));
    _235 = (((UberPostBaseCBuffer_416.y * _164.y) + (UberPostBaseCBuffer_400.y * _154.x)) + (UberPostBaseCBuffer_432.y * _174.z));
    _236 = (((UberPostBaseCBuffer_416.z * _164.y) + (UberPostBaseCBuffer_400.z * _154.x)) + (UberPostBaseCBuffer_432.z * _174.z));
  } else {
    if (UberPostBaseCBuffer_176.w > 0.0f) {
      _225 = (((float4)(t1.SampleBias(s0, float2((_90 + TEXCOORD.x), (_91 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).x);
      _226 = (((float4)(t1.SampleBias(s0, float2((_97 + TEXCOORD.x), (_98 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).y);
      _227 = (((float4)(t1.SampleBias(s0, float2((_104 + TEXCOORD.x), (_105 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).z);
    } else {
      _220 = t1.SampleBias(s0, float2(_54, _55), (Globals_976), int2(0, 0));
      _225 = _220.x;
      _226 = _220.y;
      _227 = _220.z;
    }
    _233 = (((float4)(t1.SampleBias(s0, float2(_54, _55), (Globals_976), int2(0, 0)))).w);
    _234 = _225;
    _235 = _226;
    _236 = _227;
  }
  _243 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _243)) {
    _253 = fmod((((Globals_2208.y) * _55) * UberPostBaseCBuffer_448.x), 2.0f);
    _261 = (((select((_253 > 1.0f), (2.0f - _253), _253) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _54;
    _264 = (Globals_2208.w) * (Globals_2208.x);
    _285 = t8.SampleBias(s3, float2(_261, ((select(((frac((((_261 + abs(UberPostBaseCBuffer_464.y)) * _264) - (UberPostBaseCBuffer_464.y * _55)) / ((_264 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _55)), (Globals_976), int2(0, 0));
    _322 = ((((-0.699999988079071f - _285.x) + (exp2(log2(abs(_285.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_285.x < 0.30000001192092896f), 0.0f, 1.0f)) + _285.x) * UberPostBaseCBuffer_336.x;
    _323 = ((((-0.699999988079071f - _285.y) + (exp2(log2(abs(_285.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_285.y < 0.30000001192092896f), 0.0f, 1.0f)) + _285.y) * UberPostBaseCBuffer_336.x;
    _324 = ((((-0.699999988079071f - _285.z) + (exp2(log2(abs(_285.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_285.z < 0.30000001192092896f), 0.0f, 1.0f)) + _285.z) * UberPostBaseCBuffer_336.x;
    _325 = dot(float3(_234, _235, _236), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _328 = (UberPostBaseCBuffer_352.x > 0.5f);
    _341 = select(_328, ((((_322 * _325) - _322) * _233) + _322), _322);
    _342 = select(_328, ((((_323 * _325) - _323) * _233) + _323), _323);
    _343 = select(_328, ((((_324 * _325) - _324) * _233) + _324), _324);
    if (_243) {
      _354 = t9.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _54) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _55) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _368 = (((_354.x * _322) * UberPostBaseCBuffer_336.y) + _341);
      _369 = (((_354.y * _323) * UberPostBaseCBuffer_336.y) + _342);
      _370 = (((_354.z * _324) * UberPostBaseCBuffer_336.y) + _343);
    } else {
      _368 = _341;
      _369 = _342;
      _370 = _343;
    }
    _374 = (_86 * (Globals_3344.w)) + 1.0f;
    _387 = ((_374 * _234) + _368);
    _388 = ((_374 * _235) + _369);
    _389 = ((_374 * _236) + _370);
    _390 = saturate((((_369 + _368) + _370) * 0.33329999446868896f) + _233);
  } else {
    _387 = _234;
    _388 = _235;
    _389 = _236;
    _390 = _233;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _407 = abs(_55 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _409 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_54 - UberPostBaseCBuffer_112.x);
    _415 = exp2(log2(saturate(1.0f - dot(float2(_409, _407), float2(_409, _407)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _429 = (((_415 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _387);
    _430 = (((_415 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _388);
    _431 = (((_415 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _389);
  } else {
    _429 = _387;
    _430 = _388;
    _431 = _389;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_429, _430, _431);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t3, s0, UberPostBaseCBuffer_000.xyz);
    _480 = tonemapped.x;
    _481 = tonemapped.y;
    _482 = tonemapped.z;
  } else {
    _454 = saturate((log2((_431 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _455 = floor(_454);
    _461 = ((saturate((log2((_430 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _463 = (_455 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_429 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _464 = _454 - _455;
    _466 = t3.SampleLevel(s0, float2((_463 + UberPostBaseCBuffer_000.y), _461), 0.0f);
    _470 = t3.SampleLevel(s0, float2(_463, _461), 0.0f);
    _480 = ((_466.x - _470.x) * _464) + _470.x;
    _481 = ((_466.y - _470.y) * _464) + _470.y;
    _482 = ((_466.z - _470.z) * _464) + _470.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _502 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _506 = 1.0f - (sqrt(dot(float3(_480, _481, _482), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _520 = ((((UberPostBaseCBuffer_208.x * _480) * _502) * _506) + _480);
    _521 = ((((UberPostBaseCBuffer_208.x * _481) * _502) * _506) + _481);
    _522 = ((((UberPostBaseCBuffer_208.x * _482) * _502) * _506) + _482);
  } else {
    _520 = _480;
    _521 = _481;
    _522 = _482;
  }
  _527 = ((_521 + _520) + _522) * 0.3333333432674408f;
  _534 = ((_520 - _527) * UberPostFXColorCorrectionCBuffer_000.w) + _527;
  _535 = ((_521 - _527) * UberPostFXColorCorrectionCBuffer_000.w) + _527;
  _536 = ((_522 - _527) * UberPostFXColorCorrectionCBuffer_000.w) + _527;
  if ((Globals_816[3].w) > 0.5f) {
    _544 = t0.SampleBias(s0, float2(dot(float3(_534, _535, _536), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _549 = _544.x;
    _550 = _544.y;
    _551 = _544.z;
  } else {
    _549 = _534;
    _550 = _535;
    _551 = _536;
  }
  _566 = (((1.0f - _549) - saturate(_549)) * UberPostFXColorCorrectionCBuffer_016.w) + _549;
  _567 = (((1.0f - _550) - saturate(_550)) * UberPostFXColorCorrectionCBuffer_016.w) + _550;
  _568 = (((1.0f - _551) - saturate(_551)) * UberPostFXColorCorrectionCBuffer_016.w) + _551;
  _576 = saturate((saturate(dot(float3(_566, _567, _568), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _603 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _566) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _576)) * UberPostFXColorCorrectionCBuffer_032.x) + _566);
  // _604 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _567) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _576)) * UberPostFXColorCorrectionCBuffer_032.x) + _567);
  // _605 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _568) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _576)) * UberPostFXColorCorrectionCBuffer_032.x) + _568);
  _603 = ((((UberPostFXColorCorrectionCBuffer_000.x - _566) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _576)) * UberPostFXColorCorrectionCBuffer_032.x) + _566);
  _604 = ((((UberPostFXColorCorrectionCBuffer_000.y - _567) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _576)) * UberPostFXColorCorrectionCBuffer_032.x) + _567);
  _605 = ((((UberPostFXColorCorrectionCBuffer_000.z - _568) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _576)) * UberPostFXColorCorrectionCBuffer_032.x) + _568);

  // HDR FX Mask Blend
  float3 result = float3(_603, _604, _605);
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
  _680 = result.x;
  _681 = result.y;
  _682 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _611 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _680 = min((_611.x + _603), 1.0f);
        _681 = min((_611.x + _604), 1.0f);
        _682 = min((_611.x + _605), 1.0f);
      } else {
        _648 = select((_603 > 0.5f), 0.0f, 1.0f);
        _649 = select((_604 > 0.5f), 0.0f, 1.0f);
        _650 = select((_605 > 0.5f), 0.0f, 1.0f);
        _669 = 1.0f - _611.x;
        _680 = (((((1.0f - (((1.0f - _603) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _648)) + (((_603 * 2.0f) * _648) * UberPostFXColorCorrectionCBuffer_048.x)) * _611.x) + (_669 * _603));
        _681 = (((((1.0f - (((1.0f - _604) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _649)) + (((_604 * 2.0f) * _649) * UberPostFXColorCorrectionCBuffer_048.y)) * _611.x) + (_669 * _604));
        _682 = (((((1.0f - (((1.0f - _605) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _650)) + (((_605 * 2.0f) * _650) * UberPostFXColorCorrectionCBuffer_048.z)) * _611.x) + (_669 * _605));
      }
  } else {
    _680 = _603;
    _681 = _604;
    _682 = _605;
  }
  */

  SV_Target.x = _680;
  SV_Target.y = _681;
  SV_Target.z = _682;
  SV_Target.w = _390;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
