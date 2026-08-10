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
  float4 UberPostScreenEffectsBaseCBuffer_000 : packoffset(c000.x);
  float4 UberPostScreenEffectsBaseCBuffer_016 : packoffset(c001.x);
  float4 UberPostScreenEffectsBaseCBuffer_032 : packoffset(c002.x);
  float4 UberPostScreenEffectsBaseCBuffer_048 : packoffset(c003.x);
  float4 UberPostScreenEffectsBaseCBuffer_064 : packoffset(c004.x);
  float4 UberPostScreenEffectsBaseCBuffer_080 : packoffset(c005.x);
  float4 UberPostScreenEffectsBaseCBuffer_096 : packoffset(c006.x);
  float4 UberPostScreenEffectsBaseCBuffer_112 : packoffset(c007.x);
  float4 UberPostScreenEffectsBaseCBuffer_128 : packoffset(c008.x);
  float4 UberPostScreenEffectsBaseCBuffer_144 : packoffset(c009.x);
  float4 UberPostScreenEffectsBaseCBuffer_160 : packoffset(c010.x);
  float4 UberPostScreenEffectsBaseCBuffer_176 : packoffset(c011.x);
  float4 UberPostScreenEffectsBaseCBuffer_192 : packoffset(c012.x);
  float4 UberPostScreenEffectsBaseCBuffer_208 : packoffset(c013.x);
  float4 UberPostScreenEffectsBaseCBuffer_224 : packoffset(c014.x);
  float4 UberPostScreenEffectsBaseCBuffer_240 : packoffset(c015.x);
  float4 UberPostScreenEffectsBaseCBuffer_256 : packoffset(c016.x);
};

cbuffer cb3 : register(b3) {
  float2 UberPostScreenEffectsRandomCBuffer_000 : packoffset(c000.x);
  float2 UberPostScreenEffectsRandomCBuffer_008 : packoffset(c000.z);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

SamplerState s4 : register(s4);

SamplerState s5 : register(s5);

SamplerState s6 : register(s6);

SamplerState s7 : register(s7);

SamplerState s8 : register(s8);

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
  float _40;
  float _41;
  float _42;
  float _43;
  float _44;
  float _54;
  float _56;
  float _58;
  float _59;
  float _60;
  float _71;
  float _81;
  float _87;
  float _93;
  float _96;
  float _165;
  float _166;
  float _202;
  float _203;
  float _204;
  float _205;
  float _206;
  float _207;
  float _208;
  float _209;
  float _324;
  float _325;
  float _326;
  float _332;
  float _333;
  float _334;
  float _335;
  float _467;
  float _468;
  float _469;
  float _479;
  float _480;
  float _481;
  float _482;
  float _521;
  float _522;
  float _523;
  float _561;
  float _562;
  float _563;
  float _878;
  float _960;
  float _961;
  float _962;
  float _104;
  float _106;
  bool _109;
  bool _110;
  bool _111;
  bool _112;
  bool _136;
  float4 _152;
  float _161;
  bool _169;
  float4 _173;
  float _179;
  float _180;
  float _183;
  float _184;
  float _185;
  float _219;
  float _221;
  float _225;
  float _227;
  float _229;
  float _231;
  float _238;
  float _243;
  float _245;
  float _247;
  float4 _256;
  float4 _266;
  float4 _276;
  float4 _319;
  bool _342;
  float _352;
  float _360;
  float _363;
  float4 _384;
  float _421;
  float _422;
  float _423;
  float _424;
  bool _427;
  float _440;
  float _441;
  float _442;
  float4 _453;
  float _499;
  float _501;
  float _507;
  float _543;
  float _547;
  float _567;
  float _569;
  bool _572;
  bool _573;
  bool _574;
  bool _575;
  int _632;
  int _655;
  float4 _680;
  float _693;
  float _701;
  int _705;
  float _720;
  int _734;
  float _748;
  float4 _764;
  float _775;
  float4 _776;
  float _784;
  bool _795;
  float _798;
  float _807;
  float _808;
  float _809;
  float _821;
  float _828;
  float _829;
  float _830;
  float _839;
  float _840;
  float4 _856;
  float _880;
  float _884;
  float _926;
  float _927;
  float _928;
  float _26[3];
  float _27[3];
  float _28[4];
  float _29[4];
  float _30[4];
  float _31[4];
  float _32[4];
  _40 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _41 = TEXCOORD.x * 2.0f;
  _42 = TEXCOORD.y * 2.0f;
  _43 = _41 + -1.0f;
  _44 = _42 + -1.0f;
  _54 = (Globals_080.z) + -1.0f;
  _56 = (_54 * (Globals_080.y)) + -1.0f;
  _58 = (_56 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _59 = _58 * _44;
  _60 = _43 * _43;
  _71 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_43)), (_58 * (1.0f - abs(_44)))), (1.0f - (sqrt((_59 * _59) + _60) * 0.7070000171661377f)));
  _81 = saturate((_71 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _87 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_81 * _81) * (3.0f - (_81 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _71), 0.0f, 1.0f));
  _93 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _87), _87) * UberPostScreenEffectsBaseCBuffer_016.z;
  _96 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _93, 0.0f) * _93;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _104 = ((_56 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _44;
    _106 = atan(_104 / _43);
    _109 = (_43 < 0.0f);
    _110 = (_43 == 0.0f);
    _111 = (_104 >= 0.0f);
    _112 = (_104 < 0.0f);
    _136 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _152 = t9.SampleBias(s8, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _40)) + (select(_136, select((_110 && _111), 2.0f, select((_110 && _112), -2.0f, (select((_109 && _112), (_106 + -3.1415927410125732f), select((_109 && _111), (_106 + 3.1415927410125732f), _106)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _40)) + (select(_136, (sqrt((_104 * _104) + _60) * 0.6366197466850281f), ((((Globals_080.y) * (TEXCOORD.y + -0.5f)) * _54) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _161 = (_96 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _165 = (_161 * ((_152.x * 2.0f) + -1.0f));
    _166 = (_161 * ((_152.y * 2.0f) + -1.0f));
  } else {
    _165 = 0.0f;
    _166 = 0.0f;
  }
  _169 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_169) {
    _173 = t2.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _179 = (_173.x * 0.10000000149011612f) + _165;
    _180 = (_173.y * 0.10000000149011612f) + _166;
    _183 = UberPostBaseCBuffer_176.w * _173.z;
    _184 = _183 * _179;
    _185 = _183 * _180;
    _202 = (_179 + TEXCOORD.x);
    _203 = (_180 + TEXCOORD.y);
    _204 = ((_184 * UberPostBaseCBuffer_176.x) + _179);
    _205 = ((_185 * UberPostBaseCBuffer_176.x) + _180);
    _206 = ((_184 * UberPostBaseCBuffer_176.y) + _179);
    _207 = ((_185 * UberPostBaseCBuffer_176.y) + _180);
    _208 = ((_184 * UberPostBaseCBuffer_176.z) + _179);
    _209 = ((_185 * UberPostBaseCBuffer_176.z) + _180);
  } else {
    _202 = TEXCOORD.x;
    _203 = TEXCOORD.y;
    _204 = 0.0f;
    _205 = 0.0f;
    _206 = 0.0f;
    _207 = 0.0f;
    _208 = 0.0f;
    _209 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _219 = (_41 - UberPostBaseCBuffer_384.x) + -0.5f;
    _221 = (_42 - UberPostBaseCBuffer_384.y) + -0.5f;
    _225 = dot(float2(_219, _221), float2(_219, _221)) * -0.3333333432674408f;
    _227 = (_225 * _219) * UberPostBaseCBuffer_192.z;
    _229 = (_225 * _221) * UberPostBaseCBuffer_192.z;
    _231 = rsqrt(dot(float3(_227, _229, 9.999999747378752e-05f), float3(_227, _229, 9.999999747378752e-05f)));
    _238 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _243 = exp2(log2(sqrt((_227 * _227) + (_229 * _229)) / _238) * UberPostBaseCBuffer_384.z);
    _245 = ((_227 * _231) * _238) * _243;
    _247 = ((_229 * _231) * _238) * _243;
    _256 = t0.SampleBias(s0, float2(((_204 + TEXCOORD.x) + (_245 * UberPostBaseCBuffer_400.w)), ((_205 + TEXCOORD.y) + (_247 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _266 = t0.SampleBias(s0, float2(((_206 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _245)), ((_207 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _247))), (Globals_976), int2(0, 0));
    _276 = t0.SampleBias(s0, float2(((_208 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _245)), ((_209 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _247))), (Globals_976), int2(0, 0));
    _332 = (((float4)(t0.SampleBias(s0, float2(_202, _203), (Globals_976), int2(0, 0)))).w);
    _333 = (((UberPostBaseCBuffer_416.x * _266.y) + (UberPostBaseCBuffer_400.x * _256.x)) + (UberPostBaseCBuffer_432.x * _276.z));
    _334 = (((UberPostBaseCBuffer_416.y * _266.y) + (UberPostBaseCBuffer_400.y * _256.x)) + (UberPostBaseCBuffer_432.y * _276.z));
    _335 = (((UberPostBaseCBuffer_416.z * _266.y) + (UberPostBaseCBuffer_400.z * _256.x)) + (UberPostBaseCBuffer_432.z * _276.z));
  } else {
    if (_169) {
      _324 = (((float4)(t0.SampleBias(s0, float2((_204 + TEXCOORD.x), (_205 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).x);
      _325 = (((float4)(t0.SampleBias(s0, float2((_206 + TEXCOORD.x), (_207 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).y);
      _326 = (((float4)(t0.SampleBias(s0, float2((_208 + TEXCOORD.x), (_209 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).z);
    } else {
      _319 = t0.SampleBias(s0, float2(_202, _203), (Globals_976), int2(0, 0));
      _324 = _319.x;
      _325 = _319.y;
      _326 = _319.z;
    }
    _332 = (((float4)(t0.SampleBias(s0, float2(_202, _203), (Globals_976), int2(0, 0)))).w);
    _333 = _324;
    _334 = _325;
    _335 = _326;
  }
  _342 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _342)) {
    _352 = fmod((((Globals_2208.y) * _203) * UberPostBaseCBuffer_448.x), 2.0f);
    _360 = (((select((_352 > 1.0f), (2.0f - _352), _352) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _202;
    _363 = (Globals_2208.w) * (Globals_2208.x);
    _384 = t3.SampleBias(s3, float2(_360, ((select(((frac((((_360 + abs(UberPostBaseCBuffer_464.y)) * _363) - (UberPostBaseCBuffer_464.y * _203)) / ((_363 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _203)), (Globals_976), int2(0, 0));
    _421 = ((((-0.699999988079071f - _384.x) + (exp2(log2(abs(_384.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_384.x < 0.30000001192092896f), 0.0f, 1.0f)) + _384.x) * UberPostBaseCBuffer_336.x;
    _422 = ((((-0.699999988079071f - _384.y) + (exp2(log2(abs(_384.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_384.y < 0.30000001192092896f), 0.0f, 1.0f)) + _384.y) * UberPostBaseCBuffer_336.x;
    _423 = ((((-0.699999988079071f - _384.z) + (exp2(log2(abs(_384.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_384.z < 0.30000001192092896f), 0.0f, 1.0f)) + _384.z) * UberPostBaseCBuffer_336.x;
    _424 = dot(float3(_333, _334, _335), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _427 = (UberPostBaseCBuffer_352.x > 0.5f);
    _440 = select(_427, ((((_421 * _424) - _421) * _332) + _421), _421);
    _441 = select(_427, ((((_422 * _424) - _422) * _332) + _422), _422);
    _442 = select(_427, ((((_423 * _424) - _423) * _332) + _423), _423);
    if (_342) {
      _453 = t4.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _202) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _203) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _467 = (((_453.x * _421) * UberPostBaseCBuffer_336.y) + _440);
      _468 = (((_453.y * _422) * UberPostBaseCBuffer_336.y) + _441);
      _469 = (((_453.z * _423) * UberPostBaseCBuffer_336.y) + _442);
    } else {
      _467 = _440;
      _468 = _441;
      _469 = _442;
    }
    _479 = (_467 + _333);
    _480 = (_468 + _334);
    _481 = (_469 + _335);
    _482 = saturate((((_468 + _467) + _469) * 0.33329999446868896f) + _332);
  } else {
    _479 = _333;
    _480 = _334;
    _481 = _335;
    _482 = _332;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _499 = abs(_203 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _501 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_202 - UberPostBaseCBuffer_112.x);
    _507 = exp2(log2(saturate(1.0f - dot(float2(_501, _499), float2(_501, _499)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _521 = (((_507 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _479);
    _522 = (((_507 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _480);
    _523 = (((_507 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _481);
  } else {
    _521 = _479;
    _522 = _480;
    _523 = _481;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_521, _522, _523);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _521 = tonemapped.x;
    _522 = tonemapped.y;
    _523 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _543 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _547 = 1.0f - (sqrt(dot(float3(_521, _522, _523), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _561 = ((((UberPostBaseCBuffer_208.x * _521) * _543) * _547) + _521);
    _562 = ((((UberPostBaseCBuffer_208.x * _522) * _543) * _547) + _522);
    _563 = ((((UberPostBaseCBuffer_208.x * _523) * _543) * _547) + _523);
  } else {
    _561 = _521;
    _562 = _522;
    _563 = _523;
  }
  _567 = ((_56 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _44;
  _569 = atan(_567 / _43);
  _572 = (_43 < 0.0f);
  _573 = (_43 == 0.0f);
  _574 = (_567 >= 0.0f);
  _575 = (_567 < 0.0f);
  _26[0] = ((((Globals_2208.x) * (TEXCOORD.x + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _27[0] = TEXCOORD.y;
  _26[1] = select((_573 && _574), 2.0f, select((_573 && _575), -2.0f, (select((_572 && _575), (_569 + -3.1415927410125732f), select((_572 && _574), (_569 + 3.1415927410125732f), _569)) * 1.2732394933700562f)));
  _27[1] = (sqrt((_567 * _567) + (_43 * _43)) * 0.5f);
  _26[2] = TEXCOORD.x;
  _27[2] = TEXCOORD.y;
  _632 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _655 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _680 = t8.SampleBias(s7, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _165) + (UberPostScreenEffectsBaseCBuffer_176.x * _40)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_26[min((uint)(_655), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _166) + (UberPostScreenEffectsBaseCBuffer_176.y * _40)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_27[min((uint)(_655), 2u)])))), (Globals_976), int2(0, 0));
  _32[0] = _680.x;
  _32[1] = _680.y;
  _32[2] = _680.z;
  _32[3] = _680.w;
  _693 = ((_32[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _701 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _705 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _720 = UberPostScreenEffectsBaseCBuffer_208.y * _693;
  _734 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _748 = UberPostScreenEffectsBaseCBuffer_208.z * _693;
  _764 = t7.SampleBias(s6, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _165) + (UberPostScreenEffectsBaseCBuffer_160.z * _40)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_26[min((uint)(_734), 2u)]))) + _748), (((((UberPostScreenEffectsRandomCBuffer_000.y + _166) + (UberPostScreenEffectsBaseCBuffer_160.w * _40)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_27[min((uint)(_734), 2u)]))) + _748)), (Globals_976), int2(0, 0));
  _31[0] = _764.x;
  _31[1] = _764.y;
  _31[2] = _764.z;
  _31[3] = _764.w;
  _775 = _31[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _776 = t5.SampleBias(s4, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _40) + _165) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_26[min((uint)(_705), 2u)]) * _701) * UberPostScreenEffectsBaseCBuffer_032.x)) + _720), (((((UberPostScreenEffectsBaseCBuffer_096.y * _40) + _166) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_27[min((uint)(_705), 2u)]) * _701) * UberPostScreenEffectsBaseCBuffer_032.y)) + _720)), (Globals_976), int2(0, 0));
  _784 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _775, 1.0f);
  _30[0] = _776.x;
  _30[1] = _776.y;
  _30[2] = _776.z;
  _30[3] = _776.w;
  _795 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _798 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _784);
  _807 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _808 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _809 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _821 = saturate((_784 * (_30[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _828 = select(_795, (((_807 * _798) + UberPostScreenEffectsBaseCBuffer_064.x) * _776.x), ((_807 * _821) + UberPostScreenEffectsBaseCBuffer_064.x));
  _829 = select(_795, (((_808 * _798) + UberPostScreenEffectsBaseCBuffer_064.y) * _776.y), ((_808 * _821) + UberPostScreenEffectsBaseCBuffer_064.y));
  _830 = select(_795, (((_809 * _798) + UberPostScreenEffectsBaseCBuffer_064.z) * _776.z), ((_809 * _821) + UberPostScreenEffectsBaseCBuffer_064.z));
  _29[0] = _776.x;
  _29[1] = _776.y;
  _29[2] = _776.z;
  _29[3] = _776.w;
  _839 = _29[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _840 = _839 * _775;
  _856 = t6.SampleBias(s5, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _40) + _165) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_26[min((uint)(_632), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _40) + _166) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_27[min((uint)(_632), 2u)])))), (Globals_976), int2(0, 0));
  _28[0] = _856.x;
  _28[1] = _856.y;
  _28[2] = _856.z;
  _28[3] = _856.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _878 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _839));
  } else {
    _878 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_840 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_840 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _880 = ((_28[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _878) * _96;
  _884 = select((_880 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _880;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _960 = ((_884 * (_828 - _561)) + _561);
    _961 = ((_884 * (_829 - _562)) + _562);
    _962 = ((_884 * (_830 - _563)) + _563);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _960 = ((_884 * _828) + _561);
      _961 = ((_884 * _829) + _562);
      _962 = ((_884 * _830) + _563);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _960 = (((_884 * (_828 + -1.0f)) + 1.0f) * _561);
        _961 = (((_884 * (_829 + -1.0f)) + 1.0f) * _562);
        _962 = (((_884 * (_830 + -1.0f)) + 1.0f) * _563);
      } else {
        _926 = _884 * (_828 + -0.5f);
        _927 = _884 * (_829 + -0.5f);
        _928 = _884 * (_830 + -0.5f);
        _960 = select((_561 < 0.5f), ((_561 * 2.0f) * (_926 + 0.5f)), (1.0f - (((1.0f - _561) * 2.0f) * (0.5f - _926))));
        _961 = select((_562 < 0.5f), ((_562 * 2.0f) * (_927 + 0.5f)), (1.0f - (((1.0f - _562) * 2.0f) * (0.5f - _927))));
        _962 = select((_563 < 0.5f), ((_563 * 2.0f) * (_928 + 0.5f)), (1.0f - (((1.0f - _563) * 2.0f) * (0.5f - _928))));
      }
    }
  }
  SV_Target.x = (_960);
  SV_Target.y = (_961);
  SV_Target.z = (_962);
  SV_Target.w = _482;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
