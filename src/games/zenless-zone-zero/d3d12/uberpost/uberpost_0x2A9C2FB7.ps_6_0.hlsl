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

Texture2D<float4> t11 : register(t11);

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

cbuffer cb4 : register(b4) {
  float4 UberPostFXColorCorrectionCBuffer_000 : packoffset(c000.x);
  float4 UberPostFXColorCorrectionCBuffer_016 : packoffset(c001.x);
  float4 UberPostFXColorCorrectionCBuffer_032 : packoffset(c002.x);
  float4 UberPostFXColorCorrectionCBuffer_048 : packoffset(c003.x);
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
  float _43;
  float _44;
  float _45;
  float _46;
  float _47;
  float _57;
  float _59;
  float _61;
  float _62;
  float _63;
  float _74;
  float _84;
  float _90;
  float _96;
  float _99;
  float _168;
  float _169;
  float _205;
  float _206;
  float _207;
  float _208;
  float _209;
  float _210;
  float _211;
  float _212;
  float _327;
  float _328;
  float _329;
  float _335;
  float _336;
  float _337;
  float _338;
  float _470;
  float _471;
  float _472;
  float _482;
  float _483;
  float _484;
  float _485;
  float _524;
  float _525;
  float _526;
  float _564;
  float _565;
  float _566;
  float _881;
  float _963;
  float _964;
  float _965;
  float _992;
  float _993;
  float _994;
  float _1123;
  float _1124;
  float _1125;
  float _107;
  float _109;
  bool _112;
  bool _113;
  bool _114;
  bool _115;
  bool _139;
  float4 _155;
  float _164;
  bool _172;
  float4 _176;
  float _182;
  float _183;
  float _186;
  float _187;
  float _188;
  float _222;
  float _224;
  float _228;
  float _230;
  float _232;
  float _234;
  float _241;
  float _246;
  float _248;
  float _250;
  float4 _259;
  float4 _269;
  float4 _279;
  float4 _322;
  bool _345;
  float _355;
  float _363;
  float _366;
  float4 _387;
  float _424;
  float _425;
  float _426;
  float _427;
  bool _430;
  float _443;
  float _444;
  float _445;
  float4 _456;
  float _502;
  float _504;
  float _510;
  float _546;
  float _550;
  float _570;
  float _572;
  bool _575;
  bool _576;
  bool _577;
  bool _578;
  int _635;
  int _658;
  float4 _683;
  float _696;
  float _704;
  int _708;
  float _723;
  int _737;
  float _751;
  float4 _767;
  float _778;
  float4 _779;
  float _787;
  bool _798;
  float _801;
  float _810;
  float _811;
  float _812;
  float _824;
  float _831;
  float _832;
  float _833;
  float _842;
  float _843;
  float4 _859;
  float _883;
  float _887;
  float _929;
  float _930;
  float _931;
  float _970;
  float _977;
  float _978;
  float _979;
  float4 _987;
  float _1009;
  float _1010;
  float _1011;
  float _1019;
  float _1046;
  float _1047;
  float _1048;
  float4 _1054;
  float _1091;
  float _1092;
  float _1093;
  float _1112;
  float _29[3];
  float _30[3];
  float _31[4];
  float _32[4];
  float _33[4];
  float _34[4];
  float _35[4];
  _43 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _44 = TEXCOORD.x * 2.0f;
  _45 = TEXCOORD.y * 2.0f;
  _46 = _44 + -1.0f;
  _47 = _45 + -1.0f;
  _57 = (Globals_080.z) + -1.0f;
  _59 = (_57 * (Globals_080.y)) + -1.0f;
  _61 = (_59 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _62 = _61 * _47;
  _63 = _46 * _46;
  _74 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_46)), (_61 * (1.0f - abs(_47)))), (1.0f - (sqrt((_62 * _62) + _63) * 0.7070000171661377f)));
  _84 = saturate((_74 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _90 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_84 * _84) * (3.0f - (_84 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _74), 0.0f, 1.0f));
  _96 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _90), _90) * UberPostScreenEffectsBaseCBuffer_016.z;
  _99 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _96, 0.0f) * _96;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _107 = ((_59 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _47;
    _109 = atan(_107 / _46);
    _112 = (_46 < 0.0f);
    _113 = (_46 == 0.0f);
    _114 = (_107 >= 0.0f);
    _115 = (_107 < 0.0f);
    _139 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _155 = t11.SampleBias(s8, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _43)) + (select(_139, select((_113 && _114), 2.0f, select((_113 && _115), -2.0f, (select((_112 && _115), (_109 + -3.1415927410125732f), select((_112 && _114), (_109 + 3.1415927410125732f), _109)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _43)) + (select(_139, (sqrt((_107 * _107) + _63) * 0.6366197466850281f), ((((Globals_080.y) * (TEXCOORD.y + -0.5f)) * _57) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _164 = (_99 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _168 = (_164 * ((_155.x * 2.0f) + -1.0f));
    _169 = (_164 * ((_155.y * 2.0f) + -1.0f));
  } else {
    _168 = 0.0f;
    _169 = 0.0f;
  }
  _172 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_172) {
    _176 = t4.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _182 = (_176.x * 0.10000000149011612f) + _168;
    _183 = (_176.y * 0.10000000149011612f) + _169;
    _186 = UberPostBaseCBuffer_176.w * _176.z;
    _187 = _186 * _182;
    _188 = _186 * _183;
    _205 = (_182 + TEXCOORD.x);
    _206 = (_183 + TEXCOORD.y);
    _207 = ((_187 * UberPostBaseCBuffer_176.x) + _182);
    _208 = ((_188 * UberPostBaseCBuffer_176.x) + _183);
    _209 = ((_187 * UberPostBaseCBuffer_176.y) + _182);
    _210 = ((_188 * UberPostBaseCBuffer_176.y) + _183);
    _211 = ((_187 * UberPostBaseCBuffer_176.z) + _182);
    _212 = ((_188 * UberPostBaseCBuffer_176.z) + _183);
  } else {
    _205 = TEXCOORD.x;
    _206 = TEXCOORD.y;
    _207 = 0.0f;
    _208 = 0.0f;
    _209 = 0.0f;
    _210 = 0.0f;
    _211 = 0.0f;
    _212 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _222 = (_44 - UberPostBaseCBuffer_384.x) + -0.5f;
    _224 = (_45 - UberPostBaseCBuffer_384.y) + -0.5f;
    _228 = dot(float2(_222, _224), float2(_222, _224)) * -0.3333333432674408f;
    _230 = (_228 * _222) * UberPostBaseCBuffer_192.z;
    _232 = (_228 * _224) * UberPostBaseCBuffer_192.z;
    _234 = rsqrt(dot(float3(_230, _232, 9.999999747378752e-05f), float3(_230, _232, 9.999999747378752e-05f)));
    _241 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _246 = exp2(log2(sqrt((_230 * _230) + (_232 * _232)) / _241) * UberPostBaseCBuffer_384.z);
    _248 = ((_230 * _234) * _241) * _246;
    _250 = ((_232 * _234) * _241) * _246;
    _259 = t1.SampleBias(s0, float2(((_207 + TEXCOORD.x) + (_248 * UberPostBaseCBuffer_400.w)), ((_208 + TEXCOORD.y) + (_250 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _269 = t1.SampleBias(s0, float2(((_209 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _248)), ((_210 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _250))), (Globals_976), int2(0, 0));
    _279 = t1.SampleBias(s0, float2(((_211 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _248)), ((_212 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _250))), (Globals_976), int2(0, 0));
    _335 = (((float4)(t1.SampleBias(s0, float2(_205, _206), (Globals_976), int2(0, 0)))).w);
    _336 = (((UberPostBaseCBuffer_416.x * _269.y) + (UberPostBaseCBuffer_400.x * _259.x)) + (UberPostBaseCBuffer_432.x * _279.z));
    _337 = (((UberPostBaseCBuffer_416.y * _269.y) + (UberPostBaseCBuffer_400.y * _259.x)) + (UberPostBaseCBuffer_432.y * _279.z));
    _338 = (((UberPostBaseCBuffer_416.z * _269.y) + (UberPostBaseCBuffer_400.z * _259.x)) + (UberPostBaseCBuffer_432.z * _279.z));
  } else {
    if (_172) {
      _327 = (((float4)(t1.SampleBias(s0, float2((_207 + TEXCOORD.x), (_208 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).x);
      _328 = (((float4)(t1.SampleBias(s0, float2((_209 + TEXCOORD.x), (_210 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).y);
      _329 = (((float4)(t1.SampleBias(s0, float2((_211 + TEXCOORD.x), (_212 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).z);
    } else {
      _322 = t1.SampleBias(s0, float2(_205, _206), (Globals_976), int2(0, 0));
      _327 = _322.x;
      _328 = _322.y;
      _329 = _322.z;
    }
    _335 = (((float4)(t1.SampleBias(s0, float2(_205, _206), (Globals_976), int2(0, 0)))).w);
    _336 = _327;
    _337 = _328;
    _338 = _329;
  }
  _345 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _345)) {
    _355 = fmod((((Globals_2208.y) * _206) * UberPostBaseCBuffer_448.x), 2.0f);
    _363 = (((select((_355 > 1.0f), (2.0f - _355), _355) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _205;
    _366 = (Globals_2208.w) * (Globals_2208.x);
    _387 = t5.SampleBias(s3, float2(_363, ((select(((frac((((_363 + abs(UberPostBaseCBuffer_464.y)) * _366) - (UberPostBaseCBuffer_464.y * _206)) / ((_366 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _206)), (Globals_976), int2(0, 0));
    _424 = ((((-0.699999988079071f - _387.x) + (exp2(log2(abs(_387.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_387.x < 0.30000001192092896f), 0.0f, 1.0f)) + _387.x) * UberPostBaseCBuffer_336.x;
    _425 = ((((-0.699999988079071f - _387.y) + (exp2(log2(abs(_387.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_387.y < 0.30000001192092896f), 0.0f, 1.0f)) + _387.y) * UberPostBaseCBuffer_336.x;
    _426 = ((((-0.699999988079071f - _387.z) + (exp2(log2(abs(_387.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_387.z < 0.30000001192092896f), 0.0f, 1.0f)) + _387.z) * UberPostBaseCBuffer_336.x;
    _427 = dot(float3(_336, _337, _338), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _430 = (UberPostBaseCBuffer_352.x > 0.5f);
    _443 = select(_430, ((((_424 * _427) - _424) * _335) + _424), _424);
    _444 = select(_430, ((((_425 * _427) - _425) * _335) + _425), _425);
    _445 = select(_430, ((((_426 * _427) - _426) * _335) + _426), _426);
    if (_345) {
      _456 = t6.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _205) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _206) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _470 = (((_456.x * _424) * UberPostBaseCBuffer_336.y) + _443);
      _471 = (((_456.y * _425) * UberPostBaseCBuffer_336.y) + _444);
      _472 = (((_456.z * _426) * UberPostBaseCBuffer_336.y) + _445);
    } else {
      _470 = _443;
      _471 = _444;
      _472 = _445;
    }
    _482 = (_470 + _336);
    _483 = (_471 + _337);
    _484 = (_472 + _338);
    _485 = saturate((((_471 + _470) + _472) * 0.33329999446868896f) + _335);
  } else {
    _482 = _336;
    _483 = _337;
    _484 = _338;
    _485 = _335;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _502 = abs(_206 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _504 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_205 - UberPostBaseCBuffer_112.x);
    _510 = exp2(log2(saturate(1.0f - dot(float2(_504, _502), float2(_504, _502)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _524 = (((_510 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _482);
    _525 = (((_510 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _483);
    _526 = (((_510 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _484);
  } else {
    _524 = _482;
    _525 = _483;
    _526 = _484;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_524, _525, _526);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _524 = tonemapped.x;
    _525 = tonemapped.y;
    _526 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _546 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _550 = 1.0f - (sqrt(dot(float3(_524, _525, _526), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _564 = ((((UberPostBaseCBuffer_208.x * _524) * _546) * _550) + _524);
    _565 = ((((UberPostBaseCBuffer_208.x * _525) * _546) * _550) + _525);
    _566 = ((((UberPostBaseCBuffer_208.x * _526) * _546) * _550) + _526);
  } else {
    _564 = _524;
    _565 = _525;
    _566 = _526;
  }
  _570 = ((_59 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _47;
  _572 = atan(_570 / _46);
  _575 = (_46 < 0.0f);
  _576 = (_46 == 0.0f);
  _577 = (_570 >= 0.0f);
  _578 = (_570 < 0.0f);
  _29[0] = ((((Globals_2208.x) * (TEXCOORD.x + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _30[0] = TEXCOORD.y;
  _29[1] = select((_576 && _577), 2.0f, select((_576 && _578), -2.0f, (select((_575 && _578), (_572 + -3.1415927410125732f), select((_575 && _577), (_572 + 3.1415927410125732f), _572)) * 1.2732394933700562f)));
  _30[1] = (sqrt((_570 * _570) + (_46 * _46)) * 0.5f);
  _29[2] = TEXCOORD.x;
  _30[2] = TEXCOORD.y;
  _635 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _658 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _683 = t10.SampleBias(s7, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _168) + (UberPostScreenEffectsBaseCBuffer_176.x * _43)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_29[min((uint)(_658), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _169) + (UberPostScreenEffectsBaseCBuffer_176.y * _43)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_30[min((uint)(_658), 2u)])))), (Globals_976), int2(0, 0));
  _35[0] = _683.x;
  _35[1] = _683.y;
  _35[2] = _683.z;
  _35[3] = _683.w;
  _696 = ((_35[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _704 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _708 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _723 = UberPostScreenEffectsBaseCBuffer_208.y * _696;
  _737 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _751 = UberPostScreenEffectsBaseCBuffer_208.z * _696;
  _767 = t9.SampleBias(s6, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _168) + (UberPostScreenEffectsBaseCBuffer_160.z * _43)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_29[min((uint)(_737), 2u)]))) + _751), (((((UberPostScreenEffectsRandomCBuffer_000.y + _169) + (UberPostScreenEffectsBaseCBuffer_160.w * _43)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_30[min((uint)(_737), 2u)]))) + _751)), (Globals_976), int2(0, 0));
  _34[0] = _767.x;
  _34[1] = _767.y;
  _34[2] = _767.z;
  _34[3] = _767.w;
  _778 = _34[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _779 = t7.SampleBias(s4, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _43) + _168) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_29[min((uint)(_708), 2u)]) * _704) * UberPostScreenEffectsBaseCBuffer_032.x)) + _723), (((((UberPostScreenEffectsBaseCBuffer_096.y * _43) + _169) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_30[min((uint)(_708), 2u)]) * _704) * UberPostScreenEffectsBaseCBuffer_032.y)) + _723)), (Globals_976), int2(0, 0));
  _787 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _778, 1.0f);
  _33[0] = _779.x;
  _33[1] = _779.y;
  _33[2] = _779.z;
  _33[3] = _779.w;
  _798 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _801 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _787);
  _810 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _811 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _812 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _824 = saturate((_787 * (_33[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _831 = select(_798, (((_810 * _801) + UberPostScreenEffectsBaseCBuffer_064.x) * _779.x), ((_810 * _824) + UberPostScreenEffectsBaseCBuffer_064.x));
  _832 = select(_798, (((_811 * _801) + UberPostScreenEffectsBaseCBuffer_064.y) * _779.y), ((_811 * _824) + UberPostScreenEffectsBaseCBuffer_064.y));
  _833 = select(_798, (((_812 * _801) + UberPostScreenEffectsBaseCBuffer_064.z) * _779.z), ((_812 * _824) + UberPostScreenEffectsBaseCBuffer_064.z));
  _32[0] = _779.x;
  _32[1] = _779.y;
  _32[2] = _779.z;
  _32[3] = _779.w;
  _842 = _32[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _843 = _842 * _778;
  _859 = t8.SampleBias(s5, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _43) + _168) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_29[min((uint)(_635), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _43) + _169) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_30[min((uint)(_635), 2u)])))), (Globals_976), int2(0, 0));
  _31[0] = _859.x;
  _31[1] = _859.y;
  _31[2] = _859.z;
  _31[3] = _859.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _881 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _842));
  } else {
    _881 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_843 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_843 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _883 = ((_31[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _881) * _99;
  _887 = select((_883 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _883;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _963 = ((_887 * (_831 - _564)) + _564);
    _964 = ((_887 * (_832 - _565)) + _565);
    _965 = ((_887 * (_833 - _566)) + _566);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _963 = ((_887 * _831) + _564);
      _964 = ((_887 * _832) + _565);
      _965 = ((_887 * _833) + _566);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _963 = (((_887 * (_831 + -1.0f)) + 1.0f) * _564);
        _964 = (((_887 * (_832 + -1.0f)) + 1.0f) * _565);
        _965 = (((_887 * (_833 + -1.0f)) + 1.0f) * _566);
      } else {
        _929 = _887 * (_831 + -0.5f);
        _930 = _887 * (_832 + -0.5f);
        _931 = _887 * (_833 + -0.5f);
        _963 = select((_564 < 0.5f), ((_564 * 2.0f) * (_929 + 0.5f)), (1.0f - (((1.0f - _564) * 2.0f) * (0.5f - _929))));
        _964 = select((_565 < 0.5f), ((_565 * 2.0f) * (_930 + 0.5f)), (1.0f - (((1.0f - _565) * 2.0f) * (0.5f - _930))));
        _965 = select((_566 < 0.5f), ((_566 * 2.0f) * (_931 + 0.5f)), (1.0f - (((1.0f - _566) * 2.0f) * (0.5f - _931))));
      }
    }
  }
  _970 = ((_964 + _963) + _965) * 0.3333333432674408f;
  _977 = ((_963 - _970) * UberPostFXColorCorrectionCBuffer_000.w) + _970;
  _978 = ((_964 - _970) * UberPostFXColorCorrectionCBuffer_000.w) + _970;
  _979 = ((_965 - _970) * UberPostFXColorCorrectionCBuffer_000.w) + _970;
  if ((Globals_816[3].w) > 0.5f) {
    _987 = t0.SampleBias(s0, float2(dot(float3(_977, _978, _979), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _992 = _987.x;
    _993 = _987.y;
    _994 = _987.z;
  } else {
    _992 = _977;
    _993 = _978;
    _994 = _979;
  }
  _1009 = (((1.0f - _992) - saturate(_992)) * UberPostFXColorCorrectionCBuffer_016.w) + _992;
  _1010 = (((1.0f - _993) - saturate(_993)) * UberPostFXColorCorrectionCBuffer_016.w) + _993;
  _1011 = (((1.0f - _994) - saturate(_994)) * UberPostFXColorCorrectionCBuffer_016.w) + _994;
  _1019 = saturate((saturate(dot(float3(_1009, _1010, _1011), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _1046 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _1009) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1019)) * UberPostFXColorCorrectionCBuffer_032.x) + _1009);
  // _1047 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _1010) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1019)) * UberPostFXColorCorrectionCBuffer_032.x) + _1010);
  // _1048 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _1011) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1019)) * UberPostFXColorCorrectionCBuffer_032.x) + _1011);
  _1046 = ((((UberPostFXColorCorrectionCBuffer_000.x - _1009) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1019)) * UberPostFXColorCorrectionCBuffer_032.x) + _1009);
  _1047 = ((((UberPostFXColorCorrectionCBuffer_000.y - _1010) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1019)) * UberPostFXColorCorrectionCBuffer_032.x) + _1010);
  _1048 = ((((UberPostFXColorCorrectionCBuffer_000.z - _1011) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1019)) * UberPostFXColorCorrectionCBuffer_032.x) + _1011);

  // HDR FX Mask Blend
  float3 result = float3(_1046, _1047, _1048);
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
  _1123 = result.x;
  _1124 = result.y;
  _1125 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _1054 = t3.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _1123 = min((_1054.x + _1046), 1.0f);
        _1124 = min((_1054.x + _1047), 1.0f);
        _1125 = min((_1054.x + _1048), 1.0f);
      } else {
        _1091 = select((_1046 > 0.5f), 0.0f, 1.0f);
        _1092 = select((_1047 > 0.5f), 0.0f, 1.0f);
        _1093 = select((_1048 > 0.5f), 0.0f, 1.0f);
        _1112 = 1.0f - _1054.x;
        _1123 = (((((1.0f - (((1.0f - _1046) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _1091)) + (((_1046 * 2.0f) * _1091) * UberPostFXColorCorrectionCBuffer_048.x)) * _1054.x) + (_1112 * _1046));
        _1124 = (((((1.0f - (((1.0f - _1047) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _1092)) + (((_1047 * 2.0f) * _1092) * UberPostFXColorCorrectionCBuffer_048.y)) * _1054.x) + (_1112 * _1047));
        _1125 = (((((1.0f - (((1.0f - _1048) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1093)) + (((_1048 * 2.0f) * _1093) * UberPostFXColorCorrectionCBuffer_048.z)) * _1054.x) + (_1112 * _1048));
      }
  } else {
    _1123 = _1046;
    _1124 = _1047;
    _1125 = _1048;
  }
  */

  SV_Target.x = _1123;
  SV_Target.y = _1124;
  SV_Target.z = _1125;
  SV_Target.w = _485;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
