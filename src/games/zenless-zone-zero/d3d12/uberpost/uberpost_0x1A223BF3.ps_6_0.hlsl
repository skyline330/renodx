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
  float4 _42;
  float _66;
  float _68;
  float _84;
  float _85;
  float _86;
  float _87;
  float _88;
  float _89;
  float _90;
  float _91;
  float _92;
  float _93;
  float _96;
  float _99;
  float _102;
  float _104;
  float _119;
  float _133;
  float _139;
  float _140;
  float _141;
  float _143;
  float _148;
  float _156;
  float _157;
  float _162;
  float _163;
  float _164;
  float _167;
  float _168;
  float _171;
  float _172;
  float _173;
  bool _174;
  float _175;
  float _176;
  float _179;
  float _180;
  float _181;
  float _182;
  float _189;
  float _190;
  float _191;
  float _192;
  float _199;
  float _200;
  float _201;
  float _212;
  float _215;
  float _218;
  float _225;
  float _226;
  float _227;
  float _246;
  float _247;
  float _248;
  float _249;
  float _250;
  float _251;
  float _261;
  float _262;
  float _263;
  float _264;
  float _265;
  float _266;
  float _270;
  float _271;
  float _272;
  float _279;
  float _280;
  float _281;
  float _315;
  float _316;
  float _317;
  float _320;
  float _321;
  float _324;
  float _325;
  float _326;
  bool _327;
  float _328;
  float _329;
  float _332;
  float _333;
  float _334;
  float _335;
  float _342;
  float _343;
  float _344;
  float _345;
  float _352;
  float _353;
  float _354;
  float _365;
  float _368;
  float _371;
  float _378;
  float _379;
  float _380;
  float _399;
  float _400;
  float _401;
  float _402;
  float _403;
  float _404;
  float _414;
  float _415;
  float _416;
  float _417;
  float _418;
  float _419;
  float _423;
  float _424;
  float _425;
  float _432;
  float _433;
  float _434;
  float _471;
  float _489;
  float _490;
  float _491;
  float _499;
  float _500;
  float _501;
  float _502;
  float _503;
  float _513;
  float _515;
  float _517;
  float _518;
  float _519;
  float _530;
  float _540;
  float _546;
  float _552;
  float _555;
  float _624;
  float _625;
  float _661;
  float _662;
  float _663;
  float _664;
  float _665;
  float _666;
  float _667;
  float _668;
  float _783;
  float _784;
  float _785;
  float _791;
  float _792;
  float _793;
  float _794;
  float _926;
  float _927;
  float _928;
  float _938;
  float _939;
  float _940;
  float _941;
  float _980;
  float _981;
  float _982;
  float _1071;
  float _1072;
  float _1073;
  float _1388;
  float _1470;
  float _1471;
  float _1472;
  float _563;
  float _565;
  bool _568;
  bool _569;
  bool _570;
  bool _571;
  bool _595;
  float4 _611;
  float _620;
  bool _628;
  float4 _632;
  float _638;
  float _639;
  float _642;
  float _643;
  float _644;
  float _678;
  float _680;
  float _684;
  float _686;
  float _688;
  float _690;
  float _697;
  float _702;
  float _704;
  float _706;
  float4 _715;
  float4 _725;
  float4 _735;
  float4 _778;
  bool _801;
  float _811;
  float _819;
  float _822;
  float4 _843;
  float _880;
  float _881;
  float _882;
  float _883;
  bool _886;
  float _899;
  float _900;
  float _901;
  float4 _912;
  float _958;
  float _960;
  float _966;
  float _1005;
  float _1006;
  float _1012;
  float _1014;
  float _1015;
  float4 _1017;
  float4 _1021;
  float _1031;
  float _1032;
  float _1033;
  float _1053;
  float _1057;
  float _1077;
  float _1079;
  bool _1082;
  bool _1083;
  bool _1084;
  bool _1085;
  int _1142;
  int _1165;
  float4 _1190;
  float _1203;
  float _1211;
  int _1215;
  float _1230;
  int _1244;
  float _1258;
  float4 _1274;
  float _1285;
  float4 _1286;
  float _1294;
  bool _1305;
  float _1308;
  float _1317;
  float _1318;
  float _1319;
  float _1331;
  float _1338;
  float _1339;
  float _1340;
  float _1349;
  float _1350;
  float4 _1366;
  float _1390;
  float _1394;
  float _1436;
  float _1437;
  float _1438;
  float _28[3];
  float _29[3];
  float _30[4];
  float _31[4];
  float _32[4];
  float _33[4];
  float _34[4];
  _42 = t0.Load(int3((int)(uint((Globals_2208.x) * TEXCOORD.x)), (int)(uint((Globals_2208.y) * TEXCOORD.y)), 0));
  _66 = (TEXCOORD.x * 2.0f) + -1.0f;
  _68 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  _84 = mad((Globals_2144[2].w), _42.x, mad((Globals_2144[1].w), _68, ((Globals_2144[0].w) * _66))) + (Globals_2144[3].w);
  _85 = (mad((Globals_2144[2].x), _42.x, mad((Globals_2144[1].x), _68, ((Globals_2144[0].x) * _66))) + (Globals_2144[3].x)) / _84;
  _86 = (mad((Globals_2144[2].y), _42.x, mad((Globals_2144[1].y), _68, ((Globals_2144[0].y) * _66))) + (Globals_2144[3].y)) / _84;
  _87 = (mad((Globals_2144[2].z), _42.x, mad((Globals_2144[1].z), _68, ((Globals_2144[0].z) * _66))) + (Globals_2144[3].z)) / _84;
  _88 = ddy_coarse(_85);
  _89 = ddy_coarse(_86);
  _90 = ddy_coarse(_87);
  _91 = ddx_coarse(_85);
  _92 = ddx_coarse(_86);
  _93 = ddx_coarse(_87);
  _96 = (_92 * _90) - (_93 * _89);
  _99 = (_93 * _88) - (_91 * _90);
  _102 = (_91 * _89) - (_92 * _88);
  _104 = rsqrt(dot(float3(_96, _99, _102), float3(_96, _99, _102)));
  _119 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((Globals_992.z) * _42.x) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y);
  _133 = UberPostBaseCBuffer_544.w * _86;
  _139 = max(abs(_96 * _104), 9.999999747378752e-06f);
  _140 = max(abs(_99 * _104), 9.999999747378752e-06f);
  _141 = max(abs(_104 * _102), 9.999999747378752e-06f);
  _143 = rsqrt(dot(float3(_139, _140, _141), float3(_139, _140, _141)));
  _148 = _143 * ((_140 + _139) + _141);
  _156 = UberPostBaseCBuffer_560.x * (Globals_208[1].x);
  _157 = UberPostBaseCBuffer_560.y * (Globals_208[1].x);
  _162 = (_133 * UberPostBaseCBuffer_560.z) + _156;
  _163 = ((UberPostBaseCBuffer_544.w * _87) * UberPostBaseCBuffer_560.w) + _157;
  _164 = dot(float2(_162, _163), float2(0.3660254180431366f, 0.3660254180431366f));
  _167 = floor(_162 + _164);
  _168 = floor(_163 + _164);
  _171 = dot(float2(_167, _168), float2(0.21132487058639526f, 0.21132487058639526f));
  _172 = (_162 - _167) + _171;
  _173 = (_163 - _168) + _171;
  _174 = (_172 > _173);
  _175 = select(_174, 1.0f, 0.0f);
  _176 = select(_174, 0.0f, 1.0f);
  _179 = _172 + -0.5773502588272095f;
  _180 = _173 + -0.5773502588272095f;
  _181 = (_172 + 0.21132487058639526f) - _175;
  _182 = (_173 + 0.21132487058639526f) - _176;
  _189 = _167 - (floor(_167 * 0.0034602077212184668f) * 289.0f);
  _190 = _168 - (floor(_168 * 0.0034602077212184668f) * 289.0f);
  _191 = _190 + _176;
  _192 = _190 + 1.0f;
  _199 = ((_190 * 34.0f) + 1.0f) * _190;
  _200 = ((_191 * 34.0f) + 1.0f) * _191;
  _201 = ((_192 * 34.0f) + 1.0f) * _192;
  _212 = (_199 - (floor(_199 * 0.0034602077212184668f) * 289.0f)) + _189;
  _215 = ((_175 + _189) - (floor(_200 * 0.0034602077212184668f) * 289.0f)) + _200;
  _218 = ((_189 + 1.0f) - (floor(_201 * 0.0034602077212184668f) * 289.0f)) + _201;
  _225 = ((_212 * 34.0f) + 1.0f) * _212;
  _226 = ((_215 * 34.0f) + 1.0f) * _215;
  _227 = ((_218 * 34.0f) + 1.0f) * _218;
  _246 = max((0.5f - dot(float2(_172, _173), float2(_172, _173))), 0.0f);
  _247 = max((0.5f - dot(float2(_181, _182), float2(_181, _182))), 0.0f);
  _248 = max((0.5f - dot(float2(_179, _180), float2(_179, _180))), 0.0f);
  _249 = _246 * _246;
  _250 = _247 * _247;
  _251 = _248 * _248;
  _261 = frac((_225 - (floor(_225 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _262 = frac((_226 - (floor(_226 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _263 = frac((_227 - (floor(_227 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _264 = _261 + -1.0f;
  _265 = _262 + -1.0f;
  _266 = _263 + -1.0f;
  _270 = abs(_264) + -0.5f;
  _271 = abs(_265) + -0.5f;
  _272 = abs(_266) + -0.5f;
  _279 = _264 - floor(_261 + -0.5f);
  _280 = _265 - floor(_262 + -0.5f);
  _281 = _266 - floor(_263 + -0.5f);
  _315 = ((UberPostBaseCBuffer_544.w * _85) * UberPostBaseCBuffer_592.x) + _156;
  _316 = (_133 * UberPostBaseCBuffer_592.y) + _157;
  _317 = dot(float2(_315, _316), float2(0.3660254180431366f, 0.3660254180431366f));
  _320 = floor(_315 + _317);
  _321 = floor(_316 + _317);
  _324 = dot(float2(_320, _321), float2(0.21132487058639526f, 0.21132487058639526f));
  _325 = (_315 - _320) + _324;
  _326 = (_316 - _321) + _324;
  _327 = (_325 > _326);
  _328 = select(_327, 1.0f, 0.0f);
  _329 = select(_327, 0.0f, 1.0f);
  _332 = _325 + -0.5773502588272095f;
  _333 = _326 + -0.5773502588272095f;
  _334 = (_325 + 0.21132487058639526f) - _328;
  _335 = (_326 + 0.21132487058639526f) - _329;
  _342 = _320 - (floor(_320 * 0.0034602077212184668f) * 289.0f);
  _343 = _321 - (floor(_321 * 0.0034602077212184668f) * 289.0f);
  _344 = _343 + _329;
  _345 = _343 + 1.0f;
  _352 = ((_343 * 34.0f) + 1.0f) * _343;
  _353 = ((_344 * 34.0f) + 1.0f) * _344;
  _354 = ((_345 * 34.0f) + 1.0f) * _345;
  _365 = (_352 - (floor(_352 * 0.0034602077212184668f) * 289.0f)) + _342;
  _368 = ((_328 + _342) - (floor(_353 * 0.0034602077212184668f) * 289.0f)) + _353;
  _371 = ((_342 + 1.0f) - (floor(_354 * 0.0034602077212184668f) * 289.0f)) + _354;
  _378 = ((_365 * 34.0f) + 1.0f) * _365;
  _379 = ((_368 * 34.0f) + 1.0f) * _368;
  _380 = ((_371 * 34.0f) + 1.0f) * _371;
  _399 = max((0.5f - dot(float2(_325, _326), float2(_325, _326))), 0.0f);
  _400 = max((0.5f - dot(float2(_334, _335), float2(_334, _335))), 0.0f);
  _401 = max((0.5f - dot(float2(_332, _333), float2(_332, _333))), 0.0f);
  _402 = _399 * _399;
  _403 = _400 * _400;
  _404 = _401 * _401;
  _414 = frac((_378 - (floor(_378 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _415 = frac((_379 - (floor(_379 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _416 = frac((_380 - (floor(_380 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _417 = _414 + -1.0f;
  _418 = _415 + -1.0f;
  _419 = _416 + -1.0f;
  _423 = abs(_417) + -0.5f;
  _424 = abs(_418) + -0.5f;
  _425 = abs(_419) + -0.5f;
  _432 = _417 - floor(_414 + -0.5f);
  _433 = _418 - floor(_415 + -0.5f);
  _434 = _419 - floor(_416 + -0.5f);
  _471 = ((((_119 * _119) * 130.0f) * exp2(log2(1.0f - saturate(abs(_86 - UberPostBaseCBuffer_576.y) / UberPostBaseCBuffer_576.x)) * UberPostBaseCBuffer_576.z)) * UberPostBaseCBuffer_544.x) * ((dot(float3(((_402 * _402) * (1.7928428649902344f - (((_432 * _432) + (_423 * _423)) * 0.8537347316741943f))), ((_403 * _403) * (1.7928428649902344f - (((_433 * _433) + (_424 * _424)) * 0.8537347316741943f))), ((_404 * _404) * (1.7928428649902344f - (((_434 * _434) + (_425 * _425)) * 0.8537347316741943f)))), float3(((_432 * _325) + (_423 * _326)), ((_433 * _334) + (_424 * _335)), ((_434 * _332) + (_425 * _333)))) * ((_143 * _141) / _148)) + (dot(float3(((_249 * _249) * (1.7928428649902344f - (((_279 * _279) + (_270 * _270)) * 0.8537347316741943f))), ((_250 * _250) * (1.7928428649902344f - (((_280 * _280) + (_271 * _271)) * 0.8537347316741943f))), ((_251 * _251) * (1.7928428649902344f - (((_281 * _281) + (_272 * _272)) * 0.8537347316741943f)))), float3(((_279 * _172) + (_270 * _173)), ((_280 * _181) + (_271 * _182)), ((_281 * _179) + (_272 * _180)))) * ((_143 * _139) / _148)));
  _489 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((((float4)(t0.Load(int3((int)(uint((_471 + TEXCOORD.x) * (Globals_2208.x))), (int)(uint((_471 + TEXCOORD.y) * (Globals_2208.y))), 0)))).x) * (Globals_992.z)) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y) * _471;
  _490 = _489 + TEXCOORD.x;
  _491 = _489 + TEXCOORD.y;
  _499 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _500 = _490 * 2.0f;
  _501 = _491 * 2.0f;
  _502 = _500 + -1.0f;
  _503 = _501 + -1.0f;
  _513 = (Globals_080.z) + -1.0f;
  _515 = (_513 * (Globals_080.y)) + -1.0f;
  _517 = (_515 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _518 = _517 * _503;
  _519 = _502 * _502;
  _530 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_502)), (_517 * (1.0f - abs(_503)))), (1.0f - (sqrt((_518 * _518) + _519) * 0.7070000171661377f)));
  _540 = saturate((_530 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _546 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_540 * _540) * (3.0f - (_540 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _530), 0.0f, 1.0f));
  _552 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _546), _546) * UberPostScreenEffectsBaseCBuffer_016.z;
  _555 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _552, 0.0f) * _552;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _563 = ((_515 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _503;
    _565 = atan(_563 / _502);
    _568 = (_502 < 0.0f);
    _569 = (_502 == 0.0f);
    _570 = (_563 >= 0.0f);
    _571 = (_563 < 0.0f);
    _595 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _611 = t11.SampleBias(s8, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _499)) + (select(_595, select((_569 && _570), 2.0f, select((_569 && _571), -2.0f, (select((_568 && _571), (_565 + -3.1415927410125732f), select((_568 && _570), (_565 + 3.1415927410125732f), _565)) * 1.2732394933700562f))), _490) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _499)) + (select(_595, (sqrt((_563 * _563) + _519) * 0.6366197466850281f), ((((Globals_080.y) * (_491 + -0.5f)) * _513) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _620 = (_555 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _624 = (_620 * ((_611.x * 2.0f) + -1.0f));
    _625 = (_620 * ((_611.y * 2.0f) + -1.0f));
  } else {
    _624 = 0.0f;
    _625 = 0.0f;
  }
  _628 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_628) {
    _632 = t4.SampleBias(s2, float2(_490, _491), (Globals_976), int2(0, 0));
    _638 = (_632.x * 0.10000000149011612f) + _624;
    _639 = (_632.y * 0.10000000149011612f) + _625;
    _642 = UberPostBaseCBuffer_176.w * _632.z;
    _643 = _642 * _638;
    _644 = _642 * _639;
    _661 = (_638 + TEXCOORD.x);
    _662 = (_639 + TEXCOORD.y);
    _663 = ((_643 * UberPostBaseCBuffer_176.x) + _638);
    _664 = ((_644 * UberPostBaseCBuffer_176.x) + _639);
    _665 = ((_643 * UberPostBaseCBuffer_176.y) + _638);
    _666 = ((_644 * UberPostBaseCBuffer_176.y) + _639);
    _667 = ((_643 * UberPostBaseCBuffer_176.z) + _638);
    _668 = ((_644 * UberPostBaseCBuffer_176.z) + _639);
  } else {
    _661 = TEXCOORD.x;
    _662 = TEXCOORD.y;
    _663 = 0.0f;
    _664 = 0.0f;
    _665 = 0.0f;
    _666 = 0.0f;
    _667 = 0.0f;
    _668 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _678 = (_500 - UberPostBaseCBuffer_384.x) + -0.5f;
    _680 = (_501 - UberPostBaseCBuffer_384.y) + -0.5f;
    _684 = dot(float2(_678, _680), float2(_678, _680)) * -0.3333333432674408f;
    _686 = (_684 * _678) * UberPostBaseCBuffer_192.z;
    _688 = (_684 * _680) * UberPostBaseCBuffer_192.z;
    _690 = rsqrt(dot(float3(_686, _688, 9.999999747378752e-05f), float3(_686, _688, 9.999999747378752e-05f)));
    _697 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _702 = exp2(log2(sqrt((_686 * _686) + (_688 * _688)) / _697) * UberPostBaseCBuffer_384.z);
    _704 = ((_686 * _690) * _697) * _702;
    _706 = ((_688 * _690) * _697) * _702;
    _715 = t1.SampleBias(s0, float2(((_663 + _490) + (_704 * UberPostBaseCBuffer_400.w)), ((_664 + _491) + (_706 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _725 = t1.SampleBias(s0, float2(((_665 + _490) + (UberPostBaseCBuffer_416.w * _704)), ((_666 + _491) + (UberPostBaseCBuffer_416.w * _706))), (Globals_976), int2(0, 0));
    _735 = t1.SampleBias(s0, float2(((_667 + _490) + (UberPostBaseCBuffer_432.w * _704)), ((_668 + _491) + (UberPostBaseCBuffer_432.w * _706))), (Globals_976), int2(0, 0));
    _791 = (((float4)(t1.SampleBias(s0, float2(_661, _662), (Globals_976), int2(0, 0)))).w);
    _792 = (((UberPostBaseCBuffer_416.x * _725.y) + (UberPostBaseCBuffer_400.x * _715.x)) + (UberPostBaseCBuffer_432.x * _735.z));
    _793 = (((UberPostBaseCBuffer_416.y * _725.y) + (UberPostBaseCBuffer_400.y * _715.x)) + (UberPostBaseCBuffer_432.y * _735.z));
    _794 = (((UberPostBaseCBuffer_416.z * _725.y) + (UberPostBaseCBuffer_400.z * _715.x)) + (UberPostBaseCBuffer_432.z * _735.z));
  } else {
    if (_628) {
      _783 = (((float4)(t1.SampleBias(s0, float2((_663 + _490), (_664 + _491)), (Globals_976), int2(0, 0)))).x);
      _784 = (((float4)(t1.SampleBias(s0, float2((_665 + _490), (_666 + _491)), (Globals_976), int2(0, 0)))).y);
      _785 = (((float4)(t1.SampleBias(s0, float2((_667 + _490), (_668 + _491)), (Globals_976), int2(0, 0)))).z);
    } else {
      _778 = t1.SampleBias(s0, float2(_661, _662), (Globals_976), int2(0, 0));
      _783 = _778.x;
      _784 = _778.y;
      _785 = _778.z;
    }
    _791 = (((float4)(t1.SampleBias(s0, float2(_661, _662), (Globals_976), int2(0, 0)))).w);
    _792 = _783;
    _793 = _784;
    _794 = _785;
  }
  _801 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _801)) {
    _811 = fmod((((Globals_2208.y) * _662) * UberPostBaseCBuffer_448.x), 2.0f);
    _819 = (((select((_811 > 1.0f), (2.0f - _811), _811) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _661;
    _822 = (Globals_2208.w) * (Globals_2208.x);
    _843 = t5.SampleBias(s3, float2(_819, ((select(((frac((((_819 + abs(UberPostBaseCBuffer_464.y)) * _822) - (UberPostBaseCBuffer_464.y * _662)) / ((_822 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _662)), (Globals_976), int2(0, 0));
    _880 = ((((-0.699999988079071f - _843.x) + (exp2(log2(abs(_843.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_843.x < 0.30000001192092896f), 0.0f, 1.0f)) + _843.x) * UberPostBaseCBuffer_336.x;
    _881 = ((((-0.699999988079071f - _843.y) + (exp2(log2(abs(_843.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_843.y < 0.30000001192092896f), 0.0f, 1.0f)) + _843.y) * UberPostBaseCBuffer_336.x;
    _882 = ((((-0.699999988079071f - _843.z) + (exp2(log2(abs(_843.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_843.z < 0.30000001192092896f), 0.0f, 1.0f)) + _843.z) * UberPostBaseCBuffer_336.x;
    _883 = dot(float3(_792, _793, _794), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _886 = (UberPostBaseCBuffer_352.x > 0.5f);
    _899 = select(_886, ((((_880 * _883) - _880) * _791) + _880), _880);
    _900 = select(_886, ((((_881 * _883) - _881) * _791) + _881), _881);
    _901 = select(_886, ((((_882 * _883) - _882) * _791) + _882), _882);
    if (_801) {
      _912 = t6.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _661) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _662) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _926 = (((_912.x * _880) * UberPostBaseCBuffer_336.y) + _899);
      _927 = (((_912.y * _881) * UberPostBaseCBuffer_336.y) + _900);
      _928 = (((_912.z * _882) * UberPostBaseCBuffer_336.y) + _901);
    } else {
      _926 = _899;
      _927 = _900;
      _928 = _901;
    }
    _938 = (_926 + _792);
    _939 = (_927 + _793);
    _940 = (_928 + _794);
    _941 = saturate((((_927 + _926) + _928) * 0.33329999446868896f) + _791);
  } else {
    _938 = _792;
    _939 = _793;
    _940 = _794;
    _941 = _791;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _958 = abs(_662 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _960 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_661 - UberPostBaseCBuffer_112.x);
    _966 = exp2(log2(saturate(1.0f - dot(float2(_960, _958), float2(_960, _958)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _980 = (((_966 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _938);
    _981 = (((_966 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _939);
    _982 = (((_966 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _940);
  } else {
    _980 = _938;
    _981 = _939;
    _982 = _940;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_980, _981, _982);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t3, s0, UberPostBaseCBuffer_000.xyz);
    _1031 = tonemapped.x;
    _1032 = tonemapped.y;
    _1033 = tonemapped.z;
  } else {
    _1005 = saturate((log2((_982 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _1006 = floor(_1005);
    _1012 = ((saturate((log2((_981 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _1014 = (_1006 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_980 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _1015 = _1005 - _1006;
    _1017 = t3.SampleLevel(s0, float2((_1014 + UberPostBaseCBuffer_000.y), _1012), 0.0f);
    _1021 = t3.SampleLevel(s0, float2(_1014, _1012), 0.0f);
    _1031 = ((_1017.x - _1021.x) * _1015) + _1021.x;
    _1032 = ((_1017.y - _1021.y) * _1015) + _1021.y;
    _1033 = ((_1017.z - _1021.z) * _1015) + _1021.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _1053 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * _490) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * _491) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _1057 = 1.0f - (sqrt(dot(float3(_1031, _1032, _1033), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _1071 = ((((UberPostBaseCBuffer_208.x * _1031) * _1053) * _1057) + _1031);
    _1072 = ((((UberPostBaseCBuffer_208.x * _1032) * _1053) * _1057) + _1032);
    _1073 = ((((UberPostBaseCBuffer_208.x * _1033) * _1053) * _1057) + _1033);
  } else {
    _1071 = _1031;
    _1072 = _1032;
    _1073 = _1033;
  }
  _1077 = ((_515 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _503;
  _1079 = atan(_1077 / _502);
  _1082 = (_502 < 0.0f);
  _1083 = (_502 == 0.0f);
  _1084 = (_1077 >= 0.0f);
  _1085 = (_1077 < 0.0f);
  _28[0] = ((((Globals_2208.x) * (_490 + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _29[0] = _491;
  _28[1] = select((_1083 && _1084), 2.0f, select((_1083 && _1085), -2.0f, (select((_1082 && _1085), (_1079 + -3.1415927410125732f), select((_1082 && _1084), (_1079 + 3.1415927410125732f), _1079)) * 1.2732394933700562f)));
  _29[1] = (sqrt((_1077 * _1077) + (_502 * _502)) * 0.5f);
  _28[2] = _490;
  _29[2] = _491;
  _1142 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _1165 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _1190 = t10.SampleBias(s7, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _624) + (UberPostScreenEffectsBaseCBuffer_176.x * _499)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_28[min((uint)(_1165), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _625) + (UberPostScreenEffectsBaseCBuffer_176.y * _499)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_29[min((uint)(_1165), 2u)])))), (Globals_976), int2(0, 0));
  _34[0] = _1190.x;
  _34[1] = _1190.y;
  _34[2] = _1190.z;
  _34[3] = _1190.w;
  _1203 = ((_34[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _1211 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _1215 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _1230 = UberPostScreenEffectsBaseCBuffer_208.y * _1203;
  _1244 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1258 = UberPostScreenEffectsBaseCBuffer_208.z * _1203;
  _1274 = t9.SampleBias(s6, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _624) + (UberPostScreenEffectsBaseCBuffer_160.z * _499)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_28[min((uint)(_1244), 2u)]))) + _1258), (((((UberPostScreenEffectsRandomCBuffer_000.y + _625) + (UberPostScreenEffectsBaseCBuffer_160.w * _499)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_29[min((uint)(_1244), 2u)]))) + _1258)), (Globals_976), int2(0, 0));
  _33[0] = _1274.x;
  _33[1] = _1274.y;
  _33[2] = _1274.z;
  _33[3] = _1274.w;
  _1285 = _33[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1286 = t7.SampleBias(s4, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _499) + _624) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_28[min((uint)(_1215), 2u)]) * _1211) * UberPostScreenEffectsBaseCBuffer_032.x)) + _1230), (((((UberPostScreenEffectsBaseCBuffer_096.y * _499) + _625) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_29[min((uint)(_1215), 2u)]) * _1211) * UberPostScreenEffectsBaseCBuffer_032.y)) + _1230)), (Globals_976), int2(0, 0));
  _1294 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1285, 1.0f);
  _32[0] = _1286.x;
  _32[1] = _1286.y;
  _32[2] = _1286.z;
  _32[3] = _1286.w;
  _1305 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1308 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1294);
  _1317 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1318 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1319 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1331 = saturate((_1294 * (_32[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1338 = select(_1305, (((_1317 * _1308) + UberPostScreenEffectsBaseCBuffer_064.x) * _1286.x), ((_1317 * _1331) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1339 = select(_1305, (((_1318 * _1308) + UberPostScreenEffectsBaseCBuffer_064.y) * _1286.y), ((_1318 * _1331) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1340 = select(_1305, (((_1319 * _1308) + UberPostScreenEffectsBaseCBuffer_064.z) * _1286.z), ((_1319 * _1331) + UberPostScreenEffectsBaseCBuffer_064.z));
  _31[0] = _1286.x;
  _31[1] = _1286.y;
  _31[2] = _1286.z;
  _31[3] = _1286.w;
  _1349 = _31[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1350 = _1349 * _1285;
  _1366 = t8.SampleBias(s5, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _499) + _624) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_28[min((uint)(_1142), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _499) + _625) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_29[min((uint)(_1142), 2u)])))), (Globals_976), int2(0, 0));
  _30[0] = _1366.x;
  _30[1] = _1366.y;
  _30[2] = _1366.z;
  _30[3] = _1366.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1388 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1349));
  } else {
    _1388 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1350 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1350 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1390 = ((_30[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1388) * _555;
  _1394 = select((_1390 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1390;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1470 = ((_1394 * (_1338 - _1071)) + _1071);
    _1471 = ((_1394 * (_1339 - _1072)) + _1072);
    _1472 = ((_1394 * (_1340 - _1073)) + _1073);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1470 = ((_1394 * _1338) + _1071);
      _1471 = ((_1394 * _1339) + _1072);
      _1472 = ((_1394 * _1340) + _1073);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1470 = (((_1394 * (_1338 + -1.0f)) + 1.0f) * _1071);
        _1471 = (((_1394 * (_1339 + -1.0f)) + 1.0f) * _1072);
        _1472 = (((_1394 * (_1340 + -1.0f)) + 1.0f) * _1073);
      } else {
        _1436 = _1394 * (_1338 + -0.5f);
        _1437 = _1394 * (_1339 + -0.5f);
        _1438 = _1394 * (_1340 + -0.5f);
        _1470 = select((_1071 < 0.5f), ((_1071 * 2.0f) * (_1436 + 0.5f)), (1.0f - (((1.0f - _1071) * 2.0f) * (0.5f - _1436))));
        _1471 = select((_1072 < 0.5f), ((_1072 * 2.0f) * (_1437 + 0.5f)), (1.0f - (((1.0f - _1072) * 2.0f) * (0.5f - _1437))));
        _1472 = select((_1073 < 0.5f), ((_1073 * 2.0f) * (_1438 + 0.5f)), (1.0f - (((1.0f - _1073) * 2.0f) * (0.5f - _1438))));
      }
    }
  }
  SV_Target.x = (_1470);
  SV_Target.y = (_1471);
  SV_Target.z = (_1472);
  SV_Target.w = _941;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
