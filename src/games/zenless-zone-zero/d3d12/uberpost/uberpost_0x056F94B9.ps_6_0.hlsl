#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t7 : register(t7);

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
  float _62;
  float _69;
  float _70;
  float _105;
  float _106;
  float _107;
  float _108;
  float _109;
  float _110;
  float _111;
  float _112;
  float _210;
  float _211;
  float _212;
  float _241;
  float _242;
  float _243;
  float _331;
  float _338;
  float _339;
  float _388;
  float _395;
  float _396;
  float _445;
  float _452;
  float _453;
  float _519;
  float _526;
  float _527;
  float _570;
  float _577;
  float _578;
  float _621;
  float _628;
  float _629;
  float _635;
  float _636;
  float _637;
  float _638;
  float _824;
  float _825;
  float _826;
  float _836;
  float _837;
  float _838;
  float _839;
  float _878;
  float _879;
  float _880;
  float _916;
  float _917;
  float _918;
  float _30;
  float _31;
  float _41;
  float _42;
  float _46;
  float _50;
  float _63;
  float4 _77;
  float _81;
  float _82;
  float _87;
  float _88;
  float _115;
  float _124;
  float _134;
  float _137;
  float _138;
  float _145;
  float _146;
  float _147;
  float _149;
  float _150;
  float _151;
  float _152;
  float _153;
  float _161;
  float _174;
  float _181;
  float _188;
  float _189;
  float _190;
  float4 _204;
  float4 _235;
  float _249;
  float _250;
  bool _253;
  float _260;
  float _262;
  float _266;
  float _268;
  float _270;
  float _272;
  float _279;
  float _284;
  float _286;
  float _288;
  float _293;
  float _294;
  float _299;
  float _300;
  float _310;
  float _311;
  float _315;
  float _319;
  float _332;
  float4 _340;
  float _350;
  float _351;
  float _356;
  float _357;
  float _367;
  float _368;
  float _372;
  float _376;
  float _389;
  float4 _397;
  float _407;
  float _408;
  float _413;
  float _414;
  float _424;
  float _425;
  float _429;
  float _433;
  float _446;
  float4 _454;
  float _487;
  float _488;
  float _498;
  float _499;
  float _503;
  float _507;
  float _520;
  float _532;
  float _533;
  float _538;
  float _539;
  float _549;
  float _550;
  float _554;
  float _558;
  float _571;
  float _583;
  float _584;
  float _589;
  float _590;
  float _600;
  float _601;
  float _605;
  float _609;
  float _622;
  float4 _651;
  float _663;
  float _664;
  float _677;
  float _682;
  float _692;
  float _693;
  float _694;
  bool _701;
  float _711;
  float _719;
  float _722;
  float4 _741;
  float _778;
  float _779;
  float _780;
  float _781;
  bool _784;
  float _797;
  float _798;
  float _799;
  float4 _810;
  float _856;
  float _858;
  float _864;
  float _898;
  float _902;
  if (!(UberPostBaseCBuffer_080.w == 0.0f)) {
    _30 = UberPostBaseCBuffer_080.z * (TEXCOORD.x + -0.5f);
    _31 = UberPostBaseCBuffer_080.z * (TEXCOORD.y + -0.5f);
    _41 = (_30 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
    _42 = (_31 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
    _46 = sqrt((_41 * _41) + (_42 * _42));
    _50 = UberPostBaseCBuffer_080.y * _46;
    [branch]
    if (UberPostBaseCBuffer_080.w > 0.0f) {
      _62 = ((1.0f / _50) * tan(UberPostBaseCBuffer_080.x * _46));
    } else {
      _62 = ((UberPostBaseCBuffer_080.x * (1.0f / _46)) * atan(_50));
    }
    _63 = _62 + -1.0f;
    _69 = ((_30 + 0.5f) + (_63 * _41));
    _70 = ((_31 + 0.5f) + (_63 * _42));
  } else {
    _69 = TEXCOORD.x;
    _70 = TEXCOORD.y;
  }
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _77 = t2.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _81 = _77.x * 0.10000000149011612f;
    _82 = _77.y * 0.10000000149011612f;
    _87 = (_81 * _77.z) * UberPostBaseCBuffer_176.w;
    _88 = (_82 * _77.z) * UberPostBaseCBuffer_176.w;
    _105 = (_81 + _69);
    _106 = (_82 + _70);
    _107 = ((_87 * UberPostBaseCBuffer_176.x) + _81);
    _108 = ((_88 * UberPostBaseCBuffer_176.x) + _82);
    _109 = ((_87 * UberPostBaseCBuffer_176.y) + _81);
    _110 = ((_88 * UberPostBaseCBuffer_176.y) + _82);
    _111 = ((UberPostBaseCBuffer_176.z * _87) + _81);
    _112 = ((UberPostBaseCBuffer_176.z * _88) + _82);
  } else {
    _105 = _69;
    _106 = _70;
    _107 = 0.0f;
    _108 = 0.0f;
    _109 = 0.0f;
    _110 = 0.0f;
    _111 = 0.0f;
    _112 = 0.0f;
  }
  _115 = frac(Globals_208[1].x);
  _124 = (((float4)(t3.SampleBias(s3, float2((_115 + (TEXCOORD.x * 5.0f)), (_115 + (TEXCOORD.y * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _134 = ((_124 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_124 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _137 = cos(UberPostBaseCBuffer_224.w);
  _138 = sin(UberPostBaseCBuffer_224.w);
  _145 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _134;
  _146 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _134;
  _147 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _134;
  _149 = _145 * _138;
  _150 = _146 * _137;
  _151 = _146 * _138;
  _152 = _147 * _137;
  _153 = _147 * _138;
  _161 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + TEXCOORD.y);
  _174 = frac(_115 * 1234.0f);
  _181 = (((_174 * _174) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _174) + UberPostBaseCBuffer_256.x;
  _188 = select((_181 < (((float4)(t3.SampleBias(s3, float2(0.5f, (_161 + _149)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _189 = select((_181 < (((float4)(t3.SampleBias(s3, float2(0.5f, (_161 + _151)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _190 = select((_181 < (((float4)(t3.SampleBias(s3, float2(0.5f, (_161 + _153)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _204 = t4.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * TEXCOORD.x) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * TEXCOORD.y) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _210 = (_204.x * _188);
    _211 = (_204.x * _189);
    _212 = (_204.x * _190);
  } else {
    _210 = _188;
    _211 = _189;
    _212 = _190;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _235 = t4.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * TEXCOORD.x) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * TEXCOORD.y) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _241 = (_235.y * _210);
    _242 = (_235.y * _211);
    _243 = (_235.y * _212);
  } else {
    _241 = _210;
    _242 = _211;
    _243 = _212;
  }
  _249 = (_107 + TEXCOORD.x) + (_145 * _137);
  _250 = (_108 + TEXCOORD.y) + _149;
  _253 = !(UberPostBaseCBuffer_080.w == 0.0f);
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _260 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _262 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _266 = dot(float2(_260, _262), float2(_260, _262)) * -0.3333333432674408f;
    _268 = (_266 * _260) * UberPostBaseCBuffer_192.z;
    _270 = (_266 * _262) * UberPostBaseCBuffer_192.z;
    _272 = rsqrt(dot(float3(_268, _270, 9.999999747378752e-05f), float3(_268, _270, 9.999999747378752e-05f)));
    _279 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _284 = exp2(log2(sqrt((_268 * _268) + (_270 * _270)) / _279) * UberPostBaseCBuffer_384.z);
    _286 = ((_268 * _272) * _279) * _284;
    _288 = ((_270 * _272) * _279) * _284;
    _293 = _249 + (_286 * UberPostBaseCBuffer_400.w);
    _294 = _250 + (_288 * UberPostBaseCBuffer_400.w);
    if (_253) {
      _299 = UberPostBaseCBuffer_080.z * (_293 + -0.5f);
      _300 = UberPostBaseCBuffer_080.z * (_294 + -0.5f);
      _310 = (_299 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _311 = (_300 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _315 = sqrt((_310 * _310) + (_311 * _311));
      _319 = UberPostBaseCBuffer_080.y * _315;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _331 = ((1.0f / _319) * tan(UberPostBaseCBuffer_080.x * _315));
      } else {
        _331 = ((UberPostBaseCBuffer_080.x * (1.0f / _315)) * atan(_319));
      }
      _332 = _331 + -1.0f;
      _338 = ((_299 + 0.5f) + (_332 * _310));
      _339 = ((_300 + 0.5f) + (_332 * _311));
    } else {
      _338 = _293;
      _339 = _294;
    }
    _340 = t0.SampleBias(s0, float2(_338, _339), (Globals_976), int2(0, 0));
    _350 = ((_109 + TEXCOORD.x) + _150) + (UberPostBaseCBuffer_416.w * _286);
    _351 = ((_110 + TEXCOORD.y) + _151) + (UberPostBaseCBuffer_416.w * _288);
    if (_253) {
      _356 = UberPostBaseCBuffer_080.z * (_350 + -0.5f);
      _357 = UberPostBaseCBuffer_080.z * (_351 + -0.5f);
      _367 = (_356 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _368 = (_357 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _372 = sqrt((_367 * _367) + (_368 * _368));
      _376 = UberPostBaseCBuffer_080.y * _372;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _388 = ((1.0f / _376) * tan(UberPostBaseCBuffer_080.x * _372));
      } else {
        _388 = ((UberPostBaseCBuffer_080.x * (1.0f / _372)) * atan(_376));
      }
      _389 = _388 + -1.0f;
      _395 = ((_356 + 0.5f) + (_389 * _367));
      _396 = ((_357 + 0.5f) + (_389 * _368));
    } else {
      _395 = _350;
      _396 = _351;
    }
    _397 = t0.SampleBias(s0, float2(_395, _396), (Globals_976), int2(0, 0));
    _407 = ((_111 + TEXCOORD.x) + _152) + (UberPostBaseCBuffer_432.w * _286);
    _408 = ((_112 + TEXCOORD.y) + _153) + (UberPostBaseCBuffer_432.w * _288);
    if (_253) {
      _413 = UberPostBaseCBuffer_080.z * (_407 + -0.5f);
      _414 = UberPostBaseCBuffer_080.z * (_408 + -0.5f);
      _424 = (_413 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _425 = (_414 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _429 = sqrt((_424 * _424) + (_425 * _425));
      _433 = UberPostBaseCBuffer_080.y * _429;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _445 = ((1.0f / _433) * tan(UberPostBaseCBuffer_080.x * _429));
      } else {
        _445 = ((UberPostBaseCBuffer_080.x * (1.0f / _429)) * atan(_433));
      }
      _446 = _445 + -1.0f;
      _452 = ((_413 + 0.5f) + (_446 * _424));
      _453 = ((_414 + 0.5f) + (_446 * _425));
    } else {
      _452 = _407;
      _453 = _408;
    }
    _454 = t0.SampleBias(s0, float2(_452, _453), (Globals_976), int2(0, 0));
    _635 = (((float4)(t0.SampleBias(s0, float2(_105, _106), (Globals_976), int2(0, 0)))).w);
    _636 = (((UberPostBaseCBuffer_416.x * _397.y) + (UberPostBaseCBuffer_400.x * _340.x)) + (UberPostBaseCBuffer_432.x * _454.z));
    _637 = (((UberPostBaseCBuffer_416.y * _397.y) + (UberPostBaseCBuffer_400.y * _340.x)) + (UberPostBaseCBuffer_432.y * _454.z));
    _638 = (((UberPostBaseCBuffer_416.z * _397.y) + (UberPostBaseCBuffer_400.z * _340.x)) + (UberPostBaseCBuffer_432.z * _454.z));
  } else {
    if (_253) {
      _487 = UberPostBaseCBuffer_080.z * (_249 + -0.5f);
      _488 = UberPostBaseCBuffer_080.z * (_250 + -0.5f);
      _498 = (_487 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _499 = (_488 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _503 = sqrt((_498 * _498) + (_499 * _499));
      _507 = UberPostBaseCBuffer_080.y * _503;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _519 = ((1.0f / _507) * tan(UberPostBaseCBuffer_080.x * _503));
      } else {
        _519 = ((UberPostBaseCBuffer_080.x * (1.0f / _503)) * atan(_507));
      }
      _520 = _519 + -1.0f;
      _526 = ((_487 + 0.5f) + (_520 * _498));
      _527 = ((_488 + 0.5f) + (_520 * _499));
    } else {
      _526 = _249;
      _527 = _250;
    }
    _532 = (_109 + TEXCOORD.x) + _150;
    _533 = (_110 + TEXCOORD.y) + _151;
    if (_253) {
      _538 = UberPostBaseCBuffer_080.z * (_532 + -0.5f);
      _539 = UberPostBaseCBuffer_080.z * (_533 + -0.5f);
      _549 = (_538 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _550 = (_539 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _554 = sqrt((_549 * _549) + (_550 * _550));
      _558 = UberPostBaseCBuffer_080.y * _554;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _570 = ((1.0f / _558) * tan(UberPostBaseCBuffer_080.x * _554));
      } else {
        _570 = ((UberPostBaseCBuffer_080.x * (1.0f / _554)) * atan(_558));
      }
      _571 = _570 + -1.0f;
      _577 = ((_538 + 0.5f) + (_571 * _549));
      _578 = ((_539 + 0.5f) + (_571 * _550));
    } else {
      _577 = _532;
      _578 = _533;
    }
    _583 = (_111 + TEXCOORD.x) + _152;
    _584 = (_112 + TEXCOORD.y) + _153;
    if (_253) {
      _589 = UberPostBaseCBuffer_080.z * (_583 + -0.5f);
      _590 = UberPostBaseCBuffer_080.z * (_584 + -0.5f);
      _600 = (_589 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _601 = (_590 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _605 = sqrt((_600 * _600) + (_601 * _601));
      _609 = UberPostBaseCBuffer_080.y * _605;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _621 = ((1.0f / _609) * tan(UberPostBaseCBuffer_080.x * _605));
      } else {
        _621 = ((UberPostBaseCBuffer_080.x * (1.0f / _605)) * atan(_609));
      }
      _622 = _621 + -1.0f;
      _628 = ((_589 + 0.5f) + (_622 * _600));
      _629 = ((_590 + 0.5f) + (_622 * _601));
    } else {
      _628 = _583;
      _629 = _584;
    }
    _635 = (((float4)(t0.SampleBias(s0, float2(_105, _106), (Globals_976), int2(0, 0)))).w);
    _636 = (((float4)(t0.SampleBias(s0, float2(_526, _527), (Globals_976), int2(0, 0)))).x);
    _637 = (((float4)(t0.SampleBias(s0, float2(_577, _578), (Globals_976), int2(0, 0)))).y);
    _638 = (((float4)(t0.SampleBias(s0, float2(_628, _629), (Globals_976), int2(0, 0)))).z);
  }
  _651 = t7.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * TEXCOORD.x) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * TEXCOORD.y) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _663 = frac((Globals_208[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  _664 = 0.4000000059604645f - _663;
  _677 = (UberPostBaseCBuffer_368.w * max(((select((_664 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_663 + 0.05000000074505806f) * 10.0f) - _664)) + _664), 0.0f)) + 1.0f;
  _682 = 1.0f - UberPostBaseCBuffer_368.z;
  _692 = (((((_651.x * 12.0f) * _677) * _682) + UberPostBaseCBuffer_368.z) * _636) + _241;
  _693 = (((((_651.y * 12.0f) * _677) * _682) + UberPostBaseCBuffer_368.z) * _637) + _242;
  _694 = (((((_651.z * 12.0f) * _677) * _682) + UberPostBaseCBuffer_368.z) * _638) + _243;
  _701 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _701)) {
    _711 = fmod((((Globals_2208.y) * _106) * UberPostBaseCBuffer_448.x), 2.0f);
    _719 = (((select((_711 > 1.0f), (2.0f - _711), _711) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _105;
    _722 = (Globals_2208.w) * (Globals_2208.x);
    _741 = t5.SampleBias(s5, float2(_719, ((select(((frac((((_719 + abs(UberPostBaseCBuffer_464.y)) * _722) - (UberPostBaseCBuffer_464.y * _106)) / ((_722 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _106)), (Globals_976), int2(0, 0));
    _778 = ((((-0.699999988079071f - _741.x) + (exp2(log2(abs(_741.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_741.x < 0.30000001192092896f), 0.0f, 1.0f)) + _741.x) * UberPostBaseCBuffer_336.x;
    _779 = ((((-0.699999988079071f - _741.y) + (exp2(log2(abs(_741.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_741.y < 0.30000001192092896f), 0.0f, 1.0f)) + _741.y) * UberPostBaseCBuffer_336.x;
    _780 = ((((-0.699999988079071f - _741.z) + (exp2(log2(abs(_741.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_741.z < 0.30000001192092896f), 0.0f, 1.0f)) + _741.z) * UberPostBaseCBuffer_336.x;
    _781 = dot(float3(_692, _693, _694), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _784 = (UberPostBaseCBuffer_352.x > 0.5f);
    _797 = select(_784, ((((_778 * _781) - _778) * _635) + _778), _778);
    _798 = select(_784, ((((_779 * _781) - _779) * _635) + _779), _779);
    _799 = select(_784, ((((_780 * _781) - _780) * _635) + _780), _780);
    if (_701) {
      _810 = t6.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _105) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _106) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _824 = (((_810.x * _778) * UberPostBaseCBuffer_336.y) + _797);
      _825 = (((_810.y * _779) * UberPostBaseCBuffer_336.y) + _798);
      _826 = (((_810.z * _780) * UberPostBaseCBuffer_336.y) + _799);
    } else {
      _824 = _797;
      _825 = _798;
      _826 = _799;
    }
    _836 = (_824 + _692);
    _837 = (_825 + _693);
    _838 = (_826 + _694);
    _839 = saturate((((_825 + _824) + _826) * 0.33329999446868896f) + _635);
  } else {
    _836 = _692;
    _837 = _693;
    _838 = _694;
    _839 = _635;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _856 = abs(_106 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _858 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_105 - UberPostBaseCBuffer_112.x);
    _864 = exp2(log2(saturate(1.0f - dot(float2(_858, _856), float2(_858, _856)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _878 = (((_864 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _836);
    _879 = (((_864 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _837);
    _880 = (((_864 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _838);
  } else {
    _878 = _836;
    _879 = _837;
    _880 = _838;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_878, _879, _880);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _878 = tonemapped.x;
    _879 = tonemapped.y;
    _880 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _898 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _902 = 1.0f - (sqrt(dot(float3(_878, _879, _880), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _916 = ((((UberPostBaseCBuffer_208.x * _878) * _898) * _902) + _878);
    _917 = ((((UberPostBaseCBuffer_208.x * _879) * _898) * _902) + _879);
    _918 = ((((UberPostBaseCBuffer_208.x * _880) * _898) * _902) + _880);
  } else {
    _916 = _878;
    _917 = _879;
    _918 = _880;
  }
  SV_Target.x = (_916);
  SV_Target.y = (_917);
  SV_Target.z = (_918);
  SV_Target.w = _839;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
