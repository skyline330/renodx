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
  float4 Globals_3360 : packoffset(c210.x);
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
  float _352;
  float _353;
  float _354;
  float _540;
  float _541;
  float _542;
  float _559;
  float _560;
  float _561;
  float _562;
  float _601;
  float _602;
  float _603;
  float _690;
  float _691;
  float _692;
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
  float4 _200;
  float _222;
  float _223;
  float _224;
  float _225;
  float _230;
  float _237;
  float _248;
  float _250;
  float _252;
  float _254;
  float _256;
  float _258;
  float4 _259;
  float _267;
  float _269;
  float _273;
  float _275;
  float _277;
  float _279;
  float _286;
  float _291;
  float _293;
  float _295;
  float4 _302;
  float4 _310;
  float4 _318;
  float4 _367;
  float _379;
  float _380;
  float _393;
  float _398;
  float _408;
  float _409;
  float _410;
  bool _417;
  float _427;
  float _435;
  float _438;
  float4 _457;
  float _494;
  float _495;
  float _496;
  float _497;
  bool _500;
  float _513;
  float _514;
  float _515;
  float4 _526;
  float _546;
  float _579;
  float _581;
  float _587;
  float _626;
  float _627;
  float _633;
  float _635;
  float _636;
  float4 _638;
  float4 _642;
  float _652;
  float _653;
  float _654;
  float _672;
  float _676;
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _32 = t5.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
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
  _79 = (((float4)(t6.SampleBias(s3, float2((_70 + (TEXCOORD.x * 5.0f)), (_70 + (TEXCOORD.y * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
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
  _144 = select((_137 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_117 + _104)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _145 = select((_137 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_117 + _106)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _146 = select((_137 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_117 + _108)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _160 = t7.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * TEXCOORD.x) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * TEXCOORD.y) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
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
    _191 = t7.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * TEXCOORD.x) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * TEXCOORD.y) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _197 = (_191.y * _166);
    _198 = (_191.y * _167);
    _199 = (_191.y * _168);
  } else {
    _197 = _166;
    _198 = _167;
    _199 = _168;
  }
  _200 = t3.SampleBias(s1, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
  _222 = saturate(((_200.z + -1.0f) + (((float4)(t4.SampleBias(s1, float2(((Globals_3344.y) + _200.w), 0.5f), (Globals_976), int2(0, 0)))).x)) / _200.z) * _200.z;
  _223 = _222 * (Globals_3344.x);
  _224 = _223 * ((_200.x * 2.0f) + -1.0f);
  _225 = _223 * ((_200.y * 2.0f) + -1.0f);
  _230 = (Globals_3344.z) + 1.0f;
  _237 = 1.0f - (Globals_3344.z);
  _248 = ((_100 * _92) + TEXCOORD.x) + (_62 - _224);
  _250 = (_104 + TEXCOORD.y) + (_63 - _225);
  _252 = ((_101 * _92) + TEXCOORD.x) + (_64 - (_230 * _224));
  _254 = (_106 + TEXCOORD.y) + (_65 - (_230 * _225));
  _256 = ((_102 * _92) + TEXCOORD.x) + (_66 - (_237 * _224));
  _258 = (_108 + TEXCOORD.y) + (_67 - (_237 * _225));
  _259 = t0.SampleBias(s0, float2(_60, _61), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _267 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _269 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _273 = dot(float2(_267, _269), float2(_267, _269)) * -0.3333333432674408f;
    _275 = (_273 * _267) * UberPostBaseCBuffer_192.z;
    _277 = (_273 * _269) * UberPostBaseCBuffer_192.z;
    _279 = rsqrt(dot(float3(_275, _277, 9.999999747378752e-05f), float3(_275, _277, 9.999999747378752e-05f)));
    _286 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _291 = exp2(log2(sqrt((_275 * _275) + (_277 * _277)) / _286) * UberPostBaseCBuffer_384.z);
    _293 = ((_275 * _279) * _286) * _291;
    _295 = ((_277 * _279) * _286) * _291;
    _302 = t0.SampleBias(s0, float2((_248 + (_293 * UberPostBaseCBuffer_400.w)), (_250 + (_295 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _310 = t0.SampleBias(s0, float2((_252 + (UberPostBaseCBuffer_416.w * _293)), (_254 + (UberPostBaseCBuffer_416.w * _295))), (Globals_976), int2(0, 0));
    _318 = t0.SampleBias(s0, float2((_256 + (UberPostBaseCBuffer_432.w * _293)), (_258 + (UberPostBaseCBuffer_432.w * _295))), (Globals_976), int2(0, 0));
    _352 = (((UberPostBaseCBuffer_416.x * _310.y) + (UberPostBaseCBuffer_400.x * _302.x)) + (UberPostBaseCBuffer_432.x * _318.z));
    _353 = (((UberPostBaseCBuffer_416.y * _310.y) + (UberPostBaseCBuffer_400.y * _302.x)) + (UberPostBaseCBuffer_432.y * _318.z));
    _354 = (((UberPostBaseCBuffer_416.z * _310.y) + (UberPostBaseCBuffer_400.z * _302.x)) + (UberPostBaseCBuffer_432.z * _318.z));
  } else {
    _352 = (((float4)(t0.SampleBias(s0, float2(_248, _250), (Globals_976), int2(0, 0)))).x);
    _353 = (((float4)(t0.SampleBias(s0, float2(_252, _254), (Globals_976), int2(0, 0)))).y);
    _354 = (((float4)(t0.SampleBias(s0, float2(_256, _258), (Globals_976), int2(0, 0)))).z);
  }
  _367 = t10.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * TEXCOORD.x) * (Globals_3360.x)), ((UberPostBaseCBuffer_368.y * TEXCOORD.y) * (Globals_3360.y))), (Globals_976), int2(0, 0));
  _379 = frac((Globals_208[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  _380 = 0.4000000059604645f - _379;
  _393 = (UberPostBaseCBuffer_368.w * max(((select((_380 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_379 + 0.05000000074505806f) * 10.0f) - _380)) + _380), 0.0f)) + 1.0f;
  _398 = 1.0f - UberPostBaseCBuffer_368.z;
  _408 = (((((_367.x * 12.0f) * _393) * _398) + UberPostBaseCBuffer_368.z) * _352) + _197;
  _409 = (((((_367.y * 12.0f) * _393) * _398) + UberPostBaseCBuffer_368.z) * _353) + _198;
  _410 = (((((_367.z * 12.0f) * _393) * _398) + UberPostBaseCBuffer_368.z) * _354) + _199;
  _417 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _417)) {
    _427 = fmod((((Globals_2208.y) * _61) * UberPostBaseCBuffer_448.x), 2.0f);
    _435 = (((select((_427 > 1.0f), (2.0f - _427), _427) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _60;
    _438 = (Globals_2208.w) * (Globals_2208.x);
    _457 = t8.SampleBias(s5, float2(_435, ((select(((frac((((_435 + abs(UberPostBaseCBuffer_464.y)) * _438) - (UberPostBaseCBuffer_464.y * _61)) / ((_438 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _61)), (Globals_976), int2(0, 0));
    _494 = ((((-0.699999988079071f - _457.x) + (exp2(log2(abs(_457.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_457.x < 0.30000001192092896f), 0.0f, 1.0f)) + _457.x) * UberPostBaseCBuffer_336.x;
    _495 = ((((-0.699999988079071f - _457.y) + (exp2(log2(abs(_457.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_457.y < 0.30000001192092896f), 0.0f, 1.0f)) + _457.y) * UberPostBaseCBuffer_336.x;
    _496 = ((((-0.699999988079071f - _457.z) + (exp2(log2(abs(_457.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_457.z < 0.30000001192092896f), 0.0f, 1.0f)) + _457.z) * UberPostBaseCBuffer_336.x;
    _497 = dot(float3(_408, _409, _410), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _500 = (UberPostBaseCBuffer_352.x > 0.5f);
    _513 = select(_500, ((((_494 * _497) - _494) * _259.w) + _494), _494);
    _514 = select(_500, ((((_495 * _497) - _495) * _259.w) + _495), _495);
    _515 = select(_500, ((((_496 * _497) - _496) * _259.w) + _496), _496);
    if (_417) {
      _526 = t9.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _60) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _61) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _540 = (((_526.x * _494) * UberPostBaseCBuffer_336.y) + _513);
      _541 = (((_526.y * _495) * UberPostBaseCBuffer_336.y) + _514);
      _542 = (((_526.z * _496) * UberPostBaseCBuffer_336.y) + _515);
    } else {
      _540 = _513;
      _541 = _514;
      _542 = _515;
    }
    _546 = (_222 * (Globals_3344.w)) + 1.0f;
    _559 = ((_546 * _408) + _540);
    _560 = ((_546 * _409) + _541);
    _561 = ((_546 * _410) + _542);
    _562 = saturate((((_541 + _540) + _542) * 0.33329999446868896f) + _259.w);
  } else {
    _559 = _408;
    _560 = _409;
    _561 = _410;
    _562 = _259.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _579 = abs(_61 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _581 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_60 - UberPostBaseCBuffer_112.x);
    _587 = exp2(log2(saturate(1.0f - dot(float2(_581, _579), float2(_581, _579)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _601 = (((_587 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _559);
    _602 = (((_587 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _560);
    _603 = (((_587 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _561);
  } else {
    _601 = _559;
    _602 = _560;
    _603 = _561;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_601, _602, _603);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t2, s0, UberPostBaseCBuffer_000.xyz);
    _652 = tonemapped.x;
    _653 = tonemapped.y;
    _654 = tonemapped.z;
  } else {
    _626 = saturate((log2((_603 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _627 = floor(_626);
    _633 = ((saturate((log2((_602 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _635 = (_627 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_601 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _636 = _626 - _627;
    _638 = t2.SampleLevel(s0, float2((_635 + UberPostBaseCBuffer_000.y), _633), 0.0f);
    _642 = t2.SampleLevel(s0, float2(_635, _633), 0.0f);
    _652 = ((_638.x - _642.x) * _636) + _642.x;
    _653 = ((_638.y - _642.y) * _636) + _642.y;
    _654 = ((_638.z - _642.z) * _636) + _642.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _672 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _676 = 1.0f - (sqrt(dot(float3(_652, _653, _654), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _690 = ((((UberPostBaseCBuffer_208.x * _652) * _672) * _676) + _652);
    _691 = ((((UberPostBaseCBuffer_208.x * _653) * _672) * _676) + _653);
    _692 = ((((UberPostBaseCBuffer_208.x * _654) * _672) * _676) + _654);
  } else {
    _690 = _652;
    _691 = _653;
    _692 = _654;
  }
  SV_Target.x = (_690);
  SV_Target.y = (_691);
  SV_Target.z = (_692);
  SV_Target.w = _562;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
