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
  float _63;
  float _70;
  float _71;
  float _106;
  float _107;
  float _108;
  float _109;
  float _110;
  float _111;
  float _112;
  float _113;
  float _211;
  float _212;
  float _213;
  float _242;
  float _243;
  float _244;
  float _332;
  float _339;
  float _340;
  float _389;
  float _396;
  float _397;
  float _446;
  float _453;
  float _454;
  float _520;
  float _527;
  float _528;
  float _571;
  float _578;
  float _579;
  float _622;
  float _629;
  float _630;
  float _636;
  float _637;
  float _638;
  float _639;
  float _825;
  float _826;
  float _827;
  float _837;
  float _838;
  float _839;
  float _840;
  float _879;
  float _880;
  float _881;
  float _968;
  float _969;
  float _970;
  float _31;
  float _32;
  float _42;
  float _43;
  float _47;
  float _51;
  float _64;
  float4 _78;
  float _82;
  float _83;
  float _88;
  float _89;
  float _116;
  float _125;
  float _135;
  float _138;
  float _139;
  float _146;
  float _147;
  float _148;
  float _150;
  float _151;
  float _152;
  float _153;
  float _154;
  float _162;
  float _175;
  float _182;
  float _189;
  float _190;
  float _191;
  float4 _205;
  float4 _236;
  float _250;
  float _251;
  bool _254;
  float _261;
  float _263;
  float _267;
  float _269;
  float _271;
  float _273;
  float _280;
  float _285;
  float _287;
  float _289;
  float _294;
  float _295;
  float _300;
  float _301;
  float _311;
  float _312;
  float _316;
  float _320;
  float _333;
  float4 _341;
  float _351;
  float _352;
  float _357;
  float _358;
  float _368;
  float _369;
  float _373;
  float _377;
  float _390;
  float4 _398;
  float _408;
  float _409;
  float _414;
  float _415;
  float _425;
  float _426;
  float _430;
  float _434;
  float _447;
  float4 _455;
  float _488;
  float _489;
  float _499;
  float _500;
  float _504;
  float _508;
  float _521;
  float _533;
  float _534;
  float _539;
  float _540;
  float _550;
  float _551;
  float _555;
  float _559;
  float _572;
  float _584;
  float _585;
  float _590;
  float _591;
  float _601;
  float _602;
  float _606;
  float _610;
  float _623;
  float4 _652;
  float _664;
  float _665;
  float _678;
  float _683;
  float _693;
  float _694;
  float _695;
  bool _702;
  float _712;
  float _720;
  float _723;
  float4 _742;
  float _779;
  float _780;
  float _781;
  float _782;
  bool _785;
  float _798;
  float _799;
  float _800;
  float4 _811;
  float _857;
  float _859;
  float _865;
  float _904;
  float _905;
  float _911;
  float _913;
  float _914;
  float4 _916;
  float4 _920;
  float _930;
  float _931;
  float _932;
  float _950;
  float _954;
  if (!(UberPostBaseCBuffer_080.w == 0.0f)) {
    _31 = UberPostBaseCBuffer_080.z * (TEXCOORD.x + -0.5f);
    _32 = UberPostBaseCBuffer_080.z * (TEXCOORD.y + -0.5f);
    _42 = (_31 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
    _43 = (_32 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
    _47 = sqrt((_42 * _42) + (_43 * _43));
    _51 = UberPostBaseCBuffer_080.y * _47;
    [branch]
    if (UberPostBaseCBuffer_080.w > 0.0f) {
      _63 = ((1.0f / _51) * tan(UberPostBaseCBuffer_080.x * _47));
    } else {
      _63 = ((UberPostBaseCBuffer_080.x * (1.0f / _47)) * atan(_51));
    }
    _64 = _63 + -1.0f;
    _70 = ((_31 + 0.5f) + (_64 * _42));
    _71 = ((_32 + 0.5f) + (_64 * _43));
  } else {
    _70 = TEXCOORD.x;
    _71 = TEXCOORD.y;
  }
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _78 = t3.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _82 = _78.x * 0.10000000149011612f;
    _83 = _78.y * 0.10000000149011612f;
    _88 = (_82 * _78.z) * UberPostBaseCBuffer_176.w;
    _89 = (_83 * _78.z) * UberPostBaseCBuffer_176.w;
    _106 = (_82 + _70);
    _107 = (_83 + _71);
    _108 = ((_88 * UberPostBaseCBuffer_176.x) + _82);
    _109 = ((_89 * UberPostBaseCBuffer_176.x) + _83);
    _110 = ((_88 * UberPostBaseCBuffer_176.y) + _82);
    _111 = ((_89 * UberPostBaseCBuffer_176.y) + _83);
    _112 = ((UberPostBaseCBuffer_176.z * _88) + _82);
    _113 = ((UberPostBaseCBuffer_176.z * _89) + _83);
  } else {
    _106 = _70;
    _107 = _71;
    _108 = 0.0f;
    _109 = 0.0f;
    _110 = 0.0f;
    _111 = 0.0f;
    _112 = 0.0f;
    _113 = 0.0f;
  }
  _116 = frac(Globals_208[1].x);
  _125 = (((float4)(t4.SampleBias(s3, float2((_116 + (TEXCOORD.x * 5.0f)), (_116 + (TEXCOORD.y * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _135 = ((_125 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_125 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _138 = cos(UberPostBaseCBuffer_224.w);
  _139 = sin(UberPostBaseCBuffer_224.w);
  _146 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _135;
  _147 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _135;
  _148 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _135;
  _150 = _146 * _139;
  _151 = _147 * _138;
  _152 = _147 * _139;
  _153 = _148 * _138;
  _154 = _148 * _139;
  _162 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + TEXCOORD.y);
  _175 = frac(_116 * 1234.0f);
  _182 = (((_175 * _175) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _175) + UberPostBaseCBuffer_256.x;
  _189 = select((_182 < (((float4)(t4.SampleBias(s3, float2(0.5f, (_162 + _150)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _190 = select((_182 < (((float4)(t4.SampleBias(s3, float2(0.5f, (_162 + _152)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _191 = select((_182 < (((float4)(t4.SampleBias(s3, float2(0.5f, (_162 + _154)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _205 = t5.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * TEXCOORD.x) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * TEXCOORD.y) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _211 = (_205.x * _189);
    _212 = (_205.x * _190);
    _213 = (_205.x * _191);
  } else {
    _211 = _189;
    _212 = _190;
    _213 = _191;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _236 = t5.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * TEXCOORD.x) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * TEXCOORD.y) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _242 = (_236.y * _211);
    _243 = (_236.y * _212);
    _244 = (_236.y * _213);
  } else {
    _242 = _211;
    _243 = _212;
    _244 = _213;
  }
  _250 = (_108 + TEXCOORD.x) + (_146 * _138);
  _251 = (_109 + TEXCOORD.y) + _150;
  _254 = !(UberPostBaseCBuffer_080.w == 0.0f);
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _261 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _263 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _267 = dot(float2(_261, _263), float2(_261, _263)) * -0.3333333432674408f;
    _269 = (_267 * _261) * UberPostBaseCBuffer_192.z;
    _271 = (_267 * _263) * UberPostBaseCBuffer_192.z;
    _273 = rsqrt(dot(float3(_269, _271, 9.999999747378752e-05f), float3(_269, _271, 9.999999747378752e-05f)));
    _280 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _285 = exp2(log2(sqrt((_269 * _269) + (_271 * _271)) / _280) * UberPostBaseCBuffer_384.z);
    _287 = ((_269 * _273) * _280) * _285;
    _289 = ((_271 * _273) * _280) * _285;
    _294 = _250 + (_287 * UberPostBaseCBuffer_400.w);
    _295 = _251 + (_289 * UberPostBaseCBuffer_400.w);
    if (_254) {
      _300 = UberPostBaseCBuffer_080.z * (_294 + -0.5f);
      _301 = UberPostBaseCBuffer_080.z * (_295 + -0.5f);
      _311 = (_300 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _312 = (_301 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _316 = sqrt((_311 * _311) + (_312 * _312));
      _320 = UberPostBaseCBuffer_080.y * _316;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _332 = ((1.0f / _320) * tan(UberPostBaseCBuffer_080.x * _316));
      } else {
        _332 = ((UberPostBaseCBuffer_080.x * (1.0f / _316)) * atan(_320));
      }
      _333 = _332 + -1.0f;
      _339 = ((_300 + 0.5f) + (_333 * _311));
      _340 = ((_301 + 0.5f) + (_333 * _312));
    } else {
      _339 = _294;
      _340 = _295;
    }
    _341 = t0.SampleBias(s0, float2(_339, _340), (Globals_976), int2(0, 0));
    _351 = ((_110 + TEXCOORD.x) + _151) + (UberPostBaseCBuffer_416.w * _287);
    _352 = ((_111 + TEXCOORD.y) + _152) + (UberPostBaseCBuffer_416.w * _289);
    if (_254) {
      _357 = UberPostBaseCBuffer_080.z * (_351 + -0.5f);
      _358 = UberPostBaseCBuffer_080.z * (_352 + -0.5f);
      _368 = (_357 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _369 = (_358 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _373 = sqrt((_368 * _368) + (_369 * _369));
      _377 = UberPostBaseCBuffer_080.y * _373;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _389 = ((1.0f / _377) * tan(UberPostBaseCBuffer_080.x * _373));
      } else {
        _389 = ((UberPostBaseCBuffer_080.x * (1.0f / _373)) * atan(_377));
      }
      _390 = _389 + -1.0f;
      _396 = ((_357 + 0.5f) + (_390 * _368));
      _397 = ((_358 + 0.5f) + (_390 * _369));
    } else {
      _396 = _351;
      _397 = _352;
    }
    _398 = t0.SampleBias(s0, float2(_396, _397), (Globals_976), int2(0, 0));
    _408 = ((_112 + TEXCOORD.x) + _153) + (UberPostBaseCBuffer_432.w * _287);
    _409 = ((_113 + TEXCOORD.y) + _154) + (UberPostBaseCBuffer_432.w * _289);
    if (_254) {
      _414 = UberPostBaseCBuffer_080.z * (_408 + -0.5f);
      _415 = UberPostBaseCBuffer_080.z * (_409 + -0.5f);
      _425 = (_414 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _426 = (_415 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _430 = sqrt((_425 * _425) + (_426 * _426));
      _434 = UberPostBaseCBuffer_080.y * _430;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _446 = ((1.0f / _434) * tan(UberPostBaseCBuffer_080.x * _430));
      } else {
        _446 = ((UberPostBaseCBuffer_080.x * (1.0f / _430)) * atan(_434));
      }
      _447 = _446 + -1.0f;
      _453 = ((_414 + 0.5f) + (_447 * _425));
      _454 = ((_415 + 0.5f) + (_447 * _426));
    } else {
      _453 = _408;
      _454 = _409;
    }
    _455 = t0.SampleBias(s0, float2(_453, _454), (Globals_976), int2(0, 0));
    _636 = (((float4)(t0.SampleBias(s0, float2(_106, _107), (Globals_976), int2(0, 0)))).w);
    _637 = (((UberPostBaseCBuffer_416.x * _398.y) + (UberPostBaseCBuffer_400.x * _341.x)) + (UberPostBaseCBuffer_432.x * _455.z));
    _638 = (((UberPostBaseCBuffer_416.y * _398.y) + (UberPostBaseCBuffer_400.y * _341.x)) + (UberPostBaseCBuffer_432.y * _455.z));
    _639 = (((UberPostBaseCBuffer_416.z * _398.y) + (UberPostBaseCBuffer_400.z * _341.x)) + (UberPostBaseCBuffer_432.z * _455.z));
  } else {
    if (_254) {
      _488 = UberPostBaseCBuffer_080.z * (_250 + -0.5f);
      _489 = UberPostBaseCBuffer_080.z * (_251 + -0.5f);
      _499 = (_488 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _500 = (_489 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _504 = sqrt((_499 * _499) + (_500 * _500));
      _508 = UberPostBaseCBuffer_080.y * _504;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _520 = ((1.0f / _508) * tan(UberPostBaseCBuffer_080.x * _504));
      } else {
        _520 = ((UberPostBaseCBuffer_080.x * (1.0f / _504)) * atan(_508));
      }
      _521 = _520 + -1.0f;
      _527 = ((_488 + 0.5f) + (_521 * _499));
      _528 = ((_489 + 0.5f) + (_521 * _500));
    } else {
      _527 = _250;
      _528 = _251;
    }
    _533 = (_110 + TEXCOORD.x) + _151;
    _534 = (_111 + TEXCOORD.y) + _152;
    if (_254) {
      _539 = UberPostBaseCBuffer_080.z * (_533 + -0.5f);
      _540 = UberPostBaseCBuffer_080.z * (_534 + -0.5f);
      _550 = (_539 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _551 = (_540 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _555 = sqrt((_550 * _550) + (_551 * _551));
      _559 = UberPostBaseCBuffer_080.y * _555;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _571 = ((1.0f / _559) * tan(UberPostBaseCBuffer_080.x * _555));
      } else {
        _571 = ((UberPostBaseCBuffer_080.x * (1.0f / _555)) * atan(_559));
      }
      _572 = _571 + -1.0f;
      _578 = ((_539 + 0.5f) + (_572 * _550));
      _579 = ((_540 + 0.5f) + (_572 * _551));
    } else {
      _578 = _533;
      _579 = _534;
    }
    _584 = (_112 + TEXCOORD.x) + _153;
    _585 = (_113 + TEXCOORD.y) + _154;
    if (_254) {
      _590 = UberPostBaseCBuffer_080.z * (_584 + -0.5f);
      _591 = UberPostBaseCBuffer_080.z * (_585 + -0.5f);
      _601 = (_590 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _602 = (_591 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _606 = sqrt((_601 * _601) + (_602 * _602));
      _610 = UberPostBaseCBuffer_080.y * _606;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _622 = ((1.0f / _610) * tan(UberPostBaseCBuffer_080.x * _606));
      } else {
        _622 = ((UberPostBaseCBuffer_080.x * (1.0f / _606)) * atan(_610));
      }
      _623 = _622 + -1.0f;
      _629 = ((_590 + 0.5f) + (_623 * _601));
      _630 = ((_591 + 0.5f) + (_623 * _602));
    } else {
      _629 = _584;
      _630 = _585;
    }
    _636 = (((float4)(t0.SampleBias(s0, float2(_106, _107), (Globals_976), int2(0, 0)))).w);
    _637 = (((float4)(t0.SampleBias(s0, float2(_527, _528), (Globals_976), int2(0, 0)))).x);
    _638 = (((float4)(t0.SampleBias(s0, float2(_578, _579), (Globals_976), int2(0, 0)))).y);
    _639 = (((float4)(t0.SampleBias(s0, float2(_629, _630), (Globals_976), int2(0, 0)))).z);
  }
  _652 = t8.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * TEXCOORD.x) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * TEXCOORD.y) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _664 = frac((Globals_208[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  _665 = 0.4000000059604645f - _664;
  _678 = (UberPostBaseCBuffer_368.w * max(((select((_665 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_664 + 0.05000000074505806f) * 10.0f) - _665)) + _665), 0.0f)) + 1.0f;
  _683 = 1.0f - UberPostBaseCBuffer_368.z;
  _693 = (((((_652.x * 12.0f) * _678) * _683) + UberPostBaseCBuffer_368.z) * _637) + _242;
  _694 = (((((_652.y * 12.0f) * _678) * _683) + UberPostBaseCBuffer_368.z) * _638) + _243;
  _695 = (((((_652.z * 12.0f) * _678) * _683) + UberPostBaseCBuffer_368.z) * _639) + _244;
  _702 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _702)) {
    _712 = fmod((((Globals_2208.y) * _107) * UberPostBaseCBuffer_448.x), 2.0f);
    _720 = (((select((_712 > 1.0f), (2.0f - _712), _712) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _106;
    _723 = (Globals_2208.w) * (Globals_2208.x);
    _742 = t6.SampleBias(s5, float2(_720, ((select(((frac((((_720 + abs(UberPostBaseCBuffer_464.y)) * _723) - (UberPostBaseCBuffer_464.y * _107)) / ((_723 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _107)), (Globals_976), int2(0, 0));
    _779 = ((((-0.699999988079071f - _742.x) + (exp2(log2(abs(_742.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_742.x < 0.30000001192092896f), 0.0f, 1.0f)) + _742.x) * UberPostBaseCBuffer_336.x;
    _780 = ((((-0.699999988079071f - _742.y) + (exp2(log2(abs(_742.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_742.y < 0.30000001192092896f), 0.0f, 1.0f)) + _742.y) * UberPostBaseCBuffer_336.x;
    _781 = ((((-0.699999988079071f - _742.z) + (exp2(log2(abs(_742.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_742.z < 0.30000001192092896f), 0.0f, 1.0f)) + _742.z) * UberPostBaseCBuffer_336.x;
    _782 = dot(float3(_693, _694, _695), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _785 = (UberPostBaseCBuffer_352.x > 0.5f);
    _798 = select(_785, ((((_779 * _782) - _779) * _636) + _779), _779);
    _799 = select(_785, ((((_780 * _782) - _780) * _636) + _780), _780);
    _800 = select(_785, ((((_781 * _782) - _781) * _636) + _781), _781);
    if (_702) {
      _811 = t7.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _106) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _107) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _825 = (((_811.x * _779) * UberPostBaseCBuffer_336.y) + _798);
      _826 = (((_811.y * _780) * UberPostBaseCBuffer_336.y) + _799);
      _827 = (((_811.z * _781) * UberPostBaseCBuffer_336.y) + _800);
    } else {
      _825 = _798;
      _826 = _799;
      _827 = _800;
    }
    _837 = (_825 + _693);
    _838 = (_826 + _694);
    _839 = (_827 + _695);
    _840 = saturate((((_826 + _825) + _827) * 0.33329999446868896f) + _636);
  } else {
    _837 = _693;
    _838 = _694;
    _839 = _695;
    _840 = _636;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _857 = abs(_107 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _859 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_106 - UberPostBaseCBuffer_112.x);
    _865 = exp2(log2(saturate(1.0f - dot(float2(_859, _857), float2(_859, _857)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _879 = (((_865 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _837);
    _880 = (((_865 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _838);
    _881 = (((_865 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _839);
  } else {
    _879 = _837;
    _880 = _838;
    _881 = _839;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_879, _880, _881);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t2, s0, UberPostBaseCBuffer_000.xyz);
    _930 = tonemapped.x;
    _931 = tonemapped.y;
    _932 = tonemapped.z;
  } else {
    _904 = saturate((log2((_881 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _905 = floor(_904);
    _911 = ((saturate((log2((_880 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _913 = (_905 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_879 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _914 = _904 - _905;
    _916 = t2.SampleLevel(s0, float2((_913 + UberPostBaseCBuffer_000.y), _911), 0.0f);
    _920 = t2.SampleLevel(s0, float2(_913, _911), 0.0f);
    _930 = ((_916.x - _920.x) * _914) + _920.x;
    _931 = ((_916.y - _920.y) * _914) + _920.y;
    _932 = ((_916.z - _920.z) * _914) + _920.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _950 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _954 = 1.0f - (sqrt(dot(float3(_930, _931, _932), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _968 = ((((UberPostBaseCBuffer_208.x * _930) * _950) * _954) + _930);
    _969 = ((((UberPostBaseCBuffer_208.x * _931) * _950) * _954) + _931);
    _970 = ((((UberPostBaseCBuffer_208.x * _932) * _950) * _954) + _932);
  } else {
    _968 = _930;
    _969 = _931;
    _970 = _932;
  }
  SV_Target.x = (_968);
  SV_Target.y = (_969);
  SV_Target.z = (_970);
  SV_Target.w = _840;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
