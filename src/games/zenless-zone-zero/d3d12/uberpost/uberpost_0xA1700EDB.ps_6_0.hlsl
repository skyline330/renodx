#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t6 : register(t6);

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
  bool _19;
  float _51;
  float _52;
  float _53;
  float _54;
  float _55;
  float _56;
  float _57;
  float _58;
  float _175;
  float _176;
  float _177;
  float _183;
  float _184;
  float _185;
  float _186;
  float _318;
  float _319;
  float _320;
  float _330;
  float _331;
  float _332;
  float _333;
  float _372;
  float _373;
  float _374;
  float _412;
  float _413;
  float _414;
  float _441;
  float _442;
  float _443;
  float _572;
  float _573;
  float _574;
  float4 _23;
  float _27;
  float _28;
  float _33;
  float _34;
  float _70;
  float _72;
  float _76;
  float _78;
  float _80;
  float _82;
  float _89;
  float _94;
  float _96;
  float _98;
  float4 _107;
  float4 _117;
  float4 _127;
  float4 _170;
  bool _193;
  float _203;
  float _211;
  float _214;
  float4 _235;
  float _272;
  float _273;
  float _274;
  float _275;
  bool _278;
  float _291;
  float _292;
  float _293;
  float4 _304;
  float _350;
  float _352;
  float _358;
  float _394;
  float _398;
  float _419;
  float _426;
  float _427;
  float _428;
  float4 _436;
  float _458;
  float _459;
  float _460;
  float _468;
  float _495;
  float _496;
  float _497;
  float4 _503;
  float _540;
  float _541;
  float _542;
  float _561;
  _19 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_19) {
    _23 = t4.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
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
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _70 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _72 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _76 = dot(float2(_70, _72), float2(_70, _72)) * -0.3333333432674408f;
    _78 = (_76 * _70) * UberPostBaseCBuffer_192.z;
    _80 = (_76 * _72) * UberPostBaseCBuffer_192.z;
    _82 = rsqrt(dot(float3(_78, _80, 9.999999747378752e-05f), float3(_78, _80, 9.999999747378752e-05f)));
    _89 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _94 = exp2(log2(sqrt((_78 * _78) + (_80 * _80)) / _89) * UberPostBaseCBuffer_384.z);
    _96 = ((_78 * _82) * _89) * _94;
    _98 = ((_80 * _82) * _89) * _94;
    _107 = t1.SampleBias(s0, float2(((_53 + TEXCOORD.x) + (_96 * UberPostBaseCBuffer_400.w)), ((_54 + TEXCOORD.y) + (_98 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _117 = t1.SampleBias(s0, float2(((_55 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _96)), ((_56 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _98))), (Globals_976), int2(0, 0));
    _127 = t1.SampleBias(s0, float2(((_57 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _96)), ((_58 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _98))), (Globals_976), int2(0, 0));
    _183 = (((float4)(t1.SampleBias(s0, float2(_51, _52), (Globals_976), int2(0, 0)))).w);
    _184 = (((UberPostBaseCBuffer_416.x * _117.y) + (UberPostBaseCBuffer_400.x * _107.x)) + (UberPostBaseCBuffer_432.x * _127.z));
    _185 = (((UberPostBaseCBuffer_416.y * _117.y) + (UberPostBaseCBuffer_400.y * _107.x)) + (UberPostBaseCBuffer_432.y * _127.z));
    _186 = (((UberPostBaseCBuffer_416.z * _117.y) + (UberPostBaseCBuffer_400.z * _107.x)) + (UberPostBaseCBuffer_432.z * _127.z));
  } else {
    if (_19) {
      _175 = (((float4)(t1.SampleBias(s0, float2((_53 + TEXCOORD.x), (_54 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).x);
      _176 = (((float4)(t1.SampleBias(s0, float2((_55 + TEXCOORD.x), (_56 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).y);
      _177 = (((float4)(t1.SampleBias(s0, float2((_57 + TEXCOORD.x), (_58 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).z);
    } else {
      _170 = t1.SampleBias(s0, float2(_51, _52), (Globals_976), int2(0, 0));
      _175 = _170.x;
      _176 = _170.y;
      _177 = _170.z;
    }
    _183 = (((float4)(t1.SampleBias(s0, float2(_51, _52), (Globals_976), int2(0, 0)))).w);
    _184 = _175;
    _185 = _176;
    _186 = _177;
  }
  _193 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _193)) {
    _203 = fmod((((Globals_2208.y) * _52) * UberPostBaseCBuffer_448.x), 2.0f);
    _211 = (((select((_203 > 1.0f), (2.0f - _203), _203) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _51;
    _214 = (Globals_2208.w) * (Globals_2208.x);
    _235 = t5.SampleBias(s3, float2(_211, ((select(((frac((((_211 + abs(UberPostBaseCBuffer_464.y)) * _214) - (UberPostBaseCBuffer_464.y * _52)) / ((_214 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _52)), (Globals_976), int2(0, 0));
    _272 = ((((-0.699999988079071f - _235.x) + (exp2(log2(abs(_235.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_235.x < 0.30000001192092896f), 0.0f, 1.0f)) + _235.x) * UberPostBaseCBuffer_336.x;
    _273 = ((((-0.699999988079071f - _235.y) + (exp2(log2(abs(_235.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_235.y < 0.30000001192092896f), 0.0f, 1.0f)) + _235.y) * UberPostBaseCBuffer_336.x;
    _274 = ((((-0.699999988079071f - _235.z) + (exp2(log2(abs(_235.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_235.z < 0.30000001192092896f), 0.0f, 1.0f)) + _235.z) * UberPostBaseCBuffer_336.x;
    _275 = dot(float3(_184, _185, _186), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _278 = (UberPostBaseCBuffer_352.x > 0.5f);
    _291 = select(_278, ((((_272 * _275) - _272) * _183) + _272), _272);
    _292 = select(_278, ((((_273 * _275) - _273) * _183) + _273), _273);
    _293 = select(_278, ((((_274 * _275) - _274) * _183) + _274), _274);
    if (_193) {
      _304 = t6.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _51) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _52) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _318 = (((_304.x * _272) * UberPostBaseCBuffer_336.y) + _291);
      _319 = (((_304.y * _273) * UberPostBaseCBuffer_336.y) + _292);
      _320 = (((_304.z * _274) * UberPostBaseCBuffer_336.y) + _293);
    } else {
      _318 = _291;
      _319 = _292;
      _320 = _293;
    }
    _330 = (_318 + _184);
    _331 = (_319 + _185);
    _332 = (_320 + _186);
    _333 = saturate((((_319 + _318) + _320) * 0.33329999446868896f) + _183);
  } else {
    _330 = _184;
    _331 = _185;
    _332 = _186;
    _333 = _183;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _350 = abs(_52 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z;
    _352 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_51 - UberPostBaseCBuffer_112.x);
    _358 = exp2(log2(saturate(1.0f - dot(float2(_352, _350), float2(_352, _350)))) * UberPostBaseCBuffer_112.w);
    _372 = (((_358 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _330);
    _373 = (((_358 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _331);
    _374 = (((_358 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _332);
  } else {
    _372 = _330;
    _373 = _331;
    _374 = _332;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_372, _373, _374);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _372 = tonemapped.x;
    _373 = tonemapped.y;
    _374 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _394 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _398 = 1.0f - (sqrt(dot(float3(_372, _373, _374), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _412 = ((((UberPostBaseCBuffer_208.x * _372) * _394) * _398) + _372);
    _413 = ((((UberPostBaseCBuffer_208.x * _373) * _394) * _398) + _373);
    _414 = ((((UberPostBaseCBuffer_208.x * _374) * _394) * _398) + _374);
  } else {
    _412 = _372;
    _413 = _373;
    _414 = _374;
  }
  _419 = ((_413 + _412) + _414) * 0.3333333432674408f;
  _426 = ((_412 - _419) * UberPostFXColorCorrectionCBuffer_000.w) + _419;
  _427 = ((_413 - _419) * UberPostFXColorCorrectionCBuffer_000.w) + _419;
  _428 = ((_414 - _419) * UberPostFXColorCorrectionCBuffer_000.w) + _419;
  if ((Globals_816[3].w) > 0.5f) {
    _436 = t0.SampleBias(s0, float2(dot(float3(_426, _427, _428), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _441 = _436.x;
    _442 = _436.y;
    _443 = _436.z;
  } else {
    _441 = _426;
    _442 = _427;
    _443 = _428;
  }
  _458 = (((1.0f - _441) - saturate(_441)) * UberPostFXColorCorrectionCBuffer_016.w) + _441;
  _459 = (((1.0f - _442) - saturate(_442)) * UberPostFXColorCorrectionCBuffer_016.w) + _442;
  _460 = (((1.0f - _443) - saturate(_443)) * UberPostFXColorCorrectionCBuffer_016.w) + _443;
  _468 = saturate((saturate(dot(float3(_458, _459, _460), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _495 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _458) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _468)) * UberPostFXColorCorrectionCBuffer_032.x) + _458);
  // _496 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _459) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _468)) * UberPostFXColorCorrectionCBuffer_032.x) + _459);
  // _497 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _460) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _468)) * UberPostFXColorCorrectionCBuffer_032.x) + _460);
  _495 = ((((UberPostFXColorCorrectionCBuffer_000.x - _458) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _468)) * UberPostFXColorCorrectionCBuffer_032.x) + _458);
  _496 = ((((UberPostFXColorCorrectionCBuffer_000.y - _459) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _468)) * UberPostFXColorCorrectionCBuffer_032.x) + _459);
  _497 = ((((UberPostFXColorCorrectionCBuffer_000.z - _460) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _468)) * UberPostFXColorCorrectionCBuffer_032.x) + _460);

  // HDR FX Mask Blend
  float3 result = float3(_495, _496, _497);
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    float m = smoothstep(0.0f, 1.0f, t3.Sample(s0, TEXCOORD).x);

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
  _572 = result.x;
  _573 = result.y;
  _574 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _503 = t3.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _572 = min((_503.x + _495), 1.0f);
        _573 = min((_503.x + _496), 1.0f);
        _574 = min((_503.x + _497), 1.0f);
      } else {
        _540 = select((_495 > 0.5f), 0.0f, 1.0f);
        _541 = select((_496 > 0.5f), 0.0f, 1.0f);
        _542 = select((_497 > 0.5f), 0.0f, 1.0f);
        _561 = 1.0f - _503.x;
        _572 = (((((1.0f - (((1.0f - _495) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _540)) + (((_495 * 2.0f) * _540) * UberPostFXColorCorrectionCBuffer_048.x)) * _503.x) + (_561 * _495));
        _573 = (((((1.0f - (((1.0f - _496) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _541)) + (((_496 * 2.0f) * _541) * UberPostFXColorCorrectionCBuffer_048.y)) * _503.x) + (_561 * _496));
        _574 = (((((1.0f - (((1.0f - _497) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _542)) + (((_497 * 2.0f) * _542) * UberPostFXColorCorrectionCBuffer_048.z)) * _503.x) + (_561 * _497));
      }
  } else {
    _572 = _495;
    _573 = _496;
    _574 = _497;
  }
  */

  SV_Target.x = _572;
  SV_Target.y = _573;
  SV_Target.z = _574;
  SV_Target.w = _333;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
