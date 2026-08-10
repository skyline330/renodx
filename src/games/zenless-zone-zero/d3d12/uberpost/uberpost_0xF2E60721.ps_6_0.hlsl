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

cbuffer cb4 : register(b4) {
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
  float4 _44;
  float _68;
  float _70;
  float _86;
  float _87;
  float _88;
  float _89;
  float _90;
  float _91;
  float _92;
  float _93;
  float _94;
  float _95;
  float _98;
  float _101;
  float _104;
  float _106;
  float _121;
  float _135;
  float _141;
  float _142;
  float _143;
  float _145;
  float _150;
  float _158;
  float _159;
  float _164;
  float _165;
  float _166;
  float _169;
  float _170;
  float _173;
  float _174;
  float _175;
  bool _176;
  float _177;
  float _178;
  float _181;
  float _182;
  float _183;
  float _184;
  float _191;
  float _192;
  float _193;
  float _194;
  float _201;
  float _202;
  float _203;
  float _214;
  float _217;
  float _220;
  float _227;
  float _228;
  float _229;
  float _248;
  float _249;
  float _250;
  float _251;
  float _252;
  float _253;
  float _263;
  float _264;
  float _265;
  float _266;
  float _267;
  float _268;
  float _272;
  float _273;
  float _274;
  float _281;
  float _282;
  float _283;
  float _317;
  float _318;
  float _319;
  float _322;
  float _323;
  float _326;
  float _327;
  float _328;
  bool _329;
  float _330;
  float _331;
  float _334;
  float _335;
  float _336;
  float _337;
  float _344;
  float _345;
  float _346;
  float _347;
  float _354;
  float _355;
  float _356;
  float _367;
  float _370;
  float _373;
  float _380;
  float _381;
  float _382;
  float _401;
  float _402;
  float _403;
  float _404;
  float _405;
  float _406;
  float _416;
  float _417;
  float _418;
  float _419;
  float _420;
  float _421;
  float _425;
  float _426;
  float _427;
  float _434;
  float _435;
  float _436;
  float _473;
  float _491;
  float _492;
  float _493;
  float _501;
  float _502;
  float _503;
  float _504;
  float _505;
  float _515;
  float _517;
  float _519;
  float _520;
  float _521;
  float _532;
  float _542;
  float _548;
  float _554;
  float _557;
  float _626;
  float _627;
  float _663;
  float _664;
  float _665;
  float _666;
  float _667;
  float _668;
  float _669;
  float _670;
  float _785;
  float _786;
  float _787;
  float _793;
  float _794;
  float _795;
  float _796;
  float _928;
  float _929;
  float _930;
  float _940;
  float _941;
  float _942;
  float _943;
  float _982;
  float _983;
  float _984;
  float _1022;
  float _1023;
  float _1024;
  float _1339;
  float _1421;
  float _1422;
  float _1423;
  float _1450;
  float _1451;
  float _1452;
  float _1581;
  float _1582;
  float _1583;
  float _565;
  float _567;
  bool _570;
  bool _571;
  bool _572;
  bool _573;
  bool _597;
  float4 _613;
  float _622;
  bool _630;
  float4 _634;
  float _640;
  float _641;
  float _644;
  float _645;
  float _646;
  float _680;
  float _682;
  float _686;
  float _688;
  float _690;
  float _692;
  float _699;
  float _704;
  float _706;
  float _708;
  float4 _717;
  float4 _727;
  float4 _737;
  float4 _780;
  bool _803;
  float _813;
  float _821;
  float _824;
  float4 _845;
  float _882;
  float _883;
  float _884;
  float _885;
  bool _888;
  float _901;
  float _902;
  float _903;
  float4 _914;
  float _960;
  float _962;
  float _968;
  float _1004;
  float _1008;
  float _1028;
  float _1030;
  bool _1033;
  bool _1034;
  bool _1035;
  bool _1036;
  int _1093;
  int _1116;
  float4 _1141;
  float _1154;
  float _1162;
  int _1166;
  float _1181;
  int _1195;
  float _1209;
  float4 _1225;
  float _1236;
  float4 _1237;
  float _1245;
  bool _1256;
  float _1259;
  float _1268;
  float _1269;
  float _1270;
  float _1282;
  float _1289;
  float _1290;
  float _1291;
  float _1300;
  float _1301;
  float4 _1317;
  float _1341;
  float _1345;
  float _1387;
  float _1388;
  float _1389;
  float _1428;
  float _1435;
  float _1436;
  float _1437;
  float4 _1445;
  float _1467;
  float _1468;
  float _1469;
  float _1477;
  float _1504;
  float _1505;
  float _1506;
  float4 _1512;
  float _1549;
  float _1550;
  float _1551;
  float _1570;
  float _30[3];
  float _31[3];
  float _32[4];
  float _33[4];
  float _34[4];
  float _35[4];
  float _36[4];
  _44 = t1.Load(int3((int)(uint((Globals_2208.x) * TEXCOORD.x)), (int)(uint((Globals_2208.y) * TEXCOORD.y)), 0));
  _68 = (TEXCOORD.x * 2.0f) + -1.0f;
  _70 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  _86 = mad((Globals_2144[2].w), _44.x, mad((Globals_2144[1].w), _70, ((Globals_2144[0].w) * _68))) + (Globals_2144[3].w);
  _87 = (mad((Globals_2144[2].x), _44.x, mad((Globals_2144[1].x), _70, ((Globals_2144[0].x) * _68))) + (Globals_2144[3].x)) / _86;
  _88 = (mad((Globals_2144[2].y), _44.x, mad((Globals_2144[1].y), _70, ((Globals_2144[0].y) * _68))) + (Globals_2144[3].y)) / _86;
  _89 = (mad((Globals_2144[2].z), _44.x, mad((Globals_2144[1].z), _70, ((Globals_2144[0].z) * _68))) + (Globals_2144[3].z)) / _86;
  _90 = ddy_coarse(_87);
  _91 = ddy_coarse(_88);
  _92 = ddy_coarse(_89);
  _93 = ddx_coarse(_87);
  _94 = ddx_coarse(_88);
  _95 = ddx_coarse(_89);
  _98 = (_94 * _92) - (_95 * _91);
  _101 = (_95 * _90) - (_93 * _92);
  _104 = (_93 * _91) - (_94 * _90);
  _106 = rsqrt(dot(float3(_98, _101, _104), float3(_98, _101, _104)));
  _121 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((Globals_992.z) * _44.x) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y);
  _135 = UberPostBaseCBuffer_544.w * _88;
  _141 = max(abs(_98 * _106), 9.999999747378752e-06f);
  _142 = max(abs(_101 * _106), 9.999999747378752e-06f);
  _143 = max(abs(_106 * _104), 9.999999747378752e-06f);
  _145 = rsqrt(dot(float3(_141, _142, _143), float3(_141, _142, _143)));
  _150 = _145 * ((_142 + _141) + _143);
  _158 = UberPostBaseCBuffer_560.x * (Globals_208[1].x);
  _159 = UberPostBaseCBuffer_560.y * (Globals_208[1].x);
  _164 = (_135 * UberPostBaseCBuffer_560.z) + _158;
  _165 = ((UberPostBaseCBuffer_544.w * _89) * UberPostBaseCBuffer_560.w) + _159;
  _166 = dot(float2(_164, _165), float2(0.3660254180431366f, 0.3660254180431366f));
  _169 = floor(_164 + _166);
  _170 = floor(_165 + _166);
  _173 = dot(float2(_169, _170), float2(0.21132487058639526f, 0.21132487058639526f));
  _174 = (_164 - _169) + _173;
  _175 = (_165 - _170) + _173;
  _176 = (_174 > _175);
  _177 = select(_176, 1.0f, 0.0f);
  _178 = select(_176, 0.0f, 1.0f);
  _181 = _174 + -0.5773502588272095f;
  _182 = _175 + -0.5773502588272095f;
  _183 = (_174 + 0.21132487058639526f) - _177;
  _184 = (_175 + 0.21132487058639526f) - _178;
  _191 = _169 - (floor(_169 * 0.0034602077212184668f) * 289.0f);
  _192 = _170 - (floor(_170 * 0.0034602077212184668f) * 289.0f);
  _193 = _192 + _178;
  _194 = _192 + 1.0f;
  _201 = ((_192 * 34.0f) + 1.0f) * _192;
  _202 = ((_193 * 34.0f) + 1.0f) * _193;
  _203 = ((_194 * 34.0f) + 1.0f) * _194;
  _214 = (_201 - (floor(_201 * 0.0034602077212184668f) * 289.0f)) + _191;
  _217 = ((_177 + _191) - (floor(_202 * 0.0034602077212184668f) * 289.0f)) + _202;
  _220 = ((_191 + 1.0f) - (floor(_203 * 0.0034602077212184668f) * 289.0f)) + _203;
  _227 = ((_214 * 34.0f) + 1.0f) * _214;
  _228 = ((_217 * 34.0f) + 1.0f) * _217;
  _229 = ((_220 * 34.0f) + 1.0f) * _220;
  _248 = max((0.5f - dot(float2(_174, _175), float2(_174, _175))), 0.0f);
  _249 = max((0.5f - dot(float2(_183, _184), float2(_183, _184))), 0.0f);
  _250 = max((0.5f - dot(float2(_181, _182), float2(_181, _182))), 0.0f);
  _251 = _248 * _248;
  _252 = _249 * _249;
  _253 = _250 * _250;
  _263 = frac((_227 - (floor(_227 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _264 = frac((_228 - (floor(_228 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _265 = frac((_229 - (floor(_229 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _266 = _263 + -1.0f;
  _267 = _264 + -1.0f;
  _268 = _265 + -1.0f;
  _272 = abs(_266) + -0.5f;
  _273 = abs(_267) + -0.5f;
  _274 = abs(_268) + -0.5f;
  _281 = _266 - floor(_263 + -0.5f);
  _282 = _267 - floor(_264 + -0.5f);
  _283 = _268 - floor(_265 + -0.5f);
  _317 = ((UberPostBaseCBuffer_544.w * _87) * UberPostBaseCBuffer_592.x) + _158;
  _318 = (_135 * UberPostBaseCBuffer_592.y) + _159;
  _319 = dot(float2(_317, _318), float2(0.3660254180431366f, 0.3660254180431366f));
  _322 = floor(_317 + _319);
  _323 = floor(_318 + _319);
  _326 = dot(float2(_322, _323), float2(0.21132487058639526f, 0.21132487058639526f));
  _327 = (_317 - _322) + _326;
  _328 = (_318 - _323) + _326;
  _329 = (_327 > _328);
  _330 = select(_329, 1.0f, 0.0f);
  _331 = select(_329, 0.0f, 1.0f);
  _334 = _327 + -0.5773502588272095f;
  _335 = _328 + -0.5773502588272095f;
  _336 = (_327 + 0.21132487058639526f) - _330;
  _337 = (_328 + 0.21132487058639526f) - _331;
  _344 = _322 - (floor(_322 * 0.0034602077212184668f) * 289.0f);
  _345 = _323 - (floor(_323 * 0.0034602077212184668f) * 289.0f);
  _346 = _345 + _331;
  _347 = _345 + 1.0f;
  _354 = ((_345 * 34.0f) + 1.0f) * _345;
  _355 = ((_346 * 34.0f) + 1.0f) * _346;
  _356 = ((_347 * 34.0f) + 1.0f) * _347;
  _367 = (_354 - (floor(_354 * 0.0034602077212184668f) * 289.0f)) + _344;
  _370 = ((_330 + _344) - (floor(_355 * 0.0034602077212184668f) * 289.0f)) + _355;
  _373 = ((_344 + 1.0f) - (floor(_356 * 0.0034602077212184668f) * 289.0f)) + _356;
  _380 = ((_367 * 34.0f) + 1.0f) * _367;
  _381 = ((_370 * 34.0f) + 1.0f) * _370;
  _382 = ((_373 * 34.0f) + 1.0f) * _373;
  _401 = max((0.5f - dot(float2(_327, _328), float2(_327, _328))), 0.0f);
  _402 = max((0.5f - dot(float2(_336, _337), float2(_336, _337))), 0.0f);
  _403 = max((0.5f - dot(float2(_334, _335), float2(_334, _335))), 0.0f);
  _404 = _401 * _401;
  _405 = _402 * _402;
  _406 = _403 * _403;
  _416 = frac((_380 - (floor(_380 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _417 = frac((_381 - (floor(_381 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _418 = frac((_382 - (floor(_382 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _419 = _416 + -1.0f;
  _420 = _417 + -1.0f;
  _421 = _418 + -1.0f;
  _425 = abs(_419) + -0.5f;
  _426 = abs(_420) + -0.5f;
  _427 = abs(_421) + -0.5f;
  _434 = _419 - floor(_416 + -0.5f);
  _435 = _420 - floor(_417 + -0.5f);
  _436 = _421 - floor(_418 + -0.5f);
  _473 = ((((_121 * _121) * 130.0f) * exp2(log2(1.0f - saturate(abs(_88 - UberPostBaseCBuffer_576.y) / UberPostBaseCBuffer_576.x)) * UberPostBaseCBuffer_576.z)) * UberPostBaseCBuffer_544.x) * ((dot(float3(((_404 * _404) * (1.7928428649902344f - (((_434 * _434) + (_425 * _425)) * 0.8537347316741943f))), ((_405 * _405) * (1.7928428649902344f - (((_435 * _435) + (_426 * _426)) * 0.8537347316741943f))), ((_406 * _406) * (1.7928428649902344f - (((_436 * _436) + (_427 * _427)) * 0.8537347316741943f)))), float3(((_434 * _327) + (_425 * _328)), ((_435 * _336) + (_426 * _337)), ((_436 * _334) + (_427 * _335)))) * ((_145 * _143) / _150)) + (dot(float3(((_251 * _251) * (1.7928428649902344f - (((_281 * _281) + (_272 * _272)) * 0.8537347316741943f))), ((_252 * _252) * (1.7928428649902344f - (((_282 * _282) + (_273 * _273)) * 0.8537347316741943f))), ((_253 * _253) * (1.7928428649902344f - (((_283 * _283) + (_274 * _274)) * 0.8537347316741943f)))), float3(((_281 * _174) + (_272 * _175)), ((_282 * _183) + (_273 * _184)), ((_283 * _181) + (_274 * _182)))) * ((_145 * _141) / _150)));
  _491 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((((float4)(t1.Load(int3((int)(uint((_473 + TEXCOORD.x) * (Globals_2208.x))), (int)(uint((_473 + TEXCOORD.y) * (Globals_2208.y))), 0)))).x) * (Globals_992.z)) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y) * _473;
  _492 = _491 + TEXCOORD.x;
  _493 = _491 + TEXCOORD.y;
  _501 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _502 = _492 * 2.0f;
  _503 = _493 * 2.0f;
  _504 = _502 + -1.0f;
  _505 = _503 + -1.0f;
  _515 = (Globals_080.z) + -1.0f;
  _517 = (_515 * (Globals_080.y)) + -1.0f;
  _519 = (_517 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _520 = _519 * _505;
  _521 = _504 * _504;
  _532 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_504)), (_519 * (1.0f - abs(_505)))), (1.0f - (sqrt((_520 * _520) + _521) * 0.7070000171661377f)));
  _542 = saturate((_532 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _548 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_542 * _542) * (3.0f - (_542 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _532), 0.0f, 1.0f));
  _554 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _548), _548) * UberPostScreenEffectsBaseCBuffer_016.z;
  _557 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _554, 0.0f) * _554;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _565 = ((_517 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _505;
    _567 = atan(_565 / _504);
    _570 = (_504 < 0.0f);
    _571 = (_504 == 0.0f);
    _572 = (_565 >= 0.0f);
    _573 = (_565 < 0.0f);
    _597 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _613 = t12.SampleBias(s8, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _501)) + (select(_597, select((_571 && _572), 2.0f, select((_571 && _573), -2.0f, (select((_570 && _573), (_567 + -3.1415927410125732f), select((_570 && _572), (_567 + 3.1415927410125732f), _567)) * 1.2732394933700562f))), _492) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _501)) + (select(_597, (sqrt((_565 * _565) + _521) * 0.6366197466850281f), ((((Globals_080.y) * (_493 + -0.5f)) * _515) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _622 = (_557 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _626 = (_622 * ((_613.x * 2.0f) + -1.0f));
    _627 = (_622 * ((_613.y * 2.0f) + -1.0f));
  } else {
    _626 = 0.0f;
    _627 = 0.0f;
  }
  _630 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_630) {
    _634 = t5.SampleBias(s2, float2(_492, _493), (Globals_976), int2(0, 0));
    _640 = (_634.x * 0.10000000149011612f) + _626;
    _641 = (_634.y * 0.10000000149011612f) + _627;
    _644 = UberPostBaseCBuffer_176.w * _634.z;
    _645 = _644 * _640;
    _646 = _644 * _641;
    _663 = (_640 + TEXCOORD.x);
    _664 = (_641 + TEXCOORD.y);
    _665 = ((_645 * UberPostBaseCBuffer_176.x) + _640);
    _666 = ((_646 * UberPostBaseCBuffer_176.x) + _641);
    _667 = ((_645 * UberPostBaseCBuffer_176.y) + _640);
    _668 = ((_646 * UberPostBaseCBuffer_176.y) + _641);
    _669 = ((_645 * UberPostBaseCBuffer_176.z) + _640);
    _670 = ((_646 * UberPostBaseCBuffer_176.z) + _641);
  } else {
    _663 = TEXCOORD.x;
    _664 = TEXCOORD.y;
    _665 = 0.0f;
    _666 = 0.0f;
    _667 = 0.0f;
    _668 = 0.0f;
    _669 = 0.0f;
    _670 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _680 = (_502 - UberPostBaseCBuffer_384.x) + -0.5f;
    _682 = (_503 - UberPostBaseCBuffer_384.y) + -0.5f;
    _686 = dot(float2(_680, _682), float2(_680, _682)) * -0.3333333432674408f;
    _688 = (_686 * _680) * UberPostBaseCBuffer_192.z;
    _690 = (_686 * _682) * UberPostBaseCBuffer_192.z;
    _692 = rsqrt(dot(float3(_688, _690, 9.999999747378752e-05f), float3(_688, _690, 9.999999747378752e-05f)));
    _699 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _704 = exp2(log2(sqrt((_688 * _688) + (_690 * _690)) / _699) * UberPostBaseCBuffer_384.z);
    _706 = ((_688 * _692) * _699) * _704;
    _708 = ((_690 * _692) * _699) * _704;
    _717 = t2.SampleBias(s0, float2(((_665 + _492) + (_706 * UberPostBaseCBuffer_400.w)), ((_666 + _493) + (_708 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _727 = t2.SampleBias(s0, float2(((_667 + _492) + (UberPostBaseCBuffer_416.w * _706)), ((_668 + _493) + (UberPostBaseCBuffer_416.w * _708))), (Globals_976), int2(0, 0));
    _737 = t2.SampleBias(s0, float2(((_669 + _492) + (UberPostBaseCBuffer_432.w * _706)), ((_670 + _493) + (UberPostBaseCBuffer_432.w * _708))), (Globals_976), int2(0, 0));
    _793 = (((float4)(t2.SampleBias(s0, float2(_663, _664), (Globals_976), int2(0, 0)))).w);
    _794 = (((UberPostBaseCBuffer_416.x * _727.y) + (UberPostBaseCBuffer_400.x * _717.x)) + (UberPostBaseCBuffer_432.x * _737.z));
    _795 = (((UberPostBaseCBuffer_416.y * _727.y) + (UberPostBaseCBuffer_400.y * _717.x)) + (UberPostBaseCBuffer_432.y * _737.z));
    _796 = (((UberPostBaseCBuffer_416.z * _727.y) + (UberPostBaseCBuffer_400.z * _717.x)) + (UberPostBaseCBuffer_432.z * _737.z));
  } else {
    if (_630) {
      _785 = (((float4)(t2.SampleBias(s0, float2((_665 + _492), (_666 + _493)), (Globals_976), int2(0, 0)))).x);
      _786 = (((float4)(t2.SampleBias(s0, float2((_667 + _492), (_668 + _493)), (Globals_976), int2(0, 0)))).y);
      _787 = (((float4)(t2.SampleBias(s0, float2((_669 + _492), (_670 + _493)), (Globals_976), int2(0, 0)))).z);
    } else {
      _780 = t2.SampleBias(s0, float2(_663, _664), (Globals_976), int2(0, 0));
      _785 = _780.x;
      _786 = _780.y;
      _787 = _780.z;
    }
    _793 = (((float4)(t2.SampleBias(s0, float2(_663, _664), (Globals_976), int2(0, 0)))).w);
    _794 = _785;
    _795 = _786;
    _796 = _787;
  }
  _803 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _803)) {
    _813 = fmod((((Globals_2208.y) * _664) * UberPostBaseCBuffer_448.x), 2.0f);
    _821 = (((select((_813 > 1.0f), (2.0f - _813), _813) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _663;
    _824 = (Globals_2208.w) * (Globals_2208.x);
    _845 = t6.SampleBias(s3, float2(_821, ((select(((frac((((_821 + abs(UberPostBaseCBuffer_464.y)) * _824) - (UberPostBaseCBuffer_464.y * _664)) / ((_824 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _664)), (Globals_976), int2(0, 0));
    _882 = ((((-0.699999988079071f - _845.x) + (exp2(log2(abs(_845.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_845.x < 0.30000001192092896f), 0.0f, 1.0f)) + _845.x) * UberPostBaseCBuffer_336.x;
    _883 = ((((-0.699999988079071f - _845.y) + (exp2(log2(abs(_845.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_845.y < 0.30000001192092896f), 0.0f, 1.0f)) + _845.y) * UberPostBaseCBuffer_336.x;
    _884 = ((((-0.699999988079071f - _845.z) + (exp2(log2(abs(_845.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_845.z < 0.30000001192092896f), 0.0f, 1.0f)) + _845.z) * UberPostBaseCBuffer_336.x;
    _885 = dot(float3(_794, _795, _796), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _888 = (UberPostBaseCBuffer_352.x > 0.5f);
    _901 = select(_888, ((((_882 * _885) - _882) * _793) + _882), _882);
    _902 = select(_888, ((((_883 * _885) - _883) * _793) + _883), _883);
    _903 = select(_888, ((((_884 * _885) - _884) * _793) + _884), _884);
    if (_803) {
      _914 = t7.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _663) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _664) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _928 = (((_914.x * _882) * UberPostBaseCBuffer_336.y) + _901);
      _929 = (((_914.y * _883) * UberPostBaseCBuffer_336.y) + _902);
      _930 = (((_914.z * _884) * UberPostBaseCBuffer_336.y) + _903);
    } else {
      _928 = _901;
      _929 = _902;
      _930 = _903;
    }
    _940 = (_928 + _794);
    _941 = (_929 + _795);
    _942 = (_930 + _796);
    _943 = saturate((((_929 + _928) + _930) * 0.33329999446868896f) + _793);
  } else {
    _940 = _794;
    _941 = _795;
    _942 = _796;
    _943 = _793;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _960 = abs(_664 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _962 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_663 - UberPostBaseCBuffer_112.x);
    _968 = exp2(log2(saturate(1.0f - dot(float2(_962, _960), float2(_962, _960)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _982 = (((_968 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _940);
    _983 = (((_968 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _941);
    _984 = (((_968 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _942);
  } else {
    _982 = _940;
    _983 = _941;
    _984 = _942;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_982, _983, _984);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _982 = tonemapped.x;
    _983 = tonemapped.y;
    _984 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _1004 = ((((float4)(t3.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * _492) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * _493) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _1008 = 1.0f - (sqrt(dot(float3(_982, _983, _984), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _1022 = ((((UberPostBaseCBuffer_208.x * _982) * _1004) * _1008) + _982);
    _1023 = ((((UberPostBaseCBuffer_208.x * _983) * _1004) * _1008) + _983);
    _1024 = ((((UberPostBaseCBuffer_208.x * _984) * _1004) * _1008) + _984);
  } else {
    _1022 = _982;
    _1023 = _983;
    _1024 = _984;
  }
  _1028 = ((_517 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _505;
  _1030 = atan(_1028 / _504);
  _1033 = (_504 < 0.0f);
  _1034 = (_504 == 0.0f);
  _1035 = (_1028 >= 0.0f);
  _1036 = (_1028 < 0.0f);
  _30[0] = ((((Globals_2208.x) * (_492 + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _31[0] = _493;
  _30[1] = select((_1034 && _1035), 2.0f, select((_1034 && _1036), -2.0f, (select((_1033 && _1036), (_1030 + -3.1415927410125732f), select((_1033 && _1035), (_1030 + 3.1415927410125732f), _1030)) * 1.2732394933700562f)));
  _31[1] = (sqrt((_1028 * _1028) + (_504 * _504)) * 0.5f);
  _30[2] = _492;
  _31[2] = _493;
  _1093 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _1116 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _1141 = t11.SampleBias(s7, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _626) + (UberPostScreenEffectsBaseCBuffer_176.x * _501)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_30[min((uint)(_1116), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _627) + (UberPostScreenEffectsBaseCBuffer_176.y * _501)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_31[min((uint)(_1116), 2u)])))), (Globals_976), int2(0, 0));
  _36[0] = _1141.x;
  _36[1] = _1141.y;
  _36[2] = _1141.z;
  _36[3] = _1141.w;
  _1154 = ((_36[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _1162 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _1166 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _1181 = UberPostScreenEffectsBaseCBuffer_208.y * _1154;
  _1195 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1209 = UberPostScreenEffectsBaseCBuffer_208.z * _1154;
  _1225 = t10.SampleBias(s6, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _626) + (UberPostScreenEffectsBaseCBuffer_160.z * _501)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_30[min((uint)(_1195), 2u)]))) + _1209), (((((UberPostScreenEffectsRandomCBuffer_000.y + _627) + (UberPostScreenEffectsBaseCBuffer_160.w * _501)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_31[min((uint)(_1195), 2u)]))) + _1209)), (Globals_976), int2(0, 0));
  _35[0] = _1225.x;
  _35[1] = _1225.y;
  _35[2] = _1225.z;
  _35[3] = _1225.w;
  _1236 = _35[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1237 = t8.SampleBias(s4, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _501) + _626) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_30[min((uint)(_1166), 2u)]) * _1162) * UberPostScreenEffectsBaseCBuffer_032.x)) + _1181), (((((UberPostScreenEffectsBaseCBuffer_096.y * _501) + _627) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_31[min((uint)(_1166), 2u)]) * _1162) * UberPostScreenEffectsBaseCBuffer_032.y)) + _1181)), (Globals_976), int2(0, 0));
  _1245 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1236, 1.0f);
  _34[0] = _1237.x;
  _34[1] = _1237.y;
  _34[2] = _1237.z;
  _34[3] = _1237.w;
  _1256 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1259 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1245);
  _1268 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1269 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1270 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1282 = saturate((_1245 * (_34[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1289 = select(_1256, (((_1268 * _1259) + UberPostScreenEffectsBaseCBuffer_064.x) * _1237.x), ((_1268 * _1282) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1290 = select(_1256, (((_1269 * _1259) + UberPostScreenEffectsBaseCBuffer_064.y) * _1237.y), ((_1269 * _1282) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1291 = select(_1256, (((_1270 * _1259) + UberPostScreenEffectsBaseCBuffer_064.z) * _1237.z), ((_1270 * _1282) + UberPostScreenEffectsBaseCBuffer_064.z));
  _33[0] = _1237.x;
  _33[1] = _1237.y;
  _33[2] = _1237.z;
  _33[3] = _1237.w;
  _1300 = _33[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1301 = _1300 * _1236;
  _1317 = t9.SampleBias(s5, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _501) + _626) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_30[min((uint)(_1093), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _501) + _627) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_31[min((uint)(_1093), 2u)])))), (Globals_976), int2(0, 0));
  _32[0] = _1317.x;
  _32[1] = _1317.y;
  _32[2] = _1317.z;
  _32[3] = _1317.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1339 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1300));
  } else {
    _1339 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1301 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1301 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1341 = ((_32[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1339) * _557;
  _1345 = select((_1341 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1341;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1421 = ((_1345 * (_1289 - _1022)) + _1022);
    _1422 = ((_1345 * (_1290 - _1023)) + _1023);
    _1423 = ((_1345 * (_1291 - _1024)) + _1024);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1421 = ((_1345 * _1289) + _1022);
      _1422 = ((_1345 * _1290) + _1023);
      _1423 = ((_1345 * _1291) + _1024);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1421 = (((_1345 * (_1289 + -1.0f)) + 1.0f) * _1022);
        _1422 = (((_1345 * (_1290 + -1.0f)) + 1.0f) * _1023);
        _1423 = (((_1345 * (_1291 + -1.0f)) + 1.0f) * _1024);
      } else {
        _1387 = _1345 * (_1289 + -0.5f);
        _1388 = _1345 * (_1290 + -0.5f);
        _1389 = _1345 * (_1291 + -0.5f);
        _1421 = select((_1022 < 0.5f), ((_1022 * 2.0f) * (_1387 + 0.5f)), (1.0f - (((1.0f - _1022) * 2.0f) * (0.5f - _1387))));
        _1422 = select((_1023 < 0.5f), ((_1023 * 2.0f) * (_1388 + 0.5f)), (1.0f - (((1.0f - _1023) * 2.0f) * (0.5f - _1388))));
        _1423 = select((_1024 < 0.5f), ((_1024 * 2.0f) * (_1389 + 0.5f)), (1.0f - (((1.0f - _1024) * 2.0f) * (0.5f - _1389))));
      }
    }
  }
  _1428 = ((_1422 + _1421) + _1423) * 0.3333333432674408f;
  _1435 = ((_1421 - _1428) * UberPostFXColorCorrectionCBuffer_000.w) + _1428;
  _1436 = ((_1422 - _1428) * UberPostFXColorCorrectionCBuffer_000.w) + _1428;
  _1437 = ((_1423 - _1428) * UberPostFXColorCorrectionCBuffer_000.w) + _1428;
  if ((Globals_816[3].w) > 0.5f) {
    _1445 = t0.SampleBias(s0, float2(dot(float3(_1435, _1436, _1437), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _1450 = _1445.x;
    _1451 = _1445.y;
    _1452 = _1445.z;
  } else {
    _1450 = _1435;
    _1451 = _1436;
    _1452 = _1437;
  }
  _1467 = (((1.0f - _1450) - saturate(_1450)) * UberPostFXColorCorrectionCBuffer_016.w) + _1450;
  _1468 = (((1.0f - _1451) - saturate(_1451)) * UberPostFXColorCorrectionCBuffer_016.w) + _1451;
  _1469 = (((1.0f - _1452) - saturate(_1452)) * UberPostFXColorCorrectionCBuffer_016.w) + _1452;
  _1477 = saturate((saturate(dot(float3(_1467, _1468, _1469), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _1504 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _1467) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1477)) * UberPostFXColorCorrectionCBuffer_032.x) + _1467);
  // _1505 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _1468) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1477)) * UberPostFXColorCorrectionCBuffer_032.x) + _1468);
  // _1506 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _1469) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1477)) * UberPostFXColorCorrectionCBuffer_032.x) + _1469);
  _1504 = ((((UberPostFXColorCorrectionCBuffer_000.x - _1467) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1477)) * UberPostFXColorCorrectionCBuffer_032.x) + _1467);
  _1505 = ((((UberPostFXColorCorrectionCBuffer_000.y - _1468) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1477)) * UberPostFXColorCorrectionCBuffer_032.x) + _1468);
  _1506 = ((((UberPostFXColorCorrectionCBuffer_000.z - _1469) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1477)) * UberPostFXColorCorrectionCBuffer_032.x) + _1469);

  // HDR FX Mask Blend
  float3 result = float3(_1504, _1505, _1506);
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
  _1581 = result.x;
  _1582 = result.y;
  _1583 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _1512 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _1581 = min((_1512.x + _1504), 1.0f);
        _1582 = min((_1512.x + _1505), 1.0f);
        _1583 = min((_1512.x + _1506), 1.0f);
      } else {
        _1549 = select((_1504 > 0.5f), 0.0f, 1.0f);
        _1550 = select((_1505 > 0.5f), 0.0f, 1.0f);
        _1551 = select((_1506 > 0.5f), 0.0f, 1.0f);
        _1570 = 1.0f - _1512.x;
        _1581 = (((((1.0f - (((1.0f - _1504) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _1549)) + (((_1504 * 2.0f) * _1549) * UberPostFXColorCorrectionCBuffer_048.x)) * _1512.x) + (_1570 * _1504));
        _1582 = (((((1.0f - (((1.0f - _1505) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _1550)) + (((_1505 * 2.0f) * _1550) * UberPostFXColorCorrectionCBuffer_048.y)) * _1512.x) + (_1570 * _1505));
        _1583 = (((((1.0f - (((1.0f - _1506) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1551)) + (((_1506 * 2.0f) * _1551) * UberPostFXColorCorrectionCBuffer_048.z)) * _1512.x) + (_1570 * _1506));
      }
  } else {
    _1581 = _1504;
    _1582 = _1505;
    _1583 = _1506;
  }
  */

  SV_Target.x = _1581;
  SV_Target.y = _1582;
  SV_Target.z = _1583;
  SV_Target.w = _943;
  return SV_Target;
}
