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

SamplerState s4 : register(s4);

SamplerState s5 : register(s5);

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
  float _58;
  float _59;
  float _60;
  float _61;
  float _62;
  float _63;
  float _64;
  float _65;
  float _164;
  float _165;
  float _166;
  float _195;
  float _196;
  float _197;
  float _306;
  float _307;
  float _308;
  float _494;
  float _495;
  float _496;
  float _506;
  float _507;
  float _508;
  float _509;
  float _548;
  float _549;
  float _550;
  float _637;
  float _638;
  float _639;
  float4 _30;
  float _34;
  float _35;
  float _40;
  float _41;
  float _68;
  float _77;
  float _87;
  float _90;
  float _91;
  float _98;
  float _99;
  float _100;
  float _102;
  float _104;
  float _106;
  float _115;
  float _128;
  float _135;
  float _142;
  float _143;
  float _144;
  float4 _158;
  float4 _189;
  float _203;
  float _204;
  float _207;
  float _208;
  float _211;
  float _212;
  float4 _213;
  float _221;
  float _223;
  float _227;
  float _229;
  float _231;
  float _233;
  float _240;
  float _245;
  float _247;
  float _249;
  float4 _256;
  float4 _264;
  float4 _272;
  float4 _321;
  float _333;
  float _334;
  float _347;
  float _352;
  float _362;
  float _363;
  float _364;
  bool _371;
  float _381;
  float _389;
  float _392;
  float4 _411;
  float _448;
  float _449;
  float _450;
  float _451;
  bool _454;
  float _467;
  float _468;
  float _469;
  float4 _480;
  float _526;
  float _528;
  float _534;
  float _573;
  float _574;
  float _580;
  float _582;
  float _583;
  float4 _585;
  float4 _589;
  float _599;
  float _600;
  float _601;
  float _619;
  float _623;
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _30 = t3.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _34 = _30.x * 0.10000000149011612f;
    _35 = _30.y * 0.10000000149011612f;
    _40 = (_34 * _30.z) * UberPostBaseCBuffer_176.w;
    _41 = (_35 * _30.z) * UberPostBaseCBuffer_176.w;
    _58 = (_34 + TEXCOORD.x);
    _59 = (_35 + TEXCOORD.y);
    _60 = ((_40 * UberPostBaseCBuffer_176.x) + _34);
    _61 = ((_41 * UberPostBaseCBuffer_176.x) + _35);
    _62 = ((_40 * UberPostBaseCBuffer_176.y) + _34);
    _63 = ((_41 * UberPostBaseCBuffer_176.y) + _35);
    _64 = ((UberPostBaseCBuffer_176.z * _40) + _34);
    _65 = ((UberPostBaseCBuffer_176.z * _41) + _35);
  } else {
    _58 = TEXCOORD.x;
    _59 = TEXCOORD.y;
    _60 = 0.0f;
    _61 = 0.0f;
    _62 = 0.0f;
    _63 = 0.0f;
    _64 = 0.0f;
    _65 = 0.0f;
  }
  _68 = frac(Globals_208[1].x);
  _77 = (((float4)(t4.SampleBias(s3, float2((_68 + (TEXCOORD.x * 5.0f)), (_68 + (TEXCOORD.y * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _87 = ((_77 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_77 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _90 = cos(UberPostBaseCBuffer_224.w);
  _91 = sin(UberPostBaseCBuffer_224.w);
  _98 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _87;
  _99 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _87;
  _100 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _87;
  _102 = _98 * _91;
  _104 = _99 * _91;
  _106 = _100 * _91;
  _115 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + TEXCOORD.y);
  _128 = frac(_68 * 1234.0f);
  _135 = (((_128 * _128) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _128) + UberPostBaseCBuffer_256.x;
  _142 = select((_135 < (((float4)(t4.SampleBias(s3, float2(0.5f, (_115 + _102)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _143 = select((_135 < (((float4)(t4.SampleBias(s3, float2(0.5f, (_115 + _104)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _144 = select((_135 < (((float4)(t4.SampleBias(s3, float2(0.5f, (_115 + _106)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _158 = t5.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * TEXCOORD.x) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * TEXCOORD.y) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _164 = (_158.x * _142);
    _165 = (_158.x * _143);
    _166 = (_158.x * _144);
  } else {
    _164 = _142;
    _165 = _143;
    _166 = _144;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _189 = t5.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * TEXCOORD.x) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * TEXCOORD.y) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _195 = (_189.y * _164);
    _196 = (_189.y * _165);
    _197 = (_189.y * _166);
  } else {
    _195 = _164;
    _196 = _165;
    _197 = _166;
  }
  _203 = (_60 + TEXCOORD.x) + (_98 * _90);
  _204 = (_61 + TEXCOORD.y) + _102;
  _207 = (_62 + TEXCOORD.x) + (_99 * _90);
  _208 = (_63 + TEXCOORD.y) + _104;
  _211 = (_64 + TEXCOORD.x) + (_100 * _90);
  _212 = (_65 + TEXCOORD.y) + _106;
  _213 = t0.SampleBias(s0, float2(_58, _59), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _221 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _223 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _227 = dot(float2(_221, _223), float2(_221, _223)) * -0.3333333432674408f;
    _229 = (_227 * _221) * UberPostBaseCBuffer_192.z;
    _231 = (_227 * _223) * UberPostBaseCBuffer_192.z;
    _233 = rsqrt(dot(float3(_229, _231, 9.999999747378752e-05f), float3(_229, _231, 9.999999747378752e-05f)));
    _240 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _245 = exp2(log2(sqrt((_229 * _229) + (_231 * _231)) / _240) * UberPostBaseCBuffer_384.z);
    _247 = ((_229 * _233) * _240) * _245;
    _249 = ((_231 * _233) * _240) * _245;
    _256 = t0.SampleBias(s0, float2((_203 + (_247 * UberPostBaseCBuffer_400.w)), (_204 + (_249 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _264 = t0.SampleBias(s0, float2((_207 + (UberPostBaseCBuffer_416.w * _247)), (_208 + (UberPostBaseCBuffer_416.w * _249))), (Globals_976), int2(0, 0));
    _272 = t0.SampleBias(s0, float2((_211 + (UberPostBaseCBuffer_432.w * _247)), (_212 + (UberPostBaseCBuffer_432.w * _249))), (Globals_976), int2(0, 0));
    _306 = (((UberPostBaseCBuffer_416.x * _264.y) + (UberPostBaseCBuffer_400.x * _256.x)) + (UberPostBaseCBuffer_432.x * _272.z));
    _307 = (((UberPostBaseCBuffer_416.y * _264.y) + (UberPostBaseCBuffer_400.y * _256.x)) + (UberPostBaseCBuffer_432.y * _272.z));
    _308 = (((UberPostBaseCBuffer_416.z * _264.y) + (UberPostBaseCBuffer_400.z * _256.x)) + (UberPostBaseCBuffer_432.z * _272.z));
  } else {
    _306 = (((float4)(t0.SampleBias(s0, float2(_203, _204), (Globals_976), int2(0, 0)))).x);
    _307 = (((float4)(t0.SampleBias(s0, float2(_207, _208), (Globals_976), int2(0, 0)))).y);
    _308 = (((float4)(t0.SampleBias(s0, float2(_211, _212), (Globals_976), int2(0, 0)))).z);
  }
  _321 = t8.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * TEXCOORD.x) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * TEXCOORD.y) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _333 = frac((Globals_208[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  _334 = 0.4000000059604645f - _333;
  _347 = (UberPostBaseCBuffer_368.w * max(((select((_334 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_333 + 0.05000000074505806f) * 10.0f) - _334)) + _334), 0.0f)) + 1.0f;
  _352 = 1.0f - UberPostBaseCBuffer_368.z;
  _362 = (((((_321.x * 12.0f) * _347) * _352) + UberPostBaseCBuffer_368.z) * _306) + _195;
  _363 = (((((_321.y * 12.0f) * _347) * _352) + UberPostBaseCBuffer_368.z) * _307) + _196;
  _364 = (((((_321.z * 12.0f) * _347) * _352) + UberPostBaseCBuffer_368.z) * _308) + _197;
  _371 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _371)) {
    _381 = fmod((((Globals_2208.y) * _59) * UberPostBaseCBuffer_448.x), 2.0f);
    _389 = (((select((_381 > 1.0f), (2.0f - _381), _381) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _58;
    _392 = (Globals_2208.w) * (Globals_2208.x);
    _411 = t6.SampleBias(s5, float2(_389, ((select(((frac((((_389 + abs(UberPostBaseCBuffer_464.y)) * _392) - (UberPostBaseCBuffer_464.y * _59)) / ((_392 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _59)), (Globals_976), int2(0, 0));
    _448 = ((((-0.699999988079071f - _411.x) + (exp2(log2(abs(_411.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_411.x < 0.30000001192092896f), 0.0f, 1.0f)) + _411.x) * UberPostBaseCBuffer_336.x;
    _449 = ((((-0.699999988079071f - _411.y) + (exp2(log2(abs(_411.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_411.y < 0.30000001192092896f), 0.0f, 1.0f)) + _411.y) * UberPostBaseCBuffer_336.x;
    _450 = ((((-0.699999988079071f - _411.z) + (exp2(log2(abs(_411.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_411.z < 0.30000001192092896f), 0.0f, 1.0f)) + _411.z) * UberPostBaseCBuffer_336.x;
    _451 = dot(float3(_362, _363, _364), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _454 = (UberPostBaseCBuffer_352.x > 0.5f);
    _467 = select(_454, ((((_448 * _451) - _448) * _213.w) + _448), _448);
    _468 = select(_454, ((((_449 * _451) - _449) * _213.w) + _449), _449);
    _469 = select(_454, ((((_450 * _451) - _450) * _213.w) + _450), _450);
    if (_371) {
      _480 = t7.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _58) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _59) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _494 = (((_480.x * _448) * UberPostBaseCBuffer_336.y) + _467);
      _495 = (((_480.y * _449) * UberPostBaseCBuffer_336.y) + _468);
      _496 = (((_480.z * _450) * UberPostBaseCBuffer_336.y) + _469);
    } else {
      _494 = _467;
      _495 = _468;
      _496 = _469;
    }
    _506 = (_494 + _362);
    _507 = (_495 + _363);
    _508 = (_496 + _364);
    _509 = saturate((((_495 + _494) + _496) * 0.33329999446868896f) + _213.w);
  } else {
    _506 = _362;
    _507 = _363;
    _508 = _364;
    _509 = _213.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _526 = abs(_59 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _528 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_58 - UberPostBaseCBuffer_112.x);
    _534 = exp2(log2(saturate(1.0f - dot(float2(_528, _526), float2(_528, _526)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _548 = (((_534 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _506);
    _549 = (((_534 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _507);
    _550 = (((_534 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _508);
  } else {
    _548 = _506;
    _549 = _507;
    _550 = _508;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_548, _549, _550);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t2, s0, UberPostBaseCBuffer_000.xyz);
    _599 = tonemapped.x;
    _600 = tonemapped.y;
    _601 = tonemapped.z;
  } else {
    _573 = saturate((log2((_550 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _574 = floor(_573);
    _580 = ((saturate((log2((_549 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _582 = (_574 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_548 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _583 = _573 - _574;
    _585 = t2.SampleLevel(s0, float2((_582 + UberPostBaseCBuffer_000.y), _580), 0.0f);
    _589 = t2.SampleLevel(s0, float2(_582, _580), 0.0f);
    _599 = ((_585.x - _589.x) * _583) + _589.x;
    _600 = ((_585.y - _589.y) * _583) + _589.y;
    _601 = ((_585.z - _589.z) * _583) + _589.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _619 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _623 = 1.0f - (sqrt(dot(float3(_599, _600, _601), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _637 = ((((UberPostBaseCBuffer_208.x * _599) * _619) * _623) + _599);
    _638 = ((((UberPostBaseCBuffer_208.x * _600) * _619) * _623) + _600);
    _639 = ((((UberPostBaseCBuffer_208.x * _601) * _619) * _623) + _601);
  } else {
    _637 = _599;
    _638 = _600;
    _639 = _601;
  }
  SV_Target.x = (_637);
  SV_Target.y = (_638);
  SV_Target.z = (_639);
  SV_Target.w = _509;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
