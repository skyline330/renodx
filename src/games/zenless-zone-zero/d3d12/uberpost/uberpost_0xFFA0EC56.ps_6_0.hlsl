#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

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
  bool _16;
  float _48;
  float _49;
  float _50;
  float _51;
  float _52;
  float _53;
  float _54;
  float _55;
  float _172;
  float _173;
  float _174;
  float _180;
  float _181;
  float _182;
  float _183;
  float _315;
  float _316;
  float _317;
  float _327;
  float _328;
  float _329;
  float _330;
  float _369;
  float _370;
  float _371;
  float _409;
  float _410;
  float _411;
  float4 _20;
  float _24;
  float _25;
  float _30;
  float _31;
  float _67;
  float _69;
  float _73;
  float _75;
  float _77;
  float _79;
  float _86;
  float _91;
  float _93;
  float _95;
  float4 _104;
  float4 _114;
  float4 _124;
  float4 _167;
  bool _190;
  float _200;
  float _208;
  float _211;
  float4 _232;
  float _269;
  float _270;
  float _271;
  float _272;
  bool _275;
  float _288;
  float _289;
  float _290;
  float4 _301;
  float _347;
  float _349;
  float _355;
  float _391;
  float _395;
  _16 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_16) {
    _20 = t2.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _24 = _20.x * 0.10000000149011612f;
    _25 = _20.y * 0.10000000149011612f;
    _30 = (_24 * _20.z) * UberPostBaseCBuffer_176.w;
    _31 = (_25 * _20.z) * UberPostBaseCBuffer_176.w;
    _48 = (_24 + TEXCOORD.x);
    _49 = (_25 + TEXCOORD.y);
    _50 = ((_30 * UberPostBaseCBuffer_176.x) + _24);
    _51 = ((_31 * UberPostBaseCBuffer_176.x) + _25);
    _52 = ((_30 * UberPostBaseCBuffer_176.y) + _24);
    _53 = ((_31 * UberPostBaseCBuffer_176.y) + _25);
    _54 = ((UberPostBaseCBuffer_176.z * _30) + _24);
    _55 = ((UberPostBaseCBuffer_176.z * _31) + _25);
  } else {
    _48 = TEXCOORD.x;
    _49 = TEXCOORD.y;
    _50 = 0.0f;
    _51 = 0.0f;
    _52 = 0.0f;
    _53 = 0.0f;
    _54 = 0.0f;
    _55 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _67 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _69 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _73 = dot(float2(_67, _69), float2(_67, _69)) * -0.3333333432674408f;
    _75 = (_73 * _67) * UberPostBaseCBuffer_192.z;
    _77 = (_73 * _69) * UberPostBaseCBuffer_192.z;
    _79 = rsqrt(dot(float3(_75, _77, 9.999999747378752e-05f), float3(_75, _77, 9.999999747378752e-05f)));
    _86 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _91 = exp2(log2(sqrt((_75 * _75) + (_77 * _77)) / _86) * UberPostBaseCBuffer_384.z);
    _93 = ((_75 * _79) * _86) * _91;
    _95 = ((_77 * _79) * _86) * _91;
    _104 = t0.SampleBias(s0, float2(((_50 + TEXCOORD.x) + (_93 * UberPostBaseCBuffer_400.w)), ((_51 + TEXCOORD.y) + (_95 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _114 = t0.SampleBias(s0, float2(((_52 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _93)), ((_53 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _95))), (Globals_976), int2(0, 0));
    _124 = t0.SampleBias(s0, float2(((_54 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _93)), ((_55 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _95))), (Globals_976), int2(0, 0));
    _180 = (((float4)(t0.SampleBias(s0, float2(_48, _49), (Globals_976), int2(0, 0)))).w);
    _181 = (((UberPostBaseCBuffer_416.x * _114.y) + (UberPostBaseCBuffer_400.x * _104.x)) + (UberPostBaseCBuffer_432.x * _124.z));
    _182 = (((UberPostBaseCBuffer_416.y * _114.y) + (UberPostBaseCBuffer_400.y * _104.x)) + (UberPostBaseCBuffer_432.y * _124.z));
    _183 = (((UberPostBaseCBuffer_416.z * _114.y) + (UberPostBaseCBuffer_400.z * _104.x)) + (UberPostBaseCBuffer_432.z * _124.z));
  } else {
    if (_16) {
      _172 = (((float4)(t0.SampleBias(s0, float2((_50 + TEXCOORD.x), (_51 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).x);
      _173 = (((float4)(t0.SampleBias(s0, float2((_52 + TEXCOORD.x), (_53 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).y);
      _174 = (((float4)(t0.SampleBias(s0, float2((_54 + TEXCOORD.x), (_55 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).z);
    } else {
      _167 = t0.SampleBias(s0, float2(_48, _49), (Globals_976), int2(0, 0));
      _172 = _167.x;
      _173 = _167.y;
      _174 = _167.z;
    }
    _180 = (((float4)(t0.SampleBias(s0, float2(_48, _49), (Globals_976), int2(0, 0)))).w);
    _181 = _172;
    _182 = _173;
    _183 = _174;
  }
  _190 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _190)) {
    _200 = fmod((((Globals_2208.y) * _49) * UberPostBaseCBuffer_448.x), 2.0f);
    _208 = (((select((_200 > 1.0f), (2.0f - _200), _200) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _48;
    _211 = (Globals_2208.w) * (Globals_2208.x);
    _232 = t3.SampleBias(s3, float2(_208, ((select(((frac((((_208 + abs(UberPostBaseCBuffer_464.y)) * _211) - (UberPostBaseCBuffer_464.y * _49)) / ((_211 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _49)), (Globals_976), int2(0, 0));
    _269 = ((((-0.699999988079071f - _232.x) + (exp2(log2(abs(_232.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_232.x < 0.30000001192092896f), 0.0f, 1.0f)) + _232.x) * UberPostBaseCBuffer_336.x;
    _270 = ((((-0.699999988079071f - _232.y) + (exp2(log2(abs(_232.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_232.y < 0.30000001192092896f), 0.0f, 1.0f)) + _232.y) * UberPostBaseCBuffer_336.x;
    _271 = ((((-0.699999988079071f - _232.z) + (exp2(log2(abs(_232.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_232.z < 0.30000001192092896f), 0.0f, 1.0f)) + _232.z) * UberPostBaseCBuffer_336.x;
    _272 = dot(float3(_181, _182, _183), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _275 = (UberPostBaseCBuffer_352.x > 0.5f);
    _288 = select(_275, ((((_269 * _272) - _269) * _180) + _269), _269);
    _289 = select(_275, ((((_270 * _272) - _270) * _180) + _270), _270);
    _290 = select(_275, ((((_271 * _272) - _271) * _180) + _271), _271);
    if (_190) {
      _301 = t4.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _48) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _49) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _315 = (((_301.x * _269) * UberPostBaseCBuffer_336.y) + _288);
      _316 = (((_301.y * _270) * UberPostBaseCBuffer_336.y) + _289);
      _317 = (((_301.z * _271) * UberPostBaseCBuffer_336.y) + _290);
    } else {
      _315 = _288;
      _316 = _289;
      _317 = _290;
    }
    _327 = (_315 + _181);
    _328 = (_316 + _182);
    _329 = (_317 + _183);
    _330 = saturate((((_316 + _315) + _317) * 0.33329999446868896f) + _180);
  } else {
    _327 = _181;
    _328 = _182;
    _329 = _183;
    _330 = _180;
  }
  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _347 = abs(_49 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _349 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_48 - UberPostBaseCBuffer_112.x);
    _355 = exp2(log2(saturate(1.0f - dot(float2(_349, _347), float2(_349, _347)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _369 = (((_355 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _327);
    _370 = (((_355 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _328);
    _371 = (((_355 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _329);
  } else {
    _369 = _327;
    _370 = _328;
    _371 = _329;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_369, _370, _371);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _369 = tonemapped.x;
    _370 = tonemapped.y;
    _371 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _391 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _395 = 1.0f - (sqrt(dot(float3(_369, _370, _371), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _409 = ((((UberPostBaseCBuffer_208.x * _369) * _391) * _395) + _369);
    _410 = ((((UberPostBaseCBuffer_208.x * _370) * _391) * _395) + _370);
    _411 = ((((UberPostBaseCBuffer_208.x * _371) * _391) * _395) + _371);
  } else {
    _409 = _369;
    _410 = _370;
    _411 = _371;
  }
  SV_Target.x = (_409);
  SV_Target.y = (_410);
  SV_Target.z = (_411);
  SV_Target.w = _330;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
