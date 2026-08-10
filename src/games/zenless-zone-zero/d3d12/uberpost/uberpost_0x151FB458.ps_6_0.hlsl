#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

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

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

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
  float _54;
  float _61;
  float _62;
  float _554;
  float _555;
  float _556;
  float _557;
  float _558;
  float _559;
  float _560;
  float _561;
  float _647;
  float _654;
  float _655;
  float _704;
  float _711;
  float _712;
  float _759;
  float _766;
  float _767;
  float _841;
  float _848;
  float _849;
  float _890;
  float _897;
  float _898;
  float _939;
  float _946;
  float _947;
  float _956;
  float _957;
  float _958;
  float _964;
  float _965;
  float _966;
  float _967;
  float _1099;
  float _1100;
  float _1101;
  float _1111;
  float _1112;
  float _1113;
  float _1114;
  float _1153;
  float _1154;
  float _1155;
  float _1193;
  float _1194;
  float _1195;
  float _22;
  float _23;
  float _33;
  float _34;
  float _38;
  float _42;
  float _55;
  float4 _70;
  float _94;
  float _96;
  float _112;
  float _113;
  float _114;
  float _115;
  float _116;
  float _117;
  float _118;
  float _119;
  float _120;
  float _121;
  float _124;
  float _127;
  float _130;
  float _132;
  float _147;
  float _161;
  float _167;
  float _168;
  float _169;
  float _171;
  float _176;
  float _184;
  float _185;
  float _190;
  float _191;
  float _192;
  float _195;
  float _196;
  float _199;
  float _200;
  float _201;
  bool _202;
  float _203;
  float _204;
  float _207;
  float _208;
  float _209;
  float _210;
  float _217;
  float _218;
  float _219;
  float _220;
  float _227;
  float _228;
  float _229;
  float _240;
  float _243;
  float _246;
  float _253;
  float _254;
  float _255;
  float _274;
  float _275;
  float _276;
  float _277;
  float _278;
  float _279;
  float _289;
  float _290;
  float _291;
  float _292;
  float _293;
  float _294;
  float _298;
  float _299;
  float _300;
  float _307;
  float _308;
  float _309;
  float _343;
  float _344;
  float _345;
  float _348;
  float _349;
  float _352;
  float _353;
  float _354;
  bool _355;
  float _356;
  float _357;
  float _360;
  float _361;
  float _362;
  float _363;
  float _370;
  float _371;
  float _372;
  float _373;
  float _380;
  float _381;
  float _382;
  float _393;
  float _396;
  float _399;
  float _406;
  float _407;
  float _408;
  float _427;
  float _428;
  float _429;
  float _430;
  float _431;
  float _432;
  float _442;
  float _443;
  float _444;
  float _445;
  float _446;
  float _447;
  float _451;
  float _452;
  float _453;
  float _460;
  float _461;
  float _462;
  float _499;
  float _517;
  float _518;
  float _519;
  bool _522;
  float4 _526;
  float _530;
  float _531;
  float _536;
  float _537;
  float _571;
  float _573;
  float _577;
  float _579;
  float _581;
  float _583;
  float _590;
  float _595;
  float _597;
  float _599;
  float _606;
  float _607;
  bool _610;
  float _615;
  float _616;
  float _626;
  float _627;
  float _631;
  float _635;
  float _648;
  float4 _658;
  float _666;
  float _667;
  float _672;
  float _673;
  float _683;
  float _684;
  float _688;
  float _692;
  float _705;
  float4 _713;
  float _721;
  float _722;
  float _727;
  float _728;
  float _738;
  float _739;
  float _743;
  float _747;
  float _760;
  float4 _768;
  float _800;
  float _801;
  bool _804;
  float _809;
  float _810;
  float _820;
  float _821;
  float _825;
  float _829;
  float _842;
  float _852;
  float _853;
  float _858;
  float _859;
  float _869;
  float _870;
  float _874;
  float _878;
  float _891;
  float _901;
  float _902;
  float _907;
  float _908;
  float _918;
  float _919;
  float _923;
  float _927;
  float _940;
  float4 _951;
  bool _974;
  float _984;
  float _992;
  float _995;
  float4 _1016;
  float _1053;
  float _1054;
  float _1055;
  float _1056;
  bool _1059;
  float _1072;
  float _1073;
  float _1074;
  float4 _1085;
  float _1131;
  float _1133;
  float _1139;
  float _1175;
  float _1179;
  if (!(UberPostBaseCBuffer_080.w == 0.0f)) {
    _22 = UberPostBaseCBuffer_080.z * (TEXCOORD.x + -0.5f);
    _23 = UberPostBaseCBuffer_080.z * (TEXCOORD.y + -0.5f);
    _33 = (_22 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
    _34 = (_23 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
    _38 = sqrt((_33 * _33) + (_34 * _34));
    _42 = UberPostBaseCBuffer_080.y * _38;
    [branch]
    if (UberPostBaseCBuffer_080.w > 0.0f) {
      _54 = ((1.0f / _42) * tan(UberPostBaseCBuffer_080.x * _38));
    } else {
      _54 = ((UberPostBaseCBuffer_080.x * (1.0f / _38)) * atan(_42));
    }
    _55 = _54 + -1.0f;
    _61 = ((_22 + 0.5f) + (_55 * _33));
    _62 = ((_23 + 0.5f) + (_55 * _34));
  } else {
    _61 = TEXCOORD.x;
    _62 = TEXCOORD.y;
  }
  _70 = t0.Load(int3((int)(uint((Globals_2208.x) * TEXCOORD.x)), (int)(uint((Globals_2208.y) * TEXCOORD.y)), 0));
  _94 = (TEXCOORD.x * 2.0f) + -1.0f;
  _96 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  _112 = mad((Globals_2144[2].w), _70.x, mad((Globals_2144[1].w), _96, ((Globals_2144[0].w) * _94))) + (Globals_2144[3].w);
  _113 = (mad((Globals_2144[2].x), _70.x, mad((Globals_2144[1].x), _96, ((Globals_2144[0].x) * _94))) + (Globals_2144[3].x)) / _112;
  _114 = (mad((Globals_2144[2].y), _70.x, mad((Globals_2144[1].y), _96, ((Globals_2144[0].y) * _94))) + (Globals_2144[3].y)) / _112;
  _115 = (mad((Globals_2144[2].z), _70.x, mad((Globals_2144[1].z), _96, ((Globals_2144[0].z) * _94))) + (Globals_2144[3].z)) / _112;
  _116 = ddy_coarse(_113);
  _117 = ddy_coarse(_114);
  _118 = ddy_coarse(_115);
  _119 = ddx_coarse(_113);
  _120 = ddx_coarse(_114);
  _121 = ddx_coarse(_115);
  _124 = (_120 * _118) - (_121 * _117);
  _127 = (_121 * _116) - (_119 * _118);
  _130 = (_119 * _117) - (_120 * _116);
  _132 = rsqrt(dot(float3(_124, _127, _130), float3(_124, _127, _130)));
  _147 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((Globals_992.z) * _70.x) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y);
  _161 = UberPostBaseCBuffer_544.w * _114;
  _167 = max(abs(_124 * _132), 9.999999747378752e-06f);
  _168 = max(abs(_127 * _132), 9.999999747378752e-06f);
  _169 = max(abs(_132 * _130), 9.999999747378752e-06f);
  _171 = rsqrt(dot(float3(_167, _168, _169), float3(_167, _168, _169)));
  _176 = _171 * ((_168 + _167) + _169);
  _184 = UberPostBaseCBuffer_560.x * (Globals_208[1].x);
  _185 = UberPostBaseCBuffer_560.y * (Globals_208[1].x);
  _190 = (_161 * UberPostBaseCBuffer_560.z) + _184;
  _191 = ((UberPostBaseCBuffer_544.w * _115) * UberPostBaseCBuffer_560.w) + _185;
  _192 = dot(float2(_190, _191), float2(0.3660254180431366f, 0.3660254180431366f));
  _195 = floor(_190 + _192);
  _196 = floor(_191 + _192);
  _199 = dot(float2(_195, _196), float2(0.21132487058639526f, 0.21132487058639526f));
  _200 = (_190 - _195) + _199;
  _201 = (_191 - _196) + _199;
  _202 = (_200 > _201);
  _203 = select(_202, 1.0f, 0.0f);
  _204 = select(_202, 0.0f, 1.0f);
  _207 = _200 + -0.5773502588272095f;
  _208 = _201 + -0.5773502588272095f;
  _209 = (_200 + 0.21132487058639526f) - _203;
  _210 = (_201 + 0.21132487058639526f) - _204;
  _217 = _195 - (floor(_195 * 0.0034602077212184668f) * 289.0f);
  _218 = _196 - (floor(_196 * 0.0034602077212184668f) * 289.0f);
  _219 = _218 + _204;
  _220 = _218 + 1.0f;
  _227 = ((_218 * 34.0f) + 1.0f) * _218;
  _228 = ((_219 * 34.0f) + 1.0f) * _219;
  _229 = ((_220 * 34.0f) + 1.0f) * _220;
  _240 = (_227 - (floor(_227 * 0.0034602077212184668f) * 289.0f)) + _217;
  _243 = ((_203 + _217) - (floor(_228 * 0.0034602077212184668f) * 289.0f)) + _228;
  _246 = ((_217 + 1.0f) - (floor(_229 * 0.0034602077212184668f) * 289.0f)) + _229;
  _253 = ((_240 * 34.0f) + 1.0f) * _240;
  _254 = ((_243 * 34.0f) + 1.0f) * _243;
  _255 = ((_246 * 34.0f) + 1.0f) * _246;
  _274 = max((0.5f - dot(float2(_200, _201), float2(_200, _201))), 0.0f);
  _275 = max((0.5f - dot(float2(_209, _210), float2(_209, _210))), 0.0f);
  _276 = max((0.5f - dot(float2(_207, _208), float2(_207, _208))), 0.0f);
  _277 = _274 * _274;
  _278 = _275 * _275;
  _279 = _276 * _276;
  _289 = frac((_253 - (floor(_253 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _290 = frac((_254 - (floor(_254 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _291 = frac((_255 - (floor(_255 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _292 = _289 + -1.0f;
  _293 = _290 + -1.0f;
  _294 = _291 + -1.0f;
  _298 = abs(_292) + -0.5f;
  _299 = abs(_293) + -0.5f;
  _300 = abs(_294) + -0.5f;
  _307 = _292 - floor(_289 + -0.5f);
  _308 = _293 - floor(_290 + -0.5f);
  _309 = _294 - floor(_291 + -0.5f);
  _343 = ((UberPostBaseCBuffer_544.w * _113) * UberPostBaseCBuffer_592.x) + _184;
  _344 = (_161 * UberPostBaseCBuffer_592.y) + _185;
  _345 = dot(float2(_343, _344), float2(0.3660254180431366f, 0.3660254180431366f));
  _348 = floor(_343 + _345);
  _349 = floor(_344 + _345);
  _352 = dot(float2(_348, _349), float2(0.21132487058639526f, 0.21132487058639526f));
  _353 = (_343 - _348) + _352;
  _354 = (_344 - _349) + _352;
  _355 = (_353 > _354);
  _356 = select(_355, 1.0f, 0.0f);
  _357 = select(_355, 0.0f, 1.0f);
  _360 = _353 + -0.5773502588272095f;
  _361 = _354 + -0.5773502588272095f;
  _362 = (_353 + 0.21132487058639526f) - _356;
  _363 = (_354 + 0.21132487058639526f) - _357;
  _370 = _348 - (floor(_348 * 0.0034602077212184668f) * 289.0f);
  _371 = _349 - (floor(_349 * 0.0034602077212184668f) * 289.0f);
  _372 = _371 + _357;
  _373 = _371 + 1.0f;
  _380 = ((_371 * 34.0f) + 1.0f) * _371;
  _381 = ((_372 * 34.0f) + 1.0f) * _372;
  _382 = ((_373 * 34.0f) + 1.0f) * _373;
  _393 = (_380 - (floor(_380 * 0.0034602077212184668f) * 289.0f)) + _370;
  _396 = ((_356 + _370) - (floor(_381 * 0.0034602077212184668f) * 289.0f)) + _381;
  _399 = ((_370 + 1.0f) - (floor(_382 * 0.0034602077212184668f) * 289.0f)) + _382;
  _406 = ((_393 * 34.0f) + 1.0f) * _393;
  _407 = ((_396 * 34.0f) + 1.0f) * _396;
  _408 = ((_399 * 34.0f) + 1.0f) * _399;
  _427 = max((0.5f - dot(float2(_353, _354), float2(_353, _354))), 0.0f);
  _428 = max((0.5f - dot(float2(_362, _363), float2(_362, _363))), 0.0f);
  _429 = max((0.5f - dot(float2(_360, _361), float2(_360, _361))), 0.0f);
  _430 = _427 * _427;
  _431 = _428 * _428;
  _432 = _429 * _429;
  _442 = frac((_406 - (floor(_406 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _443 = frac((_407 - (floor(_407 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _444 = frac((_408 - (floor(_408 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _445 = _442 + -1.0f;
  _446 = _443 + -1.0f;
  _447 = _444 + -1.0f;
  _451 = abs(_445) + -0.5f;
  _452 = abs(_446) + -0.5f;
  _453 = abs(_447) + -0.5f;
  _460 = _445 - floor(_442 + -0.5f);
  _461 = _446 - floor(_443 + -0.5f);
  _462 = _447 - floor(_444 + -0.5f);
  _499 = ((((_147 * _147) * 130.0f) * exp2(log2(1.0f - saturate(abs(_114 - UberPostBaseCBuffer_576.y) / UberPostBaseCBuffer_576.x)) * UberPostBaseCBuffer_576.z)) * UberPostBaseCBuffer_544.x) * ((dot(float3(((_430 * _430) * (1.7928428649902344f - (((_460 * _460) + (_451 * _451)) * 0.8537347316741943f))), ((_431 * _431) * (1.7928428649902344f - (((_461 * _461) + (_452 * _452)) * 0.8537347316741943f))), ((_432 * _432) * (1.7928428649902344f - (((_462 * _462) + (_453 * _453)) * 0.8537347316741943f)))), float3(((_460 * _353) + (_451 * _354)), ((_461 * _362) + (_452 * _363)), ((_462 * _360) + (_453 * _361)))) * ((_171 * _169) / _176)) + (dot(float3(((_277 * _277) * (1.7928428649902344f - (((_307 * _307) + (_298 * _298)) * 0.8537347316741943f))), ((_278 * _278) * (1.7928428649902344f - (((_308 * _308) + (_299 * _299)) * 0.8537347316741943f))), ((_279 * _279) * (1.7928428649902344f - (((_309 * _309) + (_300 * _300)) * 0.8537347316741943f)))), float3(((_307 * _200) + (_298 * _201)), ((_308 * _209) + (_299 * _210)), ((_309 * _207) + (_300 * _208)))) * ((_171 * _167) / _176)));
  _517 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((((float4)(t0.Load(int3((int)(uint((_499 + TEXCOORD.x) * (Globals_2208.x))), (int)(uint((_499 + TEXCOORD.y) * (Globals_2208.y))), 0)))).x) * (Globals_992.z)) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y) * _499;
  _518 = _517 + TEXCOORD.x;
  _519 = _517 + TEXCOORD.y;
  _522 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_522) {
    _526 = t3.SampleBias(s2, float2(_518, _519), (Globals_976), int2(0, 0));
    _530 = _526.x * 0.10000000149011612f;
    _531 = _526.y * 0.10000000149011612f;
    _536 = (_530 * _526.z) * UberPostBaseCBuffer_176.w;
    _537 = (_531 * _526.z) * UberPostBaseCBuffer_176.w;
    _554 = (_530 + _61);
    _555 = (_531 + _62);
    _556 = ((_536 * UberPostBaseCBuffer_176.x) + _530);
    _557 = ((_537 * UberPostBaseCBuffer_176.x) + _531);
    _558 = ((_536 * UberPostBaseCBuffer_176.y) + _530);
    _559 = ((_537 * UberPostBaseCBuffer_176.y) + _531);
    _560 = ((UberPostBaseCBuffer_176.z * _536) + _530);
    _561 = ((UberPostBaseCBuffer_176.z * _537) + _531);
  } else {
    _554 = _61;
    _555 = _62;
    _556 = 0.0f;
    _557 = 0.0f;
    _558 = 0.0f;
    _559 = 0.0f;
    _560 = 0.0f;
    _561 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _571 = ((_518 * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _573 = ((_519 * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _577 = dot(float2(_571, _573), float2(_571, _573)) * -0.3333333432674408f;
    _579 = (_577 * _571) * UberPostBaseCBuffer_192.z;
    _581 = (_577 * _573) * UberPostBaseCBuffer_192.z;
    _583 = rsqrt(dot(float3(_579, _581, 9.999999747378752e-05f), float3(_579, _581, 9.999999747378752e-05f)));
    _590 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _595 = exp2(log2(sqrt((_579 * _579) + (_581 * _581)) / _590) * UberPostBaseCBuffer_384.z);
    _597 = ((_579 * _583) * _590) * _595;
    _599 = ((_581 * _583) * _590) * _595;
    _606 = (_556 + _518) + (_597 * UberPostBaseCBuffer_400.w);
    _607 = (_557 + _519) + (_599 * UberPostBaseCBuffer_400.w);
    _610 = !(UberPostBaseCBuffer_080.w == 0.0f);
    if (_610) {
      _615 = UberPostBaseCBuffer_080.z * (_606 + -0.5f);
      _616 = UberPostBaseCBuffer_080.z * (_607 + -0.5f);
      _626 = (_615 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _627 = (_616 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _631 = sqrt((_626 * _626) + (_627 * _627));
      _635 = UberPostBaseCBuffer_080.y * _631;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _647 = ((1.0f / _635) * tan(UberPostBaseCBuffer_080.x * _631));
      } else {
        _647 = ((UberPostBaseCBuffer_080.x * (1.0f / _631)) * atan(_635));
      }
      _648 = _647 + -1.0f;
      _654 = ((_615 + 0.5f) + (_648 * _626));
      _655 = ((_616 + 0.5f) + (_648 * _627));
    } else {
      _654 = _606;
      _655 = _607;
    }
    _658 = t1.SampleBias(s0, float2(_654, _655), (Globals_976), int2(0, 0));
    _666 = (_558 + _518) + (UberPostBaseCBuffer_416.w * _597);
    _667 = (_559 + _519) + (UberPostBaseCBuffer_416.w * _599);
    if (_610) {
      _672 = UberPostBaseCBuffer_080.z * (_666 + -0.5f);
      _673 = UberPostBaseCBuffer_080.z * (_667 + -0.5f);
      _683 = (_672 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _684 = (_673 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _688 = sqrt((_683 * _683) + (_684 * _684));
      _692 = UberPostBaseCBuffer_080.y * _688;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _704 = ((1.0f / _692) * tan(UberPostBaseCBuffer_080.x * _688));
      } else {
        _704 = ((UberPostBaseCBuffer_080.x * (1.0f / _688)) * atan(_692));
      }
      _705 = _704 + -1.0f;
      _711 = ((_672 + 0.5f) + (_705 * _683));
      _712 = ((_673 + 0.5f) + (_705 * _684));
    } else {
      _711 = _666;
      _712 = _667;
    }
    _713 = t1.SampleBias(s0, float2(_711, _712), (Globals_976), int2(0, 0));
    _721 = (_560 + _518) + (UberPostBaseCBuffer_432.w * _597);
    _722 = (_561 + _519) + (UberPostBaseCBuffer_432.w * _599);
    if (_610) {
      _727 = UberPostBaseCBuffer_080.z * (_721 + -0.5f);
      _728 = UberPostBaseCBuffer_080.z * (_722 + -0.5f);
      _738 = (_727 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _739 = (_728 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _743 = sqrt((_738 * _738) + (_739 * _739));
      _747 = UberPostBaseCBuffer_080.y * _743;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _759 = ((1.0f / _747) * tan(UberPostBaseCBuffer_080.x * _743));
      } else {
        _759 = ((UberPostBaseCBuffer_080.x * (1.0f / _743)) * atan(_747));
      }
      _760 = _759 + -1.0f;
      _766 = ((_727 + 0.5f) + (_760 * _738));
      _767 = ((_728 + 0.5f) + (_760 * _739));
    } else {
      _766 = _721;
      _767 = _722;
    }
    _768 = t1.SampleBias(s0, float2(_766, _767), (Globals_976), int2(0, 0));
    _964 = (((float4)(t1.SampleBias(s0, float2(_554, _555), (Globals_976), int2(0, 0)))).w);
    _965 = (((UberPostBaseCBuffer_416.x * _713.y) + (UberPostBaseCBuffer_400.x * _658.x)) + (UberPostBaseCBuffer_432.x * _768.z));
    _966 = (((UberPostBaseCBuffer_416.y * _713.y) + (UberPostBaseCBuffer_400.y * _658.x)) + (UberPostBaseCBuffer_432.y * _768.z));
    _967 = (((UberPostBaseCBuffer_416.z * _713.y) + (UberPostBaseCBuffer_400.z * _658.x)) + (UberPostBaseCBuffer_432.z * _768.z));
  } else {
    if (_522) {
      _800 = _556 + _518;
      _801 = _557 + _519;
      _804 = !(UberPostBaseCBuffer_080.w == 0.0f);
      if (_804) {
        _809 = UberPostBaseCBuffer_080.z * (_800 + -0.5f);
        _810 = UberPostBaseCBuffer_080.z * (_801 + -0.5f);
        _820 = (_809 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _821 = (_810 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _825 = sqrt((_820 * _820) + (_821 * _821));
        _829 = UberPostBaseCBuffer_080.y * _825;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _841 = ((1.0f / _829) * tan(UberPostBaseCBuffer_080.x * _825));
        } else {
          _841 = ((UberPostBaseCBuffer_080.x * (1.0f / _825)) * atan(_829));
        }
        _842 = _841 + -1.0f;
        _848 = ((_809 + 0.5f) + (_842 * _820));
        _849 = ((_810 + 0.5f) + (_842 * _821));
      } else {
        _848 = _800;
        _849 = _801;
      }
      _852 = _558 + _518;
      _853 = _559 + _519;
      if (_804) {
        _858 = UberPostBaseCBuffer_080.z * (_852 + -0.5f);
        _859 = UberPostBaseCBuffer_080.z * (_853 + -0.5f);
        _869 = (_858 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _870 = (_859 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _874 = sqrt((_869 * _869) + (_870 * _870));
        _878 = UberPostBaseCBuffer_080.y * _874;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _890 = ((1.0f / _878) * tan(UberPostBaseCBuffer_080.x * _874));
        } else {
          _890 = ((UberPostBaseCBuffer_080.x * (1.0f / _874)) * atan(_878));
        }
        _891 = _890 + -1.0f;
        _897 = ((_858 + 0.5f) + (_891 * _869));
        _898 = ((_859 + 0.5f) + (_891 * _870));
      } else {
        _897 = _852;
        _898 = _853;
      }
      _901 = _560 + _518;
      _902 = _561 + _519;
      if (_804) {
        _907 = UberPostBaseCBuffer_080.z * (_901 + -0.5f);
        _908 = UberPostBaseCBuffer_080.z * (_902 + -0.5f);
        _918 = (_907 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _919 = (_908 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _923 = sqrt((_918 * _918) + (_919 * _919));
        _927 = UberPostBaseCBuffer_080.y * _923;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _939 = ((1.0f / _927) * tan(UberPostBaseCBuffer_080.x * _923));
        } else {
          _939 = ((UberPostBaseCBuffer_080.x * (1.0f / _923)) * atan(_927));
        }
        _940 = _939 + -1.0f;
        _946 = ((_907 + 0.5f) + (_940 * _918));
        _947 = ((_908 + 0.5f) + (_940 * _919));
      } else {
        _946 = _901;
        _947 = _902;
      }
      _956 = (((float4)(t1.SampleBias(s0, float2(_848, _849), (Globals_976), int2(0, 0)))).x);
      _957 = (((float4)(t1.SampleBias(s0, float2(_897, _898), (Globals_976), int2(0, 0)))).y);
      _958 = (((float4)(t1.SampleBias(s0, float2(_946, _947), (Globals_976), int2(0, 0)))).z);
    } else {
      _951 = t1.SampleBias(s0, float2(_554, _555), (Globals_976), int2(0, 0));
      _956 = _951.x;
      _957 = _951.y;
      _958 = _951.z;
    }
    _964 = (((float4)(t1.SampleBias(s0, float2(_554, _555), (Globals_976), int2(0, 0)))).w);
    _965 = _956;
    _966 = _957;
    _967 = _958;
  }
  _974 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _974)) {
    _984 = fmod((((Globals_2208.y) * _555) * UberPostBaseCBuffer_448.x), 2.0f);
    _992 = (((select((_984 > 1.0f), (2.0f - _984), _984) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _554;
    _995 = (Globals_2208.w) * (Globals_2208.x);
    _1016 = t4.SampleBias(s3, float2(_992, ((select(((frac((((_992 + abs(UberPostBaseCBuffer_464.y)) * _995) - (UberPostBaseCBuffer_464.y * _555)) / ((_995 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _555)), (Globals_976), int2(0, 0));
    _1053 = ((((-0.699999988079071f - _1016.x) + (exp2(log2(abs(_1016.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1016.x < 0.30000001192092896f), 0.0f, 1.0f)) + _1016.x) * UberPostBaseCBuffer_336.x;
    _1054 = ((((-0.699999988079071f - _1016.y) + (exp2(log2(abs(_1016.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1016.y < 0.30000001192092896f), 0.0f, 1.0f)) + _1016.y) * UberPostBaseCBuffer_336.x;
    _1055 = ((((-0.699999988079071f - _1016.z) + (exp2(log2(abs(_1016.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1016.z < 0.30000001192092896f), 0.0f, 1.0f)) + _1016.z) * UberPostBaseCBuffer_336.x;
    _1056 = dot(float3(_965, _966, _967), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _1059 = (UberPostBaseCBuffer_352.x > 0.5f);
    _1072 = select(_1059, ((((_1053 * _1056) - _1053) * _964) + _1053), _1053);
    _1073 = select(_1059, ((((_1054 * _1056) - _1054) * _964) + _1054), _1054);
    _1074 = select(_1059, ((((_1055 * _1056) - _1055) * _964) + _1055), _1055);
    if (_974) {
      _1085 = t5.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _554) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _555) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _1099 = (((_1085.x * _1053) * UberPostBaseCBuffer_336.y) + _1072);
      _1100 = (((_1085.y * _1054) * UberPostBaseCBuffer_336.y) + _1073);
      _1101 = (((_1085.z * _1055) * UberPostBaseCBuffer_336.y) + _1074);
    } else {
      _1099 = _1072;
      _1100 = _1073;
      _1101 = _1074;
    }
    _1111 = (_1099 + _965);
    _1112 = (_1100 + _966);
    _1113 = (_1101 + _967);
    _1114 = saturate((((_1100 + _1099) + _1101) * 0.33329999446868896f) + _964);
  } else {
    _1111 = _965;
    _1112 = _966;
    _1113 = _967;
    _1114 = _964;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _1131 = abs(_555 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _1133 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_554 - UberPostBaseCBuffer_112.x);
    _1139 = exp2(log2(saturate(1.0f - dot(float2(_1133, _1131), float2(_1133, _1131)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _1153 = (((_1139 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _1111);
    _1154 = (((_1139 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _1112);
    _1155 = (((_1139 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _1113);
  } else {
    _1153 = _1111;
    _1154 = _1112;
    _1155 = _1113;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_1153, _1154, _1155);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _1153 = tonemapped.x;
    _1154 = tonemapped.y;
    _1155 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _1175 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * _518) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * _519) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _1179 = 1.0f - (sqrt(dot(float3(_1153, _1154, _1155), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _1193 = ((((UberPostBaseCBuffer_208.x * _1153) * _1175) * _1179) + _1153);
    _1194 = ((((UberPostBaseCBuffer_208.x * _1154) * _1175) * _1179) + _1154);
    _1195 = ((((UberPostBaseCBuffer_208.x * _1155) * _1175) * _1179) + _1155);
  } else {
    _1193 = _1153;
    _1194 = _1154;
    _1195 = _1155;
  }
  SV_Target.x = (_1193);
  SV_Target.y = (_1194);
  SV_Target.z = (_1195);
  SV_Target.w = _1114;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
