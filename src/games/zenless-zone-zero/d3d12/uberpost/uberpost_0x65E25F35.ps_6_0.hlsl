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
  float _73;
  float _80;
  float _81;
  float _671;
  float _672;
  float _708;
  float _709;
  float _710;
  float _711;
  float _712;
  float _713;
  float _714;
  float _715;
  float _799;
  float _806;
  float _807;
  float _856;
  float _863;
  float _864;
  float _911;
  float _918;
  float _919;
  float _993;
  float _1000;
  float _1001;
  float _1042;
  float _1049;
  float _1050;
  float _1091;
  float _1098;
  float _1099;
  float _1108;
  float _1109;
  float _1110;
  float _1116;
  float _1117;
  float _1118;
  float _1119;
  float _1251;
  float _1252;
  float _1253;
  float _1263;
  float _1264;
  float _1265;
  float _1266;
  float _1305;
  float _1306;
  float _1307;
  float _1345;
  float _1346;
  float _1347;
  float _1662;
  float _1744;
  float _1745;
  float _1746;
  float _41;
  float _42;
  float _52;
  float _53;
  float _57;
  float _61;
  float _74;
  float4 _89;
  float _113;
  float _115;
  float _131;
  float _132;
  float _133;
  float _134;
  float _135;
  float _136;
  float _137;
  float _138;
  float _139;
  float _140;
  float _143;
  float _146;
  float _149;
  float _151;
  float _166;
  float _180;
  float _186;
  float _187;
  float _188;
  float _190;
  float _195;
  float _203;
  float _204;
  float _209;
  float _210;
  float _211;
  float _214;
  float _215;
  float _218;
  float _219;
  float _220;
  bool _221;
  float _222;
  float _223;
  float _226;
  float _227;
  float _228;
  float _229;
  float _236;
  float _237;
  float _238;
  float _239;
  float _246;
  float _247;
  float _248;
  float _259;
  float _262;
  float _265;
  float _272;
  float _273;
  float _274;
  float _293;
  float _294;
  float _295;
  float _296;
  float _297;
  float _298;
  float _308;
  float _309;
  float _310;
  float _311;
  float _312;
  float _313;
  float _317;
  float _318;
  float _319;
  float _326;
  float _327;
  float _328;
  float _362;
  float _363;
  float _364;
  float _367;
  float _368;
  float _371;
  float _372;
  float _373;
  bool _374;
  float _375;
  float _376;
  float _379;
  float _380;
  float _381;
  float _382;
  float _389;
  float _390;
  float _391;
  float _392;
  float _399;
  float _400;
  float _401;
  float _412;
  float _415;
  float _418;
  float _425;
  float _426;
  float _427;
  float _446;
  float _447;
  float _448;
  float _449;
  float _450;
  float _451;
  float _461;
  float _462;
  float _463;
  float _464;
  float _465;
  float _466;
  float _470;
  float _471;
  float _472;
  float _479;
  float _480;
  float _481;
  float _518;
  float _536;
  float _537;
  float _538;
  float _546;
  float _547;
  float _548;
  float _549;
  float _550;
  float _560;
  float _562;
  float _564;
  float _565;
  float _566;
  float _577;
  float _587;
  float _593;
  float _599;
  float _602;
  float _610;
  float _612;
  bool _615;
  bool _616;
  bool _617;
  bool _618;
  bool _642;
  float4 _658;
  float _667;
  bool _675;
  float4 _679;
  float _685;
  float _686;
  float _689;
  float _690;
  float _691;
  float _723;
  float _725;
  float _729;
  float _731;
  float _733;
  float _735;
  float _742;
  float _747;
  float _749;
  float _751;
  float _758;
  float _759;
  bool _762;
  float _767;
  float _768;
  float _778;
  float _779;
  float _783;
  float _787;
  float _800;
  float4 _810;
  float _818;
  float _819;
  float _824;
  float _825;
  float _835;
  float _836;
  float _840;
  float _844;
  float _857;
  float4 _865;
  float _873;
  float _874;
  float _879;
  float _880;
  float _890;
  float _891;
  float _895;
  float _899;
  float _912;
  float4 _920;
  float _952;
  float _953;
  bool _956;
  float _961;
  float _962;
  float _972;
  float _973;
  float _977;
  float _981;
  float _994;
  float _1004;
  float _1005;
  float _1010;
  float _1011;
  float _1021;
  float _1022;
  float _1026;
  float _1030;
  float _1043;
  float _1053;
  float _1054;
  float _1059;
  float _1060;
  float _1070;
  float _1071;
  float _1075;
  float _1079;
  float _1092;
  float4 _1103;
  bool _1126;
  float _1136;
  float _1144;
  float _1147;
  float4 _1168;
  float _1205;
  float _1206;
  float _1207;
  float _1208;
  bool _1211;
  float _1224;
  float _1225;
  float _1226;
  float4 _1237;
  float _1283;
  float _1285;
  float _1291;
  float _1327;
  float _1331;
  float _1351;
  float _1353;
  bool _1356;
  bool _1357;
  bool _1358;
  bool _1359;
  int _1416;
  int _1439;
  float4 _1464;
  float _1477;
  float _1485;
  int _1489;
  float _1504;
  int _1518;
  float _1532;
  float4 _1548;
  float _1559;
  float4 _1560;
  float _1568;
  bool _1579;
  float _1582;
  float _1591;
  float _1592;
  float _1593;
  float _1605;
  float _1612;
  float _1613;
  float _1614;
  float _1623;
  float _1624;
  float4 _1640;
  float _1664;
  float _1668;
  float _1710;
  float _1711;
  float _1712;
  float _27[3];
  float _28[3];
  float _29[4];
  float _30[4];
  float _31[4];
  float _32[4];
  float _33[4];
  if (!(UberPostBaseCBuffer_080.w == 0.0f)) {
    _41 = UberPostBaseCBuffer_080.z * (TEXCOORD.x + -0.5f);
    _42 = UberPostBaseCBuffer_080.z * (TEXCOORD.y + -0.5f);
    _52 = (_41 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
    _53 = (_42 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
    _57 = sqrt((_52 * _52) + (_53 * _53));
    _61 = UberPostBaseCBuffer_080.y * _57;
    [branch]
    if (UberPostBaseCBuffer_080.w > 0.0f) {
      _73 = ((1.0f / _61) * tan(UberPostBaseCBuffer_080.x * _57));
    } else {
      _73 = ((UberPostBaseCBuffer_080.x * (1.0f / _57)) * atan(_61));
    }
    _74 = _73 + -1.0f;
    _80 = ((_41 + 0.5f) + (_74 * _52));
    _81 = ((_42 + 0.5f) + (_74 * _53));
  } else {
    _80 = TEXCOORD.x;
    _81 = TEXCOORD.y;
  }
  _89 = t0.Load(int3((int)(uint((Globals_2208.x) * TEXCOORD.x)), (int)(uint((Globals_2208.y) * TEXCOORD.y)), 0));
  _113 = (TEXCOORD.x * 2.0f) + -1.0f;
  _115 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  _131 = mad((Globals_2144[2].w), _89.x, mad((Globals_2144[1].w), _115, ((Globals_2144[0].w) * _113))) + (Globals_2144[3].w);
  _132 = (mad((Globals_2144[2].x), _89.x, mad((Globals_2144[1].x), _115, ((Globals_2144[0].x) * _113))) + (Globals_2144[3].x)) / _131;
  _133 = (mad((Globals_2144[2].y), _89.x, mad((Globals_2144[1].y), _115, ((Globals_2144[0].y) * _113))) + (Globals_2144[3].y)) / _131;
  _134 = (mad((Globals_2144[2].z), _89.x, mad((Globals_2144[1].z), _115, ((Globals_2144[0].z) * _113))) + (Globals_2144[3].z)) / _131;
  _135 = ddy_coarse(_132);
  _136 = ddy_coarse(_133);
  _137 = ddy_coarse(_134);
  _138 = ddx_coarse(_132);
  _139 = ddx_coarse(_133);
  _140 = ddx_coarse(_134);
  _143 = (_139 * _137) - (_140 * _136);
  _146 = (_140 * _135) - (_138 * _137);
  _149 = (_138 * _136) - (_139 * _135);
  _151 = rsqrt(dot(float3(_143, _146, _149), float3(_143, _146, _149)));
  _166 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((Globals_992.z) * _89.x) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y);
  _180 = UberPostBaseCBuffer_544.w * _133;
  _186 = max(abs(_143 * _151), 9.999999747378752e-06f);
  _187 = max(abs(_146 * _151), 9.999999747378752e-06f);
  _188 = max(abs(_151 * _149), 9.999999747378752e-06f);
  _190 = rsqrt(dot(float3(_186, _187, _188), float3(_186, _187, _188)));
  _195 = _190 * ((_187 + _186) + _188);
  _203 = UberPostBaseCBuffer_560.x * (Globals_208[1].x);
  _204 = UberPostBaseCBuffer_560.y * (Globals_208[1].x);
  _209 = (_180 * UberPostBaseCBuffer_560.z) + _203;
  _210 = ((UberPostBaseCBuffer_544.w * _134) * UberPostBaseCBuffer_560.w) + _204;
  _211 = dot(float2(_209, _210), float2(0.3660254180431366f, 0.3660254180431366f));
  _214 = floor(_209 + _211);
  _215 = floor(_210 + _211);
  _218 = dot(float2(_214, _215), float2(0.21132487058639526f, 0.21132487058639526f));
  _219 = (_209 - _214) + _218;
  _220 = (_210 - _215) + _218;
  _221 = (_219 > _220);
  _222 = select(_221, 1.0f, 0.0f);
  _223 = select(_221, 0.0f, 1.0f);
  _226 = _219 + -0.5773502588272095f;
  _227 = _220 + -0.5773502588272095f;
  _228 = (_219 + 0.21132487058639526f) - _222;
  _229 = (_220 + 0.21132487058639526f) - _223;
  _236 = _214 - (floor(_214 * 0.0034602077212184668f) * 289.0f);
  _237 = _215 - (floor(_215 * 0.0034602077212184668f) * 289.0f);
  _238 = _237 + _223;
  _239 = _237 + 1.0f;
  _246 = ((_237 * 34.0f) + 1.0f) * _237;
  _247 = ((_238 * 34.0f) + 1.0f) * _238;
  _248 = ((_239 * 34.0f) + 1.0f) * _239;
  _259 = (_246 - (floor(_246 * 0.0034602077212184668f) * 289.0f)) + _236;
  _262 = ((_222 + _236) - (floor(_247 * 0.0034602077212184668f) * 289.0f)) + _247;
  _265 = ((_236 + 1.0f) - (floor(_248 * 0.0034602077212184668f) * 289.0f)) + _248;
  _272 = ((_259 * 34.0f) + 1.0f) * _259;
  _273 = ((_262 * 34.0f) + 1.0f) * _262;
  _274 = ((_265 * 34.0f) + 1.0f) * _265;
  _293 = max((0.5f - dot(float2(_219, _220), float2(_219, _220))), 0.0f);
  _294 = max((0.5f - dot(float2(_228, _229), float2(_228, _229))), 0.0f);
  _295 = max((0.5f - dot(float2(_226, _227), float2(_226, _227))), 0.0f);
  _296 = _293 * _293;
  _297 = _294 * _294;
  _298 = _295 * _295;
  _308 = frac((_272 - (floor(_272 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _309 = frac((_273 - (floor(_273 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _310 = frac((_274 - (floor(_274 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _311 = _308 + -1.0f;
  _312 = _309 + -1.0f;
  _313 = _310 + -1.0f;
  _317 = abs(_311) + -0.5f;
  _318 = abs(_312) + -0.5f;
  _319 = abs(_313) + -0.5f;
  _326 = _311 - floor(_308 + -0.5f);
  _327 = _312 - floor(_309 + -0.5f);
  _328 = _313 - floor(_310 + -0.5f);
  _362 = ((UberPostBaseCBuffer_544.w * _132) * UberPostBaseCBuffer_592.x) + _203;
  _363 = (_180 * UberPostBaseCBuffer_592.y) + _204;
  _364 = dot(float2(_362, _363), float2(0.3660254180431366f, 0.3660254180431366f));
  _367 = floor(_362 + _364);
  _368 = floor(_363 + _364);
  _371 = dot(float2(_367, _368), float2(0.21132487058639526f, 0.21132487058639526f));
  _372 = (_362 - _367) + _371;
  _373 = (_363 - _368) + _371;
  _374 = (_372 > _373);
  _375 = select(_374, 1.0f, 0.0f);
  _376 = select(_374, 0.0f, 1.0f);
  _379 = _372 + -0.5773502588272095f;
  _380 = _373 + -0.5773502588272095f;
  _381 = (_372 + 0.21132487058639526f) - _375;
  _382 = (_373 + 0.21132487058639526f) - _376;
  _389 = _367 - (floor(_367 * 0.0034602077212184668f) * 289.0f);
  _390 = _368 - (floor(_368 * 0.0034602077212184668f) * 289.0f);
  _391 = _390 + _376;
  _392 = _390 + 1.0f;
  _399 = ((_390 * 34.0f) + 1.0f) * _390;
  _400 = ((_391 * 34.0f) + 1.0f) * _391;
  _401 = ((_392 * 34.0f) + 1.0f) * _392;
  _412 = (_399 - (floor(_399 * 0.0034602077212184668f) * 289.0f)) + _389;
  _415 = ((_375 + _389) - (floor(_400 * 0.0034602077212184668f) * 289.0f)) + _400;
  _418 = ((_389 + 1.0f) - (floor(_401 * 0.0034602077212184668f) * 289.0f)) + _401;
  _425 = ((_412 * 34.0f) + 1.0f) * _412;
  _426 = ((_415 * 34.0f) + 1.0f) * _415;
  _427 = ((_418 * 34.0f) + 1.0f) * _418;
  _446 = max((0.5f - dot(float2(_372, _373), float2(_372, _373))), 0.0f);
  _447 = max((0.5f - dot(float2(_381, _382), float2(_381, _382))), 0.0f);
  _448 = max((0.5f - dot(float2(_379, _380), float2(_379, _380))), 0.0f);
  _449 = _446 * _446;
  _450 = _447 * _447;
  _451 = _448 * _448;
  _461 = frac((_425 - (floor(_425 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _462 = frac((_426 - (floor(_426 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _463 = frac((_427 - (floor(_427 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _464 = _461 + -1.0f;
  _465 = _462 + -1.0f;
  _466 = _463 + -1.0f;
  _470 = abs(_464) + -0.5f;
  _471 = abs(_465) + -0.5f;
  _472 = abs(_466) + -0.5f;
  _479 = _464 - floor(_461 + -0.5f);
  _480 = _465 - floor(_462 + -0.5f);
  _481 = _466 - floor(_463 + -0.5f);
  _518 = ((((_166 * _166) * 130.0f) * exp2(log2(1.0f - saturate(abs(_133 - UberPostBaseCBuffer_576.y) / UberPostBaseCBuffer_576.x)) * UberPostBaseCBuffer_576.z)) * UberPostBaseCBuffer_544.x) * ((dot(float3(((_449 * _449) * (1.7928428649902344f - (((_479 * _479) + (_470 * _470)) * 0.8537347316741943f))), ((_450 * _450) * (1.7928428649902344f - (((_480 * _480) + (_471 * _471)) * 0.8537347316741943f))), ((_451 * _451) * (1.7928428649902344f - (((_481 * _481) + (_472 * _472)) * 0.8537347316741943f)))), float3(((_479 * _372) + (_470 * _373)), ((_480 * _381) + (_471 * _382)), ((_481 * _379) + (_472 * _380)))) * ((_190 * _188) / _195)) + (dot(float3(((_296 * _296) * (1.7928428649902344f - (((_326 * _326) + (_317 * _317)) * 0.8537347316741943f))), ((_297 * _297) * (1.7928428649902344f - (((_327 * _327) + (_318 * _318)) * 0.8537347316741943f))), ((_298 * _298) * (1.7928428649902344f - (((_328 * _328) + (_319 * _319)) * 0.8537347316741943f)))), float3(((_326 * _219) + (_317 * _220)), ((_327 * _228) + (_318 * _229)), ((_328 * _226) + (_319 * _227)))) * ((_190 * _186) / _195)));
  _536 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((((float4)(t0.Load(int3((int)(uint((_518 + TEXCOORD.x) * (Globals_2208.x))), (int)(uint((_518 + TEXCOORD.y) * (Globals_2208.y))), 0)))).x) * (Globals_992.z)) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y) * _518;
  _537 = _536 + TEXCOORD.x;
  _538 = _536 + TEXCOORD.y;
  _546 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _547 = _537 * 2.0f;
  _548 = _538 * 2.0f;
  _549 = _547 + -1.0f;
  _550 = _548 + -1.0f;
  _560 = (Globals_080.z) + -1.0f;
  _562 = (_560 * (Globals_080.y)) + -1.0f;
  _564 = (_562 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _565 = _564 * _550;
  _566 = _549 * _549;
  _577 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_549)), (_564 * (1.0f - abs(_550)))), (1.0f - (sqrt((_565 * _565) + _566) * 0.7070000171661377f)));
  _587 = saturate((_577 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _593 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_587 * _587) * (3.0f - (_587 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _577), 0.0f, 1.0f));
  _599 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _593), _593) * UberPostScreenEffectsBaseCBuffer_016.z;
  _602 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _599, 0.0f) * _599;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _610 = ((_562 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _550;
    _612 = atan(_610 / _549);
    _615 = (_549 < 0.0f);
    _616 = (_549 == 0.0f);
    _617 = (_610 >= 0.0f);
    _618 = (_610 < 0.0f);
    _642 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _658 = t10.SampleBias(s8, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _546)) + (select(_642, select((_616 && _617), 2.0f, select((_616 && _618), -2.0f, (select((_615 && _618), (_612 + -3.1415927410125732f), select((_615 && _617), (_612 + 3.1415927410125732f), _612)) * 1.2732394933700562f))), _537) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _546)) + (select(_642, (sqrt((_610 * _610) + _566) * 0.6366197466850281f), ((((Globals_080.y) * (_538 + -0.5f)) * _560) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _667 = (_602 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _671 = (_667 * ((_658.x * 2.0f) + -1.0f));
    _672 = (_667 * ((_658.y * 2.0f) + -1.0f));
  } else {
    _671 = 0.0f;
    _672 = 0.0f;
  }
  _675 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_675) {
    _679 = t3.SampleBias(s2, float2(_537, _538), (Globals_976), int2(0, 0));
    _685 = (_679.x * 0.10000000149011612f) + _671;
    _686 = (_679.y * 0.10000000149011612f) + _672;
    _689 = UberPostBaseCBuffer_176.w * _679.z;
    _690 = _689 * _685;
    _691 = _689 * _686;
    _708 = (_685 + _80);
    _709 = (_686 + _81);
    _710 = ((_690 * UberPostBaseCBuffer_176.x) + _685);
    _711 = ((_691 * UberPostBaseCBuffer_176.x) + _686);
    _712 = ((_690 * UberPostBaseCBuffer_176.y) + _685);
    _713 = ((_691 * UberPostBaseCBuffer_176.y) + _686);
    _714 = ((_690 * UberPostBaseCBuffer_176.z) + _685);
    _715 = ((_691 * UberPostBaseCBuffer_176.z) + _686);
  } else {
    _708 = _80;
    _709 = _81;
    _710 = 0.0f;
    _711 = 0.0f;
    _712 = 0.0f;
    _713 = 0.0f;
    _714 = 0.0f;
    _715 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _723 = (_547 - UberPostBaseCBuffer_384.x) + -0.5f;
    _725 = (_548 - UberPostBaseCBuffer_384.y) + -0.5f;
    _729 = dot(float2(_723, _725), float2(_723, _725)) * -0.3333333432674408f;
    _731 = (_729 * _723) * UberPostBaseCBuffer_192.z;
    _733 = (_729 * _725) * UberPostBaseCBuffer_192.z;
    _735 = rsqrt(dot(float3(_731, _733, 9.999999747378752e-05f), float3(_731, _733, 9.999999747378752e-05f)));
    _742 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _747 = exp2(log2(sqrt((_731 * _731) + (_733 * _733)) / _742) * UberPostBaseCBuffer_384.z);
    _749 = ((_731 * _735) * _742) * _747;
    _751 = ((_733 * _735) * _742) * _747;
    _758 = (_710 + _537) + (_749 * UberPostBaseCBuffer_400.w);
    _759 = (_711 + _538) + (_751 * UberPostBaseCBuffer_400.w);
    _762 = !(UberPostBaseCBuffer_080.w == 0.0f);
    if (_762) {
      _767 = UberPostBaseCBuffer_080.z * (_758 + -0.5f);
      _768 = UberPostBaseCBuffer_080.z * (_759 + -0.5f);
      _778 = (_767 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _779 = (_768 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _783 = sqrt((_778 * _778) + (_779 * _779));
      _787 = UberPostBaseCBuffer_080.y * _783;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _799 = ((1.0f / _787) * tan(UberPostBaseCBuffer_080.x * _783));
      } else {
        _799 = ((UberPostBaseCBuffer_080.x * (1.0f / _783)) * atan(_787));
      }
      _800 = _799 + -1.0f;
      _806 = ((_767 + 0.5f) + (_800 * _778));
      _807 = ((_768 + 0.5f) + (_800 * _779));
    } else {
      _806 = _758;
      _807 = _759;
    }
    _810 = t1.SampleBias(s0, float2(_806, _807), (Globals_976), int2(0, 0));
    _818 = (_712 + _537) + (UberPostBaseCBuffer_416.w * _749);
    _819 = (_713 + _538) + (UberPostBaseCBuffer_416.w * _751);
    if (_762) {
      _824 = UberPostBaseCBuffer_080.z * (_818 + -0.5f);
      _825 = UberPostBaseCBuffer_080.z * (_819 + -0.5f);
      _835 = (_824 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _836 = (_825 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _840 = sqrt((_835 * _835) + (_836 * _836));
      _844 = UberPostBaseCBuffer_080.y * _840;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _856 = ((1.0f / _844) * tan(UberPostBaseCBuffer_080.x * _840));
      } else {
        _856 = ((UberPostBaseCBuffer_080.x * (1.0f / _840)) * atan(_844));
      }
      _857 = _856 + -1.0f;
      _863 = ((_824 + 0.5f) + (_857 * _835));
      _864 = ((_825 + 0.5f) + (_857 * _836));
    } else {
      _863 = _818;
      _864 = _819;
    }
    _865 = t1.SampleBias(s0, float2(_863, _864), (Globals_976), int2(0, 0));
    _873 = (_714 + _537) + (UberPostBaseCBuffer_432.w * _749);
    _874 = (_715 + _538) + (UberPostBaseCBuffer_432.w * _751);
    if (_762) {
      _879 = UberPostBaseCBuffer_080.z * (_873 + -0.5f);
      _880 = UberPostBaseCBuffer_080.z * (_874 + -0.5f);
      _890 = (_879 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _891 = (_880 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _895 = sqrt((_890 * _890) + (_891 * _891));
      _899 = UberPostBaseCBuffer_080.y * _895;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _911 = ((1.0f / _899) * tan(UberPostBaseCBuffer_080.x * _895));
      } else {
        _911 = ((UberPostBaseCBuffer_080.x * (1.0f / _895)) * atan(_899));
      }
      _912 = _911 + -1.0f;
      _918 = ((_879 + 0.5f) + (_912 * _890));
      _919 = ((_880 + 0.5f) + (_912 * _891));
    } else {
      _918 = _873;
      _919 = _874;
    }
    _920 = t1.SampleBias(s0, float2(_918, _919), (Globals_976), int2(0, 0));
    _1116 = (((float4)(t1.SampleBias(s0, float2(_708, _709), (Globals_976), int2(0, 0)))).w);
    _1117 = (((UberPostBaseCBuffer_416.x * _865.y) + (UberPostBaseCBuffer_400.x * _810.x)) + (UberPostBaseCBuffer_432.x * _920.z));
    _1118 = (((UberPostBaseCBuffer_416.y * _865.y) + (UberPostBaseCBuffer_400.y * _810.x)) + (UberPostBaseCBuffer_432.y * _920.z));
    _1119 = (((UberPostBaseCBuffer_416.z * _865.y) + (UberPostBaseCBuffer_400.z * _810.x)) + (UberPostBaseCBuffer_432.z * _920.z));
  } else {
    if (_675) {
      _952 = _710 + _537;
      _953 = _711 + _538;
      _956 = !(UberPostBaseCBuffer_080.w == 0.0f);
      if (_956) {
        _961 = UberPostBaseCBuffer_080.z * (_952 + -0.5f);
        _962 = UberPostBaseCBuffer_080.z * (_953 + -0.5f);
        _972 = (_961 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _973 = (_962 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _977 = sqrt((_972 * _972) + (_973 * _973));
        _981 = UberPostBaseCBuffer_080.y * _977;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _993 = ((1.0f / _981) * tan(UberPostBaseCBuffer_080.x * _977));
        } else {
          _993 = ((UberPostBaseCBuffer_080.x * (1.0f / _977)) * atan(_981));
        }
        _994 = _993 + -1.0f;
        _1000 = ((_961 + 0.5f) + (_994 * _972));
        _1001 = ((_962 + 0.5f) + (_994 * _973));
      } else {
        _1000 = _952;
        _1001 = _953;
      }
      _1004 = _712 + _537;
      _1005 = _713 + _538;
      if (_956) {
        _1010 = UberPostBaseCBuffer_080.z * (_1004 + -0.5f);
        _1011 = UberPostBaseCBuffer_080.z * (_1005 + -0.5f);
        _1021 = (_1010 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _1022 = (_1011 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _1026 = sqrt((_1021 * _1021) + (_1022 * _1022));
        _1030 = UberPostBaseCBuffer_080.y * _1026;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _1042 = ((1.0f / _1030) * tan(UberPostBaseCBuffer_080.x * _1026));
        } else {
          _1042 = ((UberPostBaseCBuffer_080.x * (1.0f / _1026)) * atan(_1030));
        }
        _1043 = _1042 + -1.0f;
        _1049 = ((_1010 + 0.5f) + (_1043 * _1021));
        _1050 = ((_1011 + 0.5f) + (_1043 * _1022));
      } else {
        _1049 = _1004;
        _1050 = _1005;
      }
      _1053 = _714 + _537;
      _1054 = _715 + _538;
      if (_956) {
        _1059 = UberPostBaseCBuffer_080.z * (_1053 + -0.5f);
        _1060 = UberPostBaseCBuffer_080.z * (_1054 + -0.5f);
        _1070 = (_1059 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _1071 = (_1060 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _1075 = sqrt((_1070 * _1070) + (_1071 * _1071));
        _1079 = UberPostBaseCBuffer_080.y * _1075;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _1091 = ((1.0f / _1079) * tan(UberPostBaseCBuffer_080.x * _1075));
        } else {
          _1091 = ((UberPostBaseCBuffer_080.x * (1.0f / _1075)) * atan(_1079));
        }
        _1092 = _1091 + -1.0f;
        _1098 = ((_1059 + 0.5f) + (_1092 * _1070));
        _1099 = ((_1060 + 0.5f) + (_1092 * _1071));
      } else {
        _1098 = _1053;
        _1099 = _1054;
      }
      _1108 = (((float4)(t1.SampleBias(s0, float2(_1000, _1001), (Globals_976), int2(0, 0)))).x);
      _1109 = (((float4)(t1.SampleBias(s0, float2(_1049, _1050), (Globals_976), int2(0, 0)))).y);
      _1110 = (((float4)(t1.SampleBias(s0, float2(_1098, _1099), (Globals_976), int2(0, 0)))).z);
    } else {
      _1103 = t1.SampleBias(s0, float2(_708, _709), (Globals_976), int2(0, 0));
      _1108 = _1103.x;
      _1109 = _1103.y;
      _1110 = _1103.z;
    }
    _1116 = (((float4)(t1.SampleBias(s0, float2(_708, _709), (Globals_976), int2(0, 0)))).w);
    _1117 = _1108;
    _1118 = _1109;
    _1119 = _1110;
  }
  _1126 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _1126)) {
    _1136 = fmod((((Globals_2208.y) * _709) * UberPostBaseCBuffer_448.x), 2.0f);
    _1144 = (((select((_1136 > 1.0f), (2.0f - _1136), _1136) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _708;
    _1147 = (Globals_2208.w) * (Globals_2208.x);
    _1168 = t4.SampleBias(s3, float2(_1144, ((select(((frac((((_1144 + abs(UberPostBaseCBuffer_464.y)) * _1147) - (UberPostBaseCBuffer_464.y * _709)) / ((_1147 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _709)), (Globals_976), int2(0, 0));
    _1205 = ((((-0.699999988079071f - _1168.x) + (exp2(log2(abs(_1168.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1168.x < 0.30000001192092896f), 0.0f, 1.0f)) + _1168.x) * UberPostBaseCBuffer_336.x;
    _1206 = ((((-0.699999988079071f - _1168.y) + (exp2(log2(abs(_1168.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1168.y < 0.30000001192092896f), 0.0f, 1.0f)) + _1168.y) * UberPostBaseCBuffer_336.x;
    _1207 = ((((-0.699999988079071f - _1168.z) + (exp2(log2(abs(_1168.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1168.z < 0.30000001192092896f), 0.0f, 1.0f)) + _1168.z) * UberPostBaseCBuffer_336.x;
    _1208 = dot(float3(_1117, _1118, _1119), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _1211 = (UberPostBaseCBuffer_352.x > 0.5f);
    _1224 = select(_1211, ((((_1205 * _1208) - _1205) * _1116) + _1205), _1205);
    _1225 = select(_1211, ((((_1206 * _1208) - _1206) * _1116) + _1206), _1206);
    _1226 = select(_1211, ((((_1207 * _1208) - _1207) * _1116) + _1207), _1207);
    if (_1126) {
      _1237 = t5.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _708) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _709) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _1251 = (((_1237.x * _1205) * UberPostBaseCBuffer_336.y) + _1224);
      _1252 = (((_1237.y * _1206) * UberPostBaseCBuffer_336.y) + _1225);
      _1253 = (((_1237.z * _1207) * UberPostBaseCBuffer_336.y) + _1226);
    } else {
      _1251 = _1224;
      _1252 = _1225;
      _1253 = _1226;
    }
    _1263 = (_1251 + _1117);
    _1264 = (_1252 + _1118);
    _1265 = (_1253 + _1119);
    _1266 = saturate((((_1252 + _1251) + _1253) * 0.33329999446868896f) + _1116);
  } else {
    _1263 = _1117;
    _1264 = _1118;
    _1265 = _1119;
    _1266 = _1116;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _1283 = abs(_709 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _1285 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_708 - UberPostBaseCBuffer_112.x);
    _1291 = exp2(log2(saturate(1.0f - dot(float2(_1285, _1283), float2(_1285, _1283)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _1305 = (((_1291 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _1263);
    _1306 = (((_1291 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _1264);
    _1307 = (((_1291 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _1265);
  } else {
    _1305 = _1263;
    _1306 = _1264;
    _1307 = _1265;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_1305, _1306, _1307);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _1305 = tonemapped.x;
    _1306 = tonemapped.y;
    _1307 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _1327 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * _537) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * _538) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _1331 = 1.0f - (sqrt(dot(float3(_1305, _1306, _1307), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _1345 = ((((UberPostBaseCBuffer_208.x * _1305) * _1327) * _1331) + _1305);
    _1346 = ((((UberPostBaseCBuffer_208.x * _1306) * _1327) * _1331) + _1306);
    _1347 = ((((UberPostBaseCBuffer_208.x * _1307) * _1327) * _1331) + _1307);
  } else {
    _1345 = _1305;
    _1346 = _1306;
    _1347 = _1307;
  }
  _1351 = ((_562 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _550;
  _1353 = atan(_1351 / _549);
  _1356 = (_549 < 0.0f);
  _1357 = (_549 == 0.0f);
  _1358 = (_1351 >= 0.0f);
  _1359 = (_1351 < 0.0f);
  _27[0] = ((((Globals_2208.x) * (_537 + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _28[0] = _538;
  _27[1] = select((_1357 && _1358), 2.0f, select((_1357 && _1359), -2.0f, (select((_1356 && _1359), (_1353 + -3.1415927410125732f), select((_1356 && _1358), (_1353 + 3.1415927410125732f), _1353)) * 1.2732394933700562f)));
  _28[1] = (sqrt((_1351 * _1351) + (_549 * _549)) * 0.5f);
  _27[2] = _537;
  _28[2] = _538;
  _1416 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _1439 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _1464 = t9.SampleBias(s7, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _671) + (UberPostScreenEffectsBaseCBuffer_176.x * _546)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_27[min((uint)(_1439), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _672) + (UberPostScreenEffectsBaseCBuffer_176.y * _546)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_28[min((uint)(_1439), 2u)])))), (Globals_976), int2(0, 0));
  _33[0] = _1464.x;
  _33[1] = _1464.y;
  _33[2] = _1464.z;
  _33[3] = _1464.w;
  _1477 = ((_33[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _1485 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _1489 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _1504 = UberPostScreenEffectsBaseCBuffer_208.y * _1477;
  _1518 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1532 = UberPostScreenEffectsBaseCBuffer_208.z * _1477;
  _1548 = t8.SampleBias(s6, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _671) + (UberPostScreenEffectsBaseCBuffer_160.z * _546)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_27[min((uint)(_1518), 2u)]))) + _1532), (((((UberPostScreenEffectsRandomCBuffer_000.y + _672) + (UberPostScreenEffectsBaseCBuffer_160.w * _546)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_28[min((uint)(_1518), 2u)]))) + _1532)), (Globals_976), int2(0, 0));
  _32[0] = _1548.x;
  _32[1] = _1548.y;
  _32[2] = _1548.z;
  _32[3] = _1548.w;
  _1559 = _32[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1560 = t6.SampleBias(s4, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _546) + _671) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_27[min((uint)(_1489), 2u)]) * _1485) * UberPostScreenEffectsBaseCBuffer_032.x)) + _1504), (((((UberPostScreenEffectsBaseCBuffer_096.y * _546) + _672) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_28[min((uint)(_1489), 2u)]) * _1485) * UberPostScreenEffectsBaseCBuffer_032.y)) + _1504)), (Globals_976), int2(0, 0));
  _1568 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1559, 1.0f);
  _31[0] = _1560.x;
  _31[1] = _1560.y;
  _31[2] = _1560.z;
  _31[3] = _1560.w;
  _1579 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1582 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1568);
  _1591 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1592 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1593 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1605 = saturate((_1568 * (_31[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1612 = select(_1579, (((_1591 * _1582) + UberPostScreenEffectsBaseCBuffer_064.x) * _1560.x), ((_1591 * _1605) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1613 = select(_1579, (((_1592 * _1582) + UberPostScreenEffectsBaseCBuffer_064.y) * _1560.y), ((_1592 * _1605) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1614 = select(_1579, (((_1593 * _1582) + UberPostScreenEffectsBaseCBuffer_064.z) * _1560.z), ((_1593 * _1605) + UberPostScreenEffectsBaseCBuffer_064.z));
  _30[0] = _1560.x;
  _30[1] = _1560.y;
  _30[2] = _1560.z;
  _30[3] = _1560.w;
  _1623 = _30[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1624 = _1623 * _1559;
  _1640 = t7.SampleBias(s5, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _546) + _671) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_27[min((uint)(_1416), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _546) + _672) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_28[min((uint)(_1416), 2u)])))), (Globals_976), int2(0, 0));
  _29[0] = _1640.x;
  _29[1] = _1640.y;
  _29[2] = _1640.z;
  _29[3] = _1640.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1662 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1623));
  } else {
    _1662 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1624 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1624 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1664 = ((_29[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1662) * _602;
  _1668 = select((_1664 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1664;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1744 = ((_1668 * (_1612 - _1345)) + _1345);
    _1745 = ((_1668 * (_1613 - _1346)) + _1346);
    _1746 = ((_1668 * (_1614 - _1347)) + _1347);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1744 = ((_1668 * _1612) + _1345);
      _1745 = ((_1668 * _1613) + _1346);
      _1746 = ((_1668 * _1614) + _1347);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1744 = (((_1668 * (_1612 + -1.0f)) + 1.0f) * _1345);
        _1745 = (((_1668 * (_1613 + -1.0f)) + 1.0f) * _1346);
        _1746 = (((_1668 * (_1614 + -1.0f)) + 1.0f) * _1347);
      } else {
        _1710 = _1668 * (_1612 + -0.5f);
        _1711 = _1668 * (_1613 + -0.5f);
        _1712 = _1668 * (_1614 + -0.5f);
        _1744 = select((_1345 < 0.5f), ((_1345 * 2.0f) * (_1710 + 0.5f)), (1.0f - (((1.0f - _1345) * 2.0f) * (0.5f - _1710))));
        _1745 = select((_1346 < 0.5f), ((_1346 * 2.0f) * (_1711 + 0.5f)), (1.0f - (((1.0f - _1346) * 2.0f) * (0.5f - _1711))));
        _1746 = select((_1347 < 0.5f), ((_1347 * 2.0f) * (_1712 + 0.5f)), (1.0f - (((1.0f - _1347) * 2.0f) * (0.5f - _1712))));
      }
    }
  }
  SV_Target.x = (_1744);
  SV_Target.y = (_1745);
  SV_Target.z = (_1746);
  SV_Target.w = _1266;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
