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
  float _63;
  float _64;
  float _65;
  float _66;
  float _67;
  float _68;
  float _69;
  float _70;
  float _169;
  float _170;
  float _171;
  float _200;
  float _201;
  float _202;
  float _355;
  float _356;
  float _357;
  float _543;
  float _544;
  float _545;
  float _562;
  float _563;
  float _564;
  float _565;
  float _604;
  float _605;
  float _606;
  float _693;
  float _694;
  float _695;
  float _722;
  float _723;
  float _724;
  float _853;
  float _854;
  float _855;
  float4 _35;
  float _39;
  float _40;
  float _45;
  float _46;
  float _73;
  float _82;
  float _92;
  float _95;
  float _96;
  float _103;
  float _104;
  float _105;
  float _107;
  float _109;
  float _111;
  float _120;
  float _133;
  float _140;
  float _147;
  float _148;
  float _149;
  float4 _163;
  float4 _194;
  float4 _203;
  float _225;
  float _226;
  float _227;
  float _228;
  float _233;
  float _240;
  float _251;
  float _253;
  float _255;
  float _257;
  float _259;
  float _261;
  float4 _262;
  float _270;
  float _272;
  float _276;
  float _278;
  float _280;
  float _282;
  float _289;
  float _294;
  float _296;
  float _298;
  float4 _305;
  float4 _313;
  float4 _321;
  float4 _370;
  float _382;
  float _383;
  float _396;
  float _401;
  float _411;
  float _412;
  float _413;
  bool _420;
  float _430;
  float _438;
  float _441;
  float4 _460;
  float _497;
  float _498;
  float _499;
  float _500;
  bool _503;
  float _516;
  float _517;
  float _518;
  float4 _529;
  float _549;
  float _582;
  float _584;
  float _590;
  float _629;
  float _630;
  float _636;
  float _638;
  float _639;
  float4 _641;
  float4 _645;
  float _655;
  float _656;
  float _657;
  float _675;
  float _679;
  float _700;
  float _707;
  float _708;
  float _709;
  float4 _717;
  float _739;
  float _740;
  float _741;
  float _749;
  float _776;
  float _777;
  float _778;
  float4 _784;
  float _821;
  float _822;
  float _823;
  float _842;
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _35 = t7.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _39 = _35.x * 0.10000000149011612f;
    _40 = _35.y * 0.10000000149011612f;
    _45 = (_39 * _35.z) * UberPostBaseCBuffer_176.w;
    _46 = (_40 * _35.z) * UberPostBaseCBuffer_176.w;
    _63 = (_39 + TEXCOORD.x);
    _64 = (_40 + TEXCOORD.y);
    _65 = ((_45 * UberPostBaseCBuffer_176.x) + _39);
    _66 = ((_46 * UberPostBaseCBuffer_176.x) + _40);
    _67 = ((_45 * UberPostBaseCBuffer_176.y) + _39);
    _68 = ((_46 * UberPostBaseCBuffer_176.y) + _40);
    _69 = ((UberPostBaseCBuffer_176.z * _45) + _39);
    _70 = ((UberPostBaseCBuffer_176.z * _46) + _40);
  } else {
    _63 = TEXCOORD.x;
    _64 = TEXCOORD.y;
    _65 = 0.0f;
    _66 = 0.0f;
    _67 = 0.0f;
    _68 = 0.0f;
    _69 = 0.0f;
    _70 = 0.0f;
  }
  _73 = frac(Globals_208[1].x);
  _82 = (((float4)(t8.SampleBias(s3, float2((_73 + (TEXCOORD.x * 5.0f)), (_73 + (TEXCOORD.y * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _92 = ((_82 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_82 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _95 = cos(UberPostBaseCBuffer_224.w);
  _96 = sin(UberPostBaseCBuffer_224.w);
  _103 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _92;
  _104 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _92;
  _105 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _92;
  _107 = _103 * _96;
  _109 = _104 * _96;
  _111 = _105 * _96;
  _120 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + TEXCOORD.y);
  _133 = frac(_73 * 1234.0f);
  _140 = (((_133 * _133) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _133) + UberPostBaseCBuffer_256.x;
  _147 = select((_140 < (((float4)(t8.SampleBias(s3, float2(0.5f, (_120 + _107)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _148 = select((_140 < (((float4)(t8.SampleBias(s3, float2(0.5f, (_120 + _109)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _149 = select((_140 < (((float4)(t8.SampleBias(s3, float2(0.5f, (_120 + _111)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _163 = t9.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * TEXCOORD.x) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * TEXCOORD.y) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _169 = (_163.x * _147);
    _170 = (_163.x * _148);
    _171 = (_163.x * _149);
  } else {
    _169 = _147;
    _170 = _148;
    _171 = _149;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _194 = t9.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * TEXCOORD.x) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * TEXCOORD.y) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _200 = (_194.y * _169);
    _201 = (_194.y * _170);
    _202 = (_194.y * _171);
  } else {
    _200 = _169;
    _201 = _170;
    _202 = _171;
  }
  _203 = t5.SampleBias(s1, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
  _225 = saturate(((_203.z + -1.0f) + (((float4)(t6.SampleBias(s1, float2(((Globals_3344.y) + _203.w), 0.5f), (Globals_976), int2(0, 0)))).x)) / _203.z) * _203.z;
  _226 = _225 * (Globals_3344.x);
  _227 = _226 * ((_203.x * 2.0f) + -1.0f);
  _228 = _226 * ((_203.y * 2.0f) + -1.0f);
  _233 = (Globals_3344.z) + 1.0f;
  _240 = 1.0f - (Globals_3344.z);
  _251 = ((_103 * _95) + TEXCOORD.x) + (_65 - _227);
  _253 = (_107 + TEXCOORD.y) + (_66 - _228);
  _255 = ((_104 * _95) + TEXCOORD.x) + (_67 - (_233 * _227));
  _257 = (_109 + TEXCOORD.y) + (_68 - (_233 * _228));
  _259 = ((_105 * _95) + TEXCOORD.x) + (_69 - (_240 * _227));
  _261 = (_111 + TEXCOORD.y) + (_70 - (_240 * _228));
  _262 = t1.SampleBias(s0, float2(_63, _64), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _270 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _272 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _276 = dot(float2(_270, _272), float2(_270, _272)) * -0.3333333432674408f;
    _278 = (_276 * _270) * UberPostBaseCBuffer_192.z;
    _280 = (_276 * _272) * UberPostBaseCBuffer_192.z;
    _282 = rsqrt(dot(float3(_278, _280, 9.999999747378752e-05f), float3(_278, _280, 9.999999747378752e-05f)));
    _289 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _294 = exp2(log2(sqrt((_278 * _278) + (_280 * _280)) / _289) * UberPostBaseCBuffer_384.z);
    _296 = ((_278 * _282) * _289) * _294;
    _298 = ((_280 * _282) * _289) * _294;
    _305 = t1.SampleBias(s0, float2((_251 + (_296 * UberPostBaseCBuffer_400.w)), (_253 + (_298 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _313 = t1.SampleBias(s0, float2((_255 + (UberPostBaseCBuffer_416.w * _296)), (_257 + (UberPostBaseCBuffer_416.w * _298))), (Globals_976), int2(0, 0));
    _321 = t1.SampleBias(s0, float2((_259 + (UberPostBaseCBuffer_432.w * _296)), (_261 + (UberPostBaseCBuffer_432.w * _298))), (Globals_976), int2(0, 0));
    _355 = (((UberPostBaseCBuffer_416.x * _313.y) + (UberPostBaseCBuffer_400.x * _305.x)) + (UberPostBaseCBuffer_432.x * _321.z));
    _356 = (((UberPostBaseCBuffer_416.y * _313.y) + (UberPostBaseCBuffer_400.y * _305.x)) + (UberPostBaseCBuffer_432.y * _321.z));
    _357 = (((UberPostBaseCBuffer_416.z * _313.y) + (UberPostBaseCBuffer_400.z * _305.x)) + (UberPostBaseCBuffer_432.z * _321.z));
  } else {
    _355 = (((float4)(t1.SampleBias(s0, float2(_251, _253), (Globals_976), int2(0, 0)))).x);
    _356 = (((float4)(t1.SampleBias(s0, float2(_255, _257), (Globals_976), int2(0, 0)))).y);
    _357 = (((float4)(t1.SampleBias(s0, float2(_259, _261), (Globals_976), int2(0, 0)))).z);
  }
  _370 = t12.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * TEXCOORD.x) * (Globals_3360.x)), ((UberPostBaseCBuffer_368.y * TEXCOORD.y) * (Globals_3360.y))), (Globals_976), int2(0, 0));
  _382 = frac((Globals_208[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  _383 = 0.4000000059604645f - _382;
  _396 = (UberPostBaseCBuffer_368.w * max(((select((_383 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_382 + 0.05000000074505806f) * 10.0f) - _383)) + _383), 0.0f)) + 1.0f;
  _401 = 1.0f - UberPostBaseCBuffer_368.z;
  _411 = (((((_370.x * 12.0f) * _396) * _401) + UberPostBaseCBuffer_368.z) * _355) + _200;
  _412 = (((((_370.y * 12.0f) * _396) * _401) + UberPostBaseCBuffer_368.z) * _356) + _201;
  _413 = (((((_370.z * 12.0f) * _396) * _401) + UberPostBaseCBuffer_368.z) * _357) + _202;
  _420 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _420)) {
    _430 = fmod((((Globals_2208.y) * _64) * UberPostBaseCBuffer_448.x), 2.0f);
    _438 = (((select((_430 > 1.0f), (2.0f - _430), _430) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _63;
    _441 = (Globals_2208.w) * (Globals_2208.x);
    _460 = t10.SampleBias(s5, float2(_438, ((select(((frac((((_438 + abs(UberPostBaseCBuffer_464.y)) * _441) - (UberPostBaseCBuffer_464.y * _64)) / ((_441 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _64)), (Globals_976), int2(0, 0));
    _497 = ((((-0.699999988079071f - _460.x) + (exp2(log2(abs(_460.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_460.x < 0.30000001192092896f), 0.0f, 1.0f)) + _460.x) * UberPostBaseCBuffer_336.x;
    _498 = ((((-0.699999988079071f - _460.y) + (exp2(log2(abs(_460.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_460.y < 0.30000001192092896f), 0.0f, 1.0f)) + _460.y) * UberPostBaseCBuffer_336.x;
    _499 = ((((-0.699999988079071f - _460.z) + (exp2(log2(abs(_460.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_460.z < 0.30000001192092896f), 0.0f, 1.0f)) + _460.z) * UberPostBaseCBuffer_336.x;
    _500 = dot(float3(_411, _412, _413), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _503 = (UberPostBaseCBuffer_352.x > 0.5f);
    _516 = select(_503, ((((_497 * _500) - _497) * _262.w) + _497), _497);
    _517 = select(_503, ((((_498 * _500) - _498) * _262.w) + _498), _498);
    _518 = select(_503, ((((_499 * _500) - _499) * _262.w) + _499), _499);
    if (_420) {
      _529 = t11.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _63) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _64) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _543 = (((_529.x * _497) * UberPostBaseCBuffer_336.y) + _516);
      _544 = (((_529.y * _498) * UberPostBaseCBuffer_336.y) + _517);
      _545 = (((_529.z * _499) * UberPostBaseCBuffer_336.y) + _518);
    } else {
      _543 = _516;
      _544 = _517;
      _545 = _518;
    }
    _549 = (_225 * (Globals_3344.w)) + 1.0f;
    _562 = ((_549 * _411) + _543);
    _563 = ((_549 * _412) + _544);
    _564 = ((_549 * _413) + _545);
    _565 = saturate((((_544 + _543) + _545) * 0.33329999446868896f) + _262.w);
  } else {
    _562 = _411;
    _563 = _412;
    _564 = _413;
    _565 = _262.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _582 = abs(_64 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _584 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_63 - UberPostBaseCBuffer_112.x);
    _590 = exp2(log2(saturate(1.0f - dot(float2(_584, _582), float2(_584, _582)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _604 = (((_590 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _562);
    _605 = (((_590 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _563);
    _606 = (((_590 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _564);
  } else {
    _604 = _562;
    _605 = _563;
    _606 = _564;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_604, _605, _606);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t3, s0, UberPostBaseCBuffer_000.xyz);
    _655 = tonemapped.x;
    _656 = tonemapped.y;
    _657 = tonemapped.z;
  } else {
    _629 = saturate((log2((_606 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _630 = floor(_629);
    _636 = ((saturate((log2((_605 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _638 = (_630 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_604 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _639 = _629 - _630;
    _641 = t3.SampleLevel(s0, float2((_638 + UberPostBaseCBuffer_000.y), _636), 0.0f);
    _645 = t3.SampleLevel(s0, float2(_638, _636), 0.0f);
    _655 = ((_641.x - _645.x) * _639) + _645.x;
    _656 = ((_641.y - _645.y) * _639) + _645.y;
    _657 = ((_641.z - _645.z) * _639) + _645.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _675 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _679 = 1.0f - (sqrt(dot(float3(_655, _656, _657), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _693 = ((((UberPostBaseCBuffer_208.x * _655) * _675) * _679) + _655);
    _694 = ((((UberPostBaseCBuffer_208.x * _656) * _675) * _679) + _656);
    _695 = ((((UberPostBaseCBuffer_208.x * _657) * _675) * _679) + _657);
  } else {
    _693 = _655;
    _694 = _656;
    _695 = _657;
  }
  _700 = ((_694 + _693) + _695) * 0.3333333432674408f;
  _707 = ((_693 - _700) * UberPostFXColorCorrectionCBuffer_000.w) + _700;
  _708 = ((_694 - _700) * UberPostFXColorCorrectionCBuffer_000.w) + _700;
  _709 = ((_695 - _700) * UberPostFXColorCorrectionCBuffer_000.w) + _700;
  if ((Globals_816[3].w) > 0.5f) {
    _717 = t0.SampleBias(s0, float2(dot(float3(_707, _708, _709), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _722 = _717.x;
    _723 = _717.y;
    _724 = _717.z;
  } else {
    _722 = _707;
    _723 = _708;
    _724 = _709;
  }
  _739 = (((1.0f - _722) - saturate(_722)) * UberPostFXColorCorrectionCBuffer_016.w) + _722;
  _740 = (((1.0f - _723) - saturate(_723)) * UberPostFXColorCorrectionCBuffer_016.w) + _723;
  _741 = (((1.0f - _724) - saturate(_724)) * UberPostFXColorCorrectionCBuffer_016.w) + _724;
  _749 = saturate((saturate(dot(float3(_739, _740, _741), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _776 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _739) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _749)) * UberPostFXColorCorrectionCBuffer_032.x) + _739);
  // _777 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _740) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _749)) * UberPostFXColorCorrectionCBuffer_032.x) + _740);
  // _778 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _741) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _749)) * UberPostFXColorCorrectionCBuffer_032.x) + _741);
  _776 = ((((UberPostFXColorCorrectionCBuffer_000.x - _739) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _749)) * UberPostFXColorCorrectionCBuffer_032.x) + _739);
  _777 = ((((UberPostFXColorCorrectionCBuffer_000.y - _740) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _749)) * UberPostFXColorCorrectionCBuffer_032.x) + _740);
  _778 = ((((UberPostFXColorCorrectionCBuffer_000.z - _741) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _749)) * UberPostFXColorCorrectionCBuffer_032.x) + _741);

  // HDR FX Mask Blend
  float3 result = float3(_776, _777, _778);
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
  _853 = result.x;
  _854 = result.y;
  _855 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _784 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _853 = min((_784.x + _776), 1.0f);
        _854 = min((_784.x + _777), 1.0f);
        _855 = min((_784.x + _778), 1.0f);
      } else {
        _821 = select((_776 > 0.5f), 0.0f, 1.0f);
        _822 = select((_777 > 0.5f), 0.0f, 1.0f);
        _823 = select((_778 > 0.5f), 0.0f, 1.0f);
        _842 = 1.0f - _784.x;
        _853 = (((((1.0f - (((1.0f - _776) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _821)) + (((_776 * 2.0f) * _821) * UberPostFXColorCorrectionCBuffer_048.x)) * _784.x) + (_842 * _776));
        _854 = (((((1.0f - (((1.0f - _777) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _822)) + (((_777 * 2.0f) * _822) * UberPostFXColorCorrectionCBuffer_048.y)) * _784.x) + (_842 * _777));
        _855 = (((((1.0f - (((1.0f - _778) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _823)) + (((_778 * 2.0f) * _823) * UberPostFXColorCorrectionCBuffer_048.z)) * _784.x) + (_842 * _778));
      }
  } else {
    _853 = _776;
    _854 = _777;
    _855 = _778;
  }
  */

  SV_Target.x = _853;
  SV_Target.y = _854;
  SV_Target.z = _855;
  SV_Target.w = _565;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
