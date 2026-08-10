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
  float _74;
  float _81;
  float _82;
  float _672;
  float _673;
  float _709;
  float _710;
  float _711;
  float _712;
  float _713;
  float _714;
  float _715;
  float _716;
  float _800;
  float _807;
  float _808;
  float _857;
  float _864;
  float _865;
  float _912;
  float _919;
  float _920;
  float _994;
  float _1001;
  float _1002;
  float _1043;
  float _1050;
  float _1051;
  float _1092;
  float _1099;
  float _1100;
  float _1109;
  float _1110;
  float _1111;
  float _1117;
  float _1118;
  float _1119;
  float _1120;
  float _1252;
  float _1253;
  float _1254;
  float _1264;
  float _1265;
  float _1266;
  float _1267;
  float _1306;
  float _1307;
  float _1308;
  float _1397;
  float _1398;
  float _1399;
  float _1714;
  float _1796;
  float _1797;
  float _1798;
  float _42;
  float _43;
  float _53;
  float _54;
  float _58;
  float _62;
  float _75;
  float4 _90;
  float _114;
  float _116;
  float _132;
  float _133;
  float _134;
  float _135;
  float _136;
  float _137;
  float _138;
  float _139;
  float _140;
  float _141;
  float _144;
  float _147;
  float _150;
  float _152;
  float _167;
  float _181;
  float _187;
  float _188;
  float _189;
  float _191;
  float _196;
  float _204;
  float _205;
  float _210;
  float _211;
  float _212;
  float _215;
  float _216;
  float _219;
  float _220;
  float _221;
  bool _222;
  float _223;
  float _224;
  float _227;
  float _228;
  float _229;
  float _230;
  float _237;
  float _238;
  float _239;
  float _240;
  float _247;
  float _248;
  float _249;
  float _260;
  float _263;
  float _266;
  float _273;
  float _274;
  float _275;
  float _294;
  float _295;
  float _296;
  float _297;
  float _298;
  float _299;
  float _309;
  float _310;
  float _311;
  float _312;
  float _313;
  float _314;
  float _318;
  float _319;
  float _320;
  float _327;
  float _328;
  float _329;
  float _363;
  float _364;
  float _365;
  float _368;
  float _369;
  float _372;
  float _373;
  float _374;
  bool _375;
  float _376;
  float _377;
  float _380;
  float _381;
  float _382;
  float _383;
  float _390;
  float _391;
  float _392;
  float _393;
  float _400;
  float _401;
  float _402;
  float _413;
  float _416;
  float _419;
  float _426;
  float _427;
  float _428;
  float _447;
  float _448;
  float _449;
  float _450;
  float _451;
  float _452;
  float _462;
  float _463;
  float _464;
  float _465;
  float _466;
  float _467;
  float _471;
  float _472;
  float _473;
  float _480;
  float _481;
  float _482;
  float _519;
  float _537;
  float _538;
  float _539;
  float _547;
  float _548;
  float _549;
  float _550;
  float _551;
  float _561;
  float _563;
  float _565;
  float _566;
  float _567;
  float _578;
  float _588;
  float _594;
  float _600;
  float _603;
  float _611;
  float _613;
  bool _616;
  bool _617;
  bool _618;
  bool _619;
  bool _643;
  float4 _659;
  float _668;
  bool _676;
  float4 _680;
  float _686;
  float _687;
  float _690;
  float _691;
  float _692;
  float _724;
  float _726;
  float _730;
  float _732;
  float _734;
  float _736;
  float _743;
  float _748;
  float _750;
  float _752;
  float _759;
  float _760;
  bool _763;
  float _768;
  float _769;
  float _779;
  float _780;
  float _784;
  float _788;
  float _801;
  float4 _811;
  float _819;
  float _820;
  float _825;
  float _826;
  float _836;
  float _837;
  float _841;
  float _845;
  float _858;
  float4 _866;
  float _874;
  float _875;
  float _880;
  float _881;
  float _891;
  float _892;
  float _896;
  float _900;
  float _913;
  float4 _921;
  float _953;
  float _954;
  bool _957;
  float _962;
  float _963;
  float _973;
  float _974;
  float _978;
  float _982;
  float _995;
  float _1005;
  float _1006;
  float _1011;
  float _1012;
  float _1022;
  float _1023;
  float _1027;
  float _1031;
  float _1044;
  float _1054;
  float _1055;
  float _1060;
  float _1061;
  float _1071;
  float _1072;
  float _1076;
  float _1080;
  float _1093;
  float4 _1104;
  bool _1127;
  float _1137;
  float _1145;
  float _1148;
  float4 _1169;
  float _1206;
  float _1207;
  float _1208;
  float _1209;
  bool _1212;
  float _1225;
  float _1226;
  float _1227;
  float4 _1238;
  float _1284;
  float _1286;
  float _1292;
  float _1331;
  float _1332;
  float _1338;
  float _1340;
  float _1341;
  float4 _1343;
  float4 _1347;
  float _1357;
  float _1358;
  float _1359;
  float _1379;
  float _1383;
  float _1403;
  float _1405;
  bool _1408;
  bool _1409;
  bool _1410;
  bool _1411;
  int _1468;
  int _1491;
  float4 _1516;
  float _1529;
  float _1537;
  int _1541;
  float _1556;
  int _1570;
  float _1584;
  float4 _1600;
  float _1611;
  float4 _1612;
  float _1620;
  bool _1631;
  float _1634;
  float _1643;
  float _1644;
  float _1645;
  float _1657;
  float _1664;
  float _1665;
  float _1666;
  float _1675;
  float _1676;
  float4 _1692;
  float _1716;
  float _1720;
  float _1762;
  float _1763;
  float _1764;
  float _28[3];
  float _29[3];
  float _30[4];
  float _31[4];
  float _32[4];
  float _33[4];
  float _34[4];
  if (!(UberPostBaseCBuffer_080.w == 0.0f)) {
    _42 = UberPostBaseCBuffer_080.z * (TEXCOORD.x + -0.5f);
    _43 = UberPostBaseCBuffer_080.z * (TEXCOORD.y + -0.5f);
    _53 = (_42 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
    _54 = (_43 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
    _58 = sqrt((_53 * _53) + (_54 * _54));
    _62 = UberPostBaseCBuffer_080.y * _58;
    [branch]
    if (UberPostBaseCBuffer_080.w > 0.0f) {
      _74 = ((1.0f / _62) * tan(UberPostBaseCBuffer_080.x * _58));
    } else {
      _74 = ((UberPostBaseCBuffer_080.x * (1.0f / _58)) * atan(_62));
    }
    _75 = _74 + -1.0f;
    _81 = ((_42 + 0.5f) + (_75 * _53));
    _82 = ((_43 + 0.5f) + (_75 * _54));
  } else {
    _81 = TEXCOORD.x;
    _82 = TEXCOORD.y;
  }
  _90 = t0.Load(int3((int)(uint((Globals_2208.x) * TEXCOORD.x)), (int)(uint((Globals_2208.y) * TEXCOORD.y)), 0));
  _114 = (TEXCOORD.x * 2.0f) + -1.0f;
  _116 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  _132 = mad((Globals_2144[2].w), _90.x, mad((Globals_2144[1].w), _116, ((Globals_2144[0].w) * _114))) + (Globals_2144[3].w);
  _133 = (mad((Globals_2144[2].x), _90.x, mad((Globals_2144[1].x), _116, ((Globals_2144[0].x) * _114))) + (Globals_2144[3].x)) / _132;
  _134 = (mad((Globals_2144[2].y), _90.x, mad((Globals_2144[1].y), _116, ((Globals_2144[0].y) * _114))) + (Globals_2144[3].y)) / _132;
  _135 = (mad((Globals_2144[2].z), _90.x, mad((Globals_2144[1].z), _116, ((Globals_2144[0].z) * _114))) + (Globals_2144[3].z)) / _132;
  _136 = ddy_coarse(_133);
  _137 = ddy_coarse(_134);
  _138 = ddy_coarse(_135);
  _139 = ddx_coarse(_133);
  _140 = ddx_coarse(_134);
  _141 = ddx_coarse(_135);
  _144 = (_140 * _138) - (_141 * _137);
  _147 = (_141 * _136) - (_139 * _138);
  _150 = (_139 * _137) - (_140 * _136);
  _152 = rsqrt(dot(float3(_144, _147, _150), float3(_144, _147, _150)));
  _167 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((Globals_992.z) * _90.x) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y);
  _181 = UberPostBaseCBuffer_544.w * _134;
  _187 = max(abs(_144 * _152), 9.999999747378752e-06f);
  _188 = max(abs(_147 * _152), 9.999999747378752e-06f);
  _189 = max(abs(_152 * _150), 9.999999747378752e-06f);
  _191 = rsqrt(dot(float3(_187, _188, _189), float3(_187, _188, _189)));
  _196 = _191 * ((_188 + _187) + _189);
  _204 = UberPostBaseCBuffer_560.x * (Globals_208[1].x);
  _205 = UberPostBaseCBuffer_560.y * (Globals_208[1].x);
  _210 = (_181 * UberPostBaseCBuffer_560.z) + _204;
  _211 = ((UberPostBaseCBuffer_544.w * _135) * UberPostBaseCBuffer_560.w) + _205;
  _212 = dot(float2(_210, _211), float2(0.3660254180431366f, 0.3660254180431366f));
  _215 = floor(_210 + _212);
  _216 = floor(_211 + _212);
  _219 = dot(float2(_215, _216), float2(0.21132487058639526f, 0.21132487058639526f));
  _220 = (_210 - _215) + _219;
  _221 = (_211 - _216) + _219;
  _222 = (_220 > _221);
  _223 = select(_222, 1.0f, 0.0f);
  _224 = select(_222, 0.0f, 1.0f);
  _227 = _220 + -0.5773502588272095f;
  _228 = _221 + -0.5773502588272095f;
  _229 = (_220 + 0.21132487058639526f) - _223;
  _230 = (_221 + 0.21132487058639526f) - _224;
  _237 = _215 - (floor(_215 * 0.0034602077212184668f) * 289.0f);
  _238 = _216 - (floor(_216 * 0.0034602077212184668f) * 289.0f);
  _239 = _238 + _224;
  _240 = _238 + 1.0f;
  _247 = ((_238 * 34.0f) + 1.0f) * _238;
  _248 = ((_239 * 34.0f) + 1.0f) * _239;
  _249 = ((_240 * 34.0f) + 1.0f) * _240;
  _260 = (_247 - (floor(_247 * 0.0034602077212184668f) * 289.0f)) + _237;
  _263 = ((_223 + _237) - (floor(_248 * 0.0034602077212184668f) * 289.0f)) + _248;
  _266 = ((_237 + 1.0f) - (floor(_249 * 0.0034602077212184668f) * 289.0f)) + _249;
  _273 = ((_260 * 34.0f) + 1.0f) * _260;
  _274 = ((_263 * 34.0f) + 1.0f) * _263;
  _275 = ((_266 * 34.0f) + 1.0f) * _266;
  _294 = max((0.5f - dot(float2(_220, _221), float2(_220, _221))), 0.0f);
  _295 = max((0.5f - dot(float2(_229, _230), float2(_229, _230))), 0.0f);
  _296 = max((0.5f - dot(float2(_227, _228), float2(_227, _228))), 0.0f);
  _297 = _294 * _294;
  _298 = _295 * _295;
  _299 = _296 * _296;
  _309 = frac((_273 - (floor(_273 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _310 = frac((_274 - (floor(_274 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _311 = frac((_275 - (floor(_275 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _312 = _309 + -1.0f;
  _313 = _310 + -1.0f;
  _314 = _311 + -1.0f;
  _318 = abs(_312) + -0.5f;
  _319 = abs(_313) + -0.5f;
  _320 = abs(_314) + -0.5f;
  _327 = _312 - floor(_309 + -0.5f);
  _328 = _313 - floor(_310 + -0.5f);
  _329 = _314 - floor(_311 + -0.5f);
  _363 = ((UberPostBaseCBuffer_544.w * _133) * UberPostBaseCBuffer_592.x) + _204;
  _364 = (_181 * UberPostBaseCBuffer_592.y) + _205;
  _365 = dot(float2(_363, _364), float2(0.3660254180431366f, 0.3660254180431366f));
  _368 = floor(_363 + _365);
  _369 = floor(_364 + _365);
  _372 = dot(float2(_368, _369), float2(0.21132487058639526f, 0.21132487058639526f));
  _373 = (_363 - _368) + _372;
  _374 = (_364 - _369) + _372;
  _375 = (_373 > _374);
  _376 = select(_375, 1.0f, 0.0f);
  _377 = select(_375, 0.0f, 1.0f);
  _380 = _373 + -0.5773502588272095f;
  _381 = _374 + -0.5773502588272095f;
  _382 = (_373 + 0.21132487058639526f) - _376;
  _383 = (_374 + 0.21132487058639526f) - _377;
  _390 = _368 - (floor(_368 * 0.0034602077212184668f) * 289.0f);
  _391 = _369 - (floor(_369 * 0.0034602077212184668f) * 289.0f);
  _392 = _391 + _377;
  _393 = _391 + 1.0f;
  _400 = ((_391 * 34.0f) + 1.0f) * _391;
  _401 = ((_392 * 34.0f) + 1.0f) * _392;
  _402 = ((_393 * 34.0f) + 1.0f) * _393;
  _413 = (_400 - (floor(_400 * 0.0034602077212184668f) * 289.0f)) + _390;
  _416 = ((_376 + _390) - (floor(_401 * 0.0034602077212184668f) * 289.0f)) + _401;
  _419 = ((_390 + 1.0f) - (floor(_402 * 0.0034602077212184668f) * 289.0f)) + _402;
  _426 = ((_413 * 34.0f) + 1.0f) * _413;
  _427 = ((_416 * 34.0f) + 1.0f) * _416;
  _428 = ((_419 * 34.0f) + 1.0f) * _419;
  _447 = max((0.5f - dot(float2(_373, _374), float2(_373, _374))), 0.0f);
  _448 = max((0.5f - dot(float2(_382, _383), float2(_382, _383))), 0.0f);
  _449 = max((0.5f - dot(float2(_380, _381), float2(_380, _381))), 0.0f);
  _450 = _447 * _447;
  _451 = _448 * _448;
  _452 = _449 * _449;
  _462 = frac((_426 - (floor(_426 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _463 = frac((_427 - (floor(_427 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _464 = frac((_428 - (floor(_428 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _465 = _462 + -1.0f;
  _466 = _463 + -1.0f;
  _467 = _464 + -1.0f;
  _471 = abs(_465) + -0.5f;
  _472 = abs(_466) + -0.5f;
  _473 = abs(_467) + -0.5f;
  _480 = _465 - floor(_462 + -0.5f);
  _481 = _466 - floor(_463 + -0.5f);
  _482 = _467 - floor(_464 + -0.5f);
  _519 = ((((_167 * _167) * 130.0f) * exp2(log2(1.0f - saturate(abs(_134 - UberPostBaseCBuffer_576.y) / UberPostBaseCBuffer_576.x)) * UberPostBaseCBuffer_576.z)) * UberPostBaseCBuffer_544.x) * ((dot(float3(((_450 * _450) * (1.7928428649902344f - (((_480 * _480) + (_471 * _471)) * 0.8537347316741943f))), ((_451 * _451) * (1.7928428649902344f - (((_481 * _481) + (_472 * _472)) * 0.8537347316741943f))), ((_452 * _452) * (1.7928428649902344f - (((_482 * _482) + (_473 * _473)) * 0.8537347316741943f)))), float3(((_480 * _373) + (_471 * _374)), ((_481 * _382) + (_472 * _383)), ((_482 * _380) + (_473 * _381)))) * ((_191 * _189) / _196)) + (dot(float3(((_297 * _297) * (1.7928428649902344f - (((_327 * _327) + (_318 * _318)) * 0.8537347316741943f))), ((_298 * _298) * (1.7928428649902344f - (((_328 * _328) + (_319 * _319)) * 0.8537347316741943f))), ((_299 * _299) * (1.7928428649902344f - (((_329 * _329) + (_320 * _320)) * 0.8537347316741943f)))), float3(((_327 * _220) + (_318 * _221)), ((_328 * _229) + (_319 * _230)), ((_329 * _227) + (_320 * _228)))) * ((_191 * _187) / _196)));
  _537 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((((float4)(t0.Load(int3((int)(uint((_519 + TEXCOORD.x) * (Globals_2208.x))), (int)(uint((_519 + TEXCOORD.y) * (Globals_2208.y))), 0)))).x) * (Globals_992.z)) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y) * _519;
  _538 = _537 + TEXCOORD.x;
  _539 = _537 + TEXCOORD.y;
  _547 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _548 = _538 * 2.0f;
  _549 = _539 * 2.0f;
  _550 = _548 + -1.0f;
  _551 = _549 + -1.0f;
  _561 = (Globals_080.z) + -1.0f;
  _563 = (_561 * (Globals_080.y)) + -1.0f;
  _565 = (_563 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _566 = _565 * _551;
  _567 = _550 * _550;
  _578 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_550)), (_565 * (1.0f - abs(_551)))), (1.0f - (sqrt((_566 * _566) + _567) * 0.7070000171661377f)));
  _588 = saturate((_578 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _594 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_588 * _588) * (3.0f - (_588 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _578), 0.0f, 1.0f));
  _600 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _594), _594) * UberPostScreenEffectsBaseCBuffer_016.z;
  _603 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _600, 0.0f) * _600;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _611 = ((_563 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _551;
    _613 = atan(_611 / _550);
    _616 = (_550 < 0.0f);
    _617 = (_550 == 0.0f);
    _618 = (_611 >= 0.0f);
    _619 = (_611 < 0.0f);
    _643 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _659 = t11.SampleBias(s8, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _547)) + (select(_643, select((_617 && _618), 2.0f, select((_617 && _619), -2.0f, (select((_616 && _619), (_613 + -3.1415927410125732f), select((_616 && _618), (_613 + 3.1415927410125732f), _613)) * 1.2732394933700562f))), _538) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _547)) + (select(_643, (sqrt((_611 * _611) + _567) * 0.6366197466850281f), ((((Globals_080.y) * (_539 + -0.5f)) * _561) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _668 = (_603 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _672 = (_668 * ((_659.x * 2.0f) + -1.0f));
    _673 = (_668 * ((_659.y * 2.0f) + -1.0f));
  } else {
    _672 = 0.0f;
    _673 = 0.0f;
  }
  _676 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_676) {
    _680 = t4.SampleBias(s2, float2(_538, _539), (Globals_976), int2(0, 0));
    _686 = (_680.x * 0.10000000149011612f) + _672;
    _687 = (_680.y * 0.10000000149011612f) + _673;
    _690 = UberPostBaseCBuffer_176.w * _680.z;
    _691 = _690 * _686;
    _692 = _690 * _687;
    _709 = (_686 + _81);
    _710 = (_687 + _82);
    _711 = ((_691 * UberPostBaseCBuffer_176.x) + _686);
    _712 = ((_692 * UberPostBaseCBuffer_176.x) + _687);
    _713 = ((_691 * UberPostBaseCBuffer_176.y) + _686);
    _714 = ((_692 * UberPostBaseCBuffer_176.y) + _687);
    _715 = ((_691 * UberPostBaseCBuffer_176.z) + _686);
    _716 = ((_692 * UberPostBaseCBuffer_176.z) + _687);
  } else {
    _709 = _81;
    _710 = _82;
    _711 = 0.0f;
    _712 = 0.0f;
    _713 = 0.0f;
    _714 = 0.0f;
    _715 = 0.0f;
    _716 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _724 = (_548 - UberPostBaseCBuffer_384.x) + -0.5f;
    _726 = (_549 - UberPostBaseCBuffer_384.y) + -0.5f;
    _730 = dot(float2(_724, _726), float2(_724, _726)) * -0.3333333432674408f;
    _732 = (_730 * _724) * UberPostBaseCBuffer_192.z;
    _734 = (_730 * _726) * UberPostBaseCBuffer_192.z;
    _736 = rsqrt(dot(float3(_732, _734, 9.999999747378752e-05f), float3(_732, _734, 9.999999747378752e-05f)));
    _743 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _748 = exp2(log2(sqrt((_732 * _732) + (_734 * _734)) / _743) * UberPostBaseCBuffer_384.z);
    _750 = ((_732 * _736) * _743) * _748;
    _752 = ((_734 * _736) * _743) * _748;
    _759 = (_711 + _538) + (_750 * UberPostBaseCBuffer_400.w);
    _760 = (_712 + _539) + (_752 * UberPostBaseCBuffer_400.w);
    _763 = !(UberPostBaseCBuffer_080.w == 0.0f);
    if (_763) {
      _768 = UberPostBaseCBuffer_080.z * (_759 + -0.5f);
      _769 = UberPostBaseCBuffer_080.z * (_760 + -0.5f);
      _779 = (_768 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _780 = (_769 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _784 = sqrt((_779 * _779) + (_780 * _780));
      _788 = UberPostBaseCBuffer_080.y * _784;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _800 = ((1.0f / _788) * tan(UberPostBaseCBuffer_080.x * _784));
      } else {
        _800 = ((UberPostBaseCBuffer_080.x * (1.0f / _784)) * atan(_788));
      }
      _801 = _800 + -1.0f;
      _807 = ((_768 + 0.5f) + (_801 * _779));
      _808 = ((_769 + 0.5f) + (_801 * _780));
    } else {
      _807 = _759;
      _808 = _760;
    }
    _811 = t1.SampleBias(s0, float2(_807, _808), (Globals_976), int2(0, 0));
    _819 = (_713 + _538) + (UberPostBaseCBuffer_416.w * _750);
    _820 = (_714 + _539) + (UberPostBaseCBuffer_416.w * _752);
    if (_763) {
      _825 = UberPostBaseCBuffer_080.z * (_819 + -0.5f);
      _826 = UberPostBaseCBuffer_080.z * (_820 + -0.5f);
      _836 = (_825 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _837 = (_826 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _841 = sqrt((_836 * _836) + (_837 * _837));
      _845 = UberPostBaseCBuffer_080.y * _841;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _857 = ((1.0f / _845) * tan(UberPostBaseCBuffer_080.x * _841));
      } else {
        _857 = ((UberPostBaseCBuffer_080.x * (1.0f / _841)) * atan(_845));
      }
      _858 = _857 + -1.0f;
      _864 = ((_825 + 0.5f) + (_858 * _836));
      _865 = ((_826 + 0.5f) + (_858 * _837));
    } else {
      _864 = _819;
      _865 = _820;
    }
    _866 = t1.SampleBias(s0, float2(_864, _865), (Globals_976), int2(0, 0));
    _874 = (_715 + _538) + (UberPostBaseCBuffer_432.w * _750);
    _875 = (_716 + _539) + (UberPostBaseCBuffer_432.w * _752);
    if (_763) {
      _880 = UberPostBaseCBuffer_080.z * (_874 + -0.5f);
      _881 = UberPostBaseCBuffer_080.z * (_875 + -0.5f);
      _891 = (_880 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _892 = (_881 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _896 = sqrt((_891 * _891) + (_892 * _892));
      _900 = UberPostBaseCBuffer_080.y * _896;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _912 = ((1.0f / _900) * tan(UberPostBaseCBuffer_080.x * _896));
      } else {
        _912 = ((UberPostBaseCBuffer_080.x * (1.0f / _896)) * atan(_900));
      }
      _913 = _912 + -1.0f;
      _919 = ((_880 + 0.5f) + (_913 * _891));
      _920 = ((_881 + 0.5f) + (_913 * _892));
    } else {
      _919 = _874;
      _920 = _875;
    }
    _921 = t1.SampleBias(s0, float2(_919, _920), (Globals_976), int2(0, 0));
    _1117 = (((float4)(t1.SampleBias(s0, float2(_709, _710), (Globals_976), int2(0, 0)))).w);
    _1118 = (((UberPostBaseCBuffer_416.x * _866.y) + (UberPostBaseCBuffer_400.x * _811.x)) + (UberPostBaseCBuffer_432.x * _921.z));
    _1119 = (((UberPostBaseCBuffer_416.y * _866.y) + (UberPostBaseCBuffer_400.y * _811.x)) + (UberPostBaseCBuffer_432.y * _921.z));
    _1120 = (((UberPostBaseCBuffer_416.z * _866.y) + (UberPostBaseCBuffer_400.z * _811.x)) + (UberPostBaseCBuffer_432.z * _921.z));
  } else {
    if (_676) {
      _953 = _711 + _538;
      _954 = _712 + _539;
      _957 = !(UberPostBaseCBuffer_080.w == 0.0f);
      if (_957) {
        _962 = UberPostBaseCBuffer_080.z * (_953 + -0.5f);
        _963 = UberPostBaseCBuffer_080.z * (_954 + -0.5f);
        _973 = (_962 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _974 = (_963 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _978 = sqrt((_973 * _973) + (_974 * _974));
        _982 = UberPostBaseCBuffer_080.y * _978;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _994 = ((1.0f / _982) * tan(UberPostBaseCBuffer_080.x * _978));
        } else {
          _994 = ((UberPostBaseCBuffer_080.x * (1.0f / _978)) * atan(_982));
        }
        _995 = _994 + -1.0f;
        _1001 = ((_962 + 0.5f) + (_995 * _973));
        _1002 = ((_963 + 0.5f) + (_995 * _974));
      } else {
        _1001 = _953;
        _1002 = _954;
      }
      _1005 = _713 + _538;
      _1006 = _714 + _539;
      if (_957) {
        _1011 = UberPostBaseCBuffer_080.z * (_1005 + -0.5f);
        _1012 = UberPostBaseCBuffer_080.z * (_1006 + -0.5f);
        _1022 = (_1011 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _1023 = (_1012 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _1027 = sqrt((_1022 * _1022) + (_1023 * _1023));
        _1031 = UberPostBaseCBuffer_080.y * _1027;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _1043 = ((1.0f / _1031) * tan(UberPostBaseCBuffer_080.x * _1027));
        } else {
          _1043 = ((UberPostBaseCBuffer_080.x * (1.0f / _1027)) * atan(_1031));
        }
        _1044 = _1043 + -1.0f;
        _1050 = ((_1011 + 0.5f) + (_1044 * _1022));
        _1051 = ((_1012 + 0.5f) + (_1044 * _1023));
      } else {
        _1050 = _1005;
        _1051 = _1006;
      }
      _1054 = _715 + _538;
      _1055 = _716 + _539;
      if (_957) {
        _1060 = UberPostBaseCBuffer_080.z * (_1054 + -0.5f);
        _1061 = UberPostBaseCBuffer_080.z * (_1055 + -0.5f);
        _1071 = (_1060 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _1072 = (_1061 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _1076 = sqrt((_1071 * _1071) + (_1072 * _1072));
        _1080 = UberPostBaseCBuffer_080.y * _1076;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _1092 = ((1.0f / _1080) * tan(UberPostBaseCBuffer_080.x * _1076));
        } else {
          _1092 = ((UberPostBaseCBuffer_080.x * (1.0f / _1076)) * atan(_1080));
        }
        _1093 = _1092 + -1.0f;
        _1099 = ((_1060 + 0.5f) + (_1093 * _1071));
        _1100 = ((_1061 + 0.5f) + (_1093 * _1072));
      } else {
        _1099 = _1054;
        _1100 = _1055;
      }
      _1109 = (((float4)(t1.SampleBias(s0, float2(_1001, _1002), (Globals_976), int2(0, 0)))).x);
      _1110 = (((float4)(t1.SampleBias(s0, float2(_1050, _1051), (Globals_976), int2(0, 0)))).y);
      _1111 = (((float4)(t1.SampleBias(s0, float2(_1099, _1100), (Globals_976), int2(0, 0)))).z);
    } else {
      _1104 = t1.SampleBias(s0, float2(_709, _710), (Globals_976), int2(0, 0));
      _1109 = _1104.x;
      _1110 = _1104.y;
      _1111 = _1104.z;
    }
    _1117 = (((float4)(t1.SampleBias(s0, float2(_709, _710), (Globals_976), int2(0, 0)))).w);
    _1118 = _1109;
    _1119 = _1110;
    _1120 = _1111;
  }
  _1127 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _1127)) {
    _1137 = fmod((((Globals_2208.y) * _710) * UberPostBaseCBuffer_448.x), 2.0f);
    _1145 = (((select((_1137 > 1.0f), (2.0f - _1137), _1137) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _709;
    _1148 = (Globals_2208.w) * (Globals_2208.x);
    _1169 = t5.SampleBias(s3, float2(_1145, ((select(((frac((((_1145 + abs(UberPostBaseCBuffer_464.y)) * _1148) - (UberPostBaseCBuffer_464.y * _710)) / ((_1148 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _710)), (Globals_976), int2(0, 0));
    _1206 = ((((-0.699999988079071f - _1169.x) + (exp2(log2(abs(_1169.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1169.x < 0.30000001192092896f), 0.0f, 1.0f)) + _1169.x) * UberPostBaseCBuffer_336.x;
    _1207 = ((((-0.699999988079071f - _1169.y) + (exp2(log2(abs(_1169.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1169.y < 0.30000001192092896f), 0.0f, 1.0f)) + _1169.y) * UberPostBaseCBuffer_336.x;
    _1208 = ((((-0.699999988079071f - _1169.z) + (exp2(log2(abs(_1169.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1169.z < 0.30000001192092896f), 0.0f, 1.0f)) + _1169.z) * UberPostBaseCBuffer_336.x;
    _1209 = dot(float3(_1118, _1119, _1120), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _1212 = (UberPostBaseCBuffer_352.x > 0.5f);
    _1225 = select(_1212, ((((_1206 * _1209) - _1206) * _1117) + _1206), _1206);
    _1226 = select(_1212, ((((_1207 * _1209) - _1207) * _1117) + _1207), _1207);
    _1227 = select(_1212, ((((_1208 * _1209) - _1208) * _1117) + _1208), _1208);
    if (_1127) {
      _1238 = t6.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _709) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _710) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _1252 = (((_1238.x * _1206) * UberPostBaseCBuffer_336.y) + _1225);
      _1253 = (((_1238.y * _1207) * UberPostBaseCBuffer_336.y) + _1226);
      _1254 = (((_1238.z * _1208) * UberPostBaseCBuffer_336.y) + _1227);
    } else {
      _1252 = _1225;
      _1253 = _1226;
      _1254 = _1227;
    }
    _1264 = (_1252 + _1118);
    _1265 = (_1253 + _1119);
    _1266 = (_1254 + _1120);
    _1267 = saturate((((_1253 + _1252) + _1254) * 0.33329999446868896f) + _1117);
  } else {
    _1264 = _1118;
    _1265 = _1119;
    _1266 = _1120;
    _1267 = _1117;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _1284 = abs(_710 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _1286 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_709 - UberPostBaseCBuffer_112.x);
    _1292 = exp2(log2(saturate(1.0f - dot(float2(_1286, _1284), float2(_1286, _1284)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _1306 = (((_1292 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _1264);
    _1307 = (((_1292 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _1265);
    _1308 = (((_1292 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _1266);
  } else {
    _1306 = _1264;
    _1307 = _1265;
    _1308 = _1266;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_1306, _1307, _1308);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t3, s0, UberPostBaseCBuffer_000.xyz);
    _1357 = tonemapped.x;
    _1358 = tonemapped.y;
    _1359 = tonemapped.z;
  } else {
    _1331 = saturate((log2((_1308 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _1332 = floor(_1331);
    _1338 = ((saturate((log2((_1307 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _1340 = (_1332 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_1306 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _1341 = _1331 - _1332;
    _1343 = t3.SampleLevel(s0, float2((_1340 + UberPostBaseCBuffer_000.y), _1338), 0.0f);
    _1347 = t3.SampleLevel(s0, float2(_1340, _1338), 0.0f);
    _1357 = ((_1343.x - _1347.x) * _1341) + _1347.x;
    _1358 = ((_1343.y - _1347.y) * _1341) + _1347.y;
    _1359 = ((_1343.z - _1347.z) * _1341) + _1347.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _1379 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * _538) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * _539) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _1383 = 1.0f - (sqrt(dot(float3(_1357, _1358, _1359), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _1397 = ((((UberPostBaseCBuffer_208.x * _1357) * _1379) * _1383) + _1357);
    _1398 = ((((UberPostBaseCBuffer_208.x * _1358) * _1379) * _1383) + _1358);
    _1399 = ((((UberPostBaseCBuffer_208.x * _1359) * _1379) * _1383) + _1359);
  } else {
    _1397 = _1357;
    _1398 = _1358;
    _1399 = _1359;
  }
  _1403 = ((_563 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _551;
  _1405 = atan(_1403 / _550);
  _1408 = (_550 < 0.0f);
  _1409 = (_550 == 0.0f);
  _1410 = (_1403 >= 0.0f);
  _1411 = (_1403 < 0.0f);
  _28[0] = ((((Globals_2208.x) * (_538 + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _29[0] = _539;
  _28[1] = select((_1409 && _1410), 2.0f, select((_1409 && _1411), -2.0f, (select((_1408 && _1411), (_1405 + -3.1415927410125732f), select((_1408 && _1410), (_1405 + 3.1415927410125732f), _1405)) * 1.2732394933700562f)));
  _29[1] = (sqrt((_1403 * _1403) + (_550 * _550)) * 0.5f);
  _28[2] = _538;
  _29[2] = _539;
  _1468 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _1491 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _1516 = t10.SampleBias(s7, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _672) + (UberPostScreenEffectsBaseCBuffer_176.x * _547)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_28[min((uint)(_1491), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _673) + (UberPostScreenEffectsBaseCBuffer_176.y * _547)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_29[min((uint)(_1491), 2u)])))), (Globals_976), int2(0, 0));
  _34[0] = _1516.x;
  _34[1] = _1516.y;
  _34[2] = _1516.z;
  _34[3] = _1516.w;
  _1529 = ((_34[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _1537 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _1541 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _1556 = UberPostScreenEffectsBaseCBuffer_208.y * _1529;
  _1570 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1584 = UberPostScreenEffectsBaseCBuffer_208.z * _1529;
  _1600 = t9.SampleBias(s6, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _672) + (UberPostScreenEffectsBaseCBuffer_160.z * _547)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_28[min((uint)(_1570), 2u)]))) + _1584), (((((UberPostScreenEffectsRandomCBuffer_000.y + _673) + (UberPostScreenEffectsBaseCBuffer_160.w * _547)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_29[min((uint)(_1570), 2u)]))) + _1584)), (Globals_976), int2(0, 0));
  _33[0] = _1600.x;
  _33[1] = _1600.y;
  _33[2] = _1600.z;
  _33[3] = _1600.w;
  _1611 = _33[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1612 = t7.SampleBias(s4, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _547) + _672) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_28[min((uint)(_1541), 2u)]) * _1537) * UberPostScreenEffectsBaseCBuffer_032.x)) + _1556), (((((UberPostScreenEffectsBaseCBuffer_096.y * _547) + _673) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_29[min((uint)(_1541), 2u)]) * _1537) * UberPostScreenEffectsBaseCBuffer_032.y)) + _1556)), (Globals_976), int2(0, 0));
  _1620 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1611, 1.0f);
  _32[0] = _1612.x;
  _32[1] = _1612.y;
  _32[2] = _1612.z;
  _32[3] = _1612.w;
  _1631 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1634 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1620);
  _1643 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1644 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1645 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1657 = saturate((_1620 * (_32[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1664 = select(_1631, (((_1643 * _1634) + UberPostScreenEffectsBaseCBuffer_064.x) * _1612.x), ((_1643 * _1657) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1665 = select(_1631, (((_1644 * _1634) + UberPostScreenEffectsBaseCBuffer_064.y) * _1612.y), ((_1644 * _1657) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1666 = select(_1631, (((_1645 * _1634) + UberPostScreenEffectsBaseCBuffer_064.z) * _1612.z), ((_1645 * _1657) + UberPostScreenEffectsBaseCBuffer_064.z));
  _31[0] = _1612.x;
  _31[1] = _1612.y;
  _31[2] = _1612.z;
  _31[3] = _1612.w;
  _1675 = _31[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1676 = _1675 * _1611;
  _1692 = t8.SampleBias(s5, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _547) + _672) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_28[min((uint)(_1468), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _547) + _673) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_29[min((uint)(_1468), 2u)])))), (Globals_976), int2(0, 0));
  _30[0] = _1692.x;
  _30[1] = _1692.y;
  _30[2] = _1692.z;
  _30[3] = _1692.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1714 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1675));
  } else {
    _1714 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1676 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1676 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1716 = ((_30[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1714) * _603;
  _1720 = select((_1716 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1716;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1796 = ((_1720 * (_1664 - _1397)) + _1397);
    _1797 = ((_1720 * (_1665 - _1398)) + _1398);
    _1798 = ((_1720 * (_1666 - _1399)) + _1399);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1796 = ((_1720 * _1664) + _1397);
      _1797 = ((_1720 * _1665) + _1398);
      _1798 = ((_1720 * _1666) + _1399);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1796 = (((_1720 * (_1664 + -1.0f)) + 1.0f) * _1397);
        _1797 = (((_1720 * (_1665 + -1.0f)) + 1.0f) * _1398);
        _1798 = (((_1720 * (_1666 + -1.0f)) + 1.0f) * _1399);
      } else {
        _1762 = _1720 * (_1664 + -0.5f);
        _1763 = _1720 * (_1665 + -0.5f);
        _1764 = _1720 * (_1666 + -0.5f);
        _1796 = select((_1397 < 0.5f), ((_1397 * 2.0f) * (_1762 + 0.5f)), (1.0f - (((1.0f - _1397) * 2.0f) * (0.5f - _1762))));
        _1797 = select((_1398 < 0.5f), ((_1398 * 2.0f) * (_1763 + 0.5f)), (1.0f - (((1.0f - _1398) * 2.0f) * (0.5f - _1763))));
        _1798 = select((_1399 < 0.5f), ((_1399 * 2.0f) * (_1764 + 0.5f)), (1.0f - (((1.0f - _1399) * 2.0f) * (0.5f - _1764))));
      }
    }
  }
  SV_Target.x = (_1796);
  SV_Target.y = (_1797);
  SV_Target.z = (_1798);
  SV_Target.w = _1267;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
