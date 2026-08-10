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

Texture2D<float4> t15 : register(t15);

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
  float4 _53;
  float _77;
  float _79;
  float _95;
  float _96;
  float _97;
  float _98;
  float _99;
  float _100;
  float _101;
  float _102;
  float _103;
  float _104;
  float _107;
  float _110;
  float _113;
  float _115;
  float _130;
  float _144;
  float _150;
  float _151;
  float _152;
  float _154;
  float _159;
  float _167;
  float _168;
  float _173;
  float _174;
  float _175;
  float _178;
  float _179;
  float _182;
  float _183;
  float _184;
  bool _185;
  float _186;
  float _187;
  float _190;
  float _191;
  float _192;
  float _193;
  float _200;
  float _201;
  float _202;
  float _203;
  float _210;
  float _211;
  float _212;
  float _223;
  float _226;
  float _229;
  float _236;
  float _237;
  float _238;
  float _257;
  float _258;
  float _259;
  float _260;
  float _261;
  float _262;
  float _272;
  float _273;
  float _274;
  float _275;
  float _276;
  float _277;
  float _281;
  float _282;
  float _283;
  float _290;
  float _291;
  float _292;
  float _326;
  float _327;
  float _328;
  float _331;
  float _332;
  float _335;
  float _336;
  float _337;
  bool _338;
  float _339;
  float _340;
  float _343;
  float _344;
  float _345;
  float _346;
  float _353;
  float _354;
  float _355;
  float _356;
  float _363;
  float _364;
  float _365;
  float _376;
  float _379;
  float _382;
  float _389;
  float _390;
  float _391;
  float _410;
  float _411;
  float _412;
  float _413;
  float _414;
  float _415;
  float _425;
  float _426;
  float _427;
  float _428;
  float _429;
  float _430;
  float _434;
  float _435;
  float _436;
  float _443;
  float _444;
  float _445;
  float _482;
  float _500;
  float _501;
  float _502;
  float _510;
  float _511;
  float _512;
  float _513;
  float _514;
  float _524;
  float _526;
  float _528;
  float _529;
  float _530;
  float _541;
  float _551;
  float _557;
  float _563;
  float _566;
  float _635;
  float _636;
  float _672;
  float _673;
  float _674;
  float _675;
  float _676;
  float _677;
  float _678;
  float _679;
  float _778;
  float _779;
  float _780;
  float _809;
  float _810;
  float _811;
  float _918;
  float _919;
  float _920;
  float _1106;
  float _1107;
  float _1108;
  float _1118;
  float _1119;
  float _1120;
  float _1121;
  float _1160;
  float _1161;
  float _1162;
  float _1198;
  float _1199;
  float _1200;
  float _1522;
  float _1604;
  float _1605;
  float _1606;
  float _1633;
  float _1634;
  float _1635;
  float _1764;
  float _1765;
  float _1766;
  float _574;
  float _576;
  bool _579;
  bool _580;
  bool _581;
  bool _582;
  bool _606;
  float4 _622;
  float _631;
  float4 _643;
  float _649;
  float _650;
  float _653;
  float _654;
  float _655;
  float _682;
  float _691;
  float _701;
  float _704;
  float _705;
  float _712;
  float _713;
  float _714;
  float _716;
  float _718;
  float _720;
  float _729;
  float _742;
  float _749;
  float _756;
  float _757;
  float _758;
  float4 _772;
  float4 _803;
  float _817;
  float _818;
  float _821;
  float _822;
  float _825;
  float _826;
  float4 _827;
  float _833;
  float _835;
  float _839;
  float _841;
  float _843;
  float _845;
  float _852;
  float _857;
  float _859;
  float _861;
  float4 _868;
  float4 _876;
  float4 _884;
  float4 _933;
  float _945;
  float _946;
  float _959;
  float _964;
  float _974;
  float _975;
  float _976;
  bool _983;
  float _993;
  float _1001;
  float _1004;
  float4 _1023;
  float _1060;
  float _1061;
  float _1062;
  float _1063;
  bool _1066;
  float _1079;
  float _1080;
  float _1081;
  float4 _1092;
  float _1138;
  float _1140;
  float _1146;
  float _1180;
  float _1184;
  float _1211;
  float _1213;
  bool _1216;
  bool _1217;
  bool _1218;
  bool _1219;
  int _1276;
  int _1299;
  float4 _1324;
  float _1337;
  float _1345;
  int _1349;
  float _1364;
  int _1378;
  float _1392;
  float4 _1408;
  float _1419;
  float4 _1420;
  float _1428;
  bool _1439;
  float _1442;
  float _1451;
  float _1452;
  float _1453;
  float _1465;
  float _1472;
  float _1473;
  float _1474;
  float _1483;
  float _1484;
  float4 _1500;
  float _1524;
  float _1528;
  float _1570;
  float _1571;
  float _1572;
  float _1611;
  float _1618;
  float _1619;
  float _1620;
  float4 _1628;
  float _1650;
  float _1651;
  float _1652;
  float _1660;
  float _1687;
  float _1688;
  float _1689;
  float4 _1695;
  float _1732;
  float _1733;
  float _1734;
  float _1753;
  float _35[3];
  float _36[3];
  float _37[4];
  float _38[4];
  float _39[4];
  float _40[4];
  float _41[4];
  _53 = t1.Load(int3((int)(uint((Globals_2208.x) * TEXCOORD.x)), (int)(uint((Globals_2208.y) * TEXCOORD.y)), 0));
  _77 = (TEXCOORD.x * 2.0f) + -1.0f;
  _79 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  _95 = mad((Globals_2144[2].w), _53.x, mad((Globals_2144[1].w), _79, ((Globals_2144[0].w) * _77))) + (Globals_2144[3].w);
  _96 = (mad((Globals_2144[2].x), _53.x, mad((Globals_2144[1].x), _79, ((Globals_2144[0].x) * _77))) + (Globals_2144[3].x)) / _95;
  _97 = (mad((Globals_2144[2].y), _53.x, mad((Globals_2144[1].y), _79, ((Globals_2144[0].y) * _77))) + (Globals_2144[3].y)) / _95;
  _98 = (mad((Globals_2144[2].z), _53.x, mad((Globals_2144[1].z), _79, ((Globals_2144[0].z) * _77))) + (Globals_2144[3].z)) / _95;
  _99 = ddy_coarse(_96);
  _100 = ddy_coarse(_97);
  _101 = ddy_coarse(_98);
  _102 = ddx_coarse(_96);
  _103 = ddx_coarse(_97);
  _104 = ddx_coarse(_98);
  _107 = (_103 * _101) - (_104 * _100);
  _110 = (_104 * _99) - (_102 * _101);
  _113 = (_102 * _100) - (_103 * _99);
  _115 = rsqrt(dot(float3(_107, _110, _113), float3(_107, _110, _113)));
  _130 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((Globals_992.z) * _53.x) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y);
  _144 = UberPostBaseCBuffer_544.w * _97;
  _150 = max(abs(_107 * _115), 9.999999747378752e-06f);
  _151 = max(abs(_110 * _115), 9.999999747378752e-06f);
  _152 = max(abs(_115 * _113), 9.999999747378752e-06f);
  _154 = rsqrt(dot(float3(_150, _151, _152), float3(_150, _151, _152)));
  _159 = _154 * ((_151 + _150) + _152);
  _167 = UberPostBaseCBuffer_560.x * (Globals_208[1].x);
  _168 = UberPostBaseCBuffer_560.y * (Globals_208[1].x);
  _173 = (_144 * UberPostBaseCBuffer_560.z) + _167;
  _174 = ((UberPostBaseCBuffer_544.w * _98) * UberPostBaseCBuffer_560.w) + _168;
  _175 = dot(float2(_173, _174), float2(0.3660254180431366f, 0.3660254180431366f));
  _178 = floor(_173 + _175);
  _179 = floor(_174 + _175);
  _182 = dot(float2(_178, _179), float2(0.21132487058639526f, 0.21132487058639526f));
  _183 = (_173 - _178) + _182;
  _184 = (_174 - _179) + _182;
  _185 = (_183 > _184);
  _186 = select(_185, 1.0f, 0.0f);
  _187 = select(_185, 0.0f, 1.0f);
  _190 = _183 + -0.5773502588272095f;
  _191 = _184 + -0.5773502588272095f;
  _192 = (_183 + 0.21132487058639526f) - _186;
  _193 = (_184 + 0.21132487058639526f) - _187;
  _200 = _178 - (floor(_178 * 0.0034602077212184668f) * 289.0f);
  _201 = _179 - (floor(_179 * 0.0034602077212184668f) * 289.0f);
  _202 = _201 + _187;
  _203 = _201 + 1.0f;
  _210 = ((_201 * 34.0f) + 1.0f) * _201;
  _211 = ((_202 * 34.0f) + 1.0f) * _202;
  _212 = ((_203 * 34.0f) + 1.0f) * _203;
  _223 = (_210 - (floor(_210 * 0.0034602077212184668f) * 289.0f)) + _200;
  _226 = ((_186 + _200) - (floor(_211 * 0.0034602077212184668f) * 289.0f)) + _211;
  _229 = ((_200 + 1.0f) - (floor(_212 * 0.0034602077212184668f) * 289.0f)) + _212;
  _236 = ((_223 * 34.0f) + 1.0f) * _223;
  _237 = ((_226 * 34.0f) + 1.0f) * _226;
  _238 = ((_229 * 34.0f) + 1.0f) * _229;
  _257 = max((0.5f - dot(float2(_183, _184), float2(_183, _184))), 0.0f);
  _258 = max((0.5f - dot(float2(_192, _193), float2(_192, _193))), 0.0f);
  _259 = max((0.5f - dot(float2(_190, _191), float2(_190, _191))), 0.0f);
  _260 = _257 * _257;
  _261 = _258 * _258;
  _262 = _259 * _259;
  _272 = frac((_236 - (floor(_236 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _273 = frac((_237 - (floor(_237 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _274 = frac((_238 - (floor(_238 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _275 = _272 + -1.0f;
  _276 = _273 + -1.0f;
  _277 = _274 + -1.0f;
  _281 = abs(_275) + -0.5f;
  _282 = abs(_276) + -0.5f;
  _283 = abs(_277) + -0.5f;
  _290 = _275 - floor(_272 + -0.5f);
  _291 = _276 - floor(_273 + -0.5f);
  _292 = _277 - floor(_274 + -0.5f);
  _326 = ((UberPostBaseCBuffer_544.w * _96) * UberPostBaseCBuffer_592.x) + _167;
  _327 = (_144 * UberPostBaseCBuffer_592.y) + _168;
  _328 = dot(float2(_326, _327), float2(0.3660254180431366f, 0.3660254180431366f));
  _331 = floor(_326 + _328);
  _332 = floor(_327 + _328);
  _335 = dot(float2(_331, _332), float2(0.21132487058639526f, 0.21132487058639526f));
  _336 = (_326 - _331) + _335;
  _337 = (_327 - _332) + _335;
  _338 = (_336 > _337);
  _339 = select(_338, 1.0f, 0.0f);
  _340 = select(_338, 0.0f, 1.0f);
  _343 = _336 + -0.5773502588272095f;
  _344 = _337 + -0.5773502588272095f;
  _345 = (_336 + 0.21132487058639526f) - _339;
  _346 = (_337 + 0.21132487058639526f) - _340;
  _353 = _331 - (floor(_331 * 0.0034602077212184668f) * 289.0f);
  _354 = _332 - (floor(_332 * 0.0034602077212184668f) * 289.0f);
  _355 = _354 + _340;
  _356 = _354 + 1.0f;
  _363 = ((_354 * 34.0f) + 1.0f) * _354;
  _364 = ((_355 * 34.0f) + 1.0f) * _355;
  _365 = ((_356 * 34.0f) + 1.0f) * _356;
  _376 = (_363 - (floor(_363 * 0.0034602077212184668f) * 289.0f)) + _353;
  _379 = ((_339 + _353) - (floor(_364 * 0.0034602077212184668f) * 289.0f)) + _364;
  _382 = ((_353 + 1.0f) - (floor(_365 * 0.0034602077212184668f) * 289.0f)) + _365;
  _389 = ((_376 * 34.0f) + 1.0f) * _376;
  _390 = ((_379 * 34.0f) + 1.0f) * _379;
  _391 = ((_382 * 34.0f) + 1.0f) * _382;
  _410 = max((0.5f - dot(float2(_336, _337), float2(_336, _337))), 0.0f);
  _411 = max((0.5f - dot(float2(_345, _346), float2(_345, _346))), 0.0f);
  _412 = max((0.5f - dot(float2(_343, _344), float2(_343, _344))), 0.0f);
  _413 = _410 * _410;
  _414 = _411 * _411;
  _415 = _412 * _412;
  _425 = frac((_389 - (floor(_389 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _426 = frac((_390 - (floor(_390 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _427 = frac((_391 - (floor(_391 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _428 = _425 + -1.0f;
  _429 = _426 + -1.0f;
  _430 = _427 + -1.0f;
  _434 = abs(_428) + -0.5f;
  _435 = abs(_429) + -0.5f;
  _436 = abs(_430) + -0.5f;
  _443 = _428 - floor(_425 + -0.5f);
  _444 = _429 - floor(_426 + -0.5f);
  _445 = _430 - floor(_427 + -0.5f);
  _482 = ((((_130 * _130) * 130.0f) * exp2(log2(1.0f - saturate(abs(_97 - UberPostBaseCBuffer_576.y) / UberPostBaseCBuffer_576.x)) * UberPostBaseCBuffer_576.z)) * UberPostBaseCBuffer_544.x) * ((dot(float3(((_413 * _413) * (1.7928428649902344f - (((_443 * _443) + (_434 * _434)) * 0.8537347316741943f))), ((_414 * _414) * (1.7928428649902344f - (((_444 * _444) + (_435 * _435)) * 0.8537347316741943f))), ((_415 * _415) * (1.7928428649902344f - (((_445 * _445) + (_436 * _436)) * 0.8537347316741943f)))), float3(((_443 * _336) + (_434 * _337)), ((_444 * _345) + (_435 * _346)), ((_445 * _343) + (_436 * _344)))) * ((_154 * _152) / _159)) + (dot(float3(((_260 * _260) * (1.7928428649902344f - (((_290 * _290) + (_281 * _281)) * 0.8537347316741943f))), ((_261 * _261) * (1.7928428649902344f - (((_291 * _291) + (_282 * _282)) * 0.8537347316741943f))), ((_262 * _262) * (1.7928428649902344f - (((_292 * _292) + (_283 * _283)) * 0.8537347316741943f)))), float3(((_290 * _183) + (_281 * _184)), ((_291 * _192) + (_282 * _193)), ((_292 * _190) + (_283 * _191)))) * ((_154 * _150) / _159)));
  _500 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((((float4)(t1.Load(int3((int)(uint((_482 + TEXCOORD.x) * (Globals_2208.x))), (int)(uint((_482 + TEXCOORD.y) * (Globals_2208.y))), 0)))).x) * (Globals_992.z)) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y) * _482;
  _501 = _500 + TEXCOORD.x;
  _502 = _500 + TEXCOORD.y;
  _510 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _511 = _501 * 2.0f;
  _512 = _502 * 2.0f;
  _513 = _511 + -1.0f;
  _514 = _512 + -1.0f;
  _524 = (Globals_080.z) + -1.0f;
  _526 = (_524 * (Globals_080.y)) + -1.0f;
  _528 = (_526 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _529 = _528 * _514;
  _530 = _513 * _513;
  _541 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_513)), (_528 * (1.0f - abs(_514)))), (1.0f - (sqrt((_529 * _529) + _530) * 0.7070000171661377f)));
  _551 = saturate((_541 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _557 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_551 * _551) * (3.0f - (_551 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _541), 0.0f, 1.0f));
  _563 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _557), _557) * UberPostScreenEffectsBaseCBuffer_016.z;
  _566 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _563, 0.0f) * _563;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _574 = ((_526 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _514;
    _576 = atan(_574 / _513);
    _579 = (_513 < 0.0f);
    _580 = (_513 == 0.0f);
    _581 = (_574 >= 0.0f);
    _582 = (_574 < 0.0f);
    _606 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _622 = t15.SampleBias(s10, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _510)) + (select(_606, select((_580 && _581), 2.0f, select((_580 && _582), -2.0f, (select((_579 && _582), (_576 + -3.1415927410125732f), select((_579 && _581), (_576 + 3.1415927410125732f), _576)) * 1.2732394933700562f))), _501) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _510)) + (select(_606, (sqrt((_574 * _574) + _530) * 0.6366197466850281f), ((((Globals_080.y) * (_502 + -0.5f)) * _524) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _631 = (_566 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _635 = (_631 * ((_622.x * 2.0f) + -1.0f));
    _636 = (_631 * ((_622.y * 2.0f) + -1.0f));
  } else {
    _635 = 0.0f;
    _636 = 0.0f;
  }
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _643 = t5.SampleBias(s2, float2(_501, _502), (Globals_976), int2(0, 0));
    _649 = (_643.x * 0.10000000149011612f) + _635;
    _650 = (_643.y * 0.10000000149011612f) + _636;
    _653 = UberPostBaseCBuffer_176.w * _643.z;
    _654 = _653 * _649;
    _655 = _653 * _650;
    _672 = (_649 + TEXCOORD.x);
    _673 = (_650 + TEXCOORD.y);
    _674 = ((_654 * UberPostBaseCBuffer_176.x) + _649);
    _675 = ((_655 * UberPostBaseCBuffer_176.x) + _650);
    _676 = ((_654 * UberPostBaseCBuffer_176.y) + _649);
    _677 = ((_655 * UberPostBaseCBuffer_176.y) + _650);
    _678 = ((_654 * UberPostBaseCBuffer_176.z) + _649);
    _679 = ((_655 * UberPostBaseCBuffer_176.z) + _650);
  } else {
    _672 = TEXCOORD.x;
    _673 = TEXCOORD.y;
    _674 = 0.0f;
    _675 = 0.0f;
    _676 = 0.0f;
    _677 = 0.0f;
    _678 = 0.0f;
    _679 = 0.0f;
  }
  _682 = frac(Globals_208[1].x);
  _691 = (((float4)(t6.SampleBias(s3, float2((_682 + (_501 * 5.0f)), (_682 + (_502 * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _701 = ((_691 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_691 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _704 = cos(UberPostBaseCBuffer_224.w);
  _705 = sin(UberPostBaseCBuffer_224.w);
  _712 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _701;
  _713 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _701;
  _714 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _701;
  _716 = _712 * _705;
  _718 = _713 * _705;
  _720 = _714 * _705;
  _729 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + _502);
  _742 = frac(_682 * 1234.0f);
  _749 = (((_742 * _742) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _742) + UberPostBaseCBuffer_256.x;
  _756 = select((_749 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_729 + _716)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _757 = select((_749 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_729 + _718)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _758 = select((_749 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_729 + _720)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _772 = t7.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * _501) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * _502) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _778 = (_772.x * _756);
    _779 = (_772.x * _757);
    _780 = (_772.x * _758);
  } else {
    _778 = _756;
    _779 = _757;
    _780 = _758;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _803 = t7.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * _501) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * _502) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _809 = (_803.y * _778);
    _810 = (_803.y * _779);
    _811 = (_803.y * _780);
  } else {
    _809 = _778;
    _810 = _779;
    _811 = _780;
  }
  _817 = (_674 + _501) + (_712 * _704);
  _818 = (_675 + _502) + _716;
  _821 = (_676 + _501) + (_713 * _704);
  _822 = (_677 + _502) + _718;
  _825 = (_678 + _501) + (_714 * _704);
  _826 = (_679 + _502) + _720;
  _827 = t2.SampleBias(s0, float2(_672, _673), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _833 = (_511 - UberPostBaseCBuffer_384.x) + -0.5f;
    _835 = (_512 - UberPostBaseCBuffer_384.y) + -0.5f;
    _839 = dot(float2(_833, _835), float2(_833, _835)) * -0.3333333432674408f;
    _841 = (_839 * _833) * UberPostBaseCBuffer_192.z;
    _843 = (_839 * _835) * UberPostBaseCBuffer_192.z;
    _845 = rsqrt(dot(float3(_841, _843, 9.999999747378752e-05f), float3(_841, _843, 9.999999747378752e-05f)));
    _852 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _857 = exp2(log2(sqrt((_841 * _841) + (_843 * _843)) / _852) * UberPostBaseCBuffer_384.z);
    _859 = ((_841 * _845) * _852) * _857;
    _861 = ((_843 * _845) * _852) * _857;
    _868 = t2.SampleBias(s0, float2((_817 + (_859 * UberPostBaseCBuffer_400.w)), (_818 + (_861 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _876 = t2.SampleBias(s0, float2((_821 + (UberPostBaseCBuffer_416.w * _859)), (_822 + (UberPostBaseCBuffer_416.w * _861))), (Globals_976), int2(0, 0));
    _884 = t2.SampleBias(s0, float2((_825 + (UberPostBaseCBuffer_432.w * _859)), (_826 + (UberPostBaseCBuffer_432.w * _861))), (Globals_976), int2(0, 0));
    _918 = (((UberPostBaseCBuffer_416.x * _876.y) + (UberPostBaseCBuffer_400.x * _868.x)) + (UberPostBaseCBuffer_432.x * _884.z));
    _919 = (((UberPostBaseCBuffer_416.y * _876.y) + (UberPostBaseCBuffer_400.y * _868.x)) + (UberPostBaseCBuffer_432.y * _884.z));
    _920 = (((UberPostBaseCBuffer_416.z * _876.y) + (UberPostBaseCBuffer_400.z * _868.x)) + (UberPostBaseCBuffer_432.z * _884.z));
  } else {
    _918 = (((float4)(t2.SampleBias(s0, float2(_817, _818), (Globals_976), int2(0, 0)))).x);
    _919 = (((float4)(t2.SampleBias(s0, float2(_821, _822), (Globals_976), int2(0, 0)))).y);
    _920 = (((float4)(t2.SampleBias(s0, float2(_825, _826), (Globals_976), int2(0, 0)))).z);
  }
  _933 = t10.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * _501) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * _502) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _945 = frac((Globals_208[1].x) * 25.0f) - (1.0f - _502);
  _946 = 0.4000000059604645f - _945;
  _959 = (UberPostBaseCBuffer_368.w * max(((select((_946 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_945 + 0.05000000074505806f) * 10.0f) - _946)) + _946), 0.0f)) + 1.0f;
  _964 = 1.0f - UberPostBaseCBuffer_368.z;
  _974 = (((((_933.x * 12.0f) * _959) * _964) + UberPostBaseCBuffer_368.z) * _918) + _809;
  _975 = (((((_933.y * 12.0f) * _959) * _964) + UberPostBaseCBuffer_368.z) * _919) + _810;
  _976 = (((((_933.z * 12.0f) * _959) * _964) + UberPostBaseCBuffer_368.z) * _920) + _811;
  _983 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _983)) {
    _993 = fmod((((Globals_2208.y) * _673) * UberPostBaseCBuffer_448.x), 2.0f);
    _1001 = (((select((_993 > 1.0f), (2.0f - _993), _993) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _672;
    _1004 = (Globals_2208.w) * (Globals_2208.x);
    _1023 = t8.SampleBias(s5, float2(_1001, ((select(((frac((((_1001 + abs(UberPostBaseCBuffer_464.y)) * _1004) - (UberPostBaseCBuffer_464.y * _673)) / ((_1004 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _673)), (Globals_976), int2(0, 0));
    _1060 = ((((-0.699999988079071f - _1023.x) + (exp2(log2(abs(_1023.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1023.x < 0.30000001192092896f), 0.0f, 1.0f)) + _1023.x) * UberPostBaseCBuffer_336.x;
    _1061 = ((((-0.699999988079071f - _1023.y) + (exp2(log2(abs(_1023.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1023.y < 0.30000001192092896f), 0.0f, 1.0f)) + _1023.y) * UberPostBaseCBuffer_336.x;
    _1062 = ((((-0.699999988079071f - _1023.z) + (exp2(log2(abs(_1023.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1023.z < 0.30000001192092896f), 0.0f, 1.0f)) + _1023.z) * UberPostBaseCBuffer_336.x;
    _1063 = dot(float3(_974, _975, _976), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _1066 = (UberPostBaseCBuffer_352.x > 0.5f);
    _1079 = select(_1066, ((((_1060 * _1063) - _1060) * _827.w) + _1060), _1060);
    _1080 = select(_1066, ((((_1061 * _1063) - _1061) * _827.w) + _1061), _1061);
    _1081 = select(_1066, ((((_1062 * _1063) - _1062) * _827.w) + _1062), _1062);
    if (_983) {
      _1092 = t9.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _672) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _673) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _1106 = (((_1092.x * _1060) * UberPostBaseCBuffer_336.y) + _1079);
      _1107 = (((_1092.y * _1061) * UberPostBaseCBuffer_336.y) + _1080);
      _1108 = (((_1092.z * _1062) * UberPostBaseCBuffer_336.y) + _1081);
    } else {
      _1106 = _1079;
      _1107 = _1080;
      _1108 = _1081;
    }
    _1118 = (_1106 + _974);
    _1119 = (_1107 + _975);
    _1120 = (_1108 + _976);
    _1121 = saturate((((_1107 + _1106) + _1108) * 0.33329999446868896f) + _827.w);
  } else {
    _1118 = _974;
    _1119 = _975;
    _1120 = _976;
    _1121 = _827.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _1138 = abs(_673 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _1140 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_672 - UberPostBaseCBuffer_112.x);
    _1146 = exp2(log2(saturate(1.0f - dot(float2(_1140, _1138), float2(_1140, _1138)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _1160 = (((_1146 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _1118);
    _1161 = (((_1146 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _1119);
    _1162 = (((_1146 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _1120);
  } else {
    _1160 = _1118;
    _1161 = _1119;
    _1162 = _1120;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_1160, _1161, _1162);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _1160 = tonemapped.x;
    _1161 = tonemapped.y;
    _1162 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _1180 = ((((float4)(t3.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * _501) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * _502) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _1184 = 1.0f - (sqrt(dot(float3(_1160, _1161, _1162), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _1198 = ((((UberPostBaseCBuffer_208.x * _1160) * _1180) * _1184) + _1160);
    _1199 = ((((UberPostBaseCBuffer_208.x * _1161) * _1180) * _1184) + _1161);
    _1200 = ((((UberPostBaseCBuffer_208.x * _1162) * _1180) * _1184) + _1162);
  } else {
    _1198 = _1160;
    _1199 = _1161;
    _1200 = _1162;
  }
  _1211 = ((((((Globals_080.z) + -1.0f) * (Globals_080.y)) + -1.0f) * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _514;
  _1213 = atan(_1211 / _513);
  _1216 = (_513 < 0.0f);
  _1217 = (_513 == 0.0f);
  _1218 = (_1211 >= 0.0f);
  _1219 = (_1211 < 0.0f);
  _35[0] = ((((Globals_2208.x) * (_501 + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _36[0] = _502;
  _35[1] = select((_1217 && _1218), 2.0f, select((_1217 && _1219), -2.0f, (select((_1216 && _1219), (_1213 + -3.1415927410125732f), select((_1216 && _1218), (_1213 + 3.1415927410125732f), _1213)) * 1.2732394933700562f)));
  _36[1] = (sqrt((_1211 * _1211) + (_513 * _513)) * 0.5f);
  _35[2] = _501;
  _36[2] = _502;
  _1276 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _1299 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _1324 = t14.SampleBias(s9, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _635) + (UberPostScreenEffectsBaseCBuffer_176.x * _510)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_35[min((uint)(_1299), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _636) + (UberPostScreenEffectsBaseCBuffer_176.y * _510)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_36[min((uint)(_1299), 2u)])))), (Globals_976), int2(0, 0));
  _41[0] = _1324.x;
  _41[1] = _1324.y;
  _41[2] = _1324.z;
  _41[3] = _1324.w;
  _1337 = ((_41[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _1345 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _1349 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _1364 = UberPostScreenEffectsBaseCBuffer_208.y * _1337;
  _1378 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1392 = UberPostScreenEffectsBaseCBuffer_208.z * _1337;
  _1408 = t13.SampleBias(s8, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _635) + (UberPostScreenEffectsBaseCBuffer_160.z * _510)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_35[min((uint)(_1378), 2u)]))) + _1392), (((((UberPostScreenEffectsRandomCBuffer_000.y + _636) + (UberPostScreenEffectsBaseCBuffer_160.w * _510)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_36[min((uint)(_1378), 2u)]))) + _1392)), (Globals_976), int2(0, 0));
  _40[0] = _1408.x;
  _40[1] = _1408.y;
  _40[2] = _1408.z;
  _40[3] = _1408.w;
  _1419 = _40[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1420 = t11.SampleBias(s6, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _510) + _635) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_35[min((uint)(_1349), 2u)]) * _1345) * UberPostScreenEffectsBaseCBuffer_032.x)) + _1364), (((((UberPostScreenEffectsBaseCBuffer_096.y * _510) + _636) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_36[min((uint)(_1349), 2u)]) * _1345) * UberPostScreenEffectsBaseCBuffer_032.y)) + _1364)), (Globals_976), int2(0, 0));
  _1428 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1419, 1.0f);
  _39[0] = _1420.x;
  _39[1] = _1420.y;
  _39[2] = _1420.z;
  _39[3] = _1420.w;
  _1439 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1442 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1428);
  _1451 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1452 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1453 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1465 = saturate((_1428 * (_39[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1472 = select(_1439, (((_1451 * _1442) + UberPostScreenEffectsBaseCBuffer_064.x) * _1420.x), ((_1451 * _1465) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1473 = select(_1439, (((_1452 * _1442) + UberPostScreenEffectsBaseCBuffer_064.y) * _1420.y), ((_1452 * _1465) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1474 = select(_1439, (((_1453 * _1442) + UberPostScreenEffectsBaseCBuffer_064.z) * _1420.z), ((_1453 * _1465) + UberPostScreenEffectsBaseCBuffer_064.z));
  _38[0] = _1420.x;
  _38[1] = _1420.y;
  _38[2] = _1420.z;
  _38[3] = _1420.w;
  _1483 = _38[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1484 = _1483 * _1419;
  _1500 = t12.SampleBias(s7, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _510) + _635) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_35[min((uint)(_1276), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _510) + _636) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_36[min((uint)(_1276), 2u)])))), (Globals_976), int2(0, 0));
  _37[0] = _1500.x;
  _37[1] = _1500.y;
  _37[2] = _1500.z;
  _37[3] = _1500.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1522 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1483));
  } else {
    _1522 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1484 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1484 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1524 = ((_37[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1522) * _566;
  _1528 = select((_1524 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1524;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1604 = ((_1528 * (_1472 - _1198)) + _1198);
    _1605 = ((_1528 * (_1473 - _1199)) + _1199);
    _1606 = ((_1528 * (_1474 - _1200)) + _1200);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1604 = ((_1528 * _1472) + _1198);
      _1605 = ((_1528 * _1473) + _1199);
      _1606 = ((_1528 * _1474) + _1200);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1604 = (((_1528 * (_1472 + -1.0f)) + 1.0f) * _1198);
        _1605 = (((_1528 * (_1473 + -1.0f)) + 1.0f) * _1199);
        _1606 = (((_1528 * (_1474 + -1.0f)) + 1.0f) * _1200);
      } else {
        _1570 = _1528 * (_1472 + -0.5f);
        _1571 = _1528 * (_1473 + -0.5f);
        _1572 = _1528 * (_1474 + -0.5f);
        _1604 = select((_1198 < 0.5f), ((_1198 * 2.0f) * (_1570 + 0.5f)), (1.0f - (((1.0f - _1198) * 2.0f) * (0.5f - _1570))));
        _1605 = select((_1199 < 0.5f), ((_1199 * 2.0f) * (_1571 + 0.5f)), (1.0f - (((1.0f - _1199) * 2.0f) * (0.5f - _1571))));
        _1606 = select((_1200 < 0.5f), ((_1200 * 2.0f) * (_1572 + 0.5f)), (1.0f - (((1.0f - _1200) * 2.0f) * (0.5f - _1572))));
      }
    }
  }
  _1611 = ((_1605 + _1604) + _1606) * 0.3333333432674408f;
  _1618 = ((_1604 - _1611) * UberPostFXColorCorrectionCBuffer_000.w) + _1611;
  _1619 = ((_1605 - _1611) * UberPostFXColorCorrectionCBuffer_000.w) + _1611;
  _1620 = ((_1606 - _1611) * UberPostFXColorCorrectionCBuffer_000.w) + _1611;
  if ((Globals_816[3].w) > 0.5f) {
    _1628 = t0.SampleBias(s0, float2(dot(float3(_1618, _1619, _1620), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _1633 = _1628.x;
    _1634 = _1628.y;
    _1635 = _1628.z;
  } else {
    _1633 = _1618;
    _1634 = _1619;
    _1635 = _1620;
  }
  _1650 = (((1.0f - _1633) - saturate(_1633)) * UberPostFXColorCorrectionCBuffer_016.w) + _1633;
  _1651 = (((1.0f - _1634) - saturate(_1634)) * UberPostFXColorCorrectionCBuffer_016.w) + _1634;
  _1652 = (((1.0f - _1635) - saturate(_1635)) * UberPostFXColorCorrectionCBuffer_016.w) + _1635;
  _1660 = saturate((saturate(dot(float3(_1650, _1651, _1652), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _1687 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _1650) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1660)) * UberPostFXColorCorrectionCBuffer_032.x) + _1650);
  // _1688 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _1651) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1660)) * UberPostFXColorCorrectionCBuffer_032.x) + _1651);
  // _1689 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _1652) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1660)) * UberPostFXColorCorrectionCBuffer_032.x) + _1652);
  _1687 = ((((UberPostFXColorCorrectionCBuffer_000.x - _1650) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1660)) * UberPostFXColorCorrectionCBuffer_032.x) + _1650);
  _1688 = ((((UberPostFXColorCorrectionCBuffer_000.y - _1651) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1660)) * UberPostFXColorCorrectionCBuffer_032.x) + _1651);
  _1689 = ((((UberPostFXColorCorrectionCBuffer_000.z - _1652) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1660)) * UberPostFXColorCorrectionCBuffer_032.x) + _1652);

  // HDR FX Mask Blend
  float3 result = float3(_1687, _1688, _1689);
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
  _1764 = result.x;
  _1765 = result.y;
  _1766 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _1695 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _1764 = min((_1695.x + _1687), 1.0f);
        _1765 = min((_1695.x + _1688), 1.0f);
        _1766 = min((_1695.x + _1689), 1.0f);
      } else {
        _1732 = select((_1687 > 0.5f), 0.0f, 1.0f);
        _1733 = select((_1688 > 0.5f), 0.0f, 1.0f);
        _1734 = select((_1689 > 0.5f), 0.0f, 1.0f);
        _1753 = 1.0f - _1695.x;
        _1764 = (((((1.0f - (((1.0f - _1687) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _1732)) + (((_1687 * 2.0f) * _1732) * UberPostFXColorCorrectionCBuffer_048.x)) * _1695.x) + (_1753 * _1687));
        _1765 = (((((1.0f - (((1.0f - _1688) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _1733)) + (((_1688 * 2.0f) * _1733) * UberPostFXColorCorrectionCBuffer_048.y)) * _1695.x) + (_1753 * _1688));
        _1766 = (((((1.0f - (((1.0f - _1689) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1734)) + (((_1689 * 2.0f) * _1734) * UberPostFXColorCorrectionCBuffer_048.z)) * _1695.x) + (_1753 * _1689));
      }
  } else {
    _1764 = _1687;
    _1765 = _1688;
    _1766 = _1689;
  }
  */

  SV_Target.x = _1764;
  SV_Target.y = _1765;
  SV_Target.z = _1766;
  SV_Target.w = _1121;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
