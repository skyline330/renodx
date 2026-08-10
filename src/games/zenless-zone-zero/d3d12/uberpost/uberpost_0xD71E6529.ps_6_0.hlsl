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
  float _60;
  float _61;
  float _62;
  float _63;
  float _64;
  float _65;
  float _66;
  float _67;
  float _166;
  float _167;
  float _168;
  float _197;
  float _198;
  float _199;
  float _308;
  float _309;
  float _310;
  float _496;
  float _497;
  float _498;
  float _508;
  float _509;
  float _510;
  float _511;
  float _550;
  float _551;
  float _552;
  float _588;
  float _589;
  float _590;
  float _617;
  float _618;
  float _619;
  float _748;
  float _749;
  float _750;
  float4 _32;
  float _36;
  float _37;
  float _42;
  float _43;
  float _70;
  float _79;
  float _89;
  float _92;
  float _93;
  float _100;
  float _101;
  float _102;
  float _104;
  float _106;
  float _108;
  float _117;
  float _130;
  float _137;
  float _144;
  float _145;
  float _146;
  float4 _160;
  float4 _191;
  float _205;
  float _206;
  float _209;
  float _210;
  float _213;
  float _214;
  float4 _215;
  float _223;
  float _225;
  float _229;
  float _231;
  float _233;
  float _235;
  float _242;
  float _247;
  float _249;
  float _251;
  float4 _258;
  float4 _266;
  float4 _274;
  float4 _323;
  float _335;
  float _336;
  float _349;
  float _354;
  float _364;
  float _365;
  float _366;
  bool _373;
  float _383;
  float _391;
  float _394;
  float4 _413;
  float _450;
  float _451;
  float _452;
  float _453;
  bool _456;
  float _469;
  float _470;
  float _471;
  float4 _482;
  float _528;
  float _530;
  float _536;
  float _570;
  float _574;
  float _595;
  float _602;
  float _603;
  float _604;
  float4 _612;
  float _634;
  float _635;
  float _636;
  float _644;
  float _671;
  float _672;
  float _673;
  float4 _679;
  float _716;
  float _717;
  float _718;
  float _737;
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _32 = t4.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _36 = _32.x * 0.10000000149011612f;
    _37 = _32.y * 0.10000000149011612f;
    _42 = (_36 * _32.z) * UberPostBaseCBuffer_176.w;
    _43 = (_37 * _32.z) * UberPostBaseCBuffer_176.w;
    _60 = (_36 + TEXCOORD.x);
    _61 = (_37 + TEXCOORD.y);
    _62 = ((_42 * UberPostBaseCBuffer_176.x) + _36);
    _63 = ((_43 * UberPostBaseCBuffer_176.x) + _37);
    _64 = ((_42 * UberPostBaseCBuffer_176.y) + _36);
    _65 = ((_43 * UberPostBaseCBuffer_176.y) + _37);
    _66 = ((UberPostBaseCBuffer_176.z * _42) + _36);
    _67 = ((UberPostBaseCBuffer_176.z * _43) + _37);
  } else {
    _60 = TEXCOORD.x;
    _61 = TEXCOORD.y;
    _62 = 0.0f;
    _63 = 0.0f;
    _64 = 0.0f;
    _65 = 0.0f;
    _66 = 0.0f;
    _67 = 0.0f;
  }
  _70 = frac(Globals_208[1].x);
  _79 = (((float4)(t5.SampleBias(s3, float2((_70 + (TEXCOORD.x * 5.0f)), (_70 + (TEXCOORD.y * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _89 = ((_79 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_79 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _92 = cos(UberPostBaseCBuffer_224.w);
  _93 = sin(UberPostBaseCBuffer_224.w);
  _100 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _89;
  _101 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _89;
  _102 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _89;
  _104 = _100 * _93;
  _106 = _101 * _93;
  _108 = _102 * _93;
  _117 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + TEXCOORD.y);
  _130 = frac(_70 * 1234.0f);
  _137 = (((_130 * _130) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _130) + UberPostBaseCBuffer_256.x;
  _144 = select((_137 < (((float4)(t5.SampleBias(s3, float2(0.5f, (_117 + _104)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _145 = select((_137 < (((float4)(t5.SampleBias(s3, float2(0.5f, (_117 + _106)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _146 = select((_137 < (((float4)(t5.SampleBias(s3, float2(0.5f, (_117 + _108)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _160 = t6.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * TEXCOORD.x) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * TEXCOORD.y) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _166 = (_160.x * _144);
    _167 = (_160.x * _145);
    _168 = (_160.x * _146);
  } else {
    _166 = _144;
    _167 = _145;
    _168 = _146;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _191 = t6.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * TEXCOORD.x) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * TEXCOORD.y) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _197 = (_191.y * _166);
    _198 = (_191.y * _167);
    _199 = (_191.y * _168);
  } else {
    _197 = _166;
    _198 = _167;
    _199 = _168;
  }
  _205 = (_62 + TEXCOORD.x) + (_100 * _92);
  _206 = (_63 + TEXCOORD.y) + _104;
  _209 = (_64 + TEXCOORD.x) + (_101 * _92);
  _210 = (_65 + TEXCOORD.y) + _106;
  _213 = (_66 + TEXCOORD.x) + (_102 * _92);
  _214 = (_67 + TEXCOORD.y) + _108;
  _215 = t1.SampleBias(s0, float2(_60, _61), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _223 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _225 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _229 = dot(float2(_223, _225), float2(_223, _225)) * -0.3333333432674408f;
    _231 = (_229 * _223) * UberPostBaseCBuffer_192.z;
    _233 = (_229 * _225) * UberPostBaseCBuffer_192.z;
    _235 = rsqrt(dot(float3(_231, _233, 9.999999747378752e-05f), float3(_231, _233, 9.999999747378752e-05f)));
    _242 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _247 = exp2(log2(sqrt((_231 * _231) + (_233 * _233)) / _242) * UberPostBaseCBuffer_384.z);
    _249 = ((_231 * _235) * _242) * _247;
    _251 = ((_233 * _235) * _242) * _247;
    _258 = t1.SampleBias(s0, float2((_205 + (_249 * UberPostBaseCBuffer_400.w)), (_206 + (_251 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _266 = t1.SampleBias(s0, float2((_209 + (UberPostBaseCBuffer_416.w * _249)), (_210 + (UberPostBaseCBuffer_416.w * _251))), (Globals_976), int2(0, 0));
    _274 = t1.SampleBias(s0, float2((_213 + (UberPostBaseCBuffer_432.w * _249)), (_214 + (UberPostBaseCBuffer_432.w * _251))), (Globals_976), int2(0, 0));
    _308 = (((UberPostBaseCBuffer_416.x * _266.y) + (UberPostBaseCBuffer_400.x * _258.x)) + (UberPostBaseCBuffer_432.x * _274.z));
    _309 = (((UberPostBaseCBuffer_416.y * _266.y) + (UberPostBaseCBuffer_400.y * _258.x)) + (UberPostBaseCBuffer_432.y * _274.z));
    _310 = (((UberPostBaseCBuffer_416.z * _266.y) + (UberPostBaseCBuffer_400.z * _258.x)) + (UberPostBaseCBuffer_432.z * _274.z));
  } else {
    _308 = (((float4)(t1.SampleBias(s0, float2(_205, _206), (Globals_976), int2(0, 0)))).x);
    _309 = (((float4)(t1.SampleBias(s0, float2(_209, _210), (Globals_976), int2(0, 0)))).y);
    _310 = (((float4)(t1.SampleBias(s0, float2(_213, _214), (Globals_976), int2(0, 0)))).z);
  }
  _323 = t9.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * TEXCOORD.x) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * TEXCOORD.y) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _335 = frac((Globals_208[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  _336 = 0.4000000059604645f - _335;
  _349 = (UberPostBaseCBuffer_368.w * max(((select((_336 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_335 + 0.05000000074505806f) * 10.0f) - _336)) + _336), 0.0f)) + 1.0f;
  _354 = 1.0f - UberPostBaseCBuffer_368.z;
  _364 = (((((_323.x * 12.0f) * _349) * _354) + UberPostBaseCBuffer_368.z) * _308) + _197;
  _365 = (((((_323.y * 12.0f) * _349) * _354) + UberPostBaseCBuffer_368.z) * _309) + _198;
  _366 = (((((_323.z * 12.0f) * _349) * _354) + UberPostBaseCBuffer_368.z) * _310) + _199;
  _373 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _373)) {
    _383 = fmod((((Globals_2208.y) * _61) * UberPostBaseCBuffer_448.x), 2.0f);
    _391 = (((select((_383 > 1.0f), (2.0f - _383), _383) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _60;
    _394 = (Globals_2208.w) * (Globals_2208.x);
    _413 = t7.SampleBias(s5, float2(_391, ((select(((frac((((_391 + abs(UberPostBaseCBuffer_464.y)) * _394) - (UberPostBaseCBuffer_464.y * _61)) / ((_394 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _61)), (Globals_976), int2(0, 0));
    _450 = ((((-0.699999988079071f - _413.x) + (exp2(log2(abs(_413.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_413.x < 0.30000001192092896f), 0.0f, 1.0f)) + _413.x) * UberPostBaseCBuffer_336.x;
    _451 = ((((-0.699999988079071f - _413.y) + (exp2(log2(abs(_413.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_413.y < 0.30000001192092896f), 0.0f, 1.0f)) + _413.y) * UberPostBaseCBuffer_336.x;
    _452 = ((((-0.699999988079071f - _413.z) + (exp2(log2(abs(_413.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_413.z < 0.30000001192092896f), 0.0f, 1.0f)) + _413.z) * UberPostBaseCBuffer_336.x;
    _453 = dot(float3(_364, _365, _366), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _456 = (UberPostBaseCBuffer_352.x > 0.5f);
    _469 = select(_456, ((((_450 * _453) - _450) * _215.w) + _450), _450);
    _470 = select(_456, ((((_451 * _453) - _451) * _215.w) + _451), _451);
    _471 = select(_456, ((((_452 * _453) - _452) * _215.w) + _452), _452);
    if (_373) {
      _482 = t8.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _60) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _61) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _496 = (((_482.x * _450) * UberPostBaseCBuffer_336.y) + _469);
      _497 = (((_482.y * _451) * UberPostBaseCBuffer_336.y) + _470);
      _498 = (((_482.z * _452) * UberPostBaseCBuffer_336.y) + _471);
    } else {
      _496 = _469;
      _497 = _470;
      _498 = _471;
    }
    _508 = (_496 + _364);
    _509 = (_497 + _365);
    _510 = (_498 + _366);
    _511 = saturate((((_497 + _496) + _498) * 0.33329999446868896f) + _215.w);
  } else {
    _508 = _364;
    _509 = _365;
    _510 = _366;
    _511 = _215.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _528 = abs(_61 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _530 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_60 - UberPostBaseCBuffer_112.x);
    _536 = exp2(log2(saturate(1.0f - dot(float2(_530, _528), float2(_530, _528)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _550 = (((_536 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _508);
    _551 = (((_536 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _509);
    _552 = (((_536 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _510);
  } else {
    _550 = _508;
    _551 = _509;
    _552 = _510;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_550, _551, _552);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _550 = tonemapped.x;
    _551 = tonemapped.y;
    _552 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _570 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _574 = 1.0f - (sqrt(dot(float3(_550, _551, _552), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _588 = ((((UberPostBaseCBuffer_208.x * _550) * _570) * _574) + _550);
    _589 = ((((UberPostBaseCBuffer_208.x * _551) * _570) * _574) + _551);
    _590 = ((((UberPostBaseCBuffer_208.x * _552) * _570) * _574) + _552);
  } else {
    _588 = _550;
    _589 = _551;
    _590 = _552;
  }
  _595 = ((_589 + _588) + _590) * 0.3333333432674408f;
  _602 = ((_588 - _595) * UberPostFXColorCorrectionCBuffer_000.w) + _595;
  _603 = ((_589 - _595) * UberPostFXColorCorrectionCBuffer_000.w) + _595;
  _604 = ((_590 - _595) * UberPostFXColorCorrectionCBuffer_000.w) + _595;
  if ((Globals_816[3].w) > 0.5f) {
    _612 = t0.SampleBias(s0, float2(dot(float3(_602, _603, _604), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _617 = _612.x;
    _618 = _612.y;
    _619 = _612.z;
  } else {
    _617 = _602;
    _618 = _603;
    _619 = _604;
  }
  _634 = (((1.0f - _617) - saturate(_617)) * UberPostFXColorCorrectionCBuffer_016.w) + _617;
  _635 = (((1.0f - _618) - saturate(_618)) * UberPostFXColorCorrectionCBuffer_016.w) + _618;
  _636 = (((1.0f - _619) - saturate(_619)) * UberPostFXColorCorrectionCBuffer_016.w) + _619;
  _644 = saturate((saturate(dot(float3(_634, _635, _636), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _671 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _634) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _644)) * UberPostFXColorCorrectionCBuffer_032.x) + _634);
  // _672 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _635) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _644)) * UberPostFXColorCorrectionCBuffer_032.x) + _635);
  // _673 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _636) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _644)) * UberPostFXColorCorrectionCBuffer_032.x) + _636);
  _671 = ((((UberPostFXColorCorrectionCBuffer_000.x - _634) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _644)) * UberPostFXColorCorrectionCBuffer_032.x) + _634);
  _672 = ((((UberPostFXColorCorrectionCBuffer_000.y - _635) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _644)) * UberPostFXColorCorrectionCBuffer_032.x) + _635);
  _673 = ((((UberPostFXColorCorrectionCBuffer_000.z - _636) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _644)) * UberPostFXColorCorrectionCBuffer_032.x) + _636);

  // HDR FX Mask Blend
  float3 result = float3(_671, _672, _673);
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
  _748 = result.x;
  _749 = result.y;
  _750 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _679 = t3.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _748 = min((_679.x + _671), 1.0f);
        _749 = min((_679.x + _672), 1.0f);
        _750 = min((_679.x + _673), 1.0f);
      } else {
        _716 = select((_671 > 0.5f), 0.0f, 1.0f);
        _717 = select((_672 > 0.5f), 0.0f, 1.0f);
        _718 = select((_673 > 0.5f), 0.0f, 1.0f);
        _737 = 1.0f - _679.x;
        _748 = (((((1.0f - (((1.0f - _671) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _716)) + (((_671 * 2.0f) * _716) * UberPostFXColorCorrectionCBuffer_048.x)) * _679.x) + (_737 * _671));
        _749 = (((((1.0f - (((1.0f - _672) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _717)) + (((_672 * 2.0f) * _717) * UberPostFXColorCorrectionCBuffer_048.y)) * _679.x) + (_737 * _672));
        _750 = (((((1.0f - (((1.0f - _673) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _718)) + (((_673 * 2.0f) * _718) * UberPostFXColorCorrectionCBuffer_048.z)) * _679.x) + (_737 * _673));
      }
  } else {
    _748 = _671;
    _749 = _672;
    _750 = _673;
  }
  */

  SV_Target.x = _748;
  SV_Target.y = _749;
  SV_Target.z = _750;
  SV_Target.w = _511;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
