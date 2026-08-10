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

Texture2D<float4> t16 : register(t16);

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
  float4 _54;
  float _78;
  float _80;
  float _96;
  float _97;
  float _98;
  float _99;
  float _100;
  float _101;
  float _102;
  float _103;
  float _104;
  float _105;
  float _108;
  float _111;
  float _114;
  float _116;
  float _131;
  float _145;
  float _151;
  float _152;
  float _153;
  float _155;
  float _160;
  float _168;
  float _169;
  float _174;
  float _175;
  float _176;
  float _179;
  float _180;
  float _183;
  float _184;
  float _185;
  bool _186;
  float _187;
  float _188;
  float _191;
  float _192;
  float _193;
  float _194;
  float _201;
  float _202;
  float _203;
  float _204;
  float _211;
  float _212;
  float _213;
  float _224;
  float _227;
  float _230;
  float _237;
  float _238;
  float _239;
  float _258;
  float _259;
  float _260;
  float _261;
  float _262;
  float _263;
  float _273;
  float _274;
  float _275;
  float _276;
  float _277;
  float _278;
  float _282;
  float _283;
  float _284;
  float _291;
  float _292;
  float _293;
  float _327;
  float _328;
  float _329;
  float _332;
  float _333;
  float _336;
  float _337;
  float _338;
  bool _339;
  float _340;
  float _341;
  float _344;
  float _345;
  float _346;
  float _347;
  float _354;
  float _355;
  float _356;
  float _357;
  float _364;
  float _365;
  float _366;
  float _377;
  float _380;
  float _383;
  float _390;
  float _391;
  float _392;
  float _411;
  float _412;
  float _413;
  float _414;
  float _415;
  float _416;
  float _426;
  float _427;
  float _428;
  float _429;
  float _430;
  float _431;
  float _435;
  float _436;
  float _437;
  float _444;
  float _445;
  float _446;
  float _483;
  float _501;
  float _502;
  float _503;
  float _511;
  float _512;
  float _513;
  float _514;
  float _515;
  float _525;
  float _527;
  float _529;
  float _530;
  float _531;
  float _542;
  float _552;
  float _558;
  float _564;
  float _567;
  float _636;
  float _637;
  float _673;
  float _674;
  float _675;
  float _676;
  float _677;
  float _678;
  float _679;
  float _680;
  float _779;
  float _780;
  float _781;
  float _810;
  float _811;
  float _812;
  float _919;
  float _920;
  float _921;
  float _1107;
  float _1108;
  float _1109;
  float _1119;
  float _1120;
  float _1121;
  float _1122;
  float _1161;
  float _1162;
  float _1163;
  float _1250;
  float _1251;
  float _1252;
  float _1574;
  float _1656;
  float _1657;
  float _1658;
  float _1685;
  float _1686;
  float _1687;
  float _1816;
  float _1817;
  float _1818;
  float _575;
  float _577;
  bool _580;
  bool _581;
  bool _582;
  bool _583;
  bool _607;
  float4 _623;
  float _632;
  float4 _644;
  float _650;
  float _651;
  float _654;
  float _655;
  float _656;
  float _683;
  float _692;
  float _702;
  float _705;
  float _706;
  float _713;
  float _714;
  float _715;
  float _717;
  float _719;
  float _721;
  float _730;
  float _743;
  float _750;
  float _757;
  float _758;
  float _759;
  float4 _773;
  float4 _804;
  float _818;
  float _819;
  float _822;
  float _823;
  float _826;
  float _827;
  float4 _828;
  float _834;
  float _836;
  float _840;
  float _842;
  float _844;
  float _846;
  float _853;
  float _858;
  float _860;
  float _862;
  float4 _869;
  float4 _877;
  float4 _885;
  float4 _934;
  float _946;
  float _947;
  float _960;
  float _965;
  float _975;
  float _976;
  float _977;
  bool _984;
  float _994;
  float _1002;
  float _1005;
  float4 _1024;
  float _1061;
  float _1062;
  float _1063;
  float _1064;
  bool _1067;
  float _1080;
  float _1081;
  float _1082;
  float4 _1093;
  float _1139;
  float _1141;
  float _1147;
  float _1186;
  float _1187;
  float _1193;
  float _1195;
  float _1196;
  float4 _1198;
  float4 _1202;
  float _1212;
  float _1213;
  float _1214;
  float _1232;
  float _1236;
  float _1263;
  float _1265;
  bool _1268;
  bool _1269;
  bool _1270;
  bool _1271;
  int _1328;
  int _1351;
  float4 _1376;
  float _1389;
  float _1397;
  int _1401;
  float _1416;
  int _1430;
  float _1444;
  float4 _1460;
  float _1471;
  float4 _1472;
  float _1480;
  bool _1491;
  float _1494;
  float _1503;
  float _1504;
  float _1505;
  float _1517;
  float _1524;
  float _1525;
  float _1526;
  float _1535;
  float _1536;
  float4 _1552;
  float _1576;
  float _1580;
  float _1622;
  float _1623;
  float _1624;
  float _1663;
  float _1670;
  float _1671;
  float _1672;
  float4 _1680;
  float _1702;
  float _1703;
  float _1704;
  float _1712;
  float _1739;
  float _1740;
  float _1741;
  float4 _1747;
  float _1784;
  float _1785;
  float _1786;
  float _1805;
  float _36[3];
  float _37[3];
  float _38[4];
  float _39[4];
  float _40[4];
  float _41[4];
  float _42[4];
  _54 = t1.Load(int3((int)(uint((Globals_2208.x) * TEXCOORD.x)), (int)(uint((Globals_2208.y) * TEXCOORD.y)), 0));
  _78 = (TEXCOORD.x * 2.0f) + -1.0f;
  _80 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  _96 = mad((Globals_2144[2].w), _54.x, mad((Globals_2144[1].w), _80, ((Globals_2144[0].w) * _78))) + (Globals_2144[3].w);
  _97 = (mad((Globals_2144[2].x), _54.x, mad((Globals_2144[1].x), _80, ((Globals_2144[0].x) * _78))) + (Globals_2144[3].x)) / _96;
  _98 = (mad((Globals_2144[2].y), _54.x, mad((Globals_2144[1].y), _80, ((Globals_2144[0].y) * _78))) + (Globals_2144[3].y)) / _96;
  _99 = (mad((Globals_2144[2].z), _54.x, mad((Globals_2144[1].z), _80, ((Globals_2144[0].z) * _78))) + (Globals_2144[3].z)) / _96;
  _100 = ddy_coarse(_97);
  _101 = ddy_coarse(_98);
  _102 = ddy_coarse(_99);
  _103 = ddx_coarse(_97);
  _104 = ddx_coarse(_98);
  _105 = ddx_coarse(_99);
  _108 = (_104 * _102) - (_105 * _101);
  _111 = (_105 * _100) - (_103 * _102);
  _114 = (_103 * _101) - (_104 * _100);
  _116 = rsqrt(dot(float3(_108, _111, _114), float3(_108, _111, _114)));
  _131 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((Globals_992.z) * _54.x) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y);
  _145 = UberPostBaseCBuffer_544.w * _98;
  _151 = max(abs(_108 * _116), 9.999999747378752e-06f);
  _152 = max(abs(_111 * _116), 9.999999747378752e-06f);
  _153 = max(abs(_116 * _114), 9.999999747378752e-06f);
  _155 = rsqrt(dot(float3(_151, _152, _153), float3(_151, _152, _153)));
  _160 = _155 * ((_152 + _151) + _153);
  _168 = UberPostBaseCBuffer_560.x * (Globals_208[1].x);
  _169 = UberPostBaseCBuffer_560.y * (Globals_208[1].x);
  _174 = (_145 * UberPostBaseCBuffer_560.z) + _168;
  _175 = ((UberPostBaseCBuffer_544.w * _99) * UberPostBaseCBuffer_560.w) + _169;
  _176 = dot(float2(_174, _175), float2(0.3660254180431366f, 0.3660254180431366f));
  _179 = floor(_174 + _176);
  _180 = floor(_175 + _176);
  _183 = dot(float2(_179, _180), float2(0.21132487058639526f, 0.21132487058639526f));
  _184 = (_174 - _179) + _183;
  _185 = (_175 - _180) + _183;
  _186 = (_184 > _185);
  _187 = select(_186, 1.0f, 0.0f);
  _188 = select(_186, 0.0f, 1.0f);
  _191 = _184 + -0.5773502588272095f;
  _192 = _185 + -0.5773502588272095f;
  _193 = (_184 + 0.21132487058639526f) - _187;
  _194 = (_185 + 0.21132487058639526f) - _188;
  _201 = _179 - (floor(_179 * 0.0034602077212184668f) * 289.0f);
  _202 = _180 - (floor(_180 * 0.0034602077212184668f) * 289.0f);
  _203 = _202 + _188;
  _204 = _202 + 1.0f;
  _211 = ((_202 * 34.0f) + 1.0f) * _202;
  _212 = ((_203 * 34.0f) + 1.0f) * _203;
  _213 = ((_204 * 34.0f) + 1.0f) * _204;
  _224 = (_211 - (floor(_211 * 0.0034602077212184668f) * 289.0f)) + _201;
  _227 = ((_187 + _201) - (floor(_212 * 0.0034602077212184668f) * 289.0f)) + _212;
  _230 = ((_201 + 1.0f) - (floor(_213 * 0.0034602077212184668f) * 289.0f)) + _213;
  _237 = ((_224 * 34.0f) + 1.0f) * _224;
  _238 = ((_227 * 34.0f) + 1.0f) * _227;
  _239 = ((_230 * 34.0f) + 1.0f) * _230;
  _258 = max((0.5f - dot(float2(_184, _185), float2(_184, _185))), 0.0f);
  _259 = max((0.5f - dot(float2(_193, _194), float2(_193, _194))), 0.0f);
  _260 = max((0.5f - dot(float2(_191, _192), float2(_191, _192))), 0.0f);
  _261 = _258 * _258;
  _262 = _259 * _259;
  _263 = _260 * _260;
  _273 = frac((_237 - (floor(_237 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _274 = frac((_238 - (floor(_238 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _275 = frac((_239 - (floor(_239 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _276 = _273 + -1.0f;
  _277 = _274 + -1.0f;
  _278 = _275 + -1.0f;
  _282 = abs(_276) + -0.5f;
  _283 = abs(_277) + -0.5f;
  _284 = abs(_278) + -0.5f;
  _291 = _276 - floor(_273 + -0.5f);
  _292 = _277 - floor(_274 + -0.5f);
  _293 = _278 - floor(_275 + -0.5f);
  _327 = ((UberPostBaseCBuffer_544.w * _97) * UberPostBaseCBuffer_592.x) + _168;
  _328 = (_145 * UberPostBaseCBuffer_592.y) + _169;
  _329 = dot(float2(_327, _328), float2(0.3660254180431366f, 0.3660254180431366f));
  _332 = floor(_327 + _329);
  _333 = floor(_328 + _329);
  _336 = dot(float2(_332, _333), float2(0.21132487058639526f, 0.21132487058639526f));
  _337 = (_327 - _332) + _336;
  _338 = (_328 - _333) + _336;
  _339 = (_337 > _338);
  _340 = select(_339, 1.0f, 0.0f);
  _341 = select(_339, 0.0f, 1.0f);
  _344 = _337 + -0.5773502588272095f;
  _345 = _338 + -0.5773502588272095f;
  _346 = (_337 + 0.21132487058639526f) - _340;
  _347 = (_338 + 0.21132487058639526f) - _341;
  _354 = _332 - (floor(_332 * 0.0034602077212184668f) * 289.0f);
  _355 = _333 - (floor(_333 * 0.0034602077212184668f) * 289.0f);
  _356 = _355 + _341;
  _357 = _355 + 1.0f;
  _364 = ((_355 * 34.0f) + 1.0f) * _355;
  _365 = ((_356 * 34.0f) + 1.0f) * _356;
  _366 = ((_357 * 34.0f) + 1.0f) * _357;
  _377 = (_364 - (floor(_364 * 0.0034602077212184668f) * 289.0f)) + _354;
  _380 = ((_340 + _354) - (floor(_365 * 0.0034602077212184668f) * 289.0f)) + _365;
  _383 = ((_354 + 1.0f) - (floor(_366 * 0.0034602077212184668f) * 289.0f)) + _366;
  _390 = ((_377 * 34.0f) + 1.0f) * _377;
  _391 = ((_380 * 34.0f) + 1.0f) * _380;
  _392 = ((_383 * 34.0f) + 1.0f) * _383;
  _411 = max((0.5f - dot(float2(_337, _338), float2(_337, _338))), 0.0f);
  _412 = max((0.5f - dot(float2(_346, _347), float2(_346, _347))), 0.0f);
  _413 = max((0.5f - dot(float2(_344, _345), float2(_344, _345))), 0.0f);
  _414 = _411 * _411;
  _415 = _412 * _412;
  _416 = _413 * _413;
  _426 = frac((_390 - (floor(_390 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _427 = frac((_391 - (floor(_391 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _428 = frac((_392 - (floor(_392 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _429 = _426 + -1.0f;
  _430 = _427 + -1.0f;
  _431 = _428 + -1.0f;
  _435 = abs(_429) + -0.5f;
  _436 = abs(_430) + -0.5f;
  _437 = abs(_431) + -0.5f;
  _444 = _429 - floor(_426 + -0.5f);
  _445 = _430 - floor(_427 + -0.5f);
  _446 = _431 - floor(_428 + -0.5f);
  _483 = ((((_131 * _131) * 130.0f) * exp2(log2(1.0f - saturate(abs(_98 - UberPostBaseCBuffer_576.y) / UberPostBaseCBuffer_576.x)) * UberPostBaseCBuffer_576.z)) * UberPostBaseCBuffer_544.x) * ((dot(float3(((_414 * _414) * (1.7928428649902344f - (((_444 * _444) + (_435 * _435)) * 0.8537347316741943f))), ((_415 * _415) * (1.7928428649902344f - (((_445 * _445) + (_436 * _436)) * 0.8537347316741943f))), ((_416 * _416) * (1.7928428649902344f - (((_446 * _446) + (_437 * _437)) * 0.8537347316741943f)))), float3(((_444 * _337) + (_435 * _338)), ((_445 * _346) + (_436 * _347)), ((_446 * _344) + (_437 * _345)))) * ((_155 * _153) / _160)) + (dot(float3(((_261 * _261) * (1.7928428649902344f - (((_291 * _291) + (_282 * _282)) * 0.8537347316741943f))), ((_262 * _262) * (1.7928428649902344f - (((_292 * _292) + (_283 * _283)) * 0.8537347316741943f))), ((_263 * _263) * (1.7928428649902344f - (((_293 * _293) + (_284 * _284)) * 0.8537347316741943f)))), float3(((_291 * _184) + (_282 * _185)), ((_292 * _193) + (_283 * _194)), ((_293 * _191) + (_284 * _192)))) * ((_155 * _151) / _160)));
  _501 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((((float4)(t1.Load(int3((int)(uint((_483 + TEXCOORD.x) * (Globals_2208.x))), (int)(uint((_483 + TEXCOORD.y) * (Globals_2208.y))), 0)))).x) * (Globals_992.z)) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y) * _483;
  _502 = _501 + TEXCOORD.x;
  _503 = _501 + TEXCOORD.y;
  _511 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _512 = _502 * 2.0f;
  _513 = _503 * 2.0f;
  _514 = _512 + -1.0f;
  _515 = _513 + -1.0f;
  _525 = (Globals_080.z) + -1.0f;
  _527 = (_525 * (Globals_080.y)) + -1.0f;
  _529 = (_527 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _530 = _529 * _515;
  _531 = _514 * _514;
  _542 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_514)), (_529 * (1.0f - abs(_515)))), (1.0f - (sqrt((_530 * _530) + _531) * 0.7070000171661377f)));
  _552 = saturate((_542 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _558 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_552 * _552) * (3.0f - (_552 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _542), 0.0f, 1.0f));
  _564 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _558), _558) * UberPostScreenEffectsBaseCBuffer_016.z;
  _567 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _564, 0.0f) * _564;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _575 = ((_527 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _515;
    _577 = atan(_575 / _514);
    _580 = (_514 < 0.0f);
    _581 = (_514 == 0.0f);
    _582 = (_575 >= 0.0f);
    _583 = (_575 < 0.0f);
    _607 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _623 = t16.SampleBias(s10, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _511)) + (select(_607, select((_581 && _582), 2.0f, select((_581 && _583), -2.0f, (select((_580 && _583), (_577 + -3.1415927410125732f), select((_580 && _582), (_577 + 3.1415927410125732f), _577)) * 1.2732394933700562f))), _502) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _511)) + (select(_607, (sqrt((_575 * _575) + _531) * 0.6366197466850281f), ((((Globals_080.y) * (_503 + -0.5f)) * _525) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _632 = (_567 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _636 = (_632 * ((_623.x * 2.0f) + -1.0f));
    _637 = (_632 * ((_623.y * 2.0f) + -1.0f));
  } else {
    _636 = 0.0f;
    _637 = 0.0f;
  }
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _644 = t6.SampleBias(s2, float2(_502, _503), (Globals_976), int2(0, 0));
    _650 = (_644.x * 0.10000000149011612f) + _636;
    _651 = (_644.y * 0.10000000149011612f) + _637;
    _654 = UberPostBaseCBuffer_176.w * _644.z;
    _655 = _654 * _650;
    _656 = _654 * _651;
    _673 = (_650 + TEXCOORD.x);
    _674 = (_651 + TEXCOORD.y);
    _675 = ((_655 * UberPostBaseCBuffer_176.x) + _650);
    _676 = ((_656 * UberPostBaseCBuffer_176.x) + _651);
    _677 = ((_655 * UberPostBaseCBuffer_176.y) + _650);
    _678 = ((_656 * UberPostBaseCBuffer_176.y) + _651);
    _679 = ((_655 * UberPostBaseCBuffer_176.z) + _650);
    _680 = ((_656 * UberPostBaseCBuffer_176.z) + _651);
  } else {
    _673 = TEXCOORD.x;
    _674 = TEXCOORD.y;
    _675 = 0.0f;
    _676 = 0.0f;
    _677 = 0.0f;
    _678 = 0.0f;
    _679 = 0.0f;
    _680 = 0.0f;
  }
  _683 = frac(Globals_208[1].x);
  _692 = (((float4)(t7.SampleBias(s3, float2((_683 + (_502 * 5.0f)), (_683 + (_503 * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _702 = ((_692 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_692 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _705 = cos(UberPostBaseCBuffer_224.w);
  _706 = sin(UberPostBaseCBuffer_224.w);
  _713 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _702;
  _714 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _702;
  _715 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _702;
  _717 = _713 * _706;
  _719 = _714 * _706;
  _721 = _715 * _706;
  _730 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + _503);
  _743 = frac(_683 * 1234.0f);
  _750 = (((_743 * _743) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _743) + UberPostBaseCBuffer_256.x;
  _757 = select((_750 < (((float4)(t7.SampleBias(s3, float2(0.5f, (_730 + _717)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _758 = select((_750 < (((float4)(t7.SampleBias(s3, float2(0.5f, (_730 + _719)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _759 = select((_750 < (((float4)(t7.SampleBias(s3, float2(0.5f, (_730 + _721)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _773 = t8.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * _502) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * _503) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _779 = (_773.x * _757);
    _780 = (_773.x * _758);
    _781 = (_773.x * _759);
  } else {
    _779 = _757;
    _780 = _758;
    _781 = _759;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _804 = t8.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * _502) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * _503) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _810 = (_804.y * _779);
    _811 = (_804.y * _780);
    _812 = (_804.y * _781);
  } else {
    _810 = _779;
    _811 = _780;
    _812 = _781;
  }
  _818 = (_675 + _502) + (_713 * _705);
  _819 = (_676 + _503) + _717;
  _822 = (_677 + _502) + (_714 * _705);
  _823 = (_678 + _503) + _719;
  _826 = (_679 + _502) + (_715 * _705);
  _827 = (_680 + _503) + _721;
  _828 = t2.SampleBias(s0, float2(_673, _674), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _834 = (_512 - UberPostBaseCBuffer_384.x) + -0.5f;
    _836 = (_513 - UberPostBaseCBuffer_384.y) + -0.5f;
    _840 = dot(float2(_834, _836), float2(_834, _836)) * -0.3333333432674408f;
    _842 = (_840 * _834) * UberPostBaseCBuffer_192.z;
    _844 = (_840 * _836) * UberPostBaseCBuffer_192.z;
    _846 = rsqrt(dot(float3(_842, _844, 9.999999747378752e-05f), float3(_842, _844, 9.999999747378752e-05f)));
    _853 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _858 = exp2(log2(sqrt((_842 * _842) + (_844 * _844)) / _853) * UberPostBaseCBuffer_384.z);
    _860 = ((_842 * _846) * _853) * _858;
    _862 = ((_844 * _846) * _853) * _858;
    _869 = t2.SampleBias(s0, float2((_818 + (_860 * UberPostBaseCBuffer_400.w)), (_819 + (_862 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _877 = t2.SampleBias(s0, float2((_822 + (UberPostBaseCBuffer_416.w * _860)), (_823 + (UberPostBaseCBuffer_416.w * _862))), (Globals_976), int2(0, 0));
    _885 = t2.SampleBias(s0, float2((_826 + (UberPostBaseCBuffer_432.w * _860)), (_827 + (UberPostBaseCBuffer_432.w * _862))), (Globals_976), int2(0, 0));
    _919 = (((UberPostBaseCBuffer_416.x * _877.y) + (UberPostBaseCBuffer_400.x * _869.x)) + (UberPostBaseCBuffer_432.x * _885.z));
    _920 = (((UberPostBaseCBuffer_416.y * _877.y) + (UberPostBaseCBuffer_400.y * _869.x)) + (UberPostBaseCBuffer_432.y * _885.z));
    _921 = (((UberPostBaseCBuffer_416.z * _877.y) + (UberPostBaseCBuffer_400.z * _869.x)) + (UberPostBaseCBuffer_432.z * _885.z));
  } else {
    _919 = (((float4)(t2.SampleBias(s0, float2(_818, _819), (Globals_976), int2(0, 0)))).x);
    _920 = (((float4)(t2.SampleBias(s0, float2(_822, _823), (Globals_976), int2(0, 0)))).y);
    _921 = (((float4)(t2.SampleBias(s0, float2(_826, _827), (Globals_976), int2(0, 0)))).z);
  }
  _934 = t11.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * _502) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * _503) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _946 = frac((Globals_208[1].x) * 25.0f) - (1.0f - _503);
  _947 = 0.4000000059604645f - _946;
  _960 = (UberPostBaseCBuffer_368.w * max(((select((_947 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_946 + 0.05000000074505806f) * 10.0f) - _947)) + _947), 0.0f)) + 1.0f;
  _965 = 1.0f - UberPostBaseCBuffer_368.z;
  _975 = (((((_934.x * 12.0f) * _960) * _965) + UberPostBaseCBuffer_368.z) * _919) + _810;
  _976 = (((((_934.y * 12.0f) * _960) * _965) + UberPostBaseCBuffer_368.z) * _920) + _811;
  _977 = (((((_934.z * 12.0f) * _960) * _965) + UberPostBaseCBuffer_368.z) * _921) + _812;
  _984 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _984)) {
    _994 = fmod((((Globals_2208.y) * _674) * UberPostBaseCBuffer_448.x), 2.0f);
    _1002 = (((select((_994 > 1.0f), (2.0f - _994), _994) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _673;
    _1005 = (Globals_2208.w) * (Globals_2208.x);
    _1024 = t9.SampleBias(s5, float2(_1002, ((select(((frac((((_1002 + abs(UberPostBaseCBuffer_464.y)) * _1005) - (UberPostBaseCBuffer_464.y * _674)) / ((_1005 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _674)), (Globals_976), int2(0, 0));
    _1061 = ((((-0.699999988079071f - _1024.x) + (exp2(log2(abs(_1024.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1024.x < 0.30000001192092896f), 0.0f, 1.0f)) + _1024.x) * UberPostBaseCBuffer_336.x;
    _1062 = ((((-0.699999988079071f - _1024.y) + (exp2(log2(abs(_1024.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1024.y < 0.30000001192092896f), 0.0f, 1.0f)) + _1024.y) * UberPostBaseCBuffer_336.x;
    _1063 = ((((-0.699999988079071f - _1024.z) + (exp2(log2(abs(_1024.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_1024.z < 0.30000001192092896f), 0.0f, 1.0f)) + _1024.z) * UberPostBaseCBuffer_336.x;
    _1064 = dot(float3(_975, _976, _977), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _1067 = (UberPostBaseCBuffer_352.x > 0.5f);
    _1080 = select(_1067, ((((_1061 * _1064) - _1061) * _828.w) + _1061), _1061);
    _1081 = select(_1067, ((((_1062 * _1064) - _1062) * _828.w) + _1062), _1062);
    _1082 = select(_1067, ((((_1063 * _1064) - _1063) * _828.w) + _1063), _1063);
    if (_984) {
      _1093 = t10.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _673) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _674) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _1107 = (((_1093.x * _1061) * UberPostBaseCBuffer_336.y) + _1080);
      _1108 = (((_1093.y * _1062) * UberPostBaseCBuffer_336.y) + _1081);
      _1109 = (((_1093.z * _1063) * UberPostBaseCBuffer_336.y) + _1082);
    } else {
      _1107 = _1080;
      _1108 = _1081;
      _1109 = _1082;
    }
    _1119 = (_1107 + _975);
    _1120 = (_1108 + _976);
    _1121 = (_1109 + _977);
    _1122 = saturate((((_1108 + _1107) + _1109) * 0.33329999446868896f) + _828.w);
  } else {
    _1119 = _975;
    _1120 = _976;
    _1121 = _977;
    _1122 = _828.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _1139 = abs(_674 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _1141 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_673 - UberPostBaseCBuffer_112.x);
    _1147 = exp2(log2(saturate(1.0f - dot(float2(_1141, _1139), float2(_1141, _1139)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _1161 = (((_1147 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _1119);
    _1162 = (((_1147 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _1120);
    _1163 = (((_1147 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _1121);
  } else {
    _1161 = _1119;
    _1162 = _1120;
    _1163 = _1121;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_1161, _1162, _1163);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t4, s0, UberPostBaseCBuffer_000.xyz);
    _1212 = tonemapped.x;
    _1213 = tonemapped.y;
    _1214 = tonemapped.z;
  } else {
    _1186 = saturate((log2((_1163 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _1187 = floor(_1186);
    _1193 = ((saturate((log2((_1162 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _1195 = (_1187 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_1161 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _1196 = _1186 - _1187;
    _1198 = t4.SampleLevel(s0, float2((_1195 + UberPostBaseCBuffer_000.y), _1193), 0.0f);
    _1202 = t4.SampleLevel(s0, float2(_1195, _1193), 0.0f);
    _1212 = ((_1198.x - _1202.x) * _1196) + _1202.x;
    _1213 = ((_1198.y - _1202.y) * _1196) + _1202.y;
    _1214 = ((_1198.z - _1202.z) * _1196) + _1202.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _1232 = ((((float4)(t3.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * _502) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * _503) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _1236 = 1.0f - (sqrt(dot(float3(_1212, _1213, _1214), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _1250 = ((((UberPostBaseCBuffer_208.x * _1212) * _1232) * _1236) + _1212);
    _1251 = ((((UberPostBaseCBuffer_208.x * _1213) * _1232) * _1236) + _1213);
    _1252 = ((((UberPostBaseCBuffer_208.x * _1214) * _1232) * _1236) + _1214);
  } else {
    _1250 = _1212;
    _1251 = _1213;
    _1252 = _1214;
  }
  _1263 = ((((((Globals_080.z) + -1.0f) * (Globals_080.y)) + -1.0f) * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _515;
  _1265 = atan(_1263 / _514);
  _1268 = (_514 < 0.0f);
  _1269 = (_514 == 0.0f);
  _1270 = (_1263 >= 0.0f);
  _1271 = (_1263 < 0.0f);
  _36[0] = ((((Globals_2208.x) * (_502 + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _37[0] = _503;
  _36[1] = select((_1269 && _1270), 2.0f, select((_1269 && _1271), -2.0f, (select((_1268 && _1271), (_1265 + -3.1415927410125732f), select((_1268 && _1270), (_1265 + 3.1415927410125732f), _1265)) * 1.2732394933700562f)));
  _37[1] = (sqrt((_1263 * _1263) + (_514 * _514)) * 0.5f);
  _36[2] = _502;
  _37[2] = _503;
  _1328 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _1351 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _1376 = t15.SampleBias(s9, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _636) + (UberPostScreenEffectsBaseCBuffer_176.x * _511)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_36[min((uint)(_1351), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _637) + (UberPostScreenEffectsBaseCBuffer_176.y * _511)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_37[min((uint)(_1351), 2u)])))), (Globals_976), int2(0, 0));
  _42[0] = _1376.x;
  _42[1] = _1376.y;
  _42[2] = _1376.z;
  _42[3] = _1376.w;
  _1389 = ((_42[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _1397 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _1401 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _1416 = UberPostScreenEffectsBaseCBuffer_208.y * _1389;
  _1430 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1444 = UberPostScreenEffectsBaseCBuffer_208.z * _1389;
  _1460 = t14.SampleBias(s8, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _636) + (UberPostScreenEffectsBaseCBuffer_160.z * _511)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_36[min((uint)(_1430), 2u)]))) + _1444), (((((UberPostScreenEffectsRandomCBuffer_000.y + _637) + (UberPostScreenEffectsBaseCBuffer_160.w * _511)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_37[min((uint)(_1430), 2u)]))) + _1444)), (Globals_976), int2(0, 0));
  _41[0] = _1460.x;
  _41[1] = _1460.y;
  _41[2] = _1460.z;
  _41[3] = _1460.w;
  _1471 = _41[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1472 = t12.SampleBias(s6, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _511) + _636) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_36[min((uint)(_1401), 2u)]) * _1397) * UberPostScreenEffectsBaseCBuffer_032.x)) + _1416), (((((UberPostScreenEffectsBaseCBuffer_096.y * _511) + _637) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_37[min((uint)(_1401), 2u)]) * _1397) * UberPostScreenEffectsBaseCBuffer_032.y)) + _1416)), (Globals_976), int2(0, 0));
  _1480 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1471, 1.0f);
  _40[0] = _1472.x;
  _40[1] = _1472.y;
  _40[2] = _1472.z;
  _40[3] = _1472.w;
  _1491 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1494 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1480);
  _1503 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1504 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1505 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1517 = saturate((_1480 * (_40[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1524 = select(_1491, (((_1503 * _1494) + UberPostScreenEffectsBaseCBuffer_064.x) * _1472.x), ((_1503 * _1517) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1525 = select(_1491, (((_1504 * _1494) + UberPostScreenEffectsBaseCBuffer_064.y) * _1472.y), ((_1504 * _1517) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1526 = select(_1491, (((_1505 * _1494) + UberPostScreenEffectsBaseCBuffer_064.z) * _1472.z), ((_1505 * _1517) + UberPostScreenEffectsBaseCBuffer_064.z));
  _39[0] = _1472.x;
  _39[1] = _1472.y;
  _39[2] = _1472.z;
  _39[3] = _1472.w;
  _1535 = _39[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1536 = _1535 * _1471;
  _1552 = t13.SampleBias(s7, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _511) + _636) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_36[min((uint)(_1328), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _511) + _637) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_37[min((uint)(_1328), 2u)])))), (Globals_976), int2(0, 0));
  _38[0] = _1552.x;
  _38[1] = _1552.y;
  _38[2] = _1552.z;
  _38[3] = _1552.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1574 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1535));
  } else {
    _1574 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1536 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1536 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1576 = ((_38[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1574) * _567;
  _1580 = select((_1576 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1576;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1656 = ((_1580 * (_1524 - _1250)) + _1250);
    _1657 = ((_1580 * (_1525 - _1251)) + _1251);
    _1658 = ((_1580 * (_1526 - _1252)) + _1252);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1656 = ((_1580 * _1524) + _1250);
      _1657 = ((_1580 * _1525) + _1251);
      _1658 = ((_1580 * _1526) + _1252);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1656 = (((_1580 * (_1524 + -1.0f)) + 1.0f) * _1250);
        _1657 = (((_1580 * (_1525 + -1.0f)) + 1.0f) * _1251);
        _1658 = (((_1580 * (_1526 + -1.0f)) + 1.0f) * _1252);
      } else {
        _1622 = _1580 * (_1524 + -0.5f);
        _1623 = _1580 * (_1525 + -0.5f);
        _1624 = _1580 * (_1526 + -0.5f);
        _1656 = select((_1250 < 0.5f), ((_1250 * 2.0f) * (_1622 + 0.5f)), (1.0f - (((1.0f - _1250) * 2.0f) * (0.5f - _1622))));
        _1657 = select((_1251 < 0.5f), ((_1251 * 2.0f) * (_1623 + 0.5f)), (1.0f - (((1.0f - _1251) * 2.0f) * (0.5f - _1623))));
        _1658 = select((_1252 < 0.5f), ((_1252 * 2.0f) * (_1624 + 0.5f)), (1.0f - (((1.0f - _1252) * 2.0f) * (0.5f - _1624))));
      }
    }
  }
  _1663 = ((_1657 + _1656) + _1658) * 0.3333333432674408f;
  _1670 = ((_1656 - _1663) * UberPostFXColorCorrectionCBuffer_000.w) + _1663;
  _1671 = ((_1657 - _1663) * UberPostFXColorCorrectionCBuffer_000.w) + _1663;
  _1672 = ((_1658 - _1663) * UberPostFXColorCorrectionCBuffer_000.w) + _1663;
  if ((Globals_816[3].w) > 0.5f) {
    _1680 = t0.SampleBias(s0, float2(dot(float3(_1670, _1671, _1672), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _1685 = _1680.x;
    _1686 = _1680.y;
    _1687 = _1680.z;
  } else {
    _1685 = _1670;
    _1686 = _1671;
    _1687 = _1672;
  }
  _1702 = (((1.0f - _1685) - saturate(_1685)) * UberPostFXColorCorrectionCBuffer_016.w) + _1685;
  _1703 = (((1.0f - _1686) - saturate(_1686)) * UberPostFXColorCorrectionCBuffer_016.w) + _1686;
  _1704 = (((1.0f - _1687) - saturate(_1687)) * UberPostFXColorCorrectionCBuffer_016.w) + _1687;
  _1712 = saturate((saturate(dot(float3(_1702, _1703, _1704), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _1739 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _1702) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1712)) * UberPostFXColorCorrectionCBuffer_032.x) + _1702);
  // _1740 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _1703) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1712)) * UberPostFXColorCorrectionCBuffer_032.x) + _1703);
  // _1741 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _1704) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1712)) * UberPostFXColorCorrectionCBuffer_032.x) + _1704);
  _1739 = ((((UberPostFXColorCorrectionCBuffer_000.x - _1702) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1712)) * UberPostFXColorCorrectionCBuffer_032.x) + _1702);
  _1740 = ((((UberPostFXColorCorrectionCBuffer_000.y - _1703) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1712)) * UberPostFXColorCorrectionCBuffer_032.x) + _1703);
  _1741 = ((((UberPostFXColorCorrectionCBuffer_000.z - _1704) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1712)) * UberPostFXColorCorrectionCBuffer_032.x) + _1704);

  // HDR FX Mask Blend
  float3 result = float3(_1739, _1740, _1741);
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    float m = smoothstep(0.0f, 1.0f, t5.Sample(s0, TEXCOORD).x);

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
  _1816 = result.x;
  _1817 = result.y;
  _1818 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _1747 = t5.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _1816 = min((_1747.x + _1739), 1.0f);
        _1817 = min((_1747.x + _1740), 1.0f);
        _1818 = min((_1747.x + _1741), 1.0f);
      } else {
        _1784 = select((_1739 > 0.5f), 0.0f, 1.0f);
        _1785 = select((_1740 > 0.5f), 0.0f, 1.0f);
        _1786 = select((_1741 > 0.5f), 0.0f, 1.0f);
        _1805 = 1.0f - _1747.x;
        _1816 = (((((1.0f - (((1.0f - _1739) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _1784)) + (((_1739 * 2.0f) * _1784) * UberPostFXColorCorrectionCBuffer_048.x)) * _1747.x) + (_1805 * _1739));
        _1817 = (((((1.0f - (((1.0f - _1740) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _1785)) + (((_1740 * 2.0f) * _1785) * UberPostFXColorCorrectionCBuffer_048.y)) * _1747.x) + (_1805 * _1740));
        _1818 = (((((1.0f - (((1.0f - _1741) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1786)) + (((_1741 * 2.0f) * _1786) * UberPostFXColorCorrectionCBuffer_048.z)) * _1747.x) + (_1805 * _1741));
      }
  } else {
    _1816 = _1739;
    _1817 = _1740;
    _1818 = _1741;
  }
  */

  SV_Target.x = _1816;
  SV_Target.y = _1817;
  SV_Target.z = _1818;
  SV_Target.w = _1122;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
