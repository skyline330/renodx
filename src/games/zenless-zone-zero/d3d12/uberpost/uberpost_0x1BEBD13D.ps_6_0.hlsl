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
  float _51;
  float _52;
  float _53;
  float _54;
  float _55;
  float _56;
  float _57;
  float _58;
  float _222;
  float _223;
  float _224;
  float _230;
  float _231;
  float _232;
  float _233;
  float _365;
  float _366;
  float _367;
  float _384;
  float _385;
  float _386;
  float _387;
  float _426;
  float _427;
  float _428;
  float _517;
  float _518;
  float _519;
  float4 _23;
  float _27;
  float _28;
  float _33;
  float _34;
  float4 _61;
  float _83;
  float _84;
  float _85;
  float _86;
  float _87;
  float _88;
  float _91;
  float _94;
  float _95;
  float _98;
  float _101;
  float _102;
  float _114;
  float _116;
  float _120;
  float _122;
  float _124;
  float _126;
  float _133;
  float _138;
  float _140;
  float _142;
  float4 _151;
  float4 _161;
  float4 _171;
  float4 _217;
  bool _240;
  float _250;
  float _258;
  float _261;
  float4 _282;
  float _319;
  float _320;
  float _321;
  float _322;
  bool _325;
  float _338;
  float _339;
  float _340;
  float4 _351;
  float _371;
  float _404;
  float _406;
  float _412;
  float _451;
  float _452;
  float _458;
  float _460;
  float _461;
  float4 _463;
  float4 _467;
  float _477;
  float _478;
  float _479;
  float _499;
  float _503;
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _23 = t5.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _27 = _23.x * 0.10000000149011612f;
    _28 = _23.y * 0.10000000149011612f;
    _33 = (_27 * _23.z) * UberPostBaseCBuffer_176.w;
    _34 = (_28 * _23.z) * UberPostBaseCBuffer_176.w;
    _51 = (_27 + TEXCOORD.x);
    _52 = (_28 + TEXCOORD.y);
    _53 = ((_33 * UberPostBaseCBuffer_176.x) + _27);
    _54 = ((_34 * UberPostBaseCBuffer_176.x) + _28);
    _55 = ((_33 * UberPostBaseCBuffer_176.y) + _27);
    _56 = ((_34 * UberPostBaseCBuffer_176.y) + _28);
    _57 = ((UberPostBaseCBuffer_176.z * _33) + _27);
    _58 = ((UberPostBaseCBuffer_176.z * _34) + _28);
  } else {
    _51 = TEXCOORD.x;
    _52 = TEXCOORD.y;
    _53 = 0.0f;
    _54 = 0.0f;
    _55 = 0.0f;
    _56 = 0.0f;
    _57 = 0.0f;
    _58 = 0.0f;
  }
  _61 = t3.SampleBias(s1, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
  _83 = saturate(((_61.z + -1.0f) + (((float4)(t4.SampleBias(s1, float2(((Globals_3344.y) + _61.w), 0.5f), (Globals_976), int2(0, 0)))).x)) / _61.z) * _61.z;
  _84 = _83 * (Globals_3344.x);
  _85 = _84 * ((_61.x * 2.0f) + -1.0f);
  _86 = _84 * ((_61.y * 2.0f) + -1.0f);
  _87 = _53 - _85;
  _88 = _54 - _86;
  _91 = (Globals_3344.z) + 1.0f;
  _94 = _55 - (_91 * _85);
  _95 = _56 - (_91 * _86);
  _98 = 1.0f - (Globals_3344.z);
  _101 = _57 - (_98 * _85);
  _102 = _58 - (_98 * _86);
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _114 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _116 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _120 = dot(float2(_114, _116), float2(_114, _116)) * -0.3333333432674408f;
    _122 = (_120 * _114) * UberPostBaseCBuffer_192.z;
    _124 = (_120 * _116) * UberPostBaseCBuffer_192.z;
    _126 = rsqrt(dot(float3(_122, _124, 9.999999747378752e-05f), float3(_122, _124, 9.999999747378752e-05f)));
    _133 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _138 = exp2(log2(sqrt((_122 * _122) + (_124 * _124)) / _133) * UberPostBaseCBuffer_384.z);
    _140 = ((_122 * _126) * _133) * _138;
    _142 = ((_124 * _126) * _133) * _138;
    _151 = t0.SampleBias(s0, float2(((_87 + TEXCOORD.x) + (_140 * UberPostBaseCBuffer_400.w)), ((_88 + TEXCOORD.y) + (_142 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _161 = t0.SampleBias(s0, float2(((_94 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _140)), ((_95 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _142))), (Globals_976), int2(0, 0));
    _171 = t0.SampleBias(s0, float2(((_101 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _140)), ((_102 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _142))), (Globals_976), int2(0, 0));
    _230 = (((float4)(t0.SampleBias(s0, float2(_51, _52), (Globals_976), int2(0, 0)))).w);
    _231 = (((UberPostBaseCBuffer_416.x * _161.y) + (UberPostBaseCBuffer_400.x * _151.x)) + (UberPostBaseCBuffer_432.x * _171.z));
    _232 = (((UberPostBaseCBuffer_416.y * _161.y) + (UberPostBaseCBuffer_400.y * _151.x)) + (UberPostBaseCBuffer_432.y * _171.z));
    _233 = (((UberPostBaseCBuffer_416.z * _161.y) + (UberPostBaseCBuffer_400.z * _151.x)) + (UberPostBaseCBuffer_432.z * _171.z));
  } else {
    if (UberPostBaseCBuffer_176.w > 0.0f) {
      _222 = (((float4)(t0.SampleBias(s0, float2((_87 + TEXCOORD.x), (_88 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).x);
      _223 = (((float4)(t0.SampleBias(s0, float2((_94 + TEXCOORD.x), (_95 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).y);
      _224 = (((float4)(t0.SampleBias(s0, float2((_101 + TEXCOORD.x), (_102 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).z);
    } else {
      _217 = t0.SampleBias(s0, float2(_51, _52), (Globals_976), int2(0, 0));
      _222 = _217.x;
      _223 = _217.y;
      _224 = _217.z;
    }
    _230 = (((float4)(t0.SampleBias(s0, float2(_51, _52), (Globals_976), int2(0, 0)))).w);
    _231 = _222;
    _232 = _223;
    _233 = _224;
  }
  _240 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _240)) {
    _250 = fmod((((Globals_2208.y) * _52) * UberPostBaseCBuffer_448.x), 2.0f);
    _258 = (((select((_250 > 1.0f), (2.0f - _250), _250) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _51;
    _261 = (Globals_2208.w) * (Globals_2208.x);
    _282 = t6.SampleBias(s3, float2(_258, ((select(((frac((((_258 + abs(UberPostBaseCBuffer_464.y)) * _261) - (UberPostBaseCBuffer_464.y * _52)) / ((_261 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _52)), (Globals_976), int2(0, 0));
    _319 = ((((-0.699999988079071f - _282.x) + (exp2(log2(abs(_282.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_282.x < 0.30000001192092896f), 0.0f, 1.0f)) + _282.x) * UberPostBaseCBuffer_336.x;
    _320 = ((((-0.699999988079071f - _282.y) + (exp2(log2(abs(_282.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_282.y < 0.30000001192092896f), 0.0f, 1.0f)) + _282.y) * UberPostBaseCBuffer_336.x;
    _321 = ((((-0.699999988079071f - _282.z) + (exp2(log2(abs(_282.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_282.z < 0.30000001192092896f), 0.0f, 1.0f)) + _282.z) * UberPostBaseCBuffer_336.x;
    _322 = dot(float3(_231, _232, _233), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _325 = (UberPostBaseCBuffer_352.x > 0.5f);
    _338 = select(_325, ((((_319 * _322) - _319) * _230) + _319), _319);
    _339 = select(_325, ((((_320 * _322) - _320) * _230) + _320), _320);
    _340 = select(_325, ((((_321 * _322) - _321) * _230) + _321), _321);
    if (_240) {
      _351 = t7.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _51) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _52) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _365 = (((_351.x * _319) * UberPostBaseCBuffer_336.y) + _338);
      _366 = (((_351.y * _320) * UberPostBaseCBuffer_336.y) + _339);
      _367 = (((_351.z * _321) * UberPostBaseCBuffer_336.y) + _340);
    } else {
      _365 = _338;
      _366 = _339;
      _367 = _340;
    }
    _371 = (_83 * (Globals_3344.w)) + 1.0f;
    _384 = ((_371 * _231) + _365);
    _385 = ((_371 * _232) + _366);
    _386 = ((_371 * _233) + _367);
    _387 = saturate((((_366 + _365) + _367) * 0.33329999446868896f) + _230);
  } else {
    _384 = _231;
    _385 = _232;
    _386 = _233;
    _387 = _230;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _404 = abs(_52 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _406 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_51 - UberPostBaseCBuffer_112.x);
    _412 = exp2(log2(saturate(1.0f - dot(float2(_406, _404), float2(_406, _404)))) * UberPostBaseCBuffer_112.w) * max(1.f, CUSTOM_VIGNETTE);
    _426 = (((_412 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _384);
    _427 = (((_412 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _385);
    _428 = (((_412 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _386);
  } else {
    _426 = _384;
    _427 = _385;
    _428 = _386;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_426, _427, _428);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t2, s0, UberPostBaseCBuffer_000.xyz);
    _477 = tonemapped.x;
    _478 = tonemapped.y;
    _479 = tonemapped.z;
  } else {
    _451 = saturate((log2((_428 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _452 = floor(_451);
    _458 = ((saturate((log2((_427 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _460 = (_452 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_426 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _461 = _451 - _452;
    _463 = t2.SampleLevel(s0, float2((_460 + UberPostBaseCBuffer_000.y), _458), 0.0f);
    _467 = t2.SampleLevel(s0, float2(_460, _458), 0.0f);
    _477 = ((_463.x - _467.x) * _461) + _467.x;
    _478 = ((_463.y - _467.y) * _461) + _467.y;
    _479 = ((_463.z - _467.z) * _461) + _467.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _499 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _503 = 1.0f - (sqrt(dot(float3(_477, _478, _479), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _517 = ((((UberPostBaseCBuffer_208.x * _477) * _499) * _503) + _477);
    _518 = ((((UberPostBaseCBuffer_208.x * _478) * _499) * _503) + _478);
    _519 = ((((UberPostBaseCBuffer_208.x * _479) * _499) * _503) + _479);
  } else {
    _517 = _477;
    _518 = _478;
    _519 = _479;
  }
  SV_Target.x = (_517);
  SV_Target.y = (_518);
  SV_Target.z = (_519);
  SV_Target.w = _387;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
