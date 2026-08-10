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

Texture2D<float4> t13 : register(t13);

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
  float4 _45;
  float _69;
  float _71;
  float _87;
  float _88;
  float _89;
  float _90;
  float _91;
  float _92;
  float _93;
  float _94;
  float _95;
  float _96;
  float _99;
  float _102;
  float _105;
  float _107;
  float _122;
  float _136;
  float _142;
  float _143;
  float _144;
  float _146;
  float _151;
  float _159;
  float _160;
  float _165;
  float _166;
  float _167;
  float _170;
  float _171;
  float _174;
  float _175;
  float _176;
  bool _177;
  float _178;
  float _179;
  float _182;
  float _183;
  float _184;
  float _185;
  float _192;
  float _193;
  float _194;
  float _195;
  float _202;
  float _203;
  float _204;
  float _215;
  float _218;
  float _221;
  float _228;
  float _229;
  float _230;
  float _249;
  float _250;
  float _251;
  float _252;
  float _253;
  float _254;
  float _264;
  float _265;
  float _266;
  float _267;
  float _268;
  float _269;
  float _273;
  float _274;
  float _275;
  float _282;
  float _283;
  float _284;
  float _318;
  float _319;
  float _320;
  float _323;
  float _324;
  float _327;
  float _328;
  float _329;
  bool _330;
  float _331;
  float _332;
  float _335;
  float _336;
  float _337;
  float _338;
  float _345;
  float _346;
  float _347;
  float _348;
  float _355;
  float _356;
  float _357;
  float _368;
  float _371;
  float _374;
  float _381;
  float _382;
  float _383;
  float _402;
  float _403;
  float _404;
  float _405;
  float _406;
  float _407;
  float _417;
  float _418;
  float _419;
  float _420;
  float _421;
  float _422;
  float _426;
  float _427;
  float _428;
  float _435;
  float _436;
  float _437;
  float _474;
  float _492;
  float _493;
  float _494;
  float _502;
  float _503;
  float _504;
  float _505;
  float _506;
  float _516;
  float _518;
  float _520;
  float _521;
  float _522;
  float _533;
  float _543;
  float _549;
  float _555;
  float _558;
  float _627;
  float _628;
  float _664;
  float _665;
  float _666;
  float _667;
  float _668;
  float _669;
  float _670;
  float _671;
  float _786;
  float _787;
  float _788;
  float _794;
  float _795;
  float _796;
  float _797;
  float _929;
  float _930;
  float _931;
  float _941;
  float _942;
  float _943;
  float _944;
  float _983;
  float _984;
  float _985;
  float _1074;
  float _1075;
  float _1076;
  float _1391;
  float _1473;
  float _1474;
  float _1475;
  float _1502;
  float _1503;
  float _1504;
  float _1633;
  float _1634;
  float _1635;
  float _566;
  float _568;
  bool _571;
  bool _572;
  bool _573;
  bool _574;
  bool _598;
  float4 _614;
  float _623;
  bool _631;
  float4 _635;
  float _641;
  float _642;
  float _645;
  float _646;
  float _647;
  float _681;
  float _683;
  float _687;
  float _689;
  float _691;
  float _693;
  float _700;
  float _705;
  float _707;
  float _709;
  float4 _718;
  float4 _728;
  float4 _738;
  float4 _781;
  bool _804;
  float _814;
  float _822;
  float _825;
  float4 _846;
  float _883;
  float _884;
  float _885;
  float _886;
  bool _889;
  float _902;
  float _903;
  float _904;
  float4 _915;
  float _961;
  float _963;
  float _969;
  float _1008;
  float _1009;
  float _1015;
  float _1017;
  float _1018;
  float4 _1020;
  float4 _1024;
  float _1034;
  float _1035;
  float _1036;
  float _1056;
  float _1060;
  float _1080;
  float _1082;
  bool _1085;
  bool _1086;
  bool _1087;
  bool _1088;
  int _1145;
  int _1168;
  float4 _1193;
  float _1206;
  float _1214;
  int _1218;
  float _1233;
  int _1247;
  float _1261;
  float4 _1277;
  float _1288;
  float4 _1289;
  float _1297;
  bool _1308;
  float _1311;
  float _1320;
  float _1321;
  float _1322;
  float _1334;
  float _1341;
  float _1342;
  float _1343;
  float _1352;
  float _1353;
  float4 _1369;
  float _1393;
  float _1397;
  float _1439;
  float _1440;
  float _1441;
  float _1480;
  float _1487;
  float _1488;
  float _1489;
  float4 _1497;
  float _1519;
  float _1520;
  float _1521;
  float _1529;
  float _1556;
  float _1557;
  float _1558;
  float4 _1564;
  float _1601;
  float _1602;
  float _1603;
  float _1622;
  float _31[3];
  float _32[3];
  float _33[4];
  float _34[4];
  float _35[4];
  float _36[4];
  float _37[4];
  _45 = t1.Load(int3((int)(uint((Globals_2208.x) * TEXCOORD.x)), (int)(uint((Globals_2208.y) * TEXCOORD.y)), 0));
  _69 = (TEXCOORD.x * 2.0f) + -1.0f;
  _71 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  _87 = mad((Globals_2144[2].w), _45.x, mad((Globals_2144[1].w), _71, ((Globals_2144[0].w) * _69))) + (Globals_2144[3].w);
  _88 = (mad((Globals_2144[2].x), _45.x, mad((Globals_2144[1].x), _71, ((Globals_2144[0].x) * _69))) + (Globals_2144[3].x)) / _87;
  _89 = (mad((Globals_2144[2].y), _45.x, mad((Globals_2144[1].y), _71, ((Globals_2144[0].y) * _69))) + (Globals_2144[3].y)) / _87;
  _90 = (mad((Globals_2144[2].z), _45.x, mad((Globals_2144[1].z), _71, ((Globals_2144[0].z) * _69))) + (Globals_2144[3].z)) / _87;
  _91 = ddy_coarse(_88);
  _92 = ddy_coarse(_89);
  _93 = ddy_coarse(_90);
  _94 = ddx_coarse(_88);
  _95 = ddx_coarse(_89);
  _96 = ddx_coarse(_90);
  _99 = (_95 * _93) - (_96 * _92);
  _102 = (_96 * _91) - (_94 * _93);
  _105 = (_94 * _92) - (_95 * _91);
  _107 = rsqrt(dot(float3(_99, _102, _105), float3(_99, _102, _105)));
  _122 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((Globals_992.z) * _45.x) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y);
  _136 = UberPostBaseCBuffer_544.w * _89;
  _142 = max(abs(_99 * _107), 9.999999747378752e-06f);
  _143 = max(abs(_102 * _107), 9.999999747378752e-06f);
  _144 = max(abs(_107 * _105), 9.999999747378752e-06f);
  _146 = rsqrt(dot(float3(_142, _143, _144), float3(_142, _143, _144)));
  _151 = _146 * ((_143 + _142) + _144);
  _159 = UberPostBaseCBuffer_560.x * (Globals_208[1].x);
  _160 = UberPostBaseCBuffer_560.y * (Globals_208[1].x);
  _165 = (_136 * UberPostBaseCBuffer_560.z) + _159;
  _166 = ((UberPostBaseCBuffer_544.w * _90) * UberPostBaseCBuffer_560.w) + _160;
  _167 = dot(float2(_165, _166), float2(0.3660254180431366f, 0.3660254180431366f));
  _170 = floor(_165 + _167);
  _171 = floor(_166 + _167);
  _174 = dot(float2(_170, _171), float2(0.21132487058639526f, 0.21132487058639526f));
  _175 = (_165 - _170) + _174;
  _176 = (_166 - _171) + _174;
  _177 = (_175 > _176);
  _178 = select(_177, 1.0f, 0.0f);
  _179 = select(_177, 0.0f, 1.0f);
  _182 = _175 + -0.5773502588272095f;
  _183 = _176 + -0.5773502588272095f;
  _184 = (_175 + 0.21132487058639526f) - _178;
  _185 = (_176 + 0.21132487058639526f) - _179;
  _192 = _170 - (floor(_170 * 0.0034602077212184668f) * 289.0f);
  _193 = _171 - (floor(_171 * 0.0034602077212184668f) * 289.0f);
  _194 = _193 + _179;
  _195 = _193 + 1.0f;
  _202 = ((_193 * 34.0f) + 1.0f) * _193;
  _203 = ((_194 * 34.0f) + 1.0f) * _194;
  _204 = ((_195 * 34.0f) + 1.0f) * _195;
  _215 = (_202 - (floor(_202 * 0.0034602077212184668f) * 289.0f)) + _192;
  _218 = ((_178 + _192) - (floor(_203 * 0.0034602077212184668f) * 289.0f)) + _203;
  _221 = ((_192 + 1.0f) - (floor(_204 * 0.0034602077212184668f) * 289.0f)) + _204;
  _228 = ((_215 * 34.0f) + 1.0f) * _215;
  _229 = ((_218 * 34.0f) + 1.0f) * _218;
  _230 = ((_221 * 34.0f) + 1.0f) * _221;
  _249 = max((0.5f - dot(float2(_175, _176), float2(_175, _176))), 0.0f);
  _250 = max((0.5f - dot(float2(_184, _185), float2(_184, _185))), 0.0f);
  _251 = max((0.5f - dot(float2(_182, _183), float2(_182, _183))), 0.0f);
  _252 = _249 * _249;
  _253 = _250 * _250;
  _254 = _251 * _251;
  _264 = frac((_228 - (floor(_228 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _265 = frac((_229 - (floor(_229 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _266 = frac((_230 - (floor(_230 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _267 = _264 + -1.0f;
  _268 = _265 + -1.0f;
  _269 = _266 + -1.0f;
  _273 = abs(_267) + -0.5f;
  _274 = abs(_268) + -0.5f;
  _275 = abs(_269) + -0.5f;
  _282 = _267 - floor(_264 + -0.5f);
  _283 = _268 - floor(_265 + -0.5f);
  _284 = _269 - floor(_266 + -0.5f);
  _318 = ((UberPostBaseCBuffer_544.w * _88) * UberPostBaseCBuffer_592.x) + _159;
  _319 = (_136 * UberPostBaseCBuffer_592.y) + _160;
  _320 = dot(float2(_318, _319), float2(0.3660254180431366f, 0.3660254180431366f));
  _323 = floor(_318 + _320);
  _324 = floor(_319 + _320);
  _327 = dot(float2(_323, _324), float2(0.21132487058639526f, 0.21132487058639526f));
  _328 = (_318 - _323) + _327;
  _329 = (_319 - _324) + _327;
  _330 = (_328 > _329);
  _331 = select(_330, 1.0f, 0.0f);
  _332 = select(_330, 0.0f, 1.0f);
  _335 = _328 + -0.5773502588272095f;
  _336 = _329 + -0.5773502588272095f;
  _337 = (_328 + 0.21132487058639526f) - _331;
  _338 = (_329 + 0.21132487058639526f) - _332;
  _345 = _323 - (floor(_323 * 0.0034602077212184668f) * 289.0f);
  _346 = _324 - (floor(_324 * 0.0034602077212184668f) * 289.0f);
  _347 = _346 + _332;
  _348 = _346 + 1.0f;
  _355 = ((_346 * 34.0f) + 1.0f) * _346;
  _356 = ((_347 * 34.0f) + 1.0f) * _347;
  _357 = ((_348 * 34.0f) + 1.0f) * _348;
  _368 = (_355 - (floor(_355 * 0.0034602077212184668f) * 289.0f)) + _345;
  _371 = ((_331 + _345) - (floor(_356 * 0.0034602077212184668f) * 289.0f)) + _356;
  _374 = ((_345 + 1.0f) - (floor(_357 * 0.0034602077212184668f) * 289.0f)) + _357;
  _381 = ((_368 * 34.0f) + 1.0f) * _368;
  _382 = ((_371 * 34.0f) + 1.0f) * _371;
  _383 = ((_374 * 34.0f) + 1.0f) * _374;
  _402 = max((0.5f - dot(float2(_328, _329), float2(_328, _329))), 0.0f);
  _403 = max((0.5f - dot(float2(_337, _338), float2(_337, _338))), 0.0f);
  _404 = max((0.5f - dot(float2(_335, _336), float2(_335, _336))), 0.0f);
  _405 = _402 * _402;
  _406 = _403 * _403;
  _407 = _404 * _404;
  _417 = frac((_381 - (floor(_381 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _418 = frac((_382 - (floor(_382 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _419 = frac((_383 - (floor(_383 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _420 = _417 + -1.0f;
  _421 = _418 + -1.0f;
  _422 = _419 + -1.0f;
  _426 = abs(_420) + -0.5f;
  _427 = abs(_421) + -0.5f;
  _428 = abs(_422) + -0.5f;
  _435 = _420 - floor(_417 + -0.5f);
  _436 = _421 - floor(_418 + -0.5f);
  _437 = _422 - floor(_419 + -0.5f);
  _474 = ((((_122 * _122) * 130.0f) * exp2(log2(1.0f - saturate(abs(_89 - UberPostBaseCBuffer_576.y) / UberPostBaseCBuffer_576.x)) * UberPostBaseCBuffer_576.z)) * UberPostBaseCBuffer_544.x) * ((dot(float3(((_405 * _405) * (1.7928428649902344f - (((_435 * _435) + (_426 * _426)) * 0.8537347316741943f))), ((_406 * _406) * (1.7928428649902344f - (((_436 * _436) + (_427 * _427)) * 0.8537347316741943f))), ((_407 * _407) * (1.7928428649902344f - (((_437 * _437) + (_428 * _428)) * 0.8537347316741943f)))), float3(((_435 * _328) + (_426 * _329)), ((_436 * _337) + (_427 * _338)), ((_437 * _335) + (_428 * _336)))) * ((_146 * _144) / _151)) + (dot(float3(((_252 * _252) * (1.7928428649902344f - (((_282 * _282) + (_273 * _273)) * 0.8537347316741943f))), ((_253 * _253) * (1.7928428649902344f - (((_283 * _283) + (_274 * _274)) * 0.8537347316741943f))), ((_254 * _254) * (1.7928428649902344f - (((_284 * _284) + (_275 * _275)) * 0.8537347316741943f)))), float3(((_282 * _175) + (_273 * _176)), ((_283 * _184) + (_274 * _185)), ((_284 * _182) + (_275 * _183)))) * ((_146 * _142) / _151)));
  _492 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((((float4)(t1.Load(int3((int)(uint((_474 + TEXCOORD.x) * (Globals_2208.x))), (int)(uint((_474 + TEXCOORD.y) * (Globals_2208.y))), 0)))).x) * (Globals_992.z)) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y) * _474;
  _493 = _492 + TEXCOORD.x;
  _494 = _492 + TEXCOORD.y;
  _502 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _503 = _493 * 2.0f;
  _504 = _494 * 2.0f;
  _505 = _503 + -1.0f;
  _506 = _504 + -1.0f;
  _516 = (Globals_080.z) + -1.0f;
  _518 = (_516 * (Globals_080.y)) + -1.0f;
  _520 = (_518 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _521 = _520 * _506;
  _522 = _505 * _505;
  _533 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_505)), (_520 * (1.0f - abs(_506)))), (1.0f - (sqrt((_521 * _521) + _522) * 0.7070000171661377f)));
  _543 = saturate((_533 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _549 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_543 * _543) * (3.0f - (_543 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _533), 0.0f, 1.0f));
  _555 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _549), _549) * UberPostScreenEffectsBaseCBuffer_016.z;
  _558 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _555, 0.0f) * _555;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _566 = ((_518 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _506;
    _568 = atan(_566 / _505);
    _571 = (_505 < 0.0f);
    _572 = (_505 == 0.0f);
    _573 = (_566 >= 0.0f);
    _574 = (_566 < 0.0f);
    _598 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _614 = t13.SampleBias(s8, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _502)) + (select(_598, select((_572 && _573), 2.0f, select((_572 && _574), -2.0f, (select((_571 && _574), (_568 + -3.1415927410125732f), select((_571 && _573), (_568 + 3.1415927410125732f), _568)) * 1.2732394933700562f))), _493) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _502)) + (select(_598, (sqrt((_566 * _566) + _522) * 0.6366197466850281f), ((((Globals_080.y) * (_494 + -0.5f)) * _516) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _623 = (_558 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _627 = (_623 * ((_614.x * 2.0f) + -1.0f));
    _628 = (_623 * ((_614.y * 2.0f) + -1.0f));
  } else {
    _627 = 0.0f;
    _628 = 0.0f;
  }
  _631 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_631) {
    _635 = t6.SampleBias(s2, float2(_493, _494), (Globals_976), int2(0, 0));
    _641 = (_635.x * 0.10000000149011612f) + _627;
    _642 = (_635.y * 0.10000000149011612f) + _628;
    _645 = UberPostBaseCBuffer_176.w * _635.z;
    _646 = _645 * _641;
    _647 = _645 * _642;
    _664 = (_641 + TEXCOORD.x);
    _665 = (_642 + TEXCOORD.y);
    _666 = ((_646 * UberPostBaseCBuffer_176.x) + _641);
    _667 = ((_647 * UberPostBaseCBuffer_176.x) + _642);
    _668 = ((_646 * UberPostBaseCBuffer_176.y) + _641);
    _669 = ((_647 * UberPostBaseCBuffer_176.y) + _642);
    _670 = ((_646 * UberPostBaseCBuffer_176.z) + _641);
    _671 = ((_647 * UberPostBaseCBuffer_176.z) + _642);
  } else {
    _664 = TEXCOORD.x;
    _665 = TEXCOORD.y;
    _666 = 0.0f;
    _667 = 0.0f;
    _668 = 0.0f;
    _669 = 0.0f;
    _670 = 0.0f;
    _671 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _681 = (_503 - UberPostBaseCBuffer_384.x) + -0.5f;
    _683 = (_504 - UberPostBaseCBuffer_384.y) + -0.5f;
    _687 = dot(float2(_681, _683), float2(_681, _683)) * -0.3333333432674408f;
    _689 = (_687 * _681) * UberPostBaseCBuffer_192.z;
    _691 = (_687 * _683) * UberPostBaseCBuffer_192.z;
    _693 = rsqrt(dot(float3(_689, _691, 9.999999747378752e-05f), float3(_689, _691, 9.999999747378752e-05f)));
    _700 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _705 = exp2(log2(sqrt((_689 * _689) + (_691 * _691)) / _700) * UberPostBaseCBuffer_384.z);
    _707 = ((_689 * _693) * _700) * _705;
    _709 = ((_691 * _693) * _700) * _705;
    _718 = t2.SampleBias(s0, float2(((_666 + _493) + (_707 * UberPostBaseCBuffer_400.w)), ((_667 + _494) + (_709 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _728 = t2.SampleBias(s0, float2(((_668 + _493) + (UberPostBaseCBuffer_416.w * _707)), ((_669 + _494) + (UberPostBaseCBuffer_416.w * _709))), (Globals_976), int2(0, 0));
    _738 = t2.SampleBias(s0, float2(((_670 + _493) + (UberPostBaseCBuffer_432.w * _707)), ((_671 + _494) + (UberPostBaseCBuffer_432.w * _709))), (Globals_976), int2(0, 0));
    _794 = (((float4)(t2.SampleBias(s0, float2(_664, _665), (Globals_976), int2(0, 0)))).w);
    _795 = (((UberPostBaseCBuffer_416.x * _728.y) + (UberPostBaseCBuffer_400.x * _718.x)) + (UberPostBaseCBuffer_432.x * _738.z));
    _796 = (((UberPostBaseCBuffer_416.y * _728.y) + (UberPostBaseCBuffer_400.y * _718.x)) + (UberPostBaseCBuffer_432.y * _738.z));
    _797 = (((UberPostBaseCBuffer_416.z * _728.y) + (UberPostBaseCBuffer_400.z * _718.x)) + (UberPostBaseCBuffer_432.z * _738.z));
  } else {
    if (_631) {
      _786 = (((float4)(t2.SampleBias(s0, float2((_666 + _493), (_667 + _494)), (Globals_976), int2(0, 0)))).x);
      _787 = (((float4)(t2.SampleBias(s0, float2((_668 + _493), (_669 + _494)), (Globals_976), int2(0, 0)))).y);
      _788 = (((float4)(t2.SampleBias(s0, float2((_670 + _493), (_671 + _494)), (Globals_976), int2(0, 0)))).z);
    } else {
      _781 = t2.SampleBias(s0, float2(_664, _665), (Globals_976), int2(0, 0));
      _786 = _781.x;
      _787 = _781.y;
      _788 = _781.z;
    }
    _794 = (((float4)(t2.SampleBias(s0, float2(_664, _665), (Globals_976), int2(0, 0)))).w);
    _795 = _786;
    _796 = _787;
    _797 = _788;
  }
  _804 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _804)) {
    _814 = fmod((((Globals_2208.y) * _665) * UberPostBaseCBuffer_448.x), 2.0f);
    _822 = (((select((_814 > 1.0f), (2.0f - _814), _814) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _664;
    _825 = (Globals_2208.w) * (Globals_2208.x);
    _846 = t7.SampleBias(s3, float2(_822, ((select(((frac((((_822 + abs(UberPostBaseCBuffer_464.y)) * _825) - (UberPostBaseCBuffer_464.y * _665)) / ((_825 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _665)), (Globals_976), int2(0, 0));
    _883 = ((((-0.699999988079071f - _846.x) + (exp2(log2(abs(_846.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_846.x < 0.30000001192092896f), 0.0f, 1.0f)) + _846.x) * UberPostBaseCBuffer_336.x;
    _884 = ((((-0.699999988079071f - _846.y) + (exp2(log2(abs(_846.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_846.y < 0.30000001192092896f), 0.0f, 1.0f)) + _846.y) * UberPostBaseCBuffer_336.x;
    _885 = ((((-0.699999988079071f - _846.z) + (exp2(log2(abs(_846.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_846.z < 0.30000001192092896f), 0.0f, 1.0f)) + _846.z) * UberPostBaseCBuffer_336.x;
    _886 = dot(float3(_795, _796, _797), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _889 = (UberPostBaseCBuffer_352.x > 0.5f);
    _902 = select(_889, ((((_883 * _886) - _883) * _794) + _883), _883);
    _903 = select(_889, ((((_884 * _886) - _884) * _794) + _884), _884);
    _904 = select(_889, ((((_885 * _886) - _885) * _794) + _885), _885);
    if (_804) {
      _915 = t8.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _664) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _665) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _929 = (((_915.x * _883) * UberPostBaseCBuffer_336.y) + _902);
      _930 = (((_915.y * _884) * UberPostBaseCBuffer_336.y) + _903);
      _931 = (((_915.z * _885) * UberPostBaseCBuffer_336.y) + _904);
    } else {
      _929 = _902;
      _930 = _903;
      _931 = _904;
    }
    _941 = (_929 + _795);
    _942 = (_930 + _796);
    _943 = (_931 + _797);
    _944 = saturate((((_930 + _929) + _931) * 0.33329999446868896f) + _794);
  } else {
    _941 = _795;
    _942 = _796;
    _943 = _797;
    _944 = _794;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _961 = abs(_665 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _963 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_664 - UberPostBaseCBuffer_112.x);
    _969 = exp2(log2(saturate(1.0f - dot(float2(_963, _961), float2(_963, _961)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _983 = (((_969 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _941);
    _984 = (((_969 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _942);
    _985 = (((_969 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _943);
  } else {
    _983 = _941;
    _984 = _942;
    _985 = _943;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_983, _984, _985);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t4, s0, UberPostBaseCBuffer_000.xyz);
    _1034 = tonemapped.x;
    _1035 = tonemapped.y;
    _1036 = tonemapped.z;
  } else {
    _1008 = saturate((log2((_985 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _1009 = floor(_1008);
    _1015 = ((saturate((log2((_984 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _1017 = (_1009 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_983 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _1018 = _1008 - _1009;
    _1020 = t4.SampleLevel(s0, float2((_1017 + UberPostBaseCBuffer_000.y), _1015), 0.0f);
    _1024 = t4.SampleLevel(s0, float2(_1017, _1015), 0.0f);
    _1034 = ((_1020.x - _1024.x) * _1018) + _1024.x;
    _1035 = ((_1020.y - _1024.y) * _1018) + _1024.y;
    _1036 = ((_1020.z - _1024.z) * _1018) + _1024.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _1056 = ((((float4)(t3.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * _493) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * _494) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _1060 = 1.0f - (sqrt(dot(float3(_1034, _1035, _1036), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _1074 = ((((UberPostBaseCBuffer_208.x * _1034) * _1056) * _1060) + _1034);
    _1075 = ((((UberPostBaseCBuffer_208.x * _1035) * _1056) * _1060) + _1035);
    _1076 = ((((UberPostBaseCBuffer_208.x * _1036) * _1056) * _1060) + _1036);
  } else {
    _1074 = _1034;
    _1075 = _1035;
    _1076 = _1036;
  }
  _1080 = ((_518 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _506;
  _1082 = atan(_1080 / _505);
  _1085 = (_505 < 0.0f);
  _1086 = (_505 == 0.0f);
  _1087 = (_1080 >= 0.0f);
  _1088 = (_1080 < 0.0f);
  _31[0] = ((((Globals_2208.x) * (_493 + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _32[0] = _494;
  _31[1] = select((_1086 && _1087), 2.0f, select((_1086 && _1088), -2.0f, (select((_1085 && _1088), (_1082 + -3.1415927410125732f), select((_1085 && _1087), (_1082 + 3.1415927410125732f), _1082)) * 1.2732394933700562f)));
  _32[1] = (sqrt((_1080 * _1080) + (_505 * _505)) * 0.5f);
  _31[2] = _493;
  _32[2] = _494;
  _1145 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _1168 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _1193 = t12.SampleBias(s7, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _627) + (UberPostScreenEffectsBaseCBuffer_176.x * _502)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_31[min((uint)(_1168), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _628) + (UberPostScreenEffectsBaseCBuffer_176.y * _502)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_32[min((uint)(_1168), 2u)])))), (Globals_976), int2(0, 0));
  _37[0] = _1193.x;
  _37[1] = _1193.y;
  _37[2] = _1193.z;
  _37[3] = _1193.w;
  _1206 = ((_37[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _1214 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _1218 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _1233 = UberPostScreenEffectsBaseCBuffer_208.y * _1206;
  _1247 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1261 = UberPostScreenEffectsBaseCBuffer_208.z * _1206;
  _1277 = t11.SampleBias(s6, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _627) + (UberPostScreenEffectsBaseCBuffer_160.z * _502)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_31[min((uint)(_1247), 2u)]))) + _1261), (((((UberPostScreenEffectsRandomCBuffer_000.y + _628) + (UberPostScreenEffectsBaseCBuffer_160.w * _502)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_32[min((uint)(_1247), 2u)]))) + _1261)), (Globals_976), int2(0, 0));
  _36[0] = _1277.x;
  _36[1] = _1277.y;
  _36[2] = _1277.z;
  _36[3] = _1277.w;
  _1288 = _36[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1289 = t9.SampleBias(s4, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _502) + _627) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_31[min((uint)(_1218), 2u)]) * _1214) * UberPostScreenEffectsBaseCBuffer_032.x)) + _1233), (((((UberPostScreenEffectsBaseCBuffer_096.y * _502) + _628) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_32[min((uint)(_1218), 2u)]) * _1214) * UberPostScreenEffectsBaseCBuffer_032.y)) + _1233)), (Globals_976), int2(0, 0));
  _1297 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1288, 1.0f);
  _35[0] = _1289.x;
  _35[1] = _1289.y;
  _35[2] = _1289.z;
  _35[3] = _1289.w;
  _1308 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1311 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1297);
  _1320 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1321 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1322 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1334 = saturate((_1297 * (_35[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1341 = select(_1308, (((_1320 * _1311) + UberPostScreenEffectsBaseCBuffer_064.x) * _1289.x), ((_1320 * _1334) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1342 = select(_1308, (((_1321 * _1311) + UberPostScreenEffectsBaseCBuffer_064.y) * _1289.y), ((_1321 * _1334) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1343 = select(_1308, (((_1322 * _1311) + UberPostScreenEffectsBaseCBuffer_064.z) * _1289.z), ((_1322 * _1334) + UberPostScreenEffectsBaseCBuffer_064.z));
  _34[0] = _1289.x;
  _34[1] = _1289.y;
  _34[2] = _1289.z;
  _34[3] = _1289.w;
  _1352 = _34[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1353 = _1352 * _1288;
  _1369 = t10.SampleBias(s5, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _502) + _627) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_31[min((uint)(_1145), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _502) + _628) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_32[min((uint)(_1145), 2u)])))), (Globals_976), int2(0, 0));
  _33[0] = _1369.x;
  _33[1] = _1369.y;
  _33[2] = _1369.z;
  _33[3] = _1369.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1391 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1352));
  } else {
    _1391 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1353 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1353 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1393 = ((_33[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1391) * _558;
  _1397 = select((_1393 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1393;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1473 = ((_1397 * (_1341 - _1074)) + _1074);
    _1474 = ((_1397 * (_1342 - _1075)) + _1075);
    _1475 = ((_1397 * (_1343 - _1076)) + _1076);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1473 = ((_1397 * _1341) + _1074);
      _1474 = ((_1397 * _1342) + _1075);
      _1475 = ((_1397 * _1343) + _1076);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1473 = (((_1397 * (_1341 + -1.0f)) + 1.0f) * _1074);
        _1474 = (((_1397 * (_1342 + -1.0f)) + 1.0f) * _1075);
        _1475 = (((_1397 * (_1343 + -1.0f)) + 1.0f) * _1076);
      } else {
        _1439 = _1397 * (_1341 + -0.5f);
        _1440 = _1397 * (_1342 + -0.5f);
        _1441 = _1397 * (_1343 + -0.5f);
        _1473 = select((_1074 < 0.5f), ((_1074 * 2.0f) * (_1439 + 0.5f)), (1.0f - (((1.0f - _1074) * 2.0f) * (0.5f - _1439))));
        _1474 = select((_1075 < 0.5f), ((_1075 * 2.0f) * (_1440 + 0.5f)), (1.0f - (((1.0f - _1075) * 2.0f) * (0.5f - _1440))));
        _1475 = select((_1076 < 0.5f), ((_1076 * 2.0f) * (_1441 + 0.5f)), (1.0f - (((1.0f - _1076) * 2.0f) * (0.5f - _1441))));
      }
    }
  }
  _1480 = ((_1474 + _1473) + _1475) * 0.3333333432674408f;
  _1487 = ((_1473 - _1480) * UberPostFXColorCorrectionCBuffer_000.w) + _1480;
  _1488 = ((_1474 - _1480) * UberPostFXColorCorrectionCBuffer_000.w) + _1480;
  _1489 = ((_1475 - _1480) * UberPostFXColorCorrectionCBuffer_000.w) + _1480;
  if ((Globals_816[3].w) > 0.5f) {
    _1497 = t0.SampleBias(s0, float2(dot(float3(_1487, _1488, _1489), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _1502 = _1497.x;
    _1503 = _1497.y;
    _1504 = _1497.z;
  } else {
    _1502 = _1487;
    _1503 = _1488;
    _1504 = _1489;
  }
  _1519 = (((1.0f - _1502) - saturate(_1502)) * UberPostFXColorCorrectionCBuffer_016.w) + _1502;
  _1520 = (((1.0f - _1503) - saturate(_1503)) * UberPostFXColorCorrectionCBuffer_016.w) + _1503;
  _1521 = (((1.0f - _1504) - saturate(_1504)) * UberPostFXColorCorrectionCBuffer_016.w) + _1504;
  _1529 = saturate((saturate(dot(float3(_1519, _1520, _1521), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _1556 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _1519) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1529)) * UberPostFXColorCorrectionCBuffer_032.x) + _1519);
  // _1557 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _1520) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1529)) * UberPostFXColorCorrectionCBuffer_032.x) + _1520);
  // _1558 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _1521) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1529)) * UberPostFXColorCorrectionCBuffer_032.x) + _1521);
  _1556 = ((((UberPostFXColorCorrectionCBuffer_000.x - _1519) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1529)) * UberPostFXColorCorrectionCBuffer_032.x) + _1519);
  _1557 = ((((UberPostFXColorCorrectionCBuffer_000.y - _1520) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1529)) * UberPostFXColorCorrectionCBuffer_032.x) + _1520);
  _1558 = ((((UberPostFXColorCorrectionCBuffer_000.z - _1521) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1529)) * UberPostFXColorCorrectionCBuffer_032.x) + _1521);

  // HDR FX Mask Blend
  float3 result = float3(_1556, _1557, _1558);
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
  _1633 = result.x;
  _1634 = result.y;
  _1635 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _1564 = t5.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _1633 = min((_1564.x + _1556), 1.0f);
        _1634 = min((_1564.x + _1557), 1.0f);
        _1635 = min((_1564.x + _1558), 1.0f);
      } else {
        _1601 = select((_1556 > 0.5f), 0.0f, 1.0f);
        _1602 = select((_1557 > 0.5f), 0.0f, 1.0f);
        _1603 = select((_1558 > 0.5f), 0.0f, 1.0f);
        _1622 = 1.0f - _1564.x;
        _1633 = (((((1.0f - (((1.0f - _1556) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _1601)) + (((_1556 * 2.0f) * _1601) * UberPostFXColorCorrectionCBuffer_048.x)) * _1564.x) + (_1622 * _1556));
        _1634 = (((((1.0f - (((1.0f - _1557) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _1602)) + (((_1557 * 2.0f) * _1602) * UberPostFXColorCorrectionCBuffer_048.y)) * _1564.x) + (_1622 * _1557));
        _1635 = (((((1.0f - (((1.0f - _1558) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1603)) + (((_1558 * 2.0f) * _1603) * UberPostFXColorCorrectionCBuffer_048.z)) * _1564.x) + (_1622 * _1558));
      }
  } else {
    _1633 = _1556;
    _1634 = _1557;
    _1635 = _1558;
  }
  */

  SV_Target.x = _1633;
  SV_Target.y = _1634;
  SV_Target.z = _1635;
  SV_Target.w = _944;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
