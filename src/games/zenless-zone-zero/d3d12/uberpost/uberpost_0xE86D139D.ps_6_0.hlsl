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
  float _52;
  float _53;
  float _54;
  float _55;
  float _56;
  float _66;
  float _68;
  float _70;
  float _71;
  float _72;
  float _83;
  float _93;
  float _99;
  float _105;
  float _108;
  float _177;
  float _178;
  float _214;
  float _215;
  float _216;
  float _217;
  float _218;
  float _219;
  float _220;
  float _221;
  float _320;
  float _321;
  float _322;
  float _351;
  float _352;
  float _353;
  float _504;
  float _505;
  float _506;
  float _692;
  float _693;
  float _694;
  float _711;
  float _712;
  float _713;
  float _714;
  float _753;
  float _754;
  float _755;
  float _842;
  float _843;
  float _844;
  float _1166;
  float _1248;
  float _1249;
  float _1250;
  float _116;
  float _118;
  bool _121;
  bool _122;
  bool _123;
  bool _124;
  bool _148;
  float4 _164;
  float _173;
  float4 _185;
  float _191;
  float _192;
  float _195;
  float _196;
  float _197;
  float _224;
  float _233;
  float _243;
  float _246;
  float _247;
  float _254;
  float _255;
  float _256;
  float _258;
  float _260;
  float _262;
  float _271;
  float _284;
  float _291;
  float _298;
  float _299;
  float _300;
  float4 _314;
  float4 _345;
  float4 _354;
  float _376;
  float _377;
  float _378;
  float _379;
  float _384;
  float _391;
  float _402;
  float _404;
  float _406;
  float _408;
  float _410;
  float _412;
  float4 _413;
  float _419;
  float _421;
  float _425;
  float _427;
  float _429;
  float _431;
  float _438;
  float _443;
  float _445;
  float _447;
  float4 _454;
  float4 _462;
  float4 _470;
  float4 _519;
  float _531;
  float _532;
  float _545;
  float _550;
  float _560;
  float _561;
  float _562;
  bool _569;
  float _579;
  float _587;
  float _590;
  float4 _609;
  float _646;
  float _647;
  float _648;
  float _649;
  bool _652;
  float _665;
  float _666;
  float _667;
  float4 _678;
  float _698;
  float _731;
  float _733;
  float _739;
  float _778;
  float _779;
  float _785;
  float _787;
  float _788;
  float4 _790;
  float4 _794;
  float _804;
  float _805;
  float _806;
  float _824;
  float _828;
  float _855;
  float _857;
  bool _860;
  bool _861;
  bool _862;
  bool _863;
  int _920;
  int _943;
  float4 _968;
  float _981;
  float _989;
  int _993;
  float _1008;
  int _1022;
  float _1036;
  float4 _1052;
  float _1063;
  float4 _1064;
  float _1072;
  bool _1083;
  float _1086;
  float _1095;
  float _1096;
  float _1097;
  float _1109;
  float _1116;
  float _1117;
  float _1118;
  float _1127;
  float _1128;
  float4 _1144;
  float _1168;
  float _1172;
  float _1214;
  float _1215;
  float _1216;
  float _34[3];
  float _35[3];
  float _36[4];
  float _37[4];
  float _38[4];
  float _39[4];
  float _40[4];
  _52 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _53 = TEXCOORD.x * 2.0f;
  _54 = TEXCOORD.y * 2.0f;
  _55 = _53 + -1.0f;
  _56 = _54 + -1.0f;
  _66 = (Globals_080.z) + -1.0f;
  _68 = (_66 * (Globals_080.y)) + -1.0f;
  _70 = (_68 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _71 = _70 * _56;
  _72 = _55 * _55;
  _83 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_55)), (_70 * (1.0f - abs(_56)))), (1.0f - (sqrt((_71 * _71) + _72) * 0.7070000171661377f)));
  _93 = saturate((_83 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _99 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_93 * _93) * (3.0f - (_93 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _83), 0.0f, 1.0f));
  _105 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _99), _99) * UberPostScreenEffectsBaseCBuffer_016.z;
  _108 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _105, 0.0f) * _105;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _116 = ((_68 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _56;
    _118 = atan(_116 / _55);
    _121 = (_55 < 0.0f);
    _122 = (_55 == 0.0f);
    _123 = (_116 >= 0.0f);
    _124 = (_116 < 0.0f);
    _148 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _164 = t15.SampleBias(s10, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _52)) + (select(_148, select((_122 && _123), 2.0f, select((_122 && _124), -2.0f, (select((_121 && _124), (_118 + -3.1415927410125732f), select((_121 && _123), (_118 + 3.1415927410125732f), _118)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _52)) + (select(_148, (sqrt((_116 * _116) + _72) * 0.6366197466850281f), ((((Globals_080.y) * (TEXCOORD.y + -0.5f)) * _66) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _173 = (_108 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _177 = (_173 * ((_164.x * 2.0f) + -1.0f));
    _178 = (_173 * ((_164.y * 2.0f) + -1.0f));
  } else {
    _177 = 0.0f;
    _178 = 0.0f;
  }
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _185 = t5.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _191 = (_185.x * 0.10000000149011612f) + _177;
    _192 = (_185.y * 0.10000000149011612f) + _178;
    _195 = UberPostBaseCBuffer_176.w * _185.z;
    _196 = _195 * _191;
    _197 = _195 * _192;
    _214 = (_191 + TEXCOORD.x);
    _215 = (_192 + TEXCOORD.y);
    _216 = ((_196 * UberPostBaseCBuffer_176.x) + _191);
    _217 = ((_197 * UberPostBaseCBuffer_176.x) + _192);
    _218 = ((_196 * UberPostBaseCBuffer_176.y) + _191);
    _219 = ((_197 * UberPostBaseCBuffer_176.y) + _192);
    _220 = ((_196 * UberPostBaseCBuffer_176.z) + _191);
    _221 = ((_197 * UberPostBaseCBuffer_176.z) + _192);
  } else {
    _214 = TEXCOORD.x;
    _215 = TEXCOORD.y;
    _216 = 0.0f;
    _217 = 0.0f;
    _218 = 0.0f;
    _219 = 0.0f;
    _220 = 0.0f;
    _221 = 0.0f;
  }
  _224 = frac(Globals_208[1].x);
  _233 = (((float4)(t6.SampleBias(s3, float2((_224 + (TEXCOORD.x * 5.0f)), (_224 + (TEXCOORD.y * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _243 = ((_233 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_233 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _246 = cos(UberPostBaseCBuffer_224.w);
  _247 = sin(UberPostBaseCBuffer_224.w);
  _254 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _243;
  _255 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _243;
  _256 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _243;
  _258 = _254 * _247;
  _260 = _255 * _247;
  _262 = _256 * _247;
  _271 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + TEXCOORD.y);
  _284 = frac(_224 * 1234.0f);
  _291 = (((_284 * _284) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _284) + UberPostBaseCBuffer_256.x;
  _298 = select((_291 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_271 + _258)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _299 = select((_291 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_271 + _260)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _300 = select((_291 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_271 + _262)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _314 = t7.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * TEXCOORD.x) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * TEXCOORD.y) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _320 = (_314.x * _298);
    _321 = (_314.x * _299);
    _322 = (_314.x * _300);
  } else {
    _320 = _298;
    _321 = _299;
    _322 = _300;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _345 = t7.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * TEXCOORD.x) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * TEXCOORD.y) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _351 = (_345.y * _320);
    _352 = (_345.y * _321);
    _353 = (_345.y * _322);
  } else {
    _351 = _320;
    _352 = _321;
    _353 = _322;
  }
  _354 = t3.SampleBias(s1, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
  _376 = saturate(((_354.z + -1.0f) + (((float4)(t4.SampleBias(s1, float2(((Globals_3344.y) + _354.w), 0.5f), (Globals_976), int2(0, 0)))).x)) / _354.z) * _354.z;
  _377 = _376 * (Globals_3344.x);
  _378 = _377 * ((_354.x * 2.0f) + -1.0f);
  _379 = _377 * ((_354.y * 2.0f) + -1.0f);
  _384 = (Globals_3344.z) + 1.0f;
  _391 = 1.0f - (Globals_3344.z);
  _402 = ((_254 * _246) + TEXCOORD.x) + (_216 - _378);
  _404 = (_258 + TEXCOORD.y) + (_217 - _379);
  _406 = ((_255 * _246) + TEXCOORD.x) + (_218 - (_384 * _378));
  _408 = (_260 + TEXCOORD.y) + (_219 - (_384 * _379));
  _410 = ((_256 * _246) + TEXCOORD.x) + (_220 - (_391 * _378));
  _412 = (_262 + TEXCOORD.y) + (_221 - (_391 * _379));
  _413 = t0.SampleBias(s0, float2(_214, _215), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _419 = (_53 - UberPostBaseCBuffer_384.x) + -0.5f;
    _421 = (_54 - UberPostBaseCBuffer_384.y) + -0.5f;
    _425 = dot(float2(_419, _421), float2(_419, _421)) * -0.3333333432674408f;
    _427 = (_425 * _419) * UberPostBaseCBuffer_192.z;
    _429 = (_425 * _421) * UberPostBaseCBuffer_192.z;
    _431 = rsqrt(dot(float3(_427, _429, 9.999999747378752e-05f), float3(_427, _429, 9.999999747378752e-05f)));
    _438 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _443 = exp2(log2(sqrt((_427 * _427) + (_429 * _429)) / _438) * UberPostBaseCBuffer_384.z);
    _445 = ((_427 * _431) * _438) * _443;
    _447 = ((_429 * _431) * _438) * _443;
    _454 = t0.SampleBias(s0, float2((_402 + (_445 * UberPostBaseCBuffer_400.w)), (_404 + (_447 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _462 = t0.SampleBias(s0, float2((_406 + (UberPostBaseCBuffer_416.w * _445)), (_408 + (UberPostBaseCBuffer_416.w * _447))), (Globals_976), int2(0, 0));
    _470 = t0.SampleBias(s0, float2((_410 + (UberPostBaseCBuffer_432.w * _445)), (_412 + (UberPostBaseCBuffer_432.w * _447))), (Globals_976), int2(0, 0));
    _504 = (((UberPostBaseCBuffer_416.x * _462.y) + (UberPostBaseCBuffer_400.x * _454.x)) + (UberPostBaseCBuffer_432.x * _470.z));
    _505 = (((UberPostBaseCBuffer_416.y * _462.y) + (UberPostBaseCBuffer_400.y * _454.x)) + (UberPostBaseCBuffer_432.y * _470.z));
    _506 = (((UberPostBaseCBuffer_416.z * _462.y) + (UberPostBaseCBuffer_400.z * _454.x)) + (UberPostBaseCBuffer_432.z * _470.z));
  } else {
    _504 = (((float4)(t0.SampleBias(s0, float2(_402, _404), (Globals_976), int2(0, 0)))).x);
    _505 = (((float4)(t0.SampleBias(s0, float2(_406, _408), (Globals_976), int2(0, 0)))).y);
    _506 = (((float4)(t0.SampleBias(s0, float2(_410, _412), (Globals_976), int2(0, 0)))).z);
  }
  _519 = t10.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * TEXCOORD.x) * (Globals_3360.x)), ((UberPostBaseCBuffer_368.y * TEXCOORD.y) * (Globals_3360.y))), (Globals_976), int2(0, 0));
  _531 = frac((Globals_208[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  _532 = 0.4000000059604645f - _531;
  _545 = (UberPostBaseCBuffer_368.w * max(((select((_532 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_531 + 0.05000000074505806f) * 10.0f) - _532)) + _532), 0.0f)) + 1.0f;
  _550 = 1.0f - UberPostBaseCBuffer_368.z;
  _560 = (((((_519.x * 12.0f) * _545) * _550) + UberPostBaseCBuffer_368.z) * _504) + _351;
  _561 = (((((_519.y * 12.0f) * _545) * _550) + UberPostBaseCBuffer_368.z) * _505) + _352;
  _562 = (((((_519.z * 12.0f) * _545) * _550) + UberPostBaseCBuffer_368.z) * _506) + _353;
  _569 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _569)) {
    _579 = fmod((((Globals_2208.y) * _215) * UberPostBaseCBuffer_448.x), 2.0f);
    _587 = (((select((_579 > 1.0f), (2.0f - _579), _579) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _214;
    _590 = (Globals_2208.w) * (Globals_2208.x);
    _609 = t8.SampleBias(s5, float2(_587, ((select(((frac((((_587 + abs(UberPostBaseCBuffer_464.y)) * _590) - (UberPostBaseCBuffer_464.y * _215)) / ((_590 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _215)), (Globals_976), int2(0, 0));
    _646 = ((((-0.699999988079071f - _609.x) + (exp2(log2(abs(_609.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_609.x < 0.30000001192092896f), 0.0f, 1.0f)) + _609.x) * UberPostBaseCBuffer_336.x;
    _647 = ((((-0.699999988079071f - _609.y) + (exp2(log2(abs(_609.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_609.y < 0.30000001192092896f), 0.0f, 1.0f)) + _609.y) * UberPostBaseCBuffer_336.x;
    _648 = ((((-0.699999988079071f - _609.z) + (exp2(log2(abs(_609.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_609.z < 0.30000001192092896f), 0.0f, 1.0f)) + _609.z) * UberPostBaseCBuffer_336.x;
    _649 = dot(float3(_560, _561, _562), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _652 = (UberPostBaseCBuffer_352.x > 0.5f);
    _665 = select(_652, ((((_646 * _649) - _646) * _413.w) + _646), _646);
    _666 = select(_652, ((((_647 * _649) - _647) * _413.w) + _647), _647);
    _667 = select(_652, ((((_648 * _649) - _648) * _413.w) + _648), _648);
    if (_569) {
      _678 = t9.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _214) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _215) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _692 = (((_678.x * _646) * UberPostBaseCBuffer_336.y) + _665);
      _693 = (((_678.y * _647) * UberPostBaseCBuffer_336.y) + _666);
      _694 = (((_678.z * _648) * UberPostBaseCBuffer_336.y) + _667);
    } else {
      _692 = _665;
      _693 = _666;
      _694 = _667;
    }
    _698 = (_376 * (Globals_3344.w)) + 1.0f;
    _711 = ((_698 * _560) + _692);
    _712 = ((_698 * _561) + _693);
    _713 = ((_698 * _562) + _694);
    _714 = saturate((((_693 + _692) + _694) * 0.33329999446868896f) + _413.w);
  } else {
    _711 = _560;
    _712 = _561;
    _713 = _562;
    _714 = _413.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _731 = abs(_215 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _733 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_214 - UberPostBaseCBuffer_112.x);
    _739 = exp2(log2(saturate(1.0f - dot(float2(_733, _731), float2(_733, _731)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _753 = (((_739 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _711);
    _754 = (((_739 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _712);
    _755 = (((_739 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _713);
  } else {
    _753 = _711;
    _754 = _712;
    _755 = _713;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_753, _754, _755);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t2, s0, UberPostBaseCBuffer_000.xyz);
    _804 = tonemapped.x;
    _805 = tonemapped.y;
    _806 = tonemapped.z;
  } else {
    _778 = saturate((log2((_755 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _779 = floor(_778);
    _785 = ((saturate((log2((_754 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _787 = (_779 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_753 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _788 = _778 - _779;
    _790 = t2.SampleLevel(s0, float2((_787 + UberPostBaseCBuffer_000.y), _785), 0.0f);
    _794 = t2.SampleLevel(s0, float2(_787, _785), 0.0f);
    _804 = ((_790.x - _794.x) * _788) + _794.x;
    _805 = ((_790.y - _794.y) * _788) + _794.y;
    _806 = ((_790.z - _794.z) * _788) + _794.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _824 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _828 = 1.0f - (sqrt(dot(float3(_804, _805, _806), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _842 = ((((UberPostBaseCBuffer_208.x * _804) * _824) * _828) + _804);
    _843 = ((((UberPostBaseCBuffer_208.x * _805) * _824) * _828) + _805);
    _844 = ((((UberPostBaseCBuffer_208.x * _806) * _824) * _828) + _806);
  } else {
    _842 = _804;
    _843 = _805;
    _844 = _806;
  }
  _855 = ((((((Globals_080.z) + -1.0f) * (Globals_080.y)) + -1.0f) * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _56;
  _857 = atan(_855 / _55);
  _860 = (_55 < 0.0f);
  _861 = (_55 == 0.0f);
  _862 = (_855 >= 0.0f);
  _863 = (_855 < 0.0f);
  _34[0] = ((((Globals_2208.x) * (TEXCOORD.x + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _35[0] = TEXCOORD.y;
  _34[1] = select((_861 && _862), 2.0f, select((_861 && _863), -2.0f, (select((_860 && _863), (_857 + -3.1415927410125732f), select((_860 && _862), (_857 + 3.1415927410125732f), _857)) * 1.2732394933700562f)));
  _35[1] = (sqrt((_855 * _855) + (_55 * _55)) * 0.5f);
  _34[2] = TEXCOORD.x;
  _35[2] = TEXCOORD.y;
  _920 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _943 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _968 = t14.SampleBias(s9, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _177) + (UberPostScreenEffectsBaseCBuffer_176.x * _52)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_34[min((uint)(_943), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _178) + (UberPostScreenEffectsBaseCBuffer_176.y * _52)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_35[min((uint)(_943), 2u)])))), (Globals_976), int2(0, 0));
  _40[0] = _968.x;
  _40[1] = _968.y;
  _40[2] = _968.z;
  _40[3] = _968.w;
  _981 = ((_40[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _989 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _993 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _1008 = UberPostScreenEffectsBaseCBuffer_208.y * _981;
  _1022 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1036 = UberPostScreenEffectsBaseCBuffer_208.z * _981;
  _1052 = t13.SampleBias(s8, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _177) + (UberPostScreenEffectsBaseCBuffer_160.z * _52)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_34[min((uint)(_1022), 2u)]))) + _1036), (((((UberPostScreenEffectsRandomCBuffer_000.y + _178) + (UberPostScreenEffectsBaseCBuffer_160.w * _52)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_35[min((uint)(_1022), 2u)]))) + _1036)), (Globals_976), int2(0, 0));
  _39[0] = _1052.x;
  _39[1] = _1052.y;
  _39[2] = _1052.z;
  _39[3] = _1052.w;
  _1063 = _39[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1064 = t11.SampleBias(s6, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _52) + _177) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_34[min((uint)(_993), 2u)]) * _989) * UberPostScreenEffectsBaseCBuffer_032.x)) + _1008), (((((UberPostScreenEffectsBaseCBuffer_096.y * _52) + _178) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_35[min((uint)(_993), 2u)]) * _989) * UberPostScreenEffectsBaseCBuffer_032.y)) + _1008)), (Globals_976), int2(0, 0));
  _1072 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1063, 1.0f);
  _38[0] = _1064.x;
  _38[1] = _1064.y;
  _38[2] = _1064.z;
  _38[3] = _1064.w;
  _1083 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1086 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1072);
  _1095 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1096 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1097 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1109 = saturate((_1072 * (_38[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1116 = select(_1083, (((_1095 * _1086) + UberPostScreenEffectsBaseCBuffer_064.x) * _1064.x), ((_1095 * _1109) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1117 = select(_1083, (((_1096 * _1086) + UberPostScreenEffectsBaseCBuffer_064.y) * _1064.y), ((_1096 * _1109) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1118 = select(_1083, (((_1097 * _1086) + UberPostScreenEffectsBaseCBuffer_064.z) * _1064.z), ((_1097 * _1109) + UberPostScreenEffectsBaseCBuffer_064.z));
  _37[0] = _1064.x;
  _37[1] = _1064.y;
  _37[2] = _1064.z;
  _37[3] = _1064.w;
  _1127 = _37[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1128 = _1127 * _1063;
  _1144 = t12.SampleBias(s7, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _52) + _177) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_34[min((uint)(_920), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _52) + _178) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_35[min((uint)(_920), 2u)])))), (Globals_976), int2(0, 0));
  _36[0] = _1144.x;
  _36[1] = _1144.y;
  _36[2] = _1144.z;
  _36[3] = _1144.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1166 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1127));
  } else {
    _1166 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1128 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1128 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1168 = ((_36[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1166) * _108;
  _1172 = select((_1168 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1168;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1248 = ((_1172 * (_1116 - _842)) + _842);
    _1249 = ((_1172 * (_1117 - _843)) + _843);
    _1250 = ((_1172 * (_1118 - _844)) + _844);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1248 = ((_1172 * _1116) + _842);
      _1249 = ((_1172 * _1117) + _843);
      _1250 = ((_1172 * _1118) + _844);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1248 = (((_1172 * (_1116 + -1.0f)) + 1.0f) * _842);
        _1249 = (((_1172 * (_1117 + -1.0f)) + 1.0f) * _843);
        _1250 = (((_1172 * (_1118 + -1.0f)) + 1.0f) * _844);
      } else {
        _1214 = _1172 * (_1116 + -0.5f);
        _1215 = _1172 * (_1117 + -0.5f);
        _1216 = _1172 * (_1118 + -0.5f);
        _1248 = select((_842 < 0.5f), ((_842 * 2.0f) * (_1214 + 0.5f)), (1.0f - (((1.0f - _842) * 2.0f) * (0.5f - _1214))));
        _1249 = select((_843 < 0.5f), ((_843 * 2.0f) * (_1215 + 0.5f)), (1.0f - (((1.0f - _843) * 2.0f) * (0.5f - _1215))));
        _1250 = select((_844 < 0.5f), ((_844 * 2.0f) * (_1216 + 0.5f)), (1.0f - (((1.0f - _844) * 2.0f) * (0.5f - _1216))));
      }
    }
  }
  SV_Target.x = (_1248);
  SV_Target.y = (_1249);
  SV_Target.z = (_1250);
  SV_Target.w = _714;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
