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

Texture2D<float4> t13 : register(t13);

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

SamplerState s9 : register(s9);

SamplerState s10 : register(s10);

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
  float _50;
  float _51;
  float _52;
  float _53;
  float _54;
  float _64;
  float _66;
  float _68;
  float _69;
  float _70;
  float _81;
  float _91;
  float _97;
  float _103;
  float _106;
  float _175;
  float _176;
  float _212;
  float _213;
  float _214;
  float _215;
  float _216;
  float _217;
  float _218;
  float _219;
  float _318;
  float _319;
  float _320;
  float _349;
  float _350;
  float _351;
  float _458;
  float _459;
  float _460;
  float _646;
  float _647;
  float _648;
  float _658;
  float _659;
  float _660;
  float _661;
  float _700;
  float _701;
  float _702;
  float _828;
  float _829;
  float _830;
  float _1152;
  float _1234;
  float _1235;
  float _1236;
  float _114;
  float _116;
  bool _119;
  bool _120;
  bool _121;
  bool _122;
  bool _146;
  float4 _162;
  float _171;
  float4 _183;
  float _189;
  float _190;
  float _193;
  float _194;
  float _195;
  float _222;
  float _231;
  float _241;
  float _244;
  float _245;
  float _252;
  float _253;
  float _254;
  float _256;
  float _258;
  float _260;
  float _269;
  float _282;
  float _289;
  float _296;
  float _297;
  float _298;
  float4 _312;
  float4 _343;
  float _357;
  float _358;
  float _361;
  float _362;
  float _365;
  float _366;
  float4 _367;
  float _373;
  float _375;
  float _379;
  float _381;
  float _383;
  float _385;
  float _392;
  float _397;
  float _399;
  float _401;
  float4 _408;
  float4 _416;
  float4 _424;
  float4 _473;
  float _485;
  float _486;
  float _499;
  float _504;
  float _514;
  float _515;
  float _516;
  bool _523;
  float _533;
  float _541;
  float _544;
  float4 _563;
  float _600;
  float _601;
  float _602;
  float _603;
  bool _606;
  float _619;
  float _620;
  float _621;
  float4 _632;
  float _678;
  float _680;
  float _686;
  float _707;
  float _708;
  float _709;
  float _737;
  float _738;
  float _744;
  float _746;
  float _747;
  float4 _749;
  float4 _753;
  float _763;
  float _764;
  float _765;
  float _790;
  float _791;
  float _792;
  float _810;
  float _814;
  float _841;
  float _843;
  bool _846;
  bool _847;
  bool _848;
  bool _849;
  int _906;
  int _929;
  float4 _954;
  float _967;
  float _975;
  int _979;
  float _994;
  int _1008;
  float _1022;
  float4 _1038;
  float _1049;
  float4 _1050;
  float _1058;
  bool _1069;
  float _1072;
  float _1081;
  float _1082;
  float _1083;
  float _1095;
  float _1102;
  float _1103;
  float _1104;
  float _1113;
  float _1114;
  float4 _1130;
  float _1154;
  float _1158;
  float _1200;
  float _1201;
  float _1202;
  float _32[3];
  float _33[3];
  float _34[4];
  float _35[4];
  float _36[4];
  float _37[4];
  float _38[4];
  _50 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _51 = TEXCOORD.x * 2.0f;
  _52 = TEXCOORD.y * 2.0f;
  _53 = _51 + -1.0f;
  _54 = _52 + -1.0f;
  _64 = (Globals_080.z) + -1.0f;
  _66 = (_64 * (Globals_080.y)) + -1.0f;
  _68 = (_66 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _69 = _68 * _54;
  _70 = _53 * _53;
  _81 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_53)), (_68 * (1.0f - abs(_54)))), (1.0f - (sqrt((_69 * _69) + _70) * 0.7070000171661377f)));
  _91 = saturate((_81 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _97 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_91 * _91) * (3.0f - (_91 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _81), 0.0f, 1.0f));
  _103 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _97), _97) * UberPostScreenEffectsBaseCBuffer_016.z;
  _106 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _103, 0.0f) * _103;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _114 = ((_66 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _54;
    _116 = atan(_114 / _53);
    _119 = (_53 < 0.0f);
    _120 = (_53 == 0.0f);
    _121 = (_114 >= 0.0f);
    _122 = (_114 < 0.0f);
    _146 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _162 = t13.SampleBias(s10, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _50)) + (select(_146, select((_120 && _121), 2.0f, select((_120 && _122), -2.0f, (select((_119 && _122), (_116 + -3.1415927410125732f), select((_119 && _121), (_116 + 3.1415927410125732f), _116)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _50)) + (select(_146, (sqrt((_114 * _114) + _70) * 0.6366197466850281f), ((((Globals_080.y) * (TEXCOORD.y + -0.5f)) * _64) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _171 = (_106 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _175 = (_171 * ((_162.x * 2.0f) + -1.0f));
    _176 = (_171 * ((_162.y * 2.0f) + -1.0f));
  } else {
    _175 = 0.0f;
    _176 = 0.0f;
  }
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _183 = t3.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _189 = (_183.x * 0.10000000149011612f) + _175;
    _190 = (_183.y * 0.10000000149011612f) + _176;
    _193 = UberPostBaseCBuffer_176.w * _183.z;
    _194 = _193 * _189;
    _195 = _193 * _190;
    _212 = (_189 + TEXCOORD.x);
    _213 = (_190 + TEXCOORD.y);
    _214 = ((_194 * UberPostBaseCBuffer_176.x) + _189);
    _215 = ((_195 * UberPostBaseCBuffer_176.x) + _190);
    _216 = ((_194 * UberPostBaseCBuffer_176.y) + _189);
    _217 = ((_195 * UberPostBaseCBuffer_176.y) + _190);
    _218 = ((_194 * UberPostBaseCBuffer_176.z) + _189);
    _219 = ((_195 * UberPostBaseCBuffer_176.z) + _190);
  } else {
    _212 = TEXCOORD.x;
    _213 = TEXCOORD.y;
    _214 = 0.0f;
    _215 = 0.0f;
    _216 = 0.0f;
    _217 = 0.0f;
    _218 = 0.0f;
    _219 = 0.0f;
  }
  _222 = frac(Globals_208[1].x);
  _231 = (((float4)(t4.SampleBias(s3, float2((_222 + (TEXCOORD.x * 5.0f)), (_222 + (TEXCOORD.y * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _241 = ((_231 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_231 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _244 = cos(UberPostBaseCBuffer_224.w);
  _245 = sin(UberPostBaseCBuffer_224.w);
  _252 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _241;
  _253 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _241;
  _254 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _241;
  _256 = _252 * _245;
  _258 = _253 * _245;
  _260 = _254 * _245;
  _269 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + TEXCOORD.y);
  _282 = frac(_222 * 1234.0f);
  _289 = (((_282 * _282) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _282) + UberPostBaseCBuffer_256.x;
  _296 = select((_289 < (((float4)(t4.SampleBias(s3, float2(0.5f, (_269 + _256)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _297 = select((_289 < (((float4)(t4.SampleBias(s3, float2(0.5f, (_269 + _258)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _298 = select((_289 < (((float4)(t4.SampleBias(s3, float2(0.5f, (_269 + _260)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _312 = t5.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * TEXCOORD.x) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * TEXCOORD.y) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _318 = (_312.x * _296);
    _319 = (_312.x * _297);
    _320 = (_312.x * _298);
  } else {
    _318 = _296;
    _319 = _297;
    _320 = _298;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _343 = t5.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * TEXCOORD.x) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * TEXCOORD.y) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _349 = (_343.y * _318);
    _350 = (_343.y * _319);
    _351 = (_343.y * _320);
  } else {
    _349 = _318;
    _350 = _319;
    _351 = _320;
  }
  _357 = (_214 + TEXCOORD.x) + (_252 * _244);
  _358 = (_215 + TEXCOORD.y) + _256;
  _361 = (_216 + TEXCOORD.x) + (_253 * _244);
  _362 = (_217 + TEXCOORD.y) + _258;
  _365 = (_218 + TEXCOORD.x) + (_254 * _244);
  _366 = (_219 + TEXCOORD.y) + _260;
  _367 = t0.SampleBias(s0, float2(_212, _213), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _373 = (_51 - UberPostBaseCBuffer_384.x) + -0.5f;
    _375 = (_52 - UberPostBaseCBuffer_384.y) + -0.5f;
    _379 = dot(float2(_373, _375), float2(_373, _375)) * -0.3333333432674408f;
    _381 = (_379 * _373) * UberPostBaseCBuffer_192.z;
    _383 = (_379 * _375) * UberPostBaseCBuffer_192.z;
    _385 = rsqrt(dot(float3(_381, _383, 9.999999747378752e-05f), float3(_381, _383, 9.999999747378752e-05f)));
    _392 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _397 = exp2(log2(sqrt((_381 * _381) + (_383 * _383)) / _392) * UberPostBaseCBuffer_384.z);
    _399 = ((_381 * _385) * _392) * _397;
    _401 = ((_383 * _385) * _392) * _397;
    _408 = t0.SampleBias(s0, float2((_357 + (_399 * UberPostBaseCBuffer_400.w)), (_358 + (_401 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _416 = t0.SampleBias(s0, float2((_361 + (UberPostBaseCBuffer_416.w * _399)), (_362 + (UberPostBaseCBuffer_416.w * _401))), (Globals_976), int2(0, 0));
    _424 = t0.SampleBias(s0, float2((_365 + (UberPostBaseCBuffer_432.w * _399)), (_366 + (UberPostBaseCBuffer_432.w * _401))), (Globals_976), int2(0, 0));
    _458 = (((UberPostBaseCBuffer_416.x * _416.y) + (UberPostBaseCBuffer_400.x * _408.x)) + (UberPostBaseCBuffer_432.x * _424.z));
    _459 = (((UberPostBaseCBuffer_416.y * _416.y) + (UberPostBaseCBuffer_400.y * _408.x)) + (UberPostBaseCBuffer_432.y * _424.z));
    _460 = (((UberPostBaseCBuffer_416.z * _416.y) + (UberPostBaseCBuffer_400.z * _408.x)) + (UberPostBaseCBuffer_432.z * _424.z));
  } else {
    _458 = (((float4)(t0.SampleBias(s0, float2(_357, _358), (Globals_976), int2(0, 0)))).x);
    _459 = (((float4)(t0.SampleBias(s0, float2(_361, _362), (Globals_976), int2(0, 0)))).y);
    _460 = (((float4)(t0.SampleBias(s0, float2(_365, _366), (Globals_976), int2(0, 0)))).z);
  }
  _473 = t8.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * TEXCOORD.x) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * TEXCOORD.y) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _485 = frac((Globals_208[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  _486 = 0.4000000059604645f - _485;
  _499 = (UberPostBaseCBuffer_368.w * max(((select((_486 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_485 + 0.05000000074505806f) * 10.0f) - _486)) + _486), 0.0f)) + 1.0f;
  _504 = 1.0f - UberPostBaseCBuffer_368.z;
  _514 = (((((_473.x * 12.0f) * _499) * _504) + UberPostBaseCBuffer_368.z) * _458) + _349;
  _515 = (((((_473.y * 12.0f) * _499) * _504) + UberPostBaseCBuffer_368.z) * _459) + _350;
  _516 = (((((_473.z * 12.0f) * _499) * _504) + UberPostBaseCBuffer_368.z) * _460) + _351;
  _523 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _523)) {
    _533 = fmod((((Globals_2208.y) * _213) * UberPostBaseCBuffer_448.x), 2.0f);
    _541 = (((select((_533 > 1.0f), (2.0f - _533), _533) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _212;
    _544 = (Globals_2208.w) * (Globals_2208.x);
    _563 = t6.SampleBias(s5, float2(_541, ((select(((frac((((_541 + abs(UberPostBaseCBuffer_464.y)) * _544) - (UberPostBaseCBuffer_464.y * _213)) / ((_544 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _213)), (Globals_976), int2(0, 0));
    _600 = ((((-0.699999988079071f - _563.x) + (exp2(log2(abs(_563.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_563.x < 0.30000001192092896f), 0.0f, 1.0f)) + _563.x) * UberPostBaseCBuffer_336.x;
    _601 = ((((-0.699999988079071f - _563.y) + (exp2(log2(abs(_563.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_563.y < 0.30000001192092896f), 0.0f, 1.0f)) + _563.y) * UberPostBaseCBuffer_336.x;
    _602 = ((((-0.699999988079071f - _563.z) + (exp2(log2(abs(_563.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_563.z < 0.30000001192092896f), 0.0f, 1.0f)) + _563.z) * UberPostBaseCBuffer_336.x;
    _603 = dot(float3(_514, _515, _516), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _606 = (UberPostBaseCBuffer_352.x > 0.5f);
    _619 = select(_606, ((((_600 * _603) - _600) * _367.w) + _600), _600);
    _620 = select(_606, ((((_601 * _603) - _601) * _367.w) + _601), _601);
    _621 = select(_606, ((((_602 * _603) - _602) * _367.w) + _602), _602);
    if (_523) {
      _632 = t7.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _212) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _213) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _646 = (((_632.x * _600) * UberPostBaseCBuffer_336.y) + _619);
      _647 = (((_632.y * _601) * UberPostBaseCBuffer_336.y) + _620);
      _648 = (((_632.z * _602) * UberPostBaseCBuffer_336.y) + _621);
    } else {
      _646 = _619;
      _647 = _620;
      _648 = _621;
    }
    _658 = (_646 + _514);
    _659 = (_647 + _515);
    _660 = (_648 + _516);
    _661 = saturate((((_647 + _646) + _648) * 0.33329999446868896f) + _367.w);
  } else {
    _658 = _514;
    _659 = _515;
    _660 = _516;
    _661 = _367.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _678 = abs(_213 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _680 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_212 - UberPostBaseCBuffer_112.x);
    _686 = exp2(log2(saturate(1.0f - dot(float2(_680, _678), float2(_680, _678)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _700 = (((_686 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _658);
    _701 = (((_686 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _659);
    _702 = (((_686 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _660);
  } else {
    _700 = _658;
    _701 = _659;
    _702 = _660;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_700, _701, _702);
    float3 tonemapped = UberpostSrgbLutSample(untonemapped, UberPostBaseCBuffer_000, t2, s0);
    _790 = tonemapped.x;
    _791 = tonemapped.y;
    _792 = tonemapped.z;
  } else {
    _707 = saturate(_700);
    _708 = saturate(_701);
    _709 = saturate(_702);
    _737 = select((_709 <= 0.0031308000907301903f), (_709 * 12.920000076293945f), ((exp2(log2(abs(_709)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * UberPostBaseCBuffer_000.z;
    _738 = floor(_737);
    _744 = ((select((_708 <= 0.0031308000907301903f), (_708 * 12.920000076293945f), ((exp2(log2(abs(_708)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _746 = (((select((_707 <= 0.0031308000907301903f), (_707 * 12.920000076293945f), ((exp2(log2(abs(_707)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x) + (_738 * UberPostBaseCBuffer_000.y);
    _747 = _737 - _738;
    _749 = t2.SampleLevel(s0, float2((_746 + UberPostBaseCBuffer_000.y), _744), 0.0f);
    _753 = t2.SampleLevel(s0, float2(_746, _744), 0.0f);
    _763 = ((_749.x - _753.x) * _747) + _753.x;
    _764 = ((_749.y - _753.y) * _747) + _753.y;
    _765 = ((_749.z - _753.z) * _747) + _753.z;
    _790 = select((_763 <= 0.040449999272823334f), (_763 * 0.07739938050508499f), exp2(log2(abs((_763 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _791 = select((_764 <= 0.040449999272823334f), (_764 * 0.07739938050508499f), exp2(log2(abs((_764 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _792 = select((_765 <= 0.040449999272823334f), (_765 * 0.07739938050508499f), exp2(log2(abs((_765 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _810 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _814 = 1.0f - (sqrt(dot(float3(_790, _791, _792), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _828 = ((((UberPostBaseCBuffer_208.x * _790) * _810) * _814) + _790);
    _829 = ((((UberPostBaseCBuffer_208.x * _791) * _810) * _814) + _791);
    _830 = ((((UberPostBaseCBuffer_208.x * _792) * _810) * _814) + _792);
  } else {
    _828 = _790;
    _829 = _791;
    _830 = _792;
  }
  _841 = ((((((Globals_080.z) + -1.0f) * (Globals_080.y)) + -1.0f) * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _54;
  _843 = atan(_841 / _53);
  _846 = (_53 < 0.0f);
  _847 = (_53 == 0.0f);
  _848 = (_841 >= 0.0f);
  _849 = (_841 < 0.0f);
  _32[0] = ((((Globals_2208.x) * (TEXCOORD.x + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _33[0] = TEXCOORD.y;
  _32[1] = select((_847 && _848), 2.0f, select((_847 && _849), -2.0f, (select((_846 && _849), (_843 + -3.1415927410125732f), select((_846 && _848), (_843 + 3.1415927410125732f), _843)) * 1.2732394933700562f)));
  _33[1] = (sqrt((_841 * _841) + (_53 * _53)) * 0.5f);
  _32[2] = TEXCOORD.x;
  _33[2] = TEXCOORD.y;
  _906 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _929 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _954 = t12.SampleBias(s9, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _175) + (UberPostScreenEffectsBaseCBuffer_176.x * _50)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_32[min((uint)(_929), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _176) + (UberPostScreenEffectsBaseCBuffer_176.y * _50)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_33[min((uint)(_929), 2u)])))), (Globals_976), int2(0, 0));
  _38[0] = _954.x;
  _38[1] = _954.y;
  _38[2] = _954.z;
  _38[3] = _954.w;
  _967 = ((_38[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _975 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _979 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _994 = UberPostScreenEffectsBaseCBuffer_208.y * _967;
  _1008 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1022 = UberPostScreenEffectsBaseCBuffer_208.z * _967;
  _1038 = t11.SampleBias(s8, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _175) + (UberPostScreenEffectsBaseCBuffer_160.z * _50)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_32[min((uint)(_1008), 2u)]))) + _1022), (((((UberPostScreenEffectsRandomCBuffer_000.y + _176) + (UberPostScreenEffectsBaseCBuffer_160.w * _50)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_33[min((uint)(_1008), 2u)]))) + _1022)), (Globals_976), int2(0, 0));
  _37[0] = _1038.x;
  _37[1] = _1038.y;
  _37[2] = _1038.z;
  _37[3] = _1038.w;
  _1049 = _37[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1050 = t9.SampleBias(s6, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _50) + _175) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_32[min((uint)(_979), 2u)]) * _975) * UberPostScreenEffectsBaseCBuffer_032.x)) + _994), (((((UberPostScreenEffectsBaseCBuffer_096.y * _50) + _176) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_33[min((uint)(_979), 2u)]) * _975) * UberPostScreenEffectsBaseCBuffer_032.y)) + _994)), (Globals_976), int2(0, 0));
  _1058 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1049, 1.0f);
  _36[0] = _1050.x;
  _36[1] = _1050.y;
  _36[2] = _1050.z;
  _36[3] = _1050.w;
  _1069 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1072 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1058);
  _1081 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1082 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1083 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1095 = saturate((_1058 * (_36[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1102 = select(_1069, (((_1081 * _1072) + UberPostScreenEffectsBaseCBuffer_064.x) * _1050.x), ((_1081 * _1095) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1103 = select(_1069, (((_1082 * _1072) + UberPostScreenEffectsBaseCBuffer_064.y) * _1050.y), ((_1082 * _1095) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1104 = select(_1069, (((_1083 * _1072) + UberPostScreenEffectsBaseCBuffer_064.z) * _1050.z), ((_1083 * _1095) + UberPostScreenEffectsBaseCBuffer_064.z));
  _35[0] = _1050.x;
  _35[1] = _1050.y;
  _35[2] = _1050.z;
  _35[3] = _1050.w;
  _1113 = _35[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1114 = _1113 * _1049;
  _1130 = t10.SampleBias(s7, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _50) + _175) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_32[min((uint)(_906), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _50) + _176) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_33[min((uint)(_906), 2u)])))), (Globals_976), int2(0, 0));
  _34[0] = _1130.x;
  _34[1] = _1130.y;
  _34[2] = _1130.z;
  _34[3] = _1130.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1152 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1113));
  } else {
    _1152 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1114 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1114 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1154 = ((_34[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1152) * _106;
  _1158 = select((_1154 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1154;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1234 = ((_1158 * (_1102 - _828)) + _828);
    _1235 = ((_1158 * (_1103 - _829)) + _829);
    _1236 = ((_1158 * (_1104 - _830)) + _830);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1234 = ((_1158 * _1102) + _828);
      _1235 = ((_1158 * _1103) + _829);
      _1236 = ((_1158 * _1104) + _830);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1234 = (((_1158 * (_1102 + -1.0f)) + 1.0f) * _828);
        _1235 = (((_1158 * (_1103 + -1.0f)) + 1.0f) * _829);
        _1236 = (((_1158 * (_1104 + -1.0f)) + 1.0f) * _830);
      } else {
        _1200 = _1158 * (_1102 + -0.5f);
        _1201 = _1158 * (_1103 + -0.5f);
        _1202 = _1158 * (_1104 + -0.5f);
        _1234 = select((_828 < 0.5f), ((_828 * 2.0f) * (_1200 + 0.5f)), (1.0f - (((1.0f - _828) * 2.0f) * (0.5f - _1200))));
        _1235 = select((_829 < 0.5f), ((_829 * 2.0f) * (_1201 + 0.5f)), (1.0f - (((1.0f - _829) * 2.0f) * (0.5f - _1201))));
        _1236 = select((_830 < 0.5f), ((_830 * 2.0f) * (_1202 + 0.5f)), (1.0f - (((1.0f - _830) * 2.0f) * (0.5f - _1202))));
      }
    }
  }
  SV_Target.x = (_1234);
  SV_Target.y = (_1235);
  SV_Target.z = (_1236);
  SV_Target.w = _661;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
