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

Texture2D<float4> t12 : register(t12);

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
  float _374;
  float _375;
  float _376;
  float _382;
  float _383;
  float _384;
  float _385;
  float _517;
  float _518;
  float _519;
  float _536;
  float _537;
  float _538;
  float _539;
  float _578;
  float _579;
  float _580;
  float _669;
  float _670;
  float _671;
  float _993;
  float _1075;
  float _1076;
  float _1077;
  float _107;
  float _109;
  bool _112;
  bool _113;
  bool _114;
  bool _115;
  bool _139;
  float4 _155;
  float _164;
  float4 _176;
  float _182;
  float _183;
  float _186;
  float _187;
  float _188;
  float4 _215;
  float _237;
  float _238;
  float _239;
  float _240;
  float _241;
  float _242;
  float _245;
  float _248;
  float _249;
  float _252;
  float _255;
  float _256;
  float _266;
  float _268;
  float _272;
  float _274;
  float _276;
  float _278;
  float _285;
  float _290;
  float _292;
  float _294;
  float4 _303;
  float4 _313;
  float4 _323;
  float4 _369;
  bool _392;
  float _402;
  float _410;
  float _413;
  float4 _434;
  float _471;
  float _472;
  float _473;
  float _474;
  bool _477;
  float _490;
  float _491;
  float _492;
  float4 _503;
  float _523;
  float _556;
  float _558;
  float _564;
  float _603;
  float _604;
  float _610;
  float _612;
  float _613;
  float4 _615;
  float4 _619;
  float _629;
  float _630;
  float _631;
  float _651;
  float _655;
  float _682;
  float _684;
  bool _687;
  bool _688;
  bool _689;
  bool _690;
  int _747;
  int _770;
  float4 _795;
  float _808;
  float _816;
  int _820;
  float _835;
  int _849;
  float _863;
  float4 _879;
  float _890;
  float4 _891;
  float _899;
  bool _910;
  float _913;
  float _922;
  float _923;
  float _924;
  float _936;
  float _943;
  float _944;
  float _945;
  float _954;
  float _955;
  float4 _971;
  float _995;
  float _999;
  float _1041;
  float _1042;
  float _1043;
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
    _155 = t12.SampleBias(s8, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _43)) + (select(_139, select((_113 && _114), 2.0f, select((_113 && _115), -2.0f, (select((_112 && _115), (_109 + -3.1415927410125732f), select((_112 && _114), (_109 + 3.1415927410125732f), _109)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _43)) + (select(_139, (sqrt((_107 * _107) + _63) * 0.6366197466850281f), ((((Globals_080.y) * (TEXCOORD.y + -0.5f)) * _57) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _164 = (_99 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _168 = (_164 * ((_155.x * 2.0f) + -1.0f));
    _169 = (_164 * ((_155.y * 2.0f) + -1.0f));
  } else {
    _168 = 0.0f;
    _169 = 0.0f;
  }
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _176 = t5.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
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
  _215 = t3.SampleBias(s1, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
  _237 = saturate(((_215.z + -1.0f) + (((float4)(t4.SampleBias(s1, float2(((Globals_3344.y) + _215.w), 0.5f), (Globals_976), int2(0, 0)))).x)) / _215.z) * _215.z;
  _238 = _237 * (Globals_3344.x);
  _239 = _238 * ((_215.x * 2.0f) + -1.0f);
  _240 = _238 * ((_215.y * 2.0f) + -1.0f);
  _241 = _207 - _239;
  _242 = _208 - _240;
  _245 = (Globals_3344.z) + 1.0f;
  _248 = _209 - (_245 * _239);
  _249 = _210 - (_245 * _240);
  _252 = 1.0f - (Globals_3344.z);
  _255 = _211 - (_252 * _239);
  _256 = _212 - (_252 * _240);
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _266 = (_44 - UberPostBaseCBuffer_384.x) + -0.5f;
    _268 = (_45 - UberPostBaseCBuffer_384.y) + -0.5f;
    _272 = dot(float2(_266, _268), float2(_266, _268)) * -0.3333333432674408f;
    _274 = (_272 * _266) * UberPostBaseCBuffer_192.z;
    _276 = (_272 * _268) * UberPostBaseCBuffer_192.z;
    _278 = rsqrt(dot(float3(_274, _276, 9.999999747378752e-05f), float3(_274, _276, 9.999999747378752e-05f)));
    _285 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _290 = exp2(log2(sqrt((_274 * _274) + (_276 * _276)) / _285) * UberPostBaseCBuffer_384.z);
    _292 = ((_274 * _278) * _285) * _290;
    _294 = ((_276 * _278) * _285) * _290;
    _303 = t0.SampleBias(s0, float2(((_241 + TEXCOORD.x) + (_292 * UberPostBaseCBuffer_400.w)), ((_242 + TEXCOORD.y) + (_294 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _313 = t0.SampleBias(s0, float2(((_248 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _292)), ((_249 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _294))), (Globals_976), int2(0, 0));
    _323 = t0.SampleBias(s0, float2(((_255 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _292)), ((_256 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _294))), (Globals_976), int2(0, 0));
    _382 = (((float4)(t0.SampleBias(s0, float2(_205, _206), (Globals_976), int2(0, 0)))).w);
    _383 = (((UberPostBaseCBuffer_416.x * _313.y) + (UberPostBaseCBuffer_400.x * _303.x)) + (UberPostBaseCBuffer_432.x * _323.z));
    _384 = (((UberPostBaseCBuffer_416.y * _313.y) + (UberPostBaseCBuffer_400.y * _303.x)) + (UberPostBaseCBuffer_432.y * _323.z));
    _385 = (((UberPostBaseCBuffer_416.z * _313.y) + (UberPostBaseCBuffer_400.z * _303.x)) + (UberPostBaseCBuffer_432.z * _323.z));
  } else {
    if (UberPostBaseCBuffer_176.w > 0.0f) {
      _374 = (((float4)(t0.SampleBias(s0, float2((_241 + TEXCOORD.x), (_242 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).x);
      _375 = (((float4)(t0.SampleBias(s0, float2((_248 + TEXCOORD.x), (_249 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).y);
      _376 = (((float4)(t0.SampleBias(s0, float2((_255 + TEXCOORD.x), (_256 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).z);
    } else {
      _369 = t0.SampleBias(s0, float2(_205, _206), (Globals_976), int2(0, 0));
      _374 = _369.x;
      _375 = _369.y;
      _376 = _369.z;
    }
    _382 = (((float4)(t0.SampleBias(s0, float2(_205, _206), (Globals_976), int2(0, 0)))).w);
    _383 = _374;
    _384 = _375;
    _385 = _376;
  }
  _392 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _392)) {
    _402 = fmod((((Globals_2208.y) * _206) * UberPostBaseCBuffer_448.x), 2.0f);
    _410 = (((select((_402 > 1.0f), (2.0f - _402), _402) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _205;
    _413 = (Globals_2208.w) * (Globals_2208.x);
    _434 = t6.SampleBias(s3, float2(_410, ((select(((frac((((_410 + abs(UberPostBaseCBuffer_464.y)) * _413) - (UberPostBaseCBuffer_464.y * _206)) / ((_413 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _206)), (Globals_976), int2(0, 0));
    _471 = ((((-0.699999988079071f - _434.x) + (exp2(log2(abs(_434.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_434.x < 0.30000001192092896f), 0.0f, 1.0f)) + _434.x) * UberPostBaseCBuffer_336.x;
    _472 = ((((-0.699999988079071f - _434.y) + (exp2(log2(abs(_434.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_434.y < 0.30000001192092896f), 0.0f, 1.0f)) + _434.y) * UberPostBaseCBuffer_336.x;
    _473 = ((((-0.699999988079071f - _434.z) + (exp2(log2(abs(_434.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_434.z < 0.30000001192092896f), 0.0f, 1.0f)) + _434.z) * UberPostBaseCBuffer_336.x;
    _474 = dot(float3(_383, _384, _385), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _477 = (UberPostBaseCBuffer_352.x > 0.5f);
    _490 = select(_477, ((((_471 * _474) - _471) * _382) + _471), _471);
    _491 = select(_477, ((((_472 * _474) - _472) * _382) + _472), _472);
    _492 = select(_477, ((((_473 * _474) - _473) * _382) + _473), _473);
    if (_392) {
      _503 = t7.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _205) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _206) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _517 = (((_503.x * _471) * UberPostBaseCBuffer_336.y) + _490);
      _518 = (((_503.y * _472) * UberPostBaseCBuffer_336.y) + _491);
      _519 = (((_503.z * _473) * UberPostBaseCBuffer_336.y) + _492);
    } else {
      _517 = _490;
      _518 = _491;
      _519 = _492;
    }
    _523 = (_237 * (Globals_3344.w)) + 1.0f;
    _536 = ((_523 * _383) + _517);
    _537 = ((_523 * _384) + _518);
    _538 = ((_523 * _385) + _519);
    _539 = saturate((((_518 + _517) + _519) * 0.33329999446868896f) + _382);
  } else {
    _536 = _383;
    _537 = _384;
    _538 = _385;
    _539 = _382;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _556 = abs(_206 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _558 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_205 - UberPostBaseCBuffer_112.x);
    _564 = exp2(log2(saturate(1.0f - dot(float2(_558, _556), float2(_558, _556)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _578 = (((_564 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _536);
    _579 = (((_564 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _537);
    _580 = (((_564 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _538);
  } else {
    _578 = _536;
    _579 = _537;
    _580 = _538;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_578, _579, _580);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t2, s0, UberPostBaseCBuffer_000.xyz);
    _629 = tonemapped.x;
    _630 = tonemapped.y;
    _631 = tonemapped.z;
  } else {
    _603 = saturate((log2((_580 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _604 = floor(_603);
    _610 = ((saturate((log2((_579 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _612 = (_604 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_578 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _613 = _603 - _604;
    _615 = t2.SampleLevel(s0, float2((_612 + UberPostBaseCBuffer_000.y), _610), 0.0f);
    _619 = t2.SampleLevel(s0, float2(_612, _610), 0.0f);
    _629 = ((_615.x - _619.x) * _613) + _619.x;
    _630 = ((_615.y - _619.y) * _613) + _619.y;
    _631 = ((_615.z - _619.z) * _613) + _619.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _651 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _655 = 1.0f - (sqrt(dot(float3(_629, _630, _631), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _669 = ((((UberPostBaseCBuffer_208.x * _629) * _651) * _655) + _629);
    _670 = ((((UberPostBaseCBuffer_208.x * _630) * _651) * _655) + _630);
    _671 = ((((UberPostBaseCBuffer_208.x * _631) * _651) * _655) + _631);
  } else {
    _669 = _629;
    _670 = _630;
    _671 = _631;
  }
  _682 = ((((((Globals_080.z) + -1.0f) * (Globals_080.y)) + -1.0f) * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _47;
  _684 = atan(_682 / _46);
  _687 = (_46 < 0.0f);
  _688 = (_46 == 0.0f);
  _689 = (_682 >= 0.0f);
  _690 = (_682 < 0.0f);
  _29[0] = ((((Globals_2208.x) * (TEXCOORD.x + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _30[0] = TEXCOORD.y;
  _29[1] = select((_688 && _689), 2.0f, select((_688 && _690), -2.0f, (select((_687 && _690), (_684 + -3.1415927410125732f), select((_687 && _689), (_684 + 3.1415927410125732f), _684)) * 1.2732394933700562f)));
  _30[1] = (sqrt((_682 * _682) + (_46 * _46)) * 0.5f);
  _29[2] = TEXCOORD.x;
  _30[2] = TEXCOORD.y;
  _747 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _770 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _795 = t11.SampleBias(s7, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _168) + (UberPostScreenEffectsBaseCBuffer_176.x * _43)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_29[min((uint)(_770), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _169) + (UberPostScreenEffectsBaseCBuffer_176.y * _43)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_30[min((uint)(_770), 2u)])))), (Globals_976), int2(0, 0));
  _35[0] = _795.x;
  _35[1] = _795.y;
  _35[2] = _795.z;
  _35[3] = _795.w;
  _808 = ((_35[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _816 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _820 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _835 = UberPostScreenEffectsBaseCBuffer_208.y * _808;
  _849 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _863 = UberPostScreenEffectsBaseCBuffer_208.z * _808;
  _879 = t10.SampleBias(s6, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _168) + (UberPostScreenEffectsBaseCBuffer_160.z * _43)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_29[min((uint)(_849), 2u)]))) + _863), (((((UberPostScreenEffectsRandomCBuffer_000.y + _169) + (UberPostScreenEffectsBaseCBuffer_160.w * _43)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_30[min((uint)(_849), 2u)]))) + _863)), (Globals_976), int2(0, 0));
  _34[0] = _879.x;
  _34[1] = _879.y;
  _34[2] = _879.z;
  _34[3] = _879.w;
  _890 = _34[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _891 = t8.SampleBias(s4, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _43) + _168) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_29[min((uint)(_820), 2u)]) * _816) * UberPostScreenEffectsBaseCBuffer_032.x)) + _835), (((((UberPostScreenEffectsBaseCBuffer_096.y * _43) + _169) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_30[min((uint)(_820), 2u)]) * _816) * UberPostScreenEffectsBaseCBuffer_032.y)) + _835)), (Globals_976), int2(0, 0));
  _899 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _890, 1.0f);
  _33[0] = _891.x;
  _33[1] = _891.y;
  _33[2] = _891.z;
  _33[3] = _891.w;
  _910 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _913 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _899);
  _922 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _923 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _924 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _936 = saturate((_899 * (_33[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _943 = select(_910, (((_922 * _913) + UberPostScreenEffectsBaseCBuffer_064.x) * _891.x), ((_922 * _936) + UberPostScreenEffectsBaseCBuffer_064.x));
  _944 = select(_910, (((_923 * _913) + UberPostScreenEffectsBaseCBuffer_064.y) * _891.y), ((_923 * _936) + UberPostScreenEffectsBaseCBuffer_064.y));
  _945 = select(_910, (((_924 * _913) + UberPostScreenEffectsBaseCBuffer_064.z) * _891.z), ((_924 * _936) + UberPostScreenEffectsBaseCBuffer_064.z));
  _32[0] = _891.x;
  _32[1] = _891.y;
  _32[2] = _891.z;
  _32[3] = _891.w;
  _954 = _32[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _955 = _954 * _890;
  _971 = t9.SampleBias(s5, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _43) + _168) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_29[min((uint)(_747), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _43) + _169) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_30[min((uint)(_747), 2u)])))), (Globals_976), int2(0, 0));
  _31[0] = _971.x;
  _31[1] = _971.y;
  _31[2] = _971.z;
  _31[3] = _971.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _993 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _954));
  } else {
    _993 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_955 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_955 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _995 = ((_31[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _993) * _99;
  _999 = select((_995 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _995;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1075 = ((_999 * (_943 - _669)) + _669);
    _1076 = ((_999 * (_944 - _670)) + _670);
    _1077 = ((_999 * (_945 - _671)) + _671);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1075 = ((_999 * _943) + _669);
      _1076 = ((_999 * _944) + _670);
      _1077 = ((_999 * _945) + _671);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1075 = (((_999 * (_943 + -1.0f)) + 1.0f) * _669);
        _1076 = (((_999 * (_944 + -1.0f)) + 1.0f) * _670);
        _1077 = (((_999 * (_945 + -1.0f)) + 1.0f) * _671);
      } else {
        _1041 = _999 * (_943 + -0.5f);
        _1042 = _999 * (_944 + -0.5f);
        _1043 = _999 * (_945 + -0.5f);
        _1075 = select((_669 < 0.5f), ((_669 * 2.0f) * (_1041 + 0.5f)), (1.0f - (((1.0f - _669) * 2.0f) * (0.5f - _1041))));
        _1076 = select((_670 < 0.5f), ((_670 * 2.0f) * (_1042 + 0.5f)), (1.0f - (((1.0f - _670) * 2.0f) * (0.5f - _1042))));
        _1077 = select((_671 < 0.5f), ((_671 * 2.0f) * (_1043 + 0.5f)), (1.0f - (((1.0f - _671) * 2.0f) * (0.5f - _1043))));
      }
    }
  }
  SV_Target.x = (_1075);
  SV_Target.y = (_1076);
  SV_Target.z = (_1077);
  SV_Target.w = _539;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
