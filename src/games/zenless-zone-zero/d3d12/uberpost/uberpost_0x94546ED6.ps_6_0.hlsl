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
  float _61;
  float _62;
  float _63;
  float _64;
  float _65;
  float _66;
  float _67;
  float _68;
  float _167;
  float _168;
  float _169;
  float _198;
  float _199;
  float _200;
  float _309;
  float _310;
  float _311;
  float _497;
  float _498;
  float _499;
  float _509;
  float _510;
  float _511;
  float _512;
  float _551;
  float _552;
  float _553;
  float _640;
  float _641;
  float _642;
  float _669;
  float _670;
  float _671;
  float _800;
  float _801;
  float _802;
  float4 _33;
  float _37;
  float _38;
  float _43;
  float _44;
  float _71;
  float _80;
  float _90;
  float _93;
  float _94;
  float _101;
  float _102;
  float _103;
  float _105;
  float _107;
  float _109;
  float _118;
  float _131;
  float _138;
  float _145;
  float _146;
  float _147;
  float4 _161;
  float4 _192;
  float _206;
  float _207;
  float _210;
  float _211;
  float _214;
  float _215;
  float4 _216;
  float _224;
  float _226;
  float _230;
  float _232;
  float _234;
  float _236;
  float _243;
  float _248;
  float _250;
  float _252;
  float4 _259;
  float4 _267;
  float4 _275;
  float4 _324;
  float _336;
  float _337;
  float _350;
  float _355;
  float _365;
  float _366;
  float _367;
  bool _374;
  float _384;
  float _392;
  float _395;
  float4 _414;
  float _451;
  float _452;
  float _453;
  float _454;
  bool _457;
  float _470;
  float _471;
  float _472;
  float4 _483;
  float _529;
  float _531;
  float _537;
  float _576;
  float _577;
  float _583;
  float _585;
  float _586;
  float4 _588;
  float4 _592;
  float _602;
  float _603;
  float _604;
  float _622;
  float _626;
  float _647;
  float _654;
  float _655;
  float _656;
  float4 _664;
  float _686;
  float _687;
  float _688;
  float _696;
  float _723;
  float _724;
  float _725;
  float4 _731;
  float _768;
  float _769;
  float _770;
  float _789;
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _33 = t5.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _37 = _33.x * 0.10000000149011612f;
    _38 = _33.y * 0.10000000149011612f;
    _43 = (_37 * _33.z) * UberPostBaseCBuffer_176.w;
    _44 = (_38 * _33.z) * UberPostBaseCBuffer_176.w;
    _61 = (_37 + TEXCOORD.x);
    _62 = (_38 + TEXCOORD.y);
    _63 = ((_43 * UberPostBaseCBuffer_176.x) + _37);
    _64 = ((_44 * UberPostBaseCBuffer_176.x) + _38);
    _65 = ((_43 * UberPostBaseCBuffer_176.y) + _37);
    _66 = ((_44 * UberPostBaseCBuffer_176.y) + _38);
    _67 = ((UberPostBaseCBuffer_176.z * _43) + _37);
    _68 = ((UberPostBaseCBuffer_176.z * _44) + _38);
  } else {
    _61 = TEXCOORD.x;
    _62 = TEXCOORD.y;
    _63 = 0.0f;
    _64 = 0.0f;
    _65 = 0.0f;
    _66 = 0.0f;
    _67 = 0.0f;
    _68 = 0.0f;
  }
  _71 = frac(Globals_208[1].x);
  _80 = (((float4)(t6.SampleBias(s3, float2((_71 + (TEXCOORD.x * 5.0f)), (_71 + (TEXCOORD.y * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _90 = ((_80 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_80 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _93 = cos(UberPostBaseCBuffer_224.w);
  _94 = sin(UberPostBaseCBuffer_224.w);
  _101 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _90;
  _102 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _90;
  _103 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _90;
  _105 = _101 * _94;
  _107 = _102 * _94;
  _109 = _103 * _94;
  _118 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + TEXCOORD.y);
  _131 = frac(_71 * 1234.0f);
  _138 = (((_131 * _131) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _131) + UberPostBaseCBuffer_256.x;
  _145 = select((_138 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_118 + _105)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _146 = select((_138 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_118 + _107)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _147 = select((_138 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_118 + _109)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _161 = t7.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * TEXCOORD.x) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * TEXCOORD.y) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _167 = (_161.x * _145);
    _168 = (_161.x * _146);
    _169 = (_161.x * _147);
  } else {
    _167 = _145;
    _168 = _146;
    _169 = _147;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _192 = t7.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * TEXCOORD.x) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * TEXCOORD.y) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _198 = (_192.y * _167);
    _199 = (_192.y * _168);
    _200 = (_192.y * _169);
  } else {
    _198 = _167;
    _199 = _168;
    _200 = _169;
  }
  _206 = (_63 + TEXCOORD.x) + (_101 * _93);
  _207 = (_64 + TEXCOORD.y) + _105;
  _210 = (_65 + TEXCOORD.x) + (_102 * _93);
  _211 = (_66 + TEXCOORD.y) + _107;
  _214 = (_67 + TEXCOORD.x) + (_103 * _93);
  _215 = (_68 + TEXCOORD.y) + _109;
  _216 = t1.SampleBias(s0, float2(_61, _62), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _224 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _226 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _230 = dot(float2(_224, _226), float2(_224, _226)) * -0.3333333432674408f;
    _232 = (_230 * _224) * UberPostBaseCBuffer_192.z;
    _234 = (_230 * _226) * UberPostBaseCBuffer_192.z;
    _236 = rsqrt(dot(float3(_232, _234, 9.999999747378752e-05f), float3(_232, _234, 9.999999747378752e-05f)));
    _243 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _248 = exp2(log2(sqrt((_232 * _232) + (_234 * _234)) / _243) * UberPostBaseCBuffer_384.z);
    _250 = ((_232 * _236) * _243) * _248;
    _252 = ((_234 * _236) * _243) * _248;
    _259 = t1.SampleBias(s0, float2((_206 + (_250 * UberPostBaseCBuffer_400.w)), (_207 + (_252 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _267 = t1.SampleBias(s0, float2((_210 + (UberPostBaseCBuffer_416.w * _250)), (_211 + (UberPostBaseCBuffer_416.w * _252))), (Globals_976), int2(0, 0));
    _275 = t1.SampleBias(s0, float2((_214 + (UberPostBaseCBuffer_432.w * _250)), (_215 + (UberPostBaseCBuffer_432.w * _252))), (Globals_976), int2(0, 0));
    _309 = (((UberPostBaseCBuffer_416.x * _267.y) + (UberPostBaseCBuffer_400.x * _259.x)) + (UberPostBaseCBuffer_432.x * _275.z));
    _310 = (((UberPostBaseCBuffer_416.y * _267.y) + (UberPostBaseCBuffer_400.y * _259.x)) + (UberPostBaseCBuffer_432.y * _275.z));
    _311 = (((UberPostBaseCBuffer_416.z * _267.y) + (UberPostBaseCBuffer_400.z * _259.x)) + (UberPostBaseCBuffer_432.z * _275.z));
  } else {
    _309 = (((float4)(t1.SampleBias(s0, float2(_206, _207), (Globals_976), int2(0, 0)))).x);
    _310 = (((float4)(t1.SampleBias(s0, float2(_210, _211), (Globals_976), int2(0, 0)))).y);
    _311 = (((float4)(t1.SampleBias(s0, float2(_214, _215), (Globals_976), int2(0, 0)))).z);
  }
  _324 = t10.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * TEXCOORD.x) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * TEXCOORD.y) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _336 = frac((Globals_208[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  _337 = 0.4000000059604645f - _336;
  _350 = (UberPostBaseCBuffer_368.w * max(((select((_337 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_336 + 0.05000000074505806f) * 10.0f) - _337)) + _337), 0.0f)) + 1.0f;
  _355 = 1.0f - UberPostBaseCBuffer_368.z;
  _365 = (((((_324.x * 12.0f) * _350) * _355) + UberPostBaseCBuffer_368.z) * _309) + _198;
  _366 = (((((_324.y * 12.0f) * _350) * _355) + UberPostBaseCBuffer_368.z) * _310) + _199;
  _367 = (((((_324.z * 12.0f) * _350) * _355) + UberPostBaseCBuffer_368.z) * _311) + _200;
  _374 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _374)) {
    _384 = fmod((((Globals_2208.y) * _62) * UberPostBaseCBuffer_448.x), 2.0f);
    _392 = (((select((_384 > 1.0f), (2.0f - _384), _384) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _61;
    _395 = (Globals_2208.w) * (Globals_2208.x);
    _414 = t8.SampleBias(s5, float2(_392, ((select(((frac((((_392 + abs(UberPostBaseCBuffer_464.y)) * _395) - (UberPostBaseCBuffer_464.y * _62)) / ((_395 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _62)), (Globals_976), int2(0, 0));
    _451 = ((((-0.699999988079071f - _414.x) + (exp2(log2(abs(_414.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_414.x < 0.30000001192092896f), 0.0f, 1.0f)) + _414.x) * UberPostBaseCBuffer_336.x;
    _452 = ((((-0.699999988079071f - _414.y) + (exp2(log2(abs(_414.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_414.y < 0.30000001192092896f), 0.0f, 1.0f)) + _414.y) * UberPostBaseCBuffer_336.x;
    _453 = ((((-0.699999988079071f - _414.z) + (exp2(log2(abs(_414.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_414.z < 0.30000001192092896f), 0.0f, 1.0f)) + _414.z) * UberPostBaseCBuffer_336.x;
    _454 = dot(float3(_365, _366, _367), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _457 = (UberPostBaseCBuffer_352.x > 0.5f);
    _470 = select(_457, ((((_451 * _454) - _451) * _216.w) + _451), _451);
    _471 = select(_457, ((((_452 * _454) - _452) * _216.w) + _452), _452);
    _472 = select(_457, ((((_453 * _454) - _453) * _216.w) + _453), _453);
    if (_374) {
      _483 = t9.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _61) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _62) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _497 = (((_483.x * _451) * UberPostBaseCBuffer_336.y) + _470);
      _498 = (((_483.y * _452) * UberPostBaseCBuffer_336.y) + _471);
      _499 = (((_483.z * _453) * UberPostBaseCBuffer_336.y) + _472);
    } else {
      _497 = _470;
      _498 = _471;
      _499 = _472;
    }
    _509 = (_497 + _365);
    _510 = (_498 + _366);
    _511 = (_499 + _367);
    _512 = saturate((((_498 + _497) + _499) * 0.33329999446868896f) + _216.w);
  } else {
    _509 = _365;
    _510 = _366;
    _511 = _367;
    _512 = _216.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _529 = abs(_62 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _531 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_61 - UberPostBaseCBuffer_112.x);
    _537 = exp2(log2(saturate(1.0f - dot(float2(_531, _529), float2(_531, _529)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _551 = (((_537 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _509);
    _552 = (((_537 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _510);
    _553 = (((_537 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _511);
  } else {
    _551 = _509;
    _552 = _510;
    _553 = _511;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_551, _552, _553);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t3, s0, UberPostBaseCBuffer_000.xyz);
    _602 = tonemapped.x;
    _603 = tonemapped.y;
    _604 = tonemapped.z;
  } else {
    _576 = saturate((log2((_553 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _577 = floor(_576);
    _583 = ((saturate((log2((_552 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _585 = (_577 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_551 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _586 = _576 - _577;
    _588 = t3.SampleLevel(s0, float2((_585 + UberPostBaseCBuffer_000.y), _583), 0.0f);
    _592 = t3.SampleLevel(s0, float2(_585, _583), 0.0f);
    _602 = ((_588.x - _592.x) * _586) + _592.x;
    _603 = ((_588.y - _592.y) * _586) + _592.y;
    _604 = ((_588.z - _592.z) * _586) + _592.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _622 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _626 = 1.0f - (sqrt(dot(float3(_602, _603, _604), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _640 = ((((UberPostBaseCBuffer_208.x * _602) * _622) * _626) + _602);
    _641 = ((((UberPostBaseCBuffer_208.x * _603) * _622) * _626) + _603);
    _642 = ((((UberPostBaseCBuffer_208.x * _604) * _622) * _626) + _604);
  } else {
    _640 = _602;
    _641 = _603;
    _642 = _604;
  }
  _647 = ((_641 + _640) + _642) * 0.3333333432674408f;
  _654 = ((_640 - _647) * UberPostFXColorCorrectionCBuffer_000.w) + _647;
  _655 = ((_641 - _647) * UberPostFXColorCorrectionCBuffer_000.w) + _647;
  _656 = ((_642 - _647) * UberPostFXColorCorrectionCBuffer_000.w) + _647;
  if ((Globals_816[3].w) > 0.5f) {
    _664 = t0.SampleBias(s0, float2(dot(float3(_654, _655, _656), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _669 = _664.x;
    _670 = _664.y;
    _671 = _664.z;
  } else {
    _669 = _654;
    _670 = _655;
    _671 = _656;
  }
  _686 = (((1.0f - _669) - saturate(_669)) * UberPostFXColorCorrectionCBuffer_016.w) + _669;
  _687 = (((1.0f - _670) - saturate(_670)) * UberPostFXColorCorrectionCBuffer_016.w) + _670;
  _688 = (((1.0f - _671) - saturate(_671)) * UberPostFXColorCorrectionCBuffer_016.w) + _671;
  _696 = saturate((saturate(dot(float3(_686, _687, _688), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _723 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _686) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _696)) * UberPostFXColorCorrectionCBuffer_032.x) + _686);
  // _724 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _687) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _696)) * UberPostFXColorCorrectionCBuffer_032.x) + _687);
  // _725 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _688) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _696)) * UberPostFXColorCorrectionCBuffer_032.x) + _688);
  _723 = ((((UberPostFXColorCorrectionCBuffer_000.x - _686) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _696)) * UberPostFXColorCorrectionCBuffer_032.x) + _686);
  _724 = ((((UberPostFXColorCorrectionCBuffer_000.y - _687) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _696)) * UberPostFXColorCorrectionCBuffer_032.x) + _687);
  _725 = ((((UberPostFXColorCorrectionCBuffer_000.z - _688) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _696)) * UberPostFXColorCorrectionCBuffer_032.x) + _688);

  // HDR FX Mask Blend
  float3 result = float3(_723, _724, _725);
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    float m = smoothstep(0.0f, 1.0f, t4.Sample(s0, TEXCOORD).x);

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
  _800 = result.x;
  _801 = result.y;
  _802 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _731 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _800 = min((_731.x + _723), 1.0f);
        _801 = min((_731.x + _724), 1.0f);
        _802 = min((_731.x + _725), 1.0f);
      } else {
        _768 = select((_723 > 0.5f), 0.0f, 1.0f);
        _769 = select((_724 > 0.5f), 0.0f, 1.0f);
        _770 = select((_725 > 0.5f), 0.0f, 1.0f);
        _789 = 1.0f - _731.x;
        _800 = (((((1.0f - (((1.0f - _723) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _768)) + (((_723 * 2.0f) * _768) * UberPostFXColorCorrectionCBuffer_048.x)) * _731.x) + (_789 * _723));
        _801 = (((((1.0f - (((1.0f - _724) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _769)) + (((_724 * 2.0f) * _769) * UberPostFXColorCorrectionCBuffer_048.y)) * _731.x) + (_789 * _724));
        _802 = (((((1.0f - (((1.0f - _725) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _770)) + (((_725 * 2.0f) * _770) * UberPostFXColorCorrectionCBuffer_048.z)) * _731.x) + (_789 * _725));
      }
  } else {
    _800 = _723;
    _801 = _724;
    _802 = _725;
  }
  */

  SV_Target.x = _800;
  SV_Target.y = _801;
  SV_Target.z = _802;
  SV_Target.w = _512;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
