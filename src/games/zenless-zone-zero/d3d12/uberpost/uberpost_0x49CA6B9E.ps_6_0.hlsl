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

Texture2D<float4> t14 : register(t14);

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

SamplerState s9 : register(s9);

SamplerState s10 : register(s10);

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
  float4 _51;
  float _75;
  float _77;
  float _93;
  float _94;
  float _95;
  float _96;
  float _97;
  float _98;
  float _99;
  float _100;
  float _101;
  float _102;
  float _105;
  float _108;
  float _111;
  float _113;
  float _128;
  float _142;
  float _148;
  float _149;
  float _150;
  float _152;
  float _157;
  float _165;
  float _166;
  float _171;
  float _172;
  float _173;
  float _176;
  float _177;
  float _180;
  float _181;
  float _182;
  bool _183;
  float _184;
  float _185;
  float _188;
  float _189;
  float _190;
  float _191;
  float _198;
  float _199;
  float _200;
  float _201;
  float _208;
  float _209;
  float _210;
  float _221;
  float _224;
  float _227;
  float _234;
  float _235;
  float _236;
  float _255;
  float _256;
  float _257;
  float _258;
  float _259;
  float _260;
  float _270;
  float _271;
  float _272;
  float _273;
  float _274;
  float _275;
  float _279;
  float _280;
  float _281;
  float _288;
  float _289;
  float _290;
  float _324;
  float _325;
  float _326;
  float _329;
  float _330;
  float _333;
  float _334;
  float _335;
  bool _336;
  float _337;
  float _338;
  float _341;
  float _342;
  float _343;
  float _344;
  float _351;
  float _352;
  float _353;
  float _354;
  float _361;
  float _362;
  float _363;
  float _374;
  float _377;
  float _380;
  float _387;
  float _388;
  float _389;
  float _408;
  float _409;
  float _410;
  float _411;
  float _412;
  float _413;
  float _423;
  float _424;
  float _425;
  float _426;
  float _427;
  float _428;
  float _432;
  float _433;
  float _434;
  float _441;
  float _442;
  float _443;
  float _480;
  float _498;
  float _499;
  float _500;
  float _508;
  float _509;
  float _510;
  float _511;
  float _512;
  float _522;
  float _524;
  float _526;
  float _527;
  float _528;
  float _539;
  float _549;
  float _555;
  float _561;
  float _564;
  float _633;
  float _634;
  float _670;
  float _671;
  float _672;
  float _673;
  float _674;
  float _675;
  float _676;
  float _677;
  float _776;
  float _777;
  float _778;
  float _807;
  float _808;
  float _809;
  float _916;
  float _917;
  float _918;
  float _1104;
  float _1105;
  float _1106;
  float _1116;
  float _1117;
  float _1118;
  float _1119;
  float _1158;
  float _1159;
  float _1160;
  float _1247;
  float _1248;
  float _1249;
  float _1571;
  float _1653;
  float _1654;
  float _1655;
  float _572;
  float _574;
  bool _577;
  bool _578;
  bool _579;
  bool _580;
  bool _604;
  float4 _620;
  float _629;
  float4 _641;
  float _647;
  float _648;
  float _651;
  float _652;
  float _653;
  float _680;
  float _689;
  float _699;
  float _702;
  float _703;
  float _710;
  float _711;
  float _712;
  float _714;
  float _716;
  float _718;
  float _727;
  float _740;
  float _747;
  float _754;
  float _755;
  float _756;
  float4 _770;
  float4 _801;
  float _815;
  float _816;
  float _819;
  float _820;
  float _823;
  float _824;
  float4 _825;
  float _831;
  float _833;
  float _837;
  float _839;
  float _841;
  float _843;
  float _850;
  float _855;
  float _857;
  float _859;
  float4 _866;
  float4 _874;
  float4 _882;
  float4 _931;
  float _943;
  float _944;
  float _957;
  float _962;
  float _972;
  float _973;
  float _974;
  bool _981;
  float _991;
  float _999;
  float _1002;
  float4 _1021;
  float _1058;
  float _1059;
  float _1060;
  float _1061;
  bool _1064;
  float _1077;
  float _1078;
  float _1079;
  float4 _1090;
  float _1136;
  float _1138;
  float _1144;
  float _1183;
  float _1184;
  float _1190;
  float _1192;
  float _1193;
  float4 _1195;
  float4 _1199;
  float _1209;
  float _1210;
  float _1211;
  float _1229;
  float _1233;
  float _1260;
  float _1262;
  bool _1265;
  bool _1266;
  bool _1267;
  bool _1268;
  int _1325;
  int _1348;
  float4 _1373;
  float _1386;
  float _1394;
  int _1398;
  float _1413;
  int _1427;
  float _1441;
  float4 _1457;
  float _1468;
  float4 _1469;
  float _1477;
  bool _1488;
  float _1491;
  float _1500;
  float _1501;
  float _1502;
  float _1514;
  float _1521;
  float _1522;
  float _1523;
  float _1532;
  float _1533;
  float4 _1549;
  float _1573;
  float _1577;
  float _1619;
  float _1620;
  float _1621;
  float _33[3];
  float _34[3];
  float _35[4];
  float _36[4];
  float _37[4];
  float _38[4];
  float _39[4];
  _51 = t0.Load(int3((int)(uint((Globals_2208.x) * TEXCOORD.x)), (int)(uint((Globals_2208.y) * TEXCOORD.y)), 0));
  _75 = (TEXCOORD.x * 2.0f) + -1.0f;
  _77 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  _93 = mad((Globals_2144[2].w), _51.x, mad((Globals_2144[1].w), _77, ((Globals_2144[0].w) * _75))) + (Globals_2144[3].w);
  _94 = (mad((Globals_2144[2].x), _51.x, mad((Globals_2144[1].x), _77, ((Globals_2144[0].x) * _75))) + (Globals_2144[3].x)) / _93;
  _95 = (mad((Globals_2144[2].y), _51.x, mad((Globals_2144[1].y), _77, ((Globals_2144[0].y) * _75))) + (Globals_2144[3].y)) / _93;
  _96 = (mad((Globals_2144[2].z), _51.x, mad((Globals_2144[1].z), _77, ((Globals_2144[0].z) * _75))) + (Globals_2144[3].z)) / _93;
  _97 = ddy_coarse(_94);
  _98 = ddy_coarse(_95);
  _99 = ddy_coarse(_96);
  _100 = ddx_coarse(_94);
  _101 = ddx_coarse(_95);
  _102 = ddx_coarse(_96);
  _105 = (_101 * _99) - (_102 * _98);
  _108 = (_102 * _97) - (_100 * _99);
  _111 = (_100 * _98) - (_101 * _97);
  _113 = rsqrt(dot(float3(_105, _108, _111), float3(_105, _108, _111)));
  _128 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((Globals_992.z) * _51.x) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y);
  _142 = UberPostBaseCBuffer_544.w * _95;
  _148 = max(abs(_105 * _113), 9.999999747378752e-06f);
  _149 = max(abs(_108 * _113), 9.999999747378752e-06f);
  _150 = max(abs(_113 * _111), 9.999999747378752e-06f);
  _152 = rsqrt(dot(float3(_148, _149, _150), float3(_148, _149, _150)));
  _157 = _152 * ((_149 + _148) + _150);
  _165 = UberPostBaseCBuffer_560.x * (Globals_208[1].x);
  _166 = UberPostBaseCBuffer_560.y * (Globals_208[1].x);
  _171 = (_142 * UberPostBaseCBuffer_560.z) + _165;
  _172 = ((UberPostBaseCBuffer_544.w * _96) * UberPostBaseCBuffer_560.w) + _166;
  _173 = dot(float2(_171, _172), float2(0.3660254180431366f, 0.3660254180431366f));
  _176 = floor(_171 + _173);
  _177 = floor(_172 + _173);
  _180 = dot(float2(_176, _177), float2(0.21132487058639526f, 0.21132487058639526f));
  _181 = (_171 - _176) + _180;
  _182 = (_172 - _177) + _180;
  _183 = (_181 > _182);
  _184 = select(_183, 1.0f, 0.0f);
  _185 = select(_183, 0.0f, 1.0f);
  _188 = _181 + -0.5773502588272095f;
  _189 = _182 + -0.5773502588272095f;
  _190 = (_181 + 0.21132487058639526f) - _184;
  _191 = (_182 + 0.21132487058639526f) - _185;
  _198 = _176 - (floor(_176 * 0.0034602077212184668f) * 289.0f);
  _199 = _177 - (floor(_177 * 0.0034602077212184668f) * 289.0f);
  _200 = _199 + _185;
  _201 = _199 + 1.0f;
  _208 = ((_199 * 34.0f) + 1.0f) * _199;
  _209 = ((_200 * 34.0f) + 1.0f) * _200;
  _210 = ((_201 * 34.0f) + 1.0f) * _201;
  _221 = (_208 - (floor(_208 * 0.0034602077212184668f) * 289.0f)) + _198;
  _224 = ((_184 + _198) - (floor(_209 * 0.0034602077212184668f) * 289.0f)) + _209;
  _227 = ((_198 + 1.0f) - (floor(_210 * 0.0034602077212184668f) * 289.0f)) + _210;
  _234 = ((_221 * 34.0f) + 1.0f) * _221;
  _235 = ((_224 * 34.0f) + 1.0f) * _224;
  _236 = ((_227 * 34.0f) + 1.0f) * _227;
  _255 = max((0.5f - dot(float2(_181, _182), float2(_181, _182))), 0.0f);
  _256 = max((0.5f - dot(float2(_190, _191), float2(_190, _191))), 0.0f);
  _257 = max((0.5f - dot(float2(_188, _189), float2(_188, _189))), 0.0f);
  _258 = _255 * _255;
  _259 = _256 * _256;
  _260 = _257 * _257;
  _270 = frac((_234 - (floor(_234 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _271 = frac((_235 - (floor(_235 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _272 = frac((_236 - (floor(_236 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _273 = _270 + -1.0f;
  _274 = _271 + -1.0f;
  _275 = _272 + -1.0f;
  _279 = abs(_273) + -0.5f;
  _280 = abs(_274) + -0.5f;
  _281 = abs(_275) + -0.5f;
  _288 = _273 - floor(_270 + -0.5f);
  _289 = _274 - floor(_271 + -0.5f);
  _290 = _275 - floor(_272 + -0.5f);
  _324 = ((UberPostBaseCBuffer_544.w * _94) * UberPostBaseCBuffer_592.x) + _165;
  _325 = (_142 * UberPostBaseCBuffer_592.y) + _166;
  _326 = dot(float2(_324, _325), float2(0.3660254180431366f, 0.3660254180431366f));
  _329 = floor(_324 + _326);
  _330 = floor(_325 + _326);
  _333 = dot(float2(_329, _330), float2(0.21132487058639526f, 0.21132487058639526f));
  _334 = (_324 - _329) + _333;
  _335 = (_325 - _330) + _333;
  _336 = (_334 > _335);
  _337 = select(_336, 1.0f, 0.0f);
  _338 = select(_336, 0.0f, 1.0f);
  _341 = _334 + -0.5773502588272095f;
  _342 = _335 + -0.5773502588272095f;
  _343 = (_334 + 0.21132487058639526f) - _337;
  _344 = (_335 + 0.21132487058639526f) - _338;
  _351 = _329 - (floor(_329 * 0.0034602077212184668f) * 289.0f);
  _352 = _330 - (floor(_330 * 0.0034602077212184668f) * 289.0f);
  _353 = _352 + _338;
  _354 = _352 + 1.0f;
  _361 = ((_352 * 34.0f) + 1.0f) * _352;
  _362 = ((_353 * 34.0f) + 1.0f) * _353;
  _363 = ((_354 * 34.0f) + 1.0f) * _354;
  _374 = (_361 - (floor(_361 * 0.0034602077212184668f) * 289.0f)) + _351;
  _377 = ((_337 + _351) - (floor(_362 * 0.0034602077212184668f) * 289.0f)) + _362;
  _380 = ((_351 + 1.0f) - (floor(_363 * 0.0034602077212184668f) * 289.0f)) + _363;
  _387 = ((_374 * 34.0f) + 1.0f) * _374;
  _388 = ((_377 * 34.0f) + 1.0f) * _377;
  _389 = ((_380 * 34.0f) + 1.0f) * _380;
  _408 = max((0.5f - dot(float2(_334, _335), float2(_334, _335))), 0.0f);
  _409 = max((0.5f - dot(float2(_343, _344), float2(_343, _344))), 0.0f);
  _410 = max((0.5f - dot(float2(_341, _342), float2(_341, _342))), 0.0f);
  _411 = _408 * _408;
  _412 = _409 * _409;
  _413 = _410 * _410;
  _423 = frac((_387 - (floor(_387 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _424 = frac((_388 - (floor(_388 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _425 = frac((_389 - (floor(_389 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _426 = _423 + -1.0f;
  _427 = _424 + -1.0f;
  _428 = _425 + -1.0f;
  _432 = abs(_426) + -0.5f;
  _433 = abs(_427) + -0.5f;
  _434 = abs(_428) + -0.5f;
  _441 = _426 - floor(_423 + -0.5f);
  _442 = _427 - floor(_424 + -0.5f);
  _443 = _428 - floor(_425 + -0.5f);
  _480 = ((((_128 * _128) * 130.0f) * exp2(log2(1.0f - saturate(abs(_95 - UberPostBaseCBuffer_576.y) / UberPostBaseCBuffer_576.x)) * UberPostBaseCBuffer_576.z)) * UberPostBaseCBuffer_544.x) * ((dot(float3(((_411 * _411) * (1.7928428649902344f - (((_441 * _441) + (_432 * _432)) * 0.8537347316741943f))), ((_412 * _412) * (1.7928428649902344f - (((_442 * _442) + (_433 * _433)) * 0.8537347316741943f))), ((_413 * _413) * (1.7928428649902344f - (((_443 * _443) + (_434 * _434)) * 0.8537347316741943f)))), float3(((_441 * _334) + (_432 * _335)), ((_442 * _343) + (_433 * _344)), ((_443 * _341) + (_434 * _342)))) * ((_152 * _150) / _157)) + (dot(float3(((_258 * _258) * (1.7928428649902344f - (((_288 * _288) + (_279 * _279)) * 0.8537347316741943f))), ((_259 * _259) * (1.7928428649902344f - (((_289 * _289) + (_280 * _280)) * 0.8537347316741943f))), ((_260 * _260) * (1.7928428649902344f - (((_290 * _290) + (_281 * _281)) * 0.8537347316741943f)))), float3(((_288 * _181) + (_279 * _182)), ((_289 * _190) + (_280 * _191)), ((_290 * _188) + (_281 * _189)))) * ((_152 * _148) / _157)));
  _498 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((((float4)(t0.Load(int3((int)(uint((_480 + TEXCOORD.x) * (Globals_2208.x))), (int)(uint((_480 + TEXCOORD.y) * (Globals_2208.y))), 0)))).x) * (Globals_992.z)) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y) * _480;
  _499 = _498 + TEXCOORD.x;
  _500 = _498 + TEXCOORD.y;
  _508 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _509 = _499 * 2.0f;
  _510 = _500 * 2.0f;
  _511 = _509 + -1.0f;
  _512 = _510 + -1.0f;
  _522 = (Globals_080.z) + -1.0f;
  _524 = (_522 * (Globals_080.y)) + -1.0f;
  _526 = (_524 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _527 = _526 * _512;
  _528 = _511 * _511;
  _539 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_511)), (_526 * (1.0f - abs(_512)))), (1.0f - (sqrt((_527 * _527) + _528) * 0.7070000171661377f)));
  _549 = saturate((_539 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _555 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_549 * _549) * (3.0f - (_549 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _539), 0.0f, 1.0f));
  _561 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _555), _555) * UberPostScreenEffectsBaseCBuffer_016.z;
  _564 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _561, 0.0f) * _561;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _572 = ((_524 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _512;
    _574 = atan(_572 / _511);
    _577 = (_511 < 0.0f);
    _578 = (_511 == 0.0f);
    _579 = (_572 >= 0.0f);
    _580 = (_572 < 0.0f);
    _604 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _620 = t14.SampleBias(s10, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _508)) + (select(_604, select((_578 && _579), 2.0f, select((_578 && _580), -2.0f, (select((_577 && _580), (_574 + -3.1415927410125732f), select((_577 && _579), (_574 + 3.1415927410125732f), _574)) * 1.2732394933700562f))), _499) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _508)) + (select(_604, (sqrt((_572 * _572) + _528) * 0.6366197466850281f), ((((Globals_080.y) * (_500 + -0.5f)) * _522) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _629 = (_564 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _633 = (_629 * ((_620.x * 2.0f) + -1.0f));
    _634 = (_629 * ((_620.y * 2.0f) + -1.0f));
  } else {
    _633 = 0.0f;
    _634 = 0.0f;
  }
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _641 = t4.SampleBias(s2, float2(_499, _500), (Globals_976), int2(0, 0));
    _647 = (_641.x * 0.10000000149011612f) + _633;
    _648 = (_641.y * 0.10000000149011612f) + _634;
    _651 = UberPostBaseCBuffer_176.w * _641.z;
    _652 = _651 * _647;
    _653 = _651 * _648;
    _670 = (_647 + TEXCOORD.x);
    _671 = (_648 + TEXCOORD.y);
    _672 = ((_652 * UberPostBaseCBuffer_176.x) + _647);
    _673 = ((_653 * UberPostBaseCBuffer_176.x) + _648);
    _674 = ((_652 * UberPostBaseCBuffer_176.y) + _647);
    _675 = ((_653 * UberPostBaseCBuffer_176.y) + _648);
    _676 = ((_652 * UberPostBaseCBuffer_176.z) + _647);
    _677 = ((_653 * UberPostBaseCBuffer_176.z) + _648);
  } else {
    _670 = TEXCOORD.x;
    _671 = TEXCOORD.y;
    _672 = 0.0f;
    _673 = 0.0f;
    _674 = 0.0f;
    _675 = 0.0f;
    _676 = 0.0f;
    _677 = 0.0f;
  }
  _680 = frac(Globals_208[1].x);
  _689 = (((float4)(t5.SampleBias(s3, float2((_680 + (_499 * 5.0f)), (_680 + (_500 * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _699 = ((_689 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_689 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _702 = cos(UberPostBaseCBuffer_224.w);
  _703 = sin(UberPostBaseCBuffer_224.w);
  _710 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _699;
  _711 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _699;
  _712 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _699;
  _714 = _710 * _703;
  _716 = _711 * _703;
  _718 = _712 * _703;
  _727 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + _500);
  _740 = frac(_680 * 1234.0f);
  _747 = (((_740 * _740) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _740) + UberPostBaseCBuffer_256.x;
  _754 = select((_747 < (((float4)(t5.SampleBias(s3, float2(0.5f, (_727 + _714)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _755 = select((_747 < (((float4)(t5.SampleBias(s3, float2(0.5f, (_727 + _716)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _756 = select((_747 < (((float4)(t5.SampleBias(s3, float2(0.5f, (_727 + _718)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _770 = t6.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * _499) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * _500) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _776 = (_770.x * _754);
    _777 = (_770.x * _755);
    _778 = (_770.x * _756);
  } else {
    _776 = _754;
    _777 = _755;
    _778 = _756;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _801 = t6.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * _499) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * _500) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _807 = (_801.y * _776);
    _808 = (_801.y * _777);
    _809 = (_801.y * _778);
  } else {
    _807 = _776;
    _808 = _777;
    _809 = _778;
  }
  _815 = (_672 + _499) + (_710 * _702);
  _816 = (_673 + _500) + _714;
  _819 = (_674 + _499) + (_711 * _702);
  _820 = (_675 + _500) + _716;
  _823 = (_676 + _499) + (_712 * _702);
  _824 = (_677 + _500) + _718;
  _825 = t1.SampleBias(s0, float2(_670, _671), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _831 = (_509 - UberPostBaseCBuffer_384.x) + -0.5f;
    _833 = (_510 - UberPostBaseCBuffer_384.y) + -0.5f;
    _837 = dot(float2(_831, _833), float2(_831, _833)) * -0.3333333432674408f;
    _839 = (_837 * _831) * UberPostBaseCBuffer_192.z;
    _841 = (_837 * _833) * UberPostBaseCBuffer_192.z;
    _843 = rsqrt(dot(float3(_839, _841, 9.999999747378752e-05f), float3(_839, _841, 9.999999747378752e-05f)));
    _850 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _855 = exp2(log2(sqrt((_839 * _839) + (_841 * _841)) / _850) * UberPostBaseCBuffer_384.z);
    _857 = ((_839 * _843) * _850) * _855;
    _859 = ((_841 * _843) * _850) * _855;
    _866 = t1.SampleBias(s0, float2((_815 + (_857 * UberPostBaseCBuffer_400.w)), (_816 + (_859 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _874 = t1.SampleBias(s0, float2((_819 + (UberPostBaseCBuffer_416.w * _857)), (_820 + (UberPostBaseCBuffer_416.w * _859))), (Globals_976), int2(0, 0));
    _882 = t1.SampleBias(s0, float2((_823 + (UberPostBaseCBuffer_432.w * _857)), (_824 + (UberPostBaseCBuffer_432.w * _859))), (Globals_976), int2(0, 0));
    _916 = (((UberPostBaseCBuffer_416.x * _874.y) + (UberPostBaseCBuffer_400.x * _866.x)) + (UberPostBaseCBuffer_432.x * _882.z));
    _917 = (((UberPostBaseCBuffer_416.y * _874.y) + (UberPostBaseCBuffer_400.y * _866.x)) + (UberPostBaseCBuffer_432.y * _882.z));
    _918 = (((UberPostBaseCBuffer_416.z * _874.y) + (UberPostBaseCBuffer_400.z * _866.x)) + (UberPostBaseCBuffer_432.z * _882.z));
  } else {
    _916 = (((float4)(t1.SampleBias(s0, float2(_815, _816), (Globals_976), int2(0, 0)))).x);
    _917 = (((float4)(t1.SampleBias(s0, float2(_819, _820), (Globals_976), int2(0, 0)))).y);
    _918 = (((float4)(t1.SampleBias(s0, float2(_823, _824), (Globals_976), int2(0, 0)))).z);
  }
  _931 = t9.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * _499) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * _500) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _943 = frac((Globals_208[1].x) * 25.0f) - (1.0f - _500);
  _944 = 0.4000000059604645f - _943;
  _957 = (UberPostBaseCBuffer_368.w * max(((select((_944 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_943 + 0.05000000074505806f) * 10.0f) - _944)) + _944), 0.0f)) + 1.0f;
  _962 = 1.0f - UberPostBaseCBuffer_368.z;
  _972 = (((((_931.x * 12.0f) * _957) * _962) + UberPostBaseCBuffer_368.z) * _916) + _807;
  _973 = (((((_931.y * 12.0f) * _957) * _962) + UberPostBaseCBuffer_368.z) * _917) + _808;
  _974 = (((((_931.z * 12.0f) * _957) * _962) + UberPostBaseCBuffer_368.z) * _918) + _809;
  _981 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _981)) {
    _991 = fmod((((Globals_2208.y) * _671) * UberPostBaseCBuffer_448.x), 2.0f);
    _999 = (((select((_991 > 1.0f), (2.0f - _991), _991) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _670;
    _1002 = (Globals_2208.w) * (Globals_2208.x);
    _1021 = t7.SampleBias(s5, float2(_999, ((select(((frac((((_999 + abs(UberPostBaseCBuffer_464.y)) * _1002) - (UberPostBaseCBuffer_464.y * _671)) / ((_1002 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _671)), (Globals_976), int2(0, 0));
    _1058 = ((((-0.699999988079071f - _1021.x) + (exp2(log2(abs(_1021.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1021.x < 0.30000001192092896f), 0.0f, 1.0f)) + _1021.x) * UberPostBaseCBuffer_336.x;
    _1059 = ((((-0.699999988079071f - _1021.y) + (exp2(log2(abs(_1021.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1021.y < 0.30000001192092896f), 0.0f, 1.0f)) + _1021.y) * UberPostBaseCBuffer_336.x;
    _1060 = ((((-0.699999988079071f - _1021.z) + (exp2(log2(abs(_1021.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1021.z < 0.30000001192092896f), 0.0f, 1.0f)) + _1021.z) * UberPostBaseCBuffer_336.x;
    _1061 = dot(float3(_972, _973, _974), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _1064 = (UberPostBaseCBuffer_352.x > 0.5f);
    _1077 = select(_1064, ((((_1058 * _1061) - _1058) * _825.w) + _1058), _1058);
    _1078 = select(_1064, ((((_1059 * _1061) - _1059) * _825.w) + _1059), _1059);
    _1079 = select(_1064, ((((_1060 * _1061) - _1060) * _825.w) + _1060), _1060);
    if (_981) {
      _1090 = t8.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _670) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _671) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _1104 = (((_1090.x * _1058) * UberPostBaseCBuffer_336.y) + _1077);
      _1105 = (((_1090.y * _1059) * UberPostBaseCBuffer_336.y) + _1078);
      _1106 = (((_1090.z * _1060) * UberPostBaseCBuffer_336.y) + _1079);
    } else {
      _1104 = _1077;
      _1105 = _1078;
      _1106 = _1079;
    }
    _1116 = (_1104 + _972);
    _1117 = (_1105 + _973);
    _1118 = (_1106 + _974);
    _1119 = saturate((((_1105 + _1104) + _1106) * 0.33329999446868896f) + _825.w);
  } else {
    _1116 = _972;
    _1117 = _973;
    _1118 = _974;
    _1119 = _825.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _1136 = abs(_671 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _1138 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_670 - UberPostBaseCBuffer_112.x);
    _1144 = exp2(log2(saturate(1.0f - dot(float2(_1138, _1136), float2(_1138, _1136)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _1158 = (((_1144 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _1116);
    _1159 = (((_1144 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _1117);
    _1160 = (((_1144 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _1118);
  } else {
    _1158 = _1116;
    _1159 = _1117;
    _1160 = _1118;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_1158, _1159, _1160);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t3, s0, UberPostBaseCBuffer_000.xyz);
    _1209 = tonemapped.x;
    _1210 = tonemapped.y;
    _1211 = tonemapped.z;
  } else {
    _1183 = saturate((log2((_1160 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _1184 = floor(_1183);
    _1190 = ((saturate((log2((_1159 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _1192 = (_1184 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_1158 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _1193 = _1183 - _1184;
    _1195 = t3.SampleLevel(s0, float2((_1192 + UberPostBaseCBuffer_000.y), _1190), 0.0f);
    _1199 = t3.SampleLevel(s0, float2(_1192, _1190), 0.0f);
    _1209 = ((_1195.x - _1199.x) * _1193) + _1199.x;
    _1210 = ((_1195.y - _1199.y) * _1193) + _1199.y;
    _1211 = ((_1195.z - _1199.z) * _1193) + _1199.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _1229 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * _499) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * _500) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _1233 = 1.0f - (sqrt(dot(float3(_1209, _1210, _1211), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _1247 = ((((UberPostBaseCBuffer_208.x * _1209) * _1229) * _1233) + _1209);
    _1248 = ((((UberPostBaseCBuffer_208.x * _1210) * _1229) * _1233) + _1210);
    _1249 = ((((UberPostBaseCBuffer_208.x * _1211) * _1229) * _1233) + _1211);
  } else {
    _1247 = _1209;
    _1248 = _1210;
    _1249 = _1211;
  }
  _1260 = ((((((Globals_080.z) + -1.0f) * (Globals_080.y)) + -1.0f) * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _512;
  _1262 = atan(_1260 / _511);
  _1265 = (_511 < 0.0f);
  _1266 = (_511 == 0.0f);
  _1267 = (_1260 >= 0.0f);
  _1268 = (_1260 < 0.0f);
  _33[0] = ((((Globals_2208.x) * (_499 + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _34[0] = _500;
  _33[1] = select((_1266 && _1267), 2.0f, select((_1266 && _1268), -2.0f, (select((_1265 && _1268), (_1262 + -3.1415927410125732f), select((_1265 && _1267), (_1262 + 3.1415927410125732f), _1262)) * 1.2732394933700562f)));
  _34[1] = (sqrt((_1260 * _1260) + (_511 * _511)) * 0.5f);
  _33[2] = _499;
  _34[2] = _500;
  _1325 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _1348 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _1373 = t13.SampleBias(s9, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _633) + (UberPostScreenEffectsBaseCBuffer_176.x * _508)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_33[min((uint)(_1348), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _634) + (UberPostScreenEffectsBaseCBuffer_176.y * _508)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_34[min((uint)(_1348), 2u)])))), (Globals_976), int2(0, 0));
  _39[0] = _1373.x;
  _39[1] = _1373.y;
  _39[2] = _1373.z;
  _39[3] = _1373.w;
  _1386 = ((_39[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _1394 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _1398 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _1413 = UberPostScreenEffectsBaseCBuffer_208.y * _1386;
  _1427 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1441 = UberPostScreenEffectsBaseCBuffer_208.z * _1386;
  _1457 = t12.SampleBias(s8, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _633) + (UberPostScreenEffectsBaseCBuffer_160.z * _508)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_33[min((uint)(_1427), 2u)]))) + _1441), (((((UberPostScreenEffectsRandomCBuffer_000.y + _634) + (UberPostScreenEffectsBaseCBuffer_160.w * _508)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_34[min((uint)(_1427), 2u)]))) + _1441)), (Globals_976), int2(0, 0));
  _38[0] = _1457.x;
  _38[1] = _1457.y;
  _38[2] = _1457.z;
  _38[3] = _1457.w;
  _1468 = _38[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1469 = t10.SampleBias(s6, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _508) + _633) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_33[min((uint)(_1398), 2u)]) * _1394) * UberPostScreenEffectsBaseCBuffer_032.x)) + _1413), (((((UberPostScreenEffectsBaseCBuffer_096.y * _508) + _634) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_34[min((uint)(_1398), 2u)]) * _1394) * UberPostScreenEffectsBaseCBuffer_032.y)) + _1413)), (Globals_976), int2(0, 0));
  _1477 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1468, 1.0f);
  _37[0] = _1469.x;
  _37[1] = _1469.y;
  _37[2] = _1469.z;
  _37[3] = _1469.w;
  _1488 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1491 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1477);
  _1500 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1501 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1502 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1514 = saturate((_1477 * (_37[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1521 = select(_1488, (((_1500 * _1491) + UberPostScreenEffectsBaseCBuffer_064.x) * _1469.x), ((_1500 * _1514) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1522 = select(_1488, (((_1501 * _1491) + UberPostScreenEffectsBaseCBuffer_064.y) * _1469.y), ((_1501 * _1514) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1523 = select(_1488, (((_1502 * _1491) + UberPostScreenEffectsBaseCBuffer_064.z) * _1469.z), ((_1502 * _1514) + UberPostScreenEffectsBaseCBuffer_064.z));
  _36[0] = _1469.x;
  _36[1] = _1469.y;
  _36[2] = _1469.z;
  _36[3] = _1469.w;
  _1532 = _36[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1533 = _1532 * _1468;
  _1549 = t11.SampleBias(s7, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _508) + _633) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_33[min((uint)(_1325), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _508) + _634) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_34[min((uint)(_1325), 2u)])))), (Globals_976), int2(0, 0));
  _35[0] = _1549.x;
  _35[1] = _1549.y;
  _35[2] = _1549.z;
  _35[3] = _1549.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1571 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1532));
  } else {
    _1571 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1533 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1533 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1573 = ((_35[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1571) * _564;
  _1577 = select((_1573 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1573;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1653 = ((_1577 * (_1521 - _1247)) + _1247);
    _1654 = ((_1577 * (_1522 - _1248)) + _1248);
    _1655 = ((_1577 * (_1523 - _1249)) + _1249);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1653 = ((_1577 * _1521) + _1247);
      _1654 = ((_1577 * _1522) + _1248);
      _1655 = ((_1577 * _1523) + _1249);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1653 = (((_1577 * (_1521 + -1.0f)) + 1.0f) * _1247);
        _1654 = (((_1577 * (_1522 + -1.0f)) + 1.0f) * _1248);
        _1655 = (((_1577 * (_1523 + -1.0f)) + 1.0f) * _1249);
      } else {
        _1619 = _1577 * (_1521 + -0.5f);
        _1620 = _1577 * (_1522 + -0.5f);
        _1621 = _1577 * (_1523 + -0.5f);
        _1653 = select((_1247 < 0.5f), ((_1247 * 2.0f) * (_1619 + 0.5f)), (1.0f - (((1.0f - _1247) * 2.0f) * (0.5f - _1619))));
        _1654 = select((_1248 < 0.5f), ((_1248 * 2.0f) * (_1620 + 0.5f)), (1.0f - (((1.0f - _1248) * 2.0f) * (0.5f - _1620))));
        _1655 = select((_1249 < 0.5f), ((_1249 * 2.0f) * (_1621 + 0.5f)), (1.0f - (((1.0f - _1249) * 2.0f) * (0.5f - _1621))));
      }
    }
  }
  SV_Target.x = (_1653);
  SV_Target.y = (_1654);
  SV_Target.z = (_1655);
  SV_Target.w = _1119;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
