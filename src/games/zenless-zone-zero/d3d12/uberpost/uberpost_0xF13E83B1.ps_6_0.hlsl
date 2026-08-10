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

Texture2D<float4> t17 : register(t17);

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
  float4 Globals_3360 : packoffset(c210.x);
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
  float _55;
  float _56;
  float _57;
  float _58;
  float _59;
  float _69;
  float _71;
  float _73;
  float _74;
  float _75;
  float _86;
  float _96;
  float _102;
  float _108;
  float _111;
  float _180;
  float _181;
  float _217;
  float _218;
  float _219;
  float _220;
  float _221;
  float _222;
  float _223;
  float _224;
  float _323;
  float _324;
  float _325;
  float _354;
  float _355;
  float _356;
  float _507;
  float _508;
  float _509;
  float _695;
  float _696;
  float _697;
  float _714;
  float _715;
  float _716;
  float _717;
  float _756;
  float _757;
  float _758;
  float _845;
  float _846;
  float _847;
  float _1169;
  float _1251;
  float _1252;
  float _1253;
  float _1280;
  float _1281;
  float _1282;
  float _1411;
  float _1412;
  float _1413;
  float _119;
  float _121;
  bool _124;
  bool _125;
  bool _126;
  bool _127;
  bool _151;
  float4 _167;
  float _176;
  float4 _188;
  float _194;
  float _195;
  float _198;
  float _199;
  float _200;
  float _227;
  float _236;
  float _246;
  float _249;
  float _250;
  float _257;
  float _258;
  float _259;
  float _261;
  float _263;
  float _265;
  float _274;
  float _287;
  float _294;
  float _301;
  float _302;
  float _303;
  float4 _317;
  float4 _348;
  float4 _357;
  float _379;
  float _380;
  float _381;
  float _382;
  float _387;
  float _394;
  float _405;
  float _407;
  float _409;
  float _411;
  float _413;
  float _415;
  float4 _416;
  float _422;
  float _424;
  float _428;
  float _430;
  float _432;
  float _434;
  float _441;
  float _446;
  float _448;
  float _450;
  float4 _457;
  float4 _465;
  float4 _473;
  float4 _522;
  float _534;
  float _535;
  float _548;
  float _553;
  float _563;
  float _564;
  float _565;
  bool _572;
  float _582;
  float _590;
  float _593;
  float4 _612;
  float _649;
  float _650;
  float _651;
  float _652;
  bool _655;
  float _668;
  float _669;
  float _670;
  float4 _681;
  float _701;
  float _734;
  float _736;
  float _742;
  float _781;
  float _782;
  float _788;
  float _790;
  float _791;
  float4 _793;
  float4 _797;
  float _807;
  float _808;
  float _809;
  float _827;
  float _831;
  float _858;
  float _860;
  bool _863;
  bool _864;
  bool _865;
  bool _866;
  int _923;
  int _946;
  float4 _971;
  float _984;
  float _992;
  int _996;
  float _1011;
  int _1025;
  float _1039;
  float4 _1055;
  float _1066;
  float4 _1067;
  float _1075;
  bool _1086;
  float _1089;
  float _1098;
  float _1099;
  float _1100;
  float _1112;
  float _1119;
  float _1120;
  float _1121;
  float _1130;
  float _1131;
  float4 _1147;
  float _1171;
  float _1175;
  float _1217;
  float _1218;
  float _1219;
  float _1258;
  float _1265;
  float _1266;
  float _1267;
  float4 _1275;
  float _1297;
  float _1298;
  float _1299;
  float _1307;
  float _1334;
  float _1335;
  float _1336;
  float4 _1342;
  float _1379;
  float _1380;
  float _1381;
  float _1400;
  float _37[3];
  float _38[3];
  float _39[4];
  float _40[4];
  float _41[4];
  float _42[4];
  float _43[4];
  _55 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _56 = TEXCOORD.x * 2.0f;
  _57 = TEXCOORD.y * 2.0f;
  _58 = _56 + -1.0f;
  _59 = _57 + -1.0f;
  _69 = (Globals_080.z) + -1.0f;
  _71 = (_69 * (Globals_080.y)) + -1.0f;
  _73 = (_71 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _74 = _73 * _59;
  _75 = _58 * _58;
  _86 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_58)), (_73 * (1.0f - abs(_59)))), (1.0f - (sqrt((_74 * _74) + _75) * 0.7070000171661377f)));
  _96 = saturate((_86 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _102 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_96 * _96) * (3.0f - (_96 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _86), 0.0f, 1.0f));
  _108 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _102), _102) * UberPostScreenEffectsBaseCBuffer_016.z;
  _111 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _108, 0.0f) * _108;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _119 = ((_71 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _59;
    _121 = atan(_119 / _58);
    _124 = (_58 < 0.0f);
    _125 = (_58 == 0.0f);
    _126 = (_119 >= 0.0f);
    _127 = (_119 < 0.0f);
    _151 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _167 = t17.SampleBias(s10, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _55)) + (select(_151, select((_125 && _126), 2.0f, select((_125 && _127), -2.0f, (select((_124 && _127), (_121 + -3.1415927410125732f), select((_124 && _126), (_121 + 3.1415927410125732f), _121)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _55)) + (select(_151, (sqrt((_119 * _119) + _75) * 0.6366197466850281f), ((((Globals_080.y) * (TEXCOORD.y + -0.5f)) * _69) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _176 = (_111 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _180 = (_176 * ((_167.x * 2.0f) + -1.0f));
    _181 = (_176 * ((_167.y * 2.0f) + -1.0f));
  } else {
    _180 = 0.0f;
    _181 = 0.0f;
  }
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _188 = t7.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _194 = (_188.x * 0.10000000149011612f) + _180;
    _195 = (_188.y * 0.10000000149011612f) + _181;
    _198 = UberPostBaseCBuffer_176.w * _188.z;
    _199 = _198 * _194;
    _200 = _198 * _195;
    _217 = (_194 + TEXCOORD.x);
    _218 = (_195 + TEXCOORD.y);
    _219 = ((_199 * UberPostBaseCBuffer_176.x) + _194);
    _220 = ((_200 * UberPostBaseCBuffer_176.x) + _195);
    _221 = ((_199 * UberPostBaseCBuffer_176.y) + _194);
    _222 = ((_200 * UberPostBaseCBuffer_176.y) + _195);
    _223 = ((_199 * UberPostBaseCBuffer_176.z) + _194);
    _224 = ((_200 * UberPostBaseCBuffer_176.z) + _195);
  } else {
    _217 = TEXCOORD.x;
    _218 = TEXCOORD.y;
    _219 = 0.0f;
    _220 = 0.0f;
    _221 = 0.0f;
    _222 = 0.0f;
    _223 = 0.0f;
    _224 = 0.0f;
  }
  _227 = frac(Globals_208[1].x);
  _236 = (((float4)(t8.SampleBias(s3, float2((_227 + (TEXCOORD.x * 5.0f)), (_227 + (TEXCOORD.y * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _246 = ((_236 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_236 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _249 = cos(UberPostBaseCBuffer_224.w);
  _250 = sin(UberPostBaseCBuffer_224.w);
  _257 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _246;
  _258 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _246;
  _259 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _246;
  _261 = _257 * _250;
  _263 = _258 * _250;
  _265 = _259 * _250;
  _274 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + TEXCOORD.y);
  _287 = frac(_227 * 1234.0f);
  _294 = (((_287 * _287) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _287) + UberPostBaseCBuffer_256.x;
  _301 = select((_294 < (((float4)(t8.SampleBias(s3, float2(0.5f, (_274 + _261)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _302 = select((_294 < (((float4)(t8.SampleBias(s3, float2(0.5f, (_274 + _263)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _303 = select((_294 < (((float4)(t8.SampleBias(s3, float2(0.5f, (_274 + _265)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _317 = t9.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * TEXCOORD.x) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * TEXCOORD.y) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _323 = (_317.x * _301);
    _324 = (_317.x * _302);
    _325 = (_317.x * _303);
  } else {
    _323 = _301;
    _324 = _302;
    _325 = _303;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _348 = t9.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * TEXCOORD.x) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * TEXCOORD.y) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _354 = (_348.y * _323);
    _355 = (_348.y * _324);
    _356 = (_348.y * _325);
  } else {
    _354 = _323;
    _355 = _324;
    _356 = _325;
  }
  _357 = t5.SampleBias(s1, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
  _379 = saturate(((_357.z + -1.0f) + (((float4)(t6.SampleBias(s1, float2(((Globals_3344.y) + _357.w), 0.5f), (Globals_976), int2(0, 0)))).x)) / _357.z) * _357.z;
  _380 = _379 * (Globals_3344.x);
  _381 = _380 * ((_357.x * 2.0f) + -1.0f);
  _382 = _380 * ((_357.y * 2.0f) + -1.0f);
  _387 = (Globals_3344.z) + 1.0f;
  _394 = 1.0f - (Globals_3344.z);
  _405 = ((_257 * _249) + TEXCOORD.x) + (_219 - _381);
  _407 = (_261 + TEXCOORD.y) + (_220 - _382);
  _409 = ((_258 * _249) + TEXCOORD.x) + (_221 - (_387 * _381));
  _411 = (_263 + TEXCOORD.y) + (_222 - (_387 * _382));
  _413 = ((_259 * _249) + TEXCOORD.x) + (_223 - (_394 * _381));
  _415 = (_265 + TEXCOORD.y) + (_224 - (_394 * _382));
  _416 = t1.SampleBias(s0, float2(_217, _218), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _422 = (_56 - UberPostBaseCBuffer_384.x) + -0.5f;
    _424 = (_57 - UberPostBaseCBuffer_384.y) + -0.5f;
    _428 = dot(float2(_422, _424), float2(_422, _424)) * -0.3333333432674408f;
    _430 = (_428 * _422) * UberPostBaseCBuffer_192.z;
    _432 = (_428 * _424) * UberPostBaseCBuffer_192.z;
    _434 = rsqrt(dot(float3(_430, _432, 9.999999747378752e-05f), float3(_430, _432, 9.999999747378752e-05f)));
    _441 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _446 = exp2(log2(sqrt((_430 * _430) + (_432 * _432)) / _441) * UberPostBaseCBuffer_384.z);
    _448 = ((_430 * _434) * _441) * _446;
    _450 = ((_432 * _434) * _441) * _446;
    _457 = t1.SampleBias(s0, float2((_405 + (_448 * UberPostBaseCBuffer_400.w)), (_407 + (_450 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _465 = t1.SampleBias(s0, float2((_409 + (UberPostBaseCBuffer_416.w * _448)), (_411 + (UberPostBaseCBuffer_416.w * _450))), (Globals_976), int2(0, 0));
    _473 = t1.SampleBias(s0, float2((_413 + (UberPostBaseCBuffer_432.w * _448)), (_415 + (UberPostBaseCBuffer_432.w * _450))), (Globals_976), int2(0, 0));
    _507 = (((UberPostBaseCBuffer_416.x * _465.y) + (UberPostBaseCBuffer_400.x * _457.x)) + (UberPostBaseCBuffer_432.x * _473.z));
    _508 = (((UberPostBaseCBuffer_416.y * _465.y) + (UberPostBaseCBuffer_400.y * _457.x)) + (UberPostBaseCBuffer_432.y * _473.z));
    _509 = (((UberPostBaseCBuffer_416.z * _465.y) + (UberPostBaseCBuffer_400.z * _457.x)) + (UberPostBaseCBuffer_432.z * _473.z));
  } else {
    _507 = (((float4)(t1.SampleBias(s0, float2(_405, _407), (Globals_976), int2(0, 0)))).x);
    _508 = (((float4)(t1.SampleBias(s0, float2(_409, _411), (Globals_976), int2(0, 0)))).y);
    _509 = (((float4)(t1.SampleBias(s0, float2(_413, _415), (Globals_976), int2(0, 0)))).z);
  }
  _522 = t12.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * TEXCOORD.x) * (Globals_3360.x)), ((UberPostBaseCBuffer_368.y * TEXCOORD.y) * (Globals_3360.y))), (Globals_976), int2(0, 0));
  _534 = frac((Globals_208[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  _535 = 0.4000000059604645f - _534;
  _548 = (UberPostBaseCBuffer_368.w * max(((select((_535 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_534 + 0.05000000074505806f) * 10.0f) - _535)) + _535), 0.0f)) + 1.0f;
  _553 = 1.0f - UberPostBaseCBuffer_368.z;
  _563 = (((((_522.x * 12.0f) * _548) * _553) + UberPostBaseCBuffer_368.z) * _507) + _354;
  _564 = (((((_522.y * 12.0f) * _548) * _553) + UberPostBaseCBuffer_368.z) * _508) + _355;
  _565 = (((((_522.z * 12.0f) * _548) * _553) + UberPostBaseCBuffer_368.z) * _509) + _356;
  _572 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _572)) {
    _582 = fmod((((Globals_2208.y) * _218) * UberPostBaseCBuffer_448.x), 2.0f);
    _590 = (((select((_582 > 1.0f), (2.0f - _582), _582) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _217;
    _593 = (Globals_2208.w) * (Globals_2208.x);
    _612 = t10.SampleBias(s5, float2(_590, ((select(((frac((((_590 + abs(UberPostBaseCBuffer_464.y)) * _593) - (UberPostBaseCBuffer_464.y * _218)) / ((_593 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _218)), (Globals_976), int2(0, 0));
    _649 = ((((-0.699999988079071f - _612.x) + (exp2(log2(abs(_612.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_612.x < 0.30000001192092896f), 0.0f, 1.0f)) + _612.x) * UberPostBaseCBuffer_336.x;
    _650 = ((((-0.699999988079071f - _612.y) + (exp2(log2(abs(_612.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_612.y < 0.30000001192092896f), 0.0f, 1.0f)) + _612.y) * UberPostBaseCBuffer_336.x;
    _651 = ((((-0.699999988079071f - _612.z) + (exp2(log2(abs(_612.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_612.z < 0.30000001192092896f), 0.0f, 1.0f)) + _612.z) * UberPostBaseCBuffer_336.x;
    _652 = dot(float3(_563, _564, _565), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _655 = (UberPostBaseCBuffer_352.x > 0.5f);
    _668 = select(_655, ((((_649 * _652) - _649) * _416.w) + _649), _649);
    _669 = select(_655, ((((_650 * _652) - _650) * _416.w) + _650), _650);
    _670 = select(_655, ((((_651 * _652) - _651) * _416.w) + _651), _651);
    if (_572) {
      _681 = t11.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _217) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _218) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _695 = (((_681.x * _649) * UberPostBaseCBuffer_336.y) + _668);
      _696 = (((_681.y * _650) * UberPostBaseCBuffer_336.y) + _669);
      _697 = (((_681.z * _651) * UberPostBaseCBuffer_336.y) + _670);
    } else {
      _695 = _668;
      _696 = _669;
      _697 = _670;
    }
    _701 = (_379 * (Globals_3344.w)) + 1.0f;
    _714 = ((_701 * _563) + _695);
    _715 = ((_701 * _564) + _696);
    _716 = ((_701 * _565) + _697);
    _717 = saturate((((_696 + _695) + _697) * 0.33329999446868896f) + _416.w);
  } else {
    _714 = _563;
    _715 = _564;
    _716 = _565;
    _717 = _416.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _734 = abs(_218 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _736 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_217 - UberPostBaseCBuffer_112.x);
    _742 = exp2(log2(saturate(1.0f - dot(float2(_736, _734), float2(_736, _734)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _756 = (((_742 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _714);
    _757 = (((_742 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _715);
    _758 = (((_742 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _716);
  } else {
    _756 = _714;
    _757 = _715;
    _758 = _716;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_756, _757, _758);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t3, s0, UberPostBaseCBuffer_000.xyz);
    _807 = tonemapped.x;
    _808 = tonemapped.y;
    _809 = tonemapped.z;
  } else {
    _781 = saturate((log2((_758 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _782 = floor(_781);
    _788 = ((saturate((log2((_757 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _790 = (_782 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_756 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _791 = _781 - _782;
    _793 = t3.SampleLevel(s0, float2((_790 + UberPostBaseCBuffer_000.y), _788), 0.0f);
    _797 = t3.SampleLevel(s0, float2(_790, _788), 0.0f);
    _807 = ((_793.x - _797.x) * _791) + _797.x;
    _808 = ((_793.y - _797.y) * _791) + _797.y;
    _809 = ((_793.z - _797.z) * _791) + _797.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _827 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _831 = 1.0f - (sqrt(dot(float3(_807, _808, _809), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _845 = ((((UberPostBaseCBuffer_208.x * _807) * _827) * _831) + _807);
    _846 = ((((UberPostBaseCBuffer_208.x * _808) * _827) * _831) + _808);
    _847 = ((((UberPostBaseCBuffer_208.x * _809) * _827) * _831) + _809);
  } else {
    _845 = _807;
    _846 = _808;
    _847 = _809;
  }
  _858 = ((((((Globals_080.z) + -1.0f) * (Globals_080.y)) + -1.0f) * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _59;
  _860 = atan(_858 / _58);
  _863 = (_58 < 0.0f);
  _864 = (_58 == 0.0f);
  _865 = (_858 >= 0.0f);
  _866 = (_858 < 0.0f);
  _37[0] = ((((Globals_2208.x) * (TEXCOORD.x + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _38[0] = TEXCOORD.y;
  _37[1] = select((_864 && _865), 2.0f, select((_864 && _866), -2.0f, (select((_863 && _866), (_860 + -3.1415927410125732f), select((_863 && _865), (_860 + 3.1415927410125732f), _860)) * 1.2732394933700562f)));
  _38[1] = (sqrt((_858 * _858) + (_58 * _58)) * 0.5f);
  _37[2] = TEXCOORD.x;
  _38[2] = TEXCOORD.y;
  _923 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _946 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _971 = t16.SampleBias(s9, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _180) + (UberPostScreenEffectsBaseCBuffer_176.x * _55)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_37[min((uint)(_946), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _181) + (UberPostScreenEffectsBaseCBuffer_176.y * _55)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_38[min((uint)(_946), 2u)])))), (Globals_976), int2(0, 0));
  _43[0] = _971.x;
  _43[1] = _971.y;
  _43[2] = _971.z;
  _43[3] = _971.w;
  _984 = ((_43[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _992 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _996 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _1011 = UberPostScreenEffectsBaseCBuffer_208.y * _984;
  _1025 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1039 = UberPostScreenEffectsBaseCBuffer_208.z * _984;
  _1055 = t15.SampleBias(s8, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _180) + (UberPostScreenEffectsBaseCBuffer_160.z * _55)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_37[min((uint)(_1025), 2u)]))) + _1039), (((((UberPostScreenEffectsRandomCBuffer_000.y + _181) + (UberPostScreenEffectsBaseCBuffer_160.w * _55)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_38[min((uint)(_1025), 2u)]))) + _1039)), (Globals_976), int2(0, 0));
  _42[0] = _1055.x;
  _42[1] = _1055.y;
  _42[2] = _1055.z;
  _42[3] = _1055.w;
  _1066 = _42[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1067 = t13.SampleBias(s6, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _55) + _180) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_37[min((uint)(_996), 2u)]) * _992) * UberPostScreenEffectsBaseCBuffer_032.x)) + _1011), (((((UberPostScreenEffectsBaseCBuffer_096.y * _55) + _181) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_38[min((uint)(_996), 2u)]) * _992) * UberPostScreenEffectsBaseCBuffer_032.y)) + _1011)), (Globals_976), int2(0, 0));
  _1075 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1066, 1.0f);
  _41[0] = _1067.x;
  _41[1] = _1067.y;
  _41[2] = _1067.z;
  _41[3] = _1067.w;
  _1086 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1089 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1075);
  _1098 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1099 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1100 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1112 = saturate((_1075 * (_41[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1119 = select(_1086, (((_1098 * _1089) + UberPostScreenEffectsBaseCBuffer_064.x) * _1067.x), ((_1098 * _1112) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1120 = select(_1086, (((_1099 * _1089) + UberPostScreenEffectsBaseCBuffer_064.y) * _1067.y), ((_1099 * _1112) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1121 = select(_1086, (((_1100 * _1089) + UberPostScreenEffectsBaseCBuffer_064.z) * _1067.z), ((_1100 * _1112) + UberPostScreenEffectsBaseCBuffer_064.z));
  _40[0] = _1067.x;
  _40[1] = _1067.y;
  _40[2] = _1067.z;
  _40[3] = _1067.w;
  _1130 = _40[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1131 = _1130 * _1066;
  _1147 = t14.SampleBias(s7, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _55) + _180) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_37[min((uint)(_923), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _55) + _181) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_38[min((uint)(_923), 2u)])))), (Globals_976), int2(0, 0));
  _39[0] = _1147.x;
  _39[1] = _1147.y;
  _39[2] = _1147.z;
  _39[3] = _1147.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1169 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1130));
  } else {
    _1169 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1131 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1131 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1171 = ((_39[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1169) * _111;
  _1175 = select((_1171 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1171;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1251 = ((_1175 * (_1119 - _845)) + _845);
    _1252 = ((_1175 * (_1120 - _846)) + _846);
    _1253 = ((_1175 * (_1121 - _847)) + _847);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1251 = ((_1175 * _1119) + _845);
      _1252 = ((_1175 * _1120) + _846);
      _1253 = ((_1175 * _1121) + _847);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1251 = (((_1175 * (_1119 + -1.0f)) + 1.0f) * _845);
        _1252 = (((_1175 * (_1120 + -1.0f)) + 1.0f) * _846);
        _1253 = (((_1175 * (_1121 + -1.0f)) + 1.0f) * _847);
      } else {
        _1217 = _1175 * (_1119 + -0.5f);
        _1218 = _1175 * (_1120 + -0.5f);
        _1219 = _1175 * (_1121 + -0.5f);
        _1251 = select((_845 < 0.5f), ((_845 * 2.0f) * (_1217 + 0.5f)), (1.0f - (((1.0f - _845) * 2.0f) * (0.5f - _1217))));
        _1252 = select((_846 < 0.5f), ((_846 * 2.0f) * (_1218 + 0.5f)), (1.0f - (((1.0f - _846) * 2.0f) * (0.5f - _1218))));
        _1253 = select((_847 < 0.5f), ((_847 * 2.0f) * (_1219 + 0.5f)), (1.0f - (((1.0f - _847) * 2.0f) * (0.5f - _1219))));
      }
    }
  }
  _1258 = ((_1252 + _1251) + _1253) * 0.3333333432674408f;
  _1265 = ((_1251 - _1258) * UberPostFXColorCorrectionCBuffer_000.w) + _1258;
  _1266 = ((_1252 - _1258) * UberPostFXColorCorrectionCBuffer_000.w) + _1258;
  _1267 = ((_1253 - _1258) * UberPostFXColorCorrectionCBuffer_000.w) + _1258;
  if ((Globals_816[3].w) > 0.5f) {
    _1275 = t0.SampleBias(s0, float2(dot(float3(_1265, _1266, _1267), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _1280 = _1275.x;
    _1281 = _1275.y;
    _1282 = _1275.z;
  } else {
    _1280 = _1265;
    _1281 = _1266;
    _1282 = _1267;
  }
  _1297 = (((1.0f - _1280) - saturate(_1280)) * UberPostFXColorCorrectionCBuffer_016.w) + _1280;
  _1298 = (((1.0f - _1281) - saturate(_1281)) * UberPostFXColorCorrectionCBuffer_016.w) + _1281;
  _1299 = (((1.0f - _1282) - saturate(_1282)) * UberPostFXColorCorrectionCBuffer_016.w) + _1282;
  _1307 = saturate((saturate(dot(float3(_1297, _1298, _1299), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _1334 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _1297) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1307)) * UberPostFXColorCorrectionCBuffer_032.x) + _1297);
  // _1335 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _1298) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1307)) * UberPostFXColorCorrectionCBuffer_032.x) + _1298);
  // _1336 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _1299) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1307)) * UberPostFXColorCorrectionCBuffer_032.x) + _1299);
  _1334 = ((((UberPostFXColorCorrectionCBuffer_000.x - _1297) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1307)) * UberPostFXColorCorrectionCBuffer_032.x) + _1297);
  _1335 = ((((UberPostFXColorCorrectionCBuffer_000.y - _1298) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1307)) * UberPostFXColorCorrectionCBuffer_032.x) + _1298);
  _1336 = ((((UberPostFXColorCorrectionCBuffer_000.z - _1299) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1307)) * UberPostFXColorCorrectionCBuffer_032.x) + _1299);

  // HDR FX Mask Blend
  float3 result = float3(_1334, _1335, _1336);
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
  _1411 = result.x;
  _1412 = result.y;
  _1413 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _1342 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _1411 = min((_1342.x + _1334), 1.0f);
        _1412 = min((_1342.x + _1335), 1.0f);
        _1413 = min((_1342.x + _1336), 1.0f);
      } else {
        _1379 = select((_1334 > 0.5f), 0.0f, 1.0f);
        _1380 = select((_1335 > 0.5f), 0.0f, 1.0f);
        _1381 = select((_1336 > 0.5f), 0.0f, 1.0f);
        _1400 = 1.0f - _1342.x;
        _1411 = (((((1.0f - (((1.0f - _1334) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _1379)) + (((_1334 * 2.0f) * _1379) * UberPostFXColorCorrectionCBuffer_048.x)) * _1342.x) + (_1400 * _1334));
        _1412 = (((((1.0f - (((1.0f - _1335) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _1380)) + (((_1335 * 2.0f) * _1380) * UberPostFXColorCorrectionCBuffer_048.y)) * _1342.x) + (_1400 * _1335));
        _1413 = (((((1.0f - (((1.0f - _1336) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1381)) + (((_1336 * 2.0f) * _1381) * UberPostFXColorCorrectionCBuffer_048.z)) * _1342.x) + (_1400 * _1336));
      }
  } else {
    _1411 = _1334;
    _1412 = _1335;
    _1413 = _1336;
  }
  */

  SV_Target.x = _1411;
  SV_Target.y = _1412;
  SV_Target.z = _1413;
  SV_Target.w = _717;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
