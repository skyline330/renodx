#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t6 : register(t6);

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
  float _55;
  float _62;
  float _63;
  float _555;
  float _556;
  float _557;
  float _558;
  float _559;
  float _560;
  float _561;
  float _562;
  float _648;
  float _655;
  float _656;
  float _705;
  float _712;
  float _713;
  float _760;
  float _767;
  float _768;
  float _842;
  float _849;
  float _850;
  float _891;
  float _898;
  float _899;
  float _940;
  float _947;
  float _948;
  float _957;
  float _958;
  float _959;
  float _965;
  float _966;
  float _967;
  float _968;
  float _1100;
  float _1101;
  float _1102;
  float _1112;
  float _1113;
  float _1114;
  float _1115;
  float _1154;
  float _1155;
  float _1156;
  float _1245;
  float _1246;
  float _1247;
  float _23;
  float _24;
  float _34;
  float _35;
  float _39;
  float _43;
  float _56;
  float4 _71;
  float _95;
  float _97;
  float _113;
  float _114;
  float _115;
  float _116;
  float _117;
  float _118;
  float _119;
  float _120;
  float _121;
  float _122;
  float _125;
  float _128;
  float _131;
  float _133;
  float _148;
  float _162;
  float _168;
  float _169;
  float _170;
  float _172;
  float _177;
  float _185;
  float _186;
  float _191;
  float _192;
  float _193;
  float _196;
  float _197;
  float _200;
  float _201;
  float _202;
  bool _203;
  float _204;
  float _205;
  float _208;
  float _209;
  float _210;
  float _211;
  float _218;
  float _219;
  float _220;
  float _221;
  float _228;
  float _229;
  float _230;
  float _241;
  float _244;
  float _247;
  float _254;
  float _255;
  float _256;
  float _275;
  float _276;
  float _277;
  float _278;
  float _279;
  float _280;
  float _290;
  float _291;
  float _292;
  float _293;
  float _294;
  float _295;
  float _299;
  float _300;
  float _301;
  float _308;
  float _309;
  float _310;
  float _344;
  float _345;
  float _346;
  float _349;
  float _350;
  float _353;
  float _354;
  float _355;
  bool _356;
  float _357;
  float _358;
  float _361;
  float _362;
  float _363;
  float _364;
  float _371;
  float _372;
  float _373;
  float _374;
  float _381;
  float _382;
  float _383;
  float _394;
  float _397;
  float _400;
  float _407;
  float _408;
  float _409;
  float _428;
  float _429;
  float _430;
  float _431;
  float _432;
  float _433;
  float _443;
  float _444;
  float _445;
  float _446;
  float _447;
  float _448;
  float _452;
  float _453;
  float _454;
  float _461;
  float _462;
  float _463;
  float _500;
  float _518;
  float _519;
  float _520;
  bool _523;
  float4 _527;
  float _531;
  float _532;
  float _537;
  float _538;
  float _572;
  float _574;
  float _578;
  float _580;
  float _582;
  float _584;
  float _591;
  float _596;
  float _598;
  float _600;
  float _607;
  float _608;
  bool _611;
  float _616;
  float _617;
  float _627;
  float _628;
  float _632;
  float _636;
  float _649;
  float4 _659;
  float _667;
  float _668;
  float _673;
  float _674;
  float _684;
  float _685;
  float _689;
  float _693;
  float _706;
  float4 _714;
  float _722;
  float _723;
  float _728;
  float _729;
  float _739;
  float _740;
  float _744;
  float _748;
  float _761;
  float4 _769;
  float _801;
  float _802;
  bool _805;
  float _810;
  float _811;
  float _821;
  float _822;
  float _826;
  float _830;
  float _843;
  float _853;
  float _854;
  float _859;
  float _860;
  float _870;
  float _871;
  float _875;
  float _879;
  float _892;
  float _902;
  float _903;
  float _908;
  float _909;
  float _919;
  float _920;
  float _924;
  float _928;
  float _941;
  float4 _952;
  bool _975;
  float _985;
  float _993;
  float _996;
  float4 _1017;
  float _1054;
  float _1055;
  float _1056;
  float _1057;
  bool _1060;
  float _1073;
  float _1074;
  float _1075;
  float4 _1086;
  float _1132;
  float _1134;
  float _1140;
  float _1179;
  float _1180;
  float _1186;
  float _1188;
  float _1189;
  float4 _1191;
  float4 _1195;
  float _1205;
  float _1206;
  float _1207;
  float _1227;
  float _1231;
  if (!(UberPostBaseCBuffer_080.w == 0.0f)) {
    _23 = UberPostBaseCBuffer_080.z * (TEXCOORD.x + -0.5f);
    _24 = UberPostBaseCBuffer_080.z * (TEXCOORD.y + -0.5f);
    _34 = (_23 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
    _35 = (_24 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
    _39 = sqrt((_34 * _34) + (_35 * _35));
    _43 = UberPostBaseCBuffer_080.y * _39;
    [branch]
    if (UberPostBaseCBuffer_080.w > 0.0f) {
      _55 = ((1.0f / _43) * tan(UberPostBaseCBuffer_080.x * _39));
    } else {
      _55 = ((UberPostBaseCBuffer_080.x * (1.0f / _39)) * atan(_43));
    }
    _56 = _55 + -1.0f;
    _62 = ((_23 + 0.5f) + (_56 * _34));
    _63 = ((_24 + 0.5f) + (_56 * _35));
  } else {
    _62 = TEXCOORD.x;
    _63 = TEXCOORD.y;
  }
  _71 = t0.Load(int3((int)(uint((Globals_2208.x) * TEXCOORD.x)), (int)(uint((Globals_2208.y) * TEXCOORD.y)), 0));
  _95 = (TEXCOORD.x * 2.0f) + -1.0f;
  _97 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  _113 = mad((Globals_2144[2].w), _71.x, mad((Globals_2144[1].w), _97, ((Globals_2144[0].w) * _95))) + (Globals_2144[3].w);
  _114 = (mad((Globals_2144[2].x), _71.x, mad((Globals_2144[1].x), _97, ((Globals_2144[0].x) * _95))) + (Globals_2144[3].x)) / _113;
  _115 = (mad((Globals_2144[2].y), _71.x, mad((Globals_2144[1].y), _97, ((Globals_2144[0].y) * _95))) + (Globals_2144[3].y)) / _113;
  _116 = (mad((Globals_2144[2].z), _71.x, mad((Globals_2144[1].z), _97, ((Globals_2144[0].z) * _95))) + (Globals_2144[3].z)) / _113;
  _117 = ddy_coarse(_114);
  _118 = ddy_coarse(_115);
  _119 = ddy_coarse(_116);
  _120 = ddx_coarse(_114);
  _121 = ddx_coarse(_115);
  _122 = ddx_coarse(_116);
  _125 = (_121 * _119) - (_122 * _118);
  _128 = (_122 * _117) - (_120 * _119);
  _131 = (_120 * _118) - (_121 * _117);
  _133 = rsqrt(dot(float3(_125, _128, _131), float3(_125, _128, _131)));
  _148 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((Globals_992.z) * _71.x) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y);
  _162 = UberPostBaseCBuffer_544.w * _115;
  _168 = max(abs(_125 * _133), 9.999999747378752e-06f);
  _169 = max(abs(_128 * _133), 9.999999747378752e-06f);
  _170 = max(abs(_133 * _131), 9.999999747378752e-06f);
  _172 = rsqrt(dot(float3(_168, _169, _170), float3(_168, _169, _170)));
  _177 = _172 * ((_169 + _168) + _170);
  _185 = UberPostBaseCBuffer_560.x * (Globals_208[1].x);
  _186 = UberPostBaseCBuffer_560.y * (Globals_208[1].x);
  _191 = (_162 * UberPostBaseCBuffer_560.z) + _185;
  _192 = ((UberPostBaseCBuffer_544.w * _116) * UberPostBaseCBuffer_560.w) + _186;
  _193 = dot(float2(_191, _192), float2(0.3660254180431366f, 0.3660254180431366f));
  _196 = floor(_191 + _193);
  _197 = floor(_192 + _193);
  _200 = dot(float2(_196, _197), float2(0.21132487058639526f, 0.21132487058639526f));
  _201 = (_191 - _196) + _200;
  _202 = (_192 - _197) + _200;
  _203 = (_201 > _202);
  _204 = select(_203, 1.0f, 0.0f);
  _205 = select(_203, 0.0f, 1.0f);
  _208 = _201 + -0.5773502588272095f;
  _209 = _202 + -0.5773502588272095f;
  _210 = (_201 + 0.21132487058639526f) - _204;
  _211 = (_202 + 0.21132487058639526f) - _205;
  _218 = _196 - (floor(_196 * 0.0034602077212184668f) * 289.0f);
  _219 = _197 - (floor(_197 * 0.0034602077212184668f) * 289.0f);
  _220 = _219 + _205;
  _221 = _219 + 1.0f;
  _228 = ((_219 * 34.0f) + 1.0f) * _219;
  _229 = ((_220 * 34.0f) + 1.0f) * _220;
  _230 = ((_221 * 34.0f) + 1.0f) * _221;
  _241 = (_228 - (floor(_228 * 0.0034602077212184668f) * 289.0f)) + _218;
  _244 = ((_204 + _218) - (floor(_229 * 0.0034602077212184668f) * 289.0f)) + _229;
  _247 = ((_218 + 1.0f) - (floor(_230 * 0.0034602077212184668f) * 289.0f)) + _230;
  _254 = ((_241 * 34.0f) + 1.0f) * _241;
  _255 = ((_244 * 34.0f) + 1.0f) * _244;
  _256 = ((_247 * 34.0f) + 1.0f) * _247;
  _275 = max((0.5f - dot(float2(_201, _202), float2(_201, _202))), 0.0f);
  _276 = max((0.5f - dot(float2(_210, _211), float2(_210, _211))), 0.0f);
  _277 = max((0.5f - dot(float2(_208, _209), float2(_208, _209))), 0.0f);
  _278 = _275 * _275;
  _279 = _276 * _276;
  _280 = _277 * _277;
  _290 = frac((_254 - (floor(_254 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _291 = frac((_255 - (floor(_255 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _292 = frac((_256 - (floor(_256 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _293 = _290 + -1.0f;
  _294 = _291 + -1.0f;
  _295 = _292 + -1.0f;
  _299 = abs(_293) + -0.5f;
  _300 = abs(_294) + -0.5f;
  _301 = abs(_295) + -0.5f;
  _308 = _293 - floor(_290 + -0.5f);
  _309 = _294 - floor(_291 + -0.5f);
  _310 = _295 - floor(_292 + -0.5f);
  _344 = ((UberPostBaseCBuffer_544.w * _114) * UberPostBaseCBuffer_592.x) + _185;
  _345 = (_162 * UberPostBaseCBuffer_592.y) + _186;
  _346 = dot(float2(_344, _345), float2(0.3660254180431366f, 0.3660254180431366f));
  _349 = floor(_344 + _346);
  _350 = floor(_345 + _346);
  _353 = dot(float2(_349, _350), float2(0.21132487058639526f, 0.21132487058639526f));
  _354 = (_344 - _349) + _353;
  _355 = (_345 - _350) + _353;
  _356 = (_354 > _355);
  _357 = select(_356, 1.0f, 0.0f);
  _358 = select(_356, 0.0f, 1.0f);
  _361 = _354 + -0.5773502588272095f;
  _362 = _355 + -0.5773502588272095f;
  _363 = (_354 + 0.21132487058639526f) - _357;
  _364 = (_355 + 0.21132487058639526f) - _358;
  _371 = _349 - (floor(_349 * 0.0034602077212184668f) * 289.0f);
  _372 = _350 - (floor(_350 * 0.0034602077212184668f) * 289.0f);
  _373 = _372 + _358;
  _374 = _372 + 1.0f;
  _381 = ((_372 * 34.0f) + 1.0f) * _372;
  _382 = ((_373 * 34.0f) + 1.0f) * _373;
  _383 = ((_374 * 34.0f) + 1.0f) * _374;
  _394 = (_381 - (floor(_381 * 0.0034602077212184668f) * 289.0f)) + _371;
  _397 = ((_357 + _371) - (floor(_382 * 0.0034602077212184668f) * 289.0f)) + _382;
  _400 = ((_371 + 1.0f) - (floor(_383 * 0.0034602077212184668f) * 289.0f)) + _383;
  _407 = ((_394 * 34.0f) + 1.0f) * _394;
  _408 = ((_397 * 34.0f) + 1.0f) * _397;
  _409 = ((_400 * 34.0f) + 1.0f) * _400;
  _428 = max((0.5f - dot(float2(_354, _355), float2(_354, _355))), 0.0f);
  _429 = max((0.5f - dot(float2(_363, _364), float2(_363, _364))), 0.0f);
  _430 = max((0.5f - dot(float2(_361, _362), float2(_361, _362))), 0.0f);
  _431 = _428 * _428;
  _432 = _429 * _429;
  _433 = _430 * _430;
  _443 = frac((_407 - (floor(_407 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _444 = frac((_408 - (floor(_408 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _445 = frac((_409 - (floor(_409 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _446 = _443 + -1.0f;
  _447 = _444 + -1.0f;
  _448 = _445 + -1.0f;
  _452 = abs(_446) + -0.5f;
  _453 = abs(_447) + -0.5f;
  _454 = abs(_448) + -0.5f;
  _461 = _446 - floor(_443 + -0.5f);
  _462 = _447 - floor(_444 + -0.5f);
  _463 = _448 - floor(_445 + -0.5f);
  _500 = ((((_148 * _148) * 130.0f) * exp2(log2(1.0f - saturate(abs(_115 - UberPostBaseCBuffer_576.y) / UberPostBaseCBuffer_576.x)) * UberPostBaseCBuffer_576.z)) * UberPostBaseCBuffer_544.x) * ((dot(float3(((_431 * _431) * (1.7928428649902344f - (((_461 * _461) + (_452 * _452)) * 0.8537347316741943f))), ((_432 * _432) * (1.7928428649902344f - (((_462 * _462) + (_453 * _453)) * 0.8537347316741943f))), ((_433 * _433) * (1.7928428649902344f - (((_463 * _463) + (_454 * _454)) * 0.8537347316741943f)))), float3(((_461 * _354) + (_452 * _355)), ((_462 * _363) + (_453 * _364)), ((_463 * _361) + (_454 * _362)))) * ((_172 * _170) / _177)) + (dot(float3(((_278 * _278) * (1.7928428649902344f - (((_308 * _308) + (_299 * _299)) * 0.8537347316741943f))), ((_279 * _279) * (1.7928428649902344f - (((_309 * _309) + (_300 * _300)) * 0.8537347316741943f))), ((_280 * _280) * (1.7928428649902344f - (((_310 * _310) + (_301 * _301)) * 0.8537347316741943f)))), float3(((_308 * _201) + (_299 * _202)), ((_309 * _210) + (_300 * _211)), ((_310 * _208) + (_301 * _209)))) * ((_172 * _168) / _177)));
  _518 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((((float4)(t0.Load(int3((int)(uint((_500 + TEXCOORD.x) * (Globals_2208.x))), (int)(uint((_500 + TEXCOORD.y) * (Globals_2208.y))), 0)))).x) * (Globals_992.z)) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y) * _500;
  _519 = _518 + TEXCOORD.x;
  _520 = _518 + TEXCOORD.y;
  _523 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_523) {
    _527 = t4.SampleBias(s2, float2(_519, _520), (Globals_976), int2(0, 0));
    _531 = _527.x * 0.10000000149011612f;
    _532 = _527.y * 0.10000000149011612f;
    _537 = (_531 * _527.z) * UberPostBaseCBuffer_176.w;
    _538 = (_532 * _527.z) * UberPostBaseCBuffer_176.w;
    _555 = (_531 + _62);
    _556 = (_532 + _63);
    _557 = ((_537 * UberPostBaseCBuffer_176.x) + _531);
    _558 = ((_538 * UberPostBaseCBuffer_176.x) + _532);
    _559 = ((_537 * UberPostBaseCBuffer_176.y) + _531);
    _560 = ((_538 * UberPostBaseCBuffer_176.y) + _532);
    _561 = ((UberPostBaseCBuffer_176.z * _537) + _531);
    _562 = ((UberPostBaseCBuffer_176.z * _538) + _532);
  } else {
    _555 = _62;
    _556 = _63;
    _557 = 0.0f;
    _558 = 0.0f;
    _559 = 0.0f;
    _560 = 0.0f;
    _561 = 0.0f;
    _562 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _572 = ((_519 * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _574 = ((_520 * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _578 = dot(float2(_572, _574), float2(_572, _574)) * -0.3333333432674408f;
    _580 = (_578 * _572) * UberPostBaseCBuffer_192.z;
    _582 = (_578 * _574) * UberPostBaseCBuffer_192.z;
    _584 = rsqrt(dot(float3(_580, _582, 9.999999747378752e-05f), float3(_580, _582, 9.999999747378752e-05f)));
    _591 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _596 = exp2(log2(sqrt((_580 * _580) + (_582 * _582)) / _591) * UberPostBaseCBuffer_384.z);
    _598 = ((_580 * _584) * _591) * _596;
    _600 = ((_582 * _584) * _591) * _596;
    _607 = (_557 + _519) + (_598 * UberPostBaseCBuffer_400.w);
    _608 = (_558 + _520) + (_600 * UberPostBaseCBuffer_400.w);
    _611 = !(UberPostBaseCBuffer_080.w == 0.0f);
    if (_611) {
      _616 = UberPostBaseCBuffer_080.z * (_607 + -0.5f);
      _617 = UberPostBaseCBuffer_080.z * (_608 + -0.5f);
      _627 = (_616 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _628 = (_617 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _632 = sqrt((_627 * _627) + (_628 * _628));
      _636 = UberPostBaseCBuffer_080.y * _632;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _648 = ((1.0f / _636) * tan(UberPostBaseCBuffer_080.x * _632));
      } else {
        _648 = ((UberPostBaseCBuffer_080.x * (1.0f / _632)) * atan(_636));
      }
      _649 = _648 + -1.0f;
      _655 = ((_616 + 0.5f) + (_649 * _627));
      _656 = ((_617 + 0.5f) + (_649 * _628));
    } else {
      _655 = _607;
      _656 = _608;
    }
    _659 = t1.SampleBias(s0, float2(_655, _656), (Globals_976), int2(0, 0));
    _667 = (_559 + _519) + (UberPostBaseCBuffer_416.w * _598);
    _668 = (_560 + _520) + (UberPostBaseCBuffer_416.w * _600);
    if (_611) {
      _673 = UberPostBaseCBuffer_080.z * (_667 + -0.5f);
      _674 = UberPostBaseCBuffer_080.z * (_668 + -0.5f);
      _684 = (_673 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _685 = (_674 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _689 = sqrt((_684 * _684) + (_685 * _685));
      _693 = UberPostBaseCBuffer_080.y * _689;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _705 = ((1.0f / _693) * tan(UberPostBaseCBuffer_080.x * _689));
      } else {
        _705 = ((UberPostBaseCBuffer_080.x * (1.0f / _689)) * atan(_693));
      }
      _706 = _705 + -1.0f;
      _712 = ((_673 + 0.5f) + (_706 * _684));
      _713 = ((_674 + 0.5f) + (_706 * _685));
    } else {
      _712 = _667;
      _713 = _668;
    }
    _714 = t1.SampleBias(s0, float2(_712, _713), (Globals_976), int2(0, 0));
    _722 = (_561 + _519) + (UberPostBaseCBuffer_432.w * _598);
    _723 = (_562 + _520) + (UberPostBaseCBuffer_432.w * _600);
    if (_611) {
      _728 = UberPostBaseCBuffer_080.z * (_722 + -0.5f);
      _729 = UberPostBaseCBuffer_080.z * (_723 + -0.5f);
      _739 = (_728 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _740 = (_729 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _744 = sqrt((_739 * _739) + (_740 * _740));
      _748 = UberPostBaseCBuffer_080.y * _744;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _760 = ((1.0f / _748) * tan(UberPostBaseCBuffer_080.x * _744));
      } else {
        _760 = ((UberPostBaseCBuffer_080.x * (1.0f / _744)) * atan(_748));
      }
      _761 = _760 + -1.0f;
      _767 = ((_728 + 0.5f) + (_761 * _739));
      _768 = ((_729 + 0.5f) + (_761 * _740));
    } else {
      _767 = _722;
      _768 = _723;
    }
    _769 = t1.SampleBias(s0, float2(_767, _768), (Globals_976), int2(0, 0));
    _965 = (((float4)(t1.SampleBias(s0, float2(_555, _556), (Globals_976), int2(0, 0)))).w);
    _966 = (((UberPostBaseCBuffer_416.x * _714.y) + (UberPostBaseCBuffer_400.x * _659.x)) + (UberPostBaseCBuffer_432.x * _769.z));
    _967 = (((UberPostBaseCBuffer_416.y * _714.y) + (UberPostBaseCBuffer_400.y * _659.x)) + (UberPostBaseCBuffer_432.y * _769.z));
    _968 = (((UberPostBaseCBuffer_416.z * _714.y) + (UberPostBaseCBuffer_400.z * _659.x)) + (UberPostBaseCBuffer_432.z * _769.z));
  } else {
    if (_523) {
      _801 = _557 + _519;
      _802 = _558 + _520;
      _805 = !(UberPostBaseCBuffer_080.w == 0.0f);
      if (_805) {
        _810 = UberPostBaseCBuffer_080.z * (_801 + -0.5f);
        _811 = UberPostBaseCBuffer_080.z * (_802 + -0.5f);
        _821 = (_810 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _822 = (_811 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _826 = sqrt((_821 * _821) + (_822 * _822));
        _830 = UberPostBaseCBuffer_080.y * _826;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _842 = ((1.0f / _830) * tan(UberPostBaseCBuffer_080.x * _826));
        } else {
          _842 = ((UberPostBaseCBuffer_080.x * (1.0f / _826)) * atan(_830));
        }
        _843 = _842 + -1.0f;
        _849 = ((_810 + 0.5f) + (_843 * _821));
        _850 = ((_811 + 0.5f) + (_843 * _822));
      } else {
        _849 = _801;
        _850 = _802;
      }
      _853 = _559 + _519;
      _854 = _560 + _520;
      if (_805) {
        _859 = UberPostBaseCBuffer_080.z * (_853 + -0.5f);
        _860 = UberPostBaseCBuffer_080.z * (_854 + -0.5f);
        _870 = (_859 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _871 = (_860 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _875 = sqrt((_870 * _870) + (_871 * _871));
        _879 = UberPostBaseCBuffer_080.y * _875;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _891 = ((1.0f / _879) * tan(UberPostBaseCBuffer_080.x * _875));
        } else {
          _891 = ((UberPostBaseCBuffer_080.x * (1.0f / _875)) * atan(_879));
        }
        _892 = _891 + -1.0f;
        _898 = ((_859 + 0.5f) + (_892 * _870));
        _899 = ((_860 + 0.5f) + (_892 * _871));
      } else {
        _898 = _853;
        _899 = _854;
      }
      _902 = _561 + _519;
      _903 = _562 + _520;
      if (_805) {
        _908 = UberPostBaseCBuffer_080.z * (_902 + -0.5f);
        _909 = UberPostBaseCBuffer_080.z * (_903 + -0.5f);
        _919 = (_908 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _920 = (_909 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _924 = sqrt((_919 * _919) + (_920 * _920));
        _928 = UberPostBaseCBuffer_080.y * _924;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _940 = ((1.0f / _928) * tan(UberPostBaseCBuffer_080.x * _924));
        } else {
          _940 = ((UberPostBaseCBuffer_080.x * (1.0f / _924)) * atan(_928));
        }
        _941 = _940 + -1.0f;
        _947 = ((_908 + 0.5f) + (_941 * _919));
        _948 = ((_909 + 0.5f) + (_941 * _920));
      } else {
        _947 = _902;
        _948 = _903;
      }
      _957 = (((float4)(t1.SampleBias(s0, float2(_849, _850), (Globals_976), int2(0, 0)))).x);
      _958 = (((float4)(t1.SampleBias(s0, float2(_898, _899), (Globals_976), int2(0, 0)))).y);
      _959 = (((float4)(t1.SampleBias(s0, float2(_947, _948), (Globals_976), int2(0, 0)))).z);
    } else {
      _952 = t1.SampleBias(s0, float2(_555, _556), (Globals_976), int2(0, 0));
      _957 = _952.x;
      _958 = _952.y;
      _959 = _952.z;
    }
    _965 = (((float4)(t1.SampleBias(s0, float2(_555, _556), (Globals_976), int2(0, 0)))).w);
    _966 = _957;
    _967 = _958;
    _968 = _959;
  }
  _975 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _975)) {
    _985 = fmod((((Globals_2208.y) * _556) * UberPostBaseCBuffer_448.x), 2.0f);
    _993 = (((select((_985 > 1.0f), (2.0f - _985), _985) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _555;
    _996 = (Globals_2208.w) * (Globals_2208.x);
    _1017 = t5.SampleBias(s3, float2(_993, ((select(((frac((((_993 + abs(UberPostBaseCBuffer_464.y)) * _996) - (UberPostBaseCBuffer_464.y * _556)) / ((_996 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _556)), (Globals_976), int2(0, 0));
    _1054 = ((((-0.699999988079071f - _1017.x) + (exp2(log2(abs(_1017.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1017.x < 0.30000001192092896f), 0.0f, 1.0f)) + _1017.x) * UberPostBaseCBuffer_336.x;
    _1055 = ((((-0.699999988079071f - _1017.y) + (exp2(log2(abs(_1017.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1017.y < 0.30000001192092896f), 0.0f, 1.0f)) + _1017.y) * UberPostBaseCBuffer_336.x;
    _1056 = ((((-0.699999988079071f - _1017.z) + (exp2(log2(abs(_1017.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1017.z < 0.30000001192092896f), 0.0f, 1.0f)) + _1017.z) * UberPostBaseCBuffer_336.x;
    _1057 = dot(float3(_966, _967, _968), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _1060 = (UberPostBaseCBuffer_352.x > 0.5f);
    _1073 = select(_1060, ((((_1054 * _1057) - _1054) * _965) + _1054), _1054);
    _1074 = select(_1060, ((((_1055 * _1057) - _1055) * _965) + _1055), _1055);
    _1075 = select(_1060, ((((_1056 * _1057) - _1056) * _965) + _1056), _1056);
    if (_975) {
      _1086 = t6.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _555) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _556) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _1100 = (((_1086.x * _1054) * UberPostBaseCBuffer_336.y) + _1073);
      _1101 = (((_1086.y * _1055) * UberPostBaseCBuffer_336.y) + _1074);
      _1102 = (((_1086.z * _1056) * UberPostBaseCBuffer_336.y) + _1075);
    } else {
      _1100 = _1073;
      _1101 = _1074;
      _1102 = _1075;
    }
    _1112 = (_1100 + _966);
    _1113 = (_1101 + _967);
    _1114 = (_1102 + _968);
    _1115 = saturate((((_1101 + _1100) + _1102) * 0.33329999446868896f) + _965);
  } else {
    _1112 = _966;
    _1113 = _967;
    _1114 = _968;
    _1115 = _965;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _1132 = abs(_556 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _1134 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_555 - UberPostBaseCBuffer_112.x);
    _1140 = exp2(log2(saturate(1.0f - dot(float2(_1134, _1132), float2(_1134, _1132)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _1154 = (((_1140 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _1112);
    _1155 = (((_1140 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _1113);
    _1156 = (((_1140 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _1114);
  } else {
    _1154 = _1112;
    _1155 = _1113;
    _1156 = _1114;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_1154, _1155, _1156);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t3, s0, UberPostBaseCBuffer_000.xyz);
    _1205 = tonemapped.x;
    _1206 = tonemapped.y;
    _1207 = tonemapped.z;
  } else {
    _1179 = saturate((log2((_1156 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _1180 = floor(_1179);
    _1186 = ((saturate((log2((_1155 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _1188 = (_1180 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_1154 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _1189 = _1179 - _1180;
    _1191 = t3.SampleLevel(s0, float2((_1188 + UberPostBaseCBuffer_000.y), _1186), 0.0f);
    _1195 = t3.SampleLevel(s0, float2(_1188, _1186), 0.0f);
    _1205 = ((_1191.x - _1195.x) * _1189) + _1195.x;
    _1206 = ((_1191.y - _1195.y) * _1189) + _1195.y;
    _1207 = ((_1191.z - _1195.z) * _1189) + _1195.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _1227 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * _519) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * _520) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _1231 = 1.0f - (sqrt(dot(float3(_1205, _1206, _1207), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _1245 = ((((UberPostBaseCBuffer_208.x * _1205) * _1227) * _1231) + _1205);
    _1246 = ((((UberPostBaseCBuffer_208.x * _1206) * _1227) * _1231) + _1206);
    _1247 = ((((UberPostBaseCBuffer_208.x * _1207) * _1227) * _1231) + _1207);
  } else {
    _1245 = _1205;
    _1246 = _1206;
    _1247 = _1207;
  }
  SV_Target.x = (_1245);
  SV_Target.y = (_1246);
  SV_Target.z = (_1247);
  SV_Target.w = _1115;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
