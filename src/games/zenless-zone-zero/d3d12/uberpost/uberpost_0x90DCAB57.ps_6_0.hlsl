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

Texture2D<float4> t10 : register(t10);

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
  float _41;
  float _42;
  float _43;
  float _44;
  float _45;
  float _55;
  float _57;
  float _59;
  float _60;
  float _61;
  float _72;
  float _82;
  float _88;
  float _94;
  float _97;
  float _166;
  float _167;
  float _203;
  float _204;
  float _205;
  float _206;
  float _207;
  float _208;
  float _209;
  float _210;
  float _325;
  float _326;
  float _327;
  float _333;
  float _334;
  float _335;
  float _336;
  float _468;
  float _469;
  float _470;
  float _480;
  float _481;
  float _482;
  float _483;
  float _522;
  float _523;
  float _524;
  float _613;
  float _614;
  float _615;
  float _930;
  float _1012;
  float _1013;
  float _1014;
  float _105;
  float _107;
  bool _110;
  bool _111;
  bool _112;
  bool _113;
  bool _137;
  float4 _153;
  float _162;
  bool _170;
  float4 _174;
  float _180;
  float _181;
  float _184;
  float _185;
  float _186;
  float _220;
  float _222;
  float _226;
  float _228;
  float _230;
  float _232;
  float _239;
  float _244;
  float _246;
  float _248;
  float4 _257;
  float4 _267;
  float4 _277;
  float4 _320;
  bool _343;
  float _353;
  float _361;
  float _364;
  float4 _385;
  float _422;
  float _423;
  float _424;
  float _425;
  bool _428;
  float _441;
  float _442;
  float _443;
  float4 _454;
  float _500;
  float _502;
  float _508;
  float _547;
  float _548;
  float _554;
  float _556;
  float _557;
  float4 _559;
  float4 _563;
  float _573;
  float _574;
  float _575;
  float _595;
  float _599;
  float _619;
  float _621;
  bool _624;
  bool _625;
  bool _626;
  bool _627;
  int _684;
  int _707;
  float4 _732;
  float _745;
  float _753;
  int _757;
  float _772;
  int _786;
  float _800;
  float4 _816;
  float _827;
  float4 _828;
  float _836;
  bool _847;
  float _850;
  float _859;
  float _860;
  float _861;
  float _873;
  float _880;
  float _881;
  float _882;
  float _891;
  float _892;
  float4 _908;
  float _932;
  float _936;
  float _978;
  float _979;
  float _980;
  float _27[3];
  float _28[3];
  float _29[4];
  float _30[4];
  float _31[4];
  float _32[4];
  float _33[4];
  _41 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _42 = TEXCOORD.x * 2.0f;
  _43 = TEXCOORD.y * 2.0f;
  _44 = _42 + -1.0f;
  _45 = _43 + -1.0f;
  _55 = (Globals_080.z) + -1.0f;
  _57 = (_55 * (Globals_080.y)) + -1.0f;
  _59 = (_57 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _60 = _59 * _45;
  _61 = _44 * _44;
  _72 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_44)), (_59 * (1.0f - abs(_45)))), (1.0f - (sqrt((_60 * _60) + _61) * 0.7070000171661377f)));
  _82 = saturate((_72 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _88 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_82 * _82) * (3.0f - (_82 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _72), 0.0f, 1.0f));
  _94 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _88), _88) * UberPostScreenEffectsBaseCBuffer_016.z;
  _97 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _94, 0.0f) * _94;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _105 = ((_57 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _45;
    _107 = atan(_105 / _44);
    _110 = (_44 < 0.0f);
    _111 = (_44 == 0.0f);
    _112 = (_105 >= 0.0f);
    _113 = (_105 < 0.0f);
    _137 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _153 = t10.SampleBias(s8, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _41)) + (select(_137, select((_111 && _112), 2.0f, select((_111 && _113), -2.0f, (select((_110 && _113), (_107 + -3.1415927410125732f), select((_110 && _112), (_107 + 3.1415927410125732f), _107)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _41)) + (select(_137, (sqrt((_105 * _105) + _61) * 0.6366197466850281f), ((((Globals_080.y) * (TEXCOORD.y + -0.5f)) * _55) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _162 = (_97 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _166 = (_162 * ((_153.x * 2.0f) + -1.0f));
    _167 = (_162 * ((_153.y * 2.0f) + -1.0f));
  } else {
    _166 = 0.0f;
    _167 = 0.0f;
  }
  _170 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_170) {
    _174 = t3.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _180 = (_174.x * 0.10000000149011612f) + _166;
    _181 = (_174.y * 0.10000000149011612f) + _167;
    _184 = UberPostBaseCBuffer_176.w * _174.z;
    _185 = _184 * _180;
    _186 = _184 * _181;
    _203 = (_180 + TEXCOORD.x);
    _204 = (_181 + TEXCOORD.y);
    _205 = ((_185 * UberPostBaseCBuffer_176.x) + _180);
    _206 = ((_186 * UberPostBaseCBuffer_176.x) + _181);
    _207 = ((_185 * UberPostBaseCBuffer_176.y) + _180);
    _208 = ((_186 * UberPostBaseCBuffer_176.y) + _181);
    _209 = ((_185 * UberPostBaseCBuffer_176.z) + _180);
    _210 = ((_186 * UberPostBaseCBuffer_176.z) + _181);
  } else {
    _203 = TEXCOORD.x;
    _204 = TEXCOORD.y;
    _205 = 0.0f;
    _206 = 0.0f;
    _207 = 0.0f;
    _208 = 0.0f;
    _209 = 0.0f;
    _210 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _220 = (_42 - UberPostBaseCBuffer_384.x) + -0.5f;
    _222 = (_43 - UberPostBaseCBuffer_384.y) + -0.5f;
    _226 = dot(float2(_220, _222), float2(_220, _222)) * -0.3333333432674408f;
    _228 = (_226 * _220) * UberPostBaseCBuffer_192.z;
    _230 = (_226 * _222) * UberPostBaseCBuffer_192.z;
    _232 = rsqrt(dot(float3(_228, _230, 9.999999747378752e-05f), float3(_228, _230, 9.999999747378752e-05f)));
    _239 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _244 = exp2(log2(sqrt((_228 * _228) + (_230 * _230)) / _239) * UberPostBaseCBuffer_384.z);
    _246 = ((_228 * _232) * _239) * _244;
    _248 = ((_230 * _232) * _239) * _244;
    _257 = t0.SampleBias(s0, float2(((_205 + TEXCOORD.x) + (_246 * UberPostBaseCBuffer_400.w)), ((_206 + TEXCOORD.y) + (_248 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _267 = t0.SampleBias(s0, float2(((_207 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _246)), ((_208 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _248))), (Globals_976), int2(0, 0));
    _277 = t0.SampleBias(s0, float2(((_209 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _246)), ((_210 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _248))), (Globals_976), int2(0, 0));
    _333 = (((float4)(t0.SampleBias(s0, float2(_203, _204), (Globals_976), int2(0, 0)))).w);
    _334 = (((UberPostBaseCBuffer_416.x * _267.y) + (UberPostBaseCBuffer_400.x * _257.x)) + (UberPostBaseCBuffer_432.x * _277.z));
    _335 = (((UberPostBaseCBuffer_416.y * _267.y) + (UberPostBaseCBuffer_400.y * _257.x)) + (UberPostBaseCBuffer_432.y * _277.z));
    _336 = (((UberPostBaseCBuffer_416.z * _267.y) + (UberPostBaseCBuffer_400.z * _257.x)) + (UberPostBaseCBuffer_432.z * _277.z));
  } else {
    if (_170) {
      _325 = (((float4)(t0.SampleBias(s0, float2((_205 + TEXCOORD.x), (_206 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).x);
      _326 = (((float4)(t0.SampleBias(s0, float2((_207 + TEXCOORD.x), (_208 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).y);
      _327 = (((float4)(t0.SampleBias(s0, float2((_209 + TEXCOORD.x), (_210 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).z);
    } else {
      _320 = t0.SampleBias(s0, float2(_203, _204), (Globals_976), int2(0, 0));
      _325 = _320.x;
      _326 = _320.y;
      _327 = _320.z;
    }
    _333 = (((float4)(t0.SampleBias(s0, float2(_203, _204), (Globals_976), int2(0, 0)))).w);
    _334 = _325;
    _335 = _326;
    _336 = _327;
  }
  _343 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _343)) {
    _353 = fmod((((Globals_2208.y) * _204) * UberPostBaseCBuffer_448.x), 2.0f);
    _361 = (((select((_353 > 1.0f), (2.0f - _353), _353) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _203;
    _364 = (Globals_2208.w) * (Globals_2208.x);
    _385 = t4.SampleBias(s3, float2(_361, ((select(((frac((((_361 + abs(UberPostBaseCBuffer_464.y)) * _364) - (UberPostBaseCBuffer_464.y * _204)) / ((_364 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _204)), (Globals_976), int2(0, 0));
    _422 = ((((-0.699999988079071f - _385.x) + (exp2(log2(abs(_385.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_385.x < 0.30000001192092896f), 0.0f, 1.0f)) + _385.x) * UberPostBaseCBuffer_336.x;
    _423 = ((((-0.699999988079071f - _385.y) + (exp2(log2(abs(_385.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_385.y < 0.30000001192092896f), 0.0f, 1.0f)) + _385.y) * UberPostBaseCBuffer_336.x;
    _424 = ((((-0.699999988079071f - _385.z) + (exp2(log2(abs(_385.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_385.z < 0.30000001192092896f), 0.0f, 1.0f)) + _385.z) * UberPostBaseCBuffer_336.x;
    _425 = dot(float3(_334, _335, _336), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _428 = (UberPostBaseCBuffer_352.x > 0.5f);
    _441 = select(_428, ((((_422 * _425) - _422) * _333) + _422), _422);
    _442 = select(_428, ((((_423 * _425) - _423) * _333) + _423), _423);
    _443 = select(_428, ((((_424 * _425) - _424) * _333) + _424), _424);
    if (_343) {
      _454 = t5.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _203) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _204) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _468 = (((_454.x * _422) * UberPostBaseCBuffer_336.y) + _441);
      _469 = (((_454.y * _423) * UberPostBaseCBuffer_336.y) + _442);
      _470 = (((_454.z * _424) * UberPostBaseCBuffer_336.y) + _443);
    } else {
      _468 = _441;
      _469 = _442;
      _470 = _443;
    }
    _480 = (_468 + _334);
    _481 = (_469 + _335);
    _482 = (_470 + _336);
    _483 = saturate((((_469 + _468) + _470) * 0.33329999446868896f) + _333);
  } else {
    _480 = _334;
    _481 = _335;
    _482 = _336;
    _483 = _333;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _500 = abs(_204 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _502 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_203 - UberPostBaseCBuffer_112.x);
    _508 = exp2(log2(saturate(1.0f - dot(float2(_502, _500), float2(_502, _500)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _522 = (((_508 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _480);
    _523 = (((_508 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _481);
    _524 = (((_508 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _482);
  } else {
    _522 = _480;
    _523 = _481;
    _524 = _482;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_522, _523, _524);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t2, s0, UberPostBaseCBuffer_000.xyz);
    _573 = tonemapped.x;
    _574 = tonemapped.y;
    _575 = tonemapped.z;
  } else {
    _547 = saturate((log2((_524 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _548 = floor(_547);
    _554 = ((saturate((log2((_523 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _556 = (_548 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_522 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _557 = _547 - _548;
    _559 = t2.SampleLevel(s0, float2((_556 + UberPostBaseCBuffer_000.y), _554), 0.0f);
    _563 = t2.SampleLevel(s0, float2(_556, _554), 0.0f);
    _573 = ((_559.x - _563.x) * _557) + _563.x;
    _574 = ((_559.y - _563.y) * _557) + _563.y;
    _575 = ((_559.z - _563.z) * _557) + _563.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _595 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _599 = 1.0f - (sqrt(dot(float3(_573, _574, _575), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _613 = ((((UberPostBaseCBuffer_208.x * _573) * _595) * _599) + _573);
    _614 = ((((UberPostBaseCBuffer_208.x * _574) * _595) * _599) + _574);
    _615 = ((((UberPostBaseCBuffer_208.x * _575) * _595) * _599) + _575);
  } else {
    _613 = _573;
    _614 = _574;
    _615 = _575;
  }
  _619 = ((_57 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _45;
  _621 = atan(_619 / _44);
  _624 = (_44 < 0.0f);
  _625 = (_44 == 0.0f);
  _626 = (_619 >= 0.0f);
  _627 = (_619 < 0.0f);
  _27[0] = ((((Globals_2208.x) * (TEXCOORD.x + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _28[0] = TEXCOORD.y;
  _27[1] = select((_625 && _626), 2.0f, select((_625 && _627), -2.0f, (select((_624 && _627), (_621 + -3.1415927410125732f), select((_624 && _626), (_621 + 3.1415927410125732f), _621)) * 1.2732394933700562f)));
  _28[1] = (sqrt((_619 * _619) + (_44 * _44)) * 0.5f);
  _27[2] = TEXCOORD.x;
  _28[2] = TEXCOORD.y;
  _684 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _707 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _732 = t9.SampleBias(s7, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _166) + (UberPostScreenEffectsBaseCBuffer_176.x * _41)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_27[min((uint)(_707), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _167) + (UberPostScreenEffectsBaseCBuffer_176.y * _41)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_28[min((uint)(_707), 2u)])))), (Globals_976), int2(0, 0));
  _33[0] = _732.x;
  _33[1] = _732.y;
  _33[2] = _732.z;
  _33[3] = _732.w;
  _745 = ((_33[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _753 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _757 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _772 = UberPostScreenEffectsBaseCBuffer_208.y * _745;
  _786 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _800 = UberPostScreenEffectsBaseCBuffer_208.z * _745;
  _816 = t8.SampleBias(s6, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _166) + (UberPostScreenEffectsBaseCBuffer_160.z * _41)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_27[min((uint)(_786), 2u)]))) + _800), (((((UberPostScreenEffectsRandomCBuffer_000.y + _167) + (UberPostScreenEffectsBaseCBuffer_160.w * _41)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_28[min((uint)(_786), 2u)]))) + _800)), (Globals_976), int2(0, 0));
  _32[0] = _816.x;
  _32[1] = _816.y;
  _32[2] = _816.z;
  _32[3] = _816.w;
  _827 = _32[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _828 = t6.SampleBias(s4, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _41) + _166) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_27[min((uint)(_757), 2u)]) * _753) * UberPostScreenEffectsBaseCBuffer_032.x)) + _772), (((((UberPostScreenEffectsBaseCBuffer_096.y * _41) + _167) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_28[min((uint)(_757), 2u)]) * _753) * UberPostScreenEffectsBaseCBuffer_032.y)) + _772)), (Globals_976), int2(0, 0));
  _836 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _827, 1.0f);
  _31[0] = _828.x;
  _31[1] = _828.y;
  _31[2] = _828.z;
  _31[3] = _828.w;
  _847 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _850 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _836);
  _859 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _860 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _861 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _873 = saturate((_836 * (_31[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _880 = select(_847, (((_859 * _850) + UberPostScreenEffectsBaseCBuffer_064.x) * _828.x), ((_859 * _873) + UberPostScreenEffectsBaseCBuffer_064.x));
  _881 = select(_847, (((_860 * _850) + UberPostScreenEffectsBaseCBuffer_064.y) * _828.y), ((_860 * _873) + UberPostScreenEffectsBaseCBuffer_064.y));
  _882 = select(_847, (((_861 * _850) + UberPostScreenEffectsBaseCBuffer_064.z) * _828.z), ((_861 * _873) + UberPostScreenEffectsBaseCBuffer_064.z));
  _30[0] = _828.x;
  _30[1] = _828.y;
  _30[2] = _828.z;
  _30[3] = _828.w;
  _891 = _30[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _892 = _891 * _827;
  _908 = t7.SampleBias(s5, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _41) + _166) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_27[min((uint)(_684), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _41) + _167) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_28[min((uint)(_684), 2u)])))), (Globals_976), int2(0, 0));
  _29[0] = _908.x;
  _29[1] = _908.y;
  _29[2] = _908.z;
  _29[3] = _908.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _930 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _891));
  } else {
    _930 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_892 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_892 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _932 = ((_29[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _930) * _97;
  _936 = select((_932 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _932;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1012 = ((_936 * (_880 - _613)) + _613);
    _1013 = ((_936 * (_881 - _614)) + _614);
    _1014 = ((_936 * (_882 - _615)) + _615);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1012 = ((_936 * _880) + _613);
      _1013 = ((_936 * _881) + _614);
      _1014 = ((_936 * _882) + _615);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1012 = (((_936 * (_880 + -1.0f)) + 1.0f) * _613);
        _1013 = (((_936 * (_881 + -1.0f)) + 1.0f) * _614);
        _1014 = (((_936 * (_882 + -1.0f)) + 1.0f) * _615);
      } else {
        _978 = _936 * (_880 + -0.5f);
        _979 = _936 * (_881 + -0.5f);
        _980 = _936 * (_882 + -0.5f);
        _1012 = select((_613 < 0.5f), ((_613 * 2.0f) * (_978 + 0.5f)), (1.0f - (((1.0f - _613) * 2.0f) * (0.5f - _978))));
        _1013 = select((_614 < 0.5f), ((_614 * 2.0f) * (_979 + 0.5f)), (1.0f - (((1.0f - _614) * 2.0f) * (0.5f - _979))));
        _1014 = select((_615 < 0.5f), ((_615 * 2.0f) * (_980 + 0.5f)), (1.0f - (((1.0f - _615) * 2.0f) * (0.5f - _980))));
      }
    }
  }
  SV_Target.x = (_1012);
  SV_Target.y = (_1013);
  SV_Target.z = (_1014);
  SV_Target.w = _483;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
