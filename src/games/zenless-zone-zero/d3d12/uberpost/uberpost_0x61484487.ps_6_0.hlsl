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
  float _460;
  float _461;
  float _462;
  float _648;
  float _649;
  float _650;
  float _660;
  float _661;
  float _662;
  float _663;
  float _702;
  float _703;
  float _704;
  float _740;
  float _741;
  float _742;
  float _1064;
  float _1146;
  float _1147;
  float _1148;
  float _1175;
  float _1176;
  float _1177;
  float _1306;
  float _1307;
  float _1308;
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
  float _359;
  float _360;
  float _363;
  float _364;
  float _367;
  float _368;
  float4 _369;
  float _375;
  float _377;
  float _381;
  float _383;
  float _385;
  float _387;
  float _394;
  float _399;
  float _401;
  float _403;
  float4 _410;
  float4 _418;
  float4 _426;
  float4 _475;
  float _487;
  float _488;
  float _501;
  float _506;
  float _516;
  float _517;
  float _518;
  bool _525;
  float _535;
  float _543;
  float _546;
  float4 _565;
  float _602;
  float _603;
  float _604;
  float _605;
  bool _608;
  float _621;
  float _622;
  float _623;
  float4 _634;
  float _680;
  float _682;
  float _688;
  float _722;
  float _726;
  float _753;
  float _755;
  bool _758;
  bool _759;
  bool _760;
  bool _761;
  int _818;
  int _841;
  float4 _866;
  float _879;
  float _887;
  int _891;
  float _906;
  int _920;
  float _934;
  float4 _950;
  float _961;
  float4 _962;
  float _970;
  bool _981;
  float _984;
  float _993;
  float _994;
  float _995;
  float _1007;
  float _1014;
  float _1015;
  float _1016;
  float _1025;
  float _1026;
  float4 _1042;
  float _1066;
  float _1070;
  float _1112;
  float _1113;
  float _1114;
  float _1153;
  float _1160;
  float _1161;
  float _1162;
  float4 _1170;
  float _1192;
  float _1193;
  float _1194;
  float _1202;
  float _1229;
  float _1230;
  float _1231;
  float4 _1237;
  float _1274;
  float _1275;
  float _1276;
  float _1295;
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
    _164 = t14.SampleBias(s10, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _52)) + (select(_148, select((_122 && _123), 2.0f, select((_122 && _124), -2.0f, (select((_121 && _124), (_118 + -3.1415927410125732f), select((_121 && _123), (_118 + 3.1415927410125732f), _118)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _52)) + (select(_148, (sqrt((_116 * _116) + _72) * 0.6366197466850281f), ((((Globals_080.y) * (TEXCOORD.y + -0.5f)) * _66) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _173 = (_108 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _177 = (_173 * ((_164.x * 2.0f) + -1.0f));
    _178 = (_173 * ((_164.y * 2.0f) + -1.0f));
  } else {
    _177 = 0.0f;
    _178 = 0.0f;
  }
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _185 = t4.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
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
  _233 = (((float4)(t5.SampleBias(s3, float2((_224 + (TEXCOORD.x * 5.0f)), (_224 + (TEXCOORD.y * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
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
  _298 = select((_291 < (((float4)(t5.SampleBias(s3, float2(0.5f, (_271 + _258)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _299 = select((_291 < (((float4)(t5.SampleBias(s3, float2(0.5f, (_271 + _260)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _300 = select((_291 < (((float4)(t5.SampleBias(s3, float2(0.5f, (_271 + _262)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _314 = t6.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * TEXCOORD.x) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * TEXCOORD.y) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
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
    _345 = t6.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * TEXCOORD.x) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * TEXCOORD.y) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _351 = (_345.y * _320);
    _352 = (_345.y * _321);
    _353 = (_345.y * _322);
  } else {
    _351 = _320;
    _352 = _321;
    _353 = _322;
  }
  _359 = (_216 + TEXCOORD.x) + (_254 * _246);
  _360 = (_217 + TEXCOORD.y) + _258;
  _363 = (_218 + TEXCOORD.x) + (_255 * _246);
  _364 = (_219 + TEXCOORD.y) + _260;
  _367 = (_220 + TEXCOORD.x) + (_256 * _246);
  _368 = (_221 + TEXCOORD.y) + _262;
  _369 = t1.SampleBias(s0, float2(_214, _215), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _375 = (_53 - UberPostBaseCBuffer_384.x) + -0.5f;
    _377 = (_54 - UberPostBaseCBuffer_384.y) + -0.5f;
    _381 = dot(float2(_375, _377), float2(_375, _377)) * -0.3333333432674408f;
    _383 = (_381 * _375) * UberPostBaseCBuffer_192.z;
    _385 = (_381 * _377) * UberPostBaseCBuffer_192.z;
    _387 = rsqrt(dot(float3(_383, _385, 9.999999747378752e-05f), float3(_383, _385, 9.999999747378752e-05f)));
    _394 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _399 = exp2(log2(sqrt((_383 * _383) + (_385 * _385)) / _394) * UberPostBaseCBuffer_384.z);
    _401 = ((_383 * _387) * _394) * _399;
    _403 = ((_385 * _387) * _394) * _399;
    _410 = t1.SampleBias(s0, float2((_359 + (_401 * UberPostBaseCBuffer_400.w)), (_360 + (_403 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _418 = t1.SampleBias(s0, float2((_363 + (UberPostBaseCBuffer_416.w * _401)), (_364 + (UberPostBaseCBuffer_416.w * _403))), (Globals_976), int2(0, 0));
    _426 = t1.SampleBias(s0, float2((_367 + (UberPostBaseCBuffer_432.w * _401)), (_368 + (UberPostBaseCBuffer_432.w * _403))), (Globals_976), int2(0, 0));
    _460 = (((UberPostBaseCBuffer_416.x * _418.y) + (UberPostBaseCBuffer_400.x * _410.x)) + (UberPostBaseCBuffer_432.x * _426.z));
    _461 = (((UberPostBaseCBuffer_416.y * _418.y) + (UberPostBaseCBuffer_400.y * _410.x)) + (UberPostBaseCBuffer_432.y * _426.z));
    _462 = (((UberPostBaseCBuffer_416.z * _418.y) + (UberPostBaseCBuffer_400.z * _410.x)) + (UberPostBaseCBuffer_432.z * _426.z));
  } else {
    _460 = (((float4)(t1.SampleBias(s0, float2(_359, _360), (Globals_976), int2(0, 0)))).x);
    _461 = (((float4)(t1.SampleBias(s0, float2(_363, _364), (Globals_976), int2(0, 0)))).y);
    _462 = (((float4)(t1.SampleBias(s0, float2(_367, _368), (Globals_976), int2(0, 0)))).z);
  }
  _475 = t9.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * TEXCOORD.x) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * TEXCOORD.y) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _487 = frac((Globals_208[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  _488 = 0.4000000059604645f - _487;
  _501 = (UberPostBaseCBuffer_368.w * max(((select((_488 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_487 + 0.05000000074505806f) * 10.0f) - _488)) + _488), 0.0f)) + 1.0f;
  _506 = 1.0f - UberPostBaseCBuffer_368.z;
  _516 = (((((_475.x * 12.0f) * _501) * _506) + UberPostBaseCBuffer_368.z) * _460) + _351;
  _517 = (((((_475.y * 12.0f) * _501) * _506) + UberPostBaseCBuffer_368.z) * _461) + _352;
  _518 = (((((_475.z * 12.0f) * _501) * _506) + UberPostBaseCBuffer_368.z) * _462) + _353;
  _525 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _525)) {
    _535 = fmod((((Globals_2208.y) * _215) * UberPostBaseCBuffer_448.x), 2.0f);
    _543 = (((select((_535 > 1.0f), (2.0f - _535), _535) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _214;
    _546 = (Globals_2208.w) * (Globals_2208.x);
    _565 = t7.SampleBias(s5, float2(_543, ((select(((frac((((_543 + abs(UberPostBaseCBuffer_464.y)) * _546) - (UberPostBaseCBuffer_464.y * _215)) / ((_546 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _215)), (Globals_976), int2(0, 0));
    _602 = ((((-0.699999988079071f - _565.x) + (exp2(log2(abs(_565.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_565.x < 0.30000001192092896f), 0.0f, 1.0f)) + _565.x) * UberPostBaseCBuffer_336.x;
    _603 = ((((-0.699999988079071f - _565.y) + (exp2(log2(abs(_565.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_565.y < 0.30000001192092896f), 0.0f, 1.0f)) + _565.y) * UberPostBaseCBuffer_336.x;
    _604 = ((((-0.699999988079071f - _565.z) + (exp2(log2(abs(_565.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_565.z < 0.30000001192092896f), 0.0f, 1.0f)) + _565.z) * UberPostBaseCBuffer_336.x;
    _605 = dot(float3(_516, _517, _518), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _608 = (UberPostBaseCBuffer_352.x > 0.5f);
    _621 = select(_608, ((((_602 * _605) - _602) * _369.w) + _602), _602);
    _622 = select(_608, ((((_603 * _605) - _603) * _369.w) + _603), _603);
    _623 = select(_608, ((((_604 * _605) - _604) * _369.w) + _604), _604);
    if (_525) {
      _634 = t8.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _214) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _215) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _648 = (((_634.x * _602) * UberPostBaseCBuffer_336.y) + _621);
      _649 = (((_634.y * _603) * UberPostBaseCBuffer_336.y) + _622);
      _650 = (((_634.z * _604) * UberPostBaseCBuffer_336.y) + _623);
    } else {
      _648 = _621;
      _649 = _622;
      _650 = _623;
    }
    _660 = (_648 + _516);
    _661 = (_649 + _517);
    _662 = (_650 + _518);
    _663 = saturate((((_649 + _648) + _650) * 0.33329999446868896f) + _369.w);
  } else {
    _660 = _516;
    _661 = _517;
    _662 = _518;
    _663 = _369.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _680 = abs(_215 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _682 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_214 - UberPostBaseCBuffer_112.x);
    _688 = exp2(log2(saturate(1.0f - dot(float2(_682, _680), float2(_682, _680)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _702 = (((_688 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _660);
    _703 = (((_688 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _661);
    _704 = (((_688 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _662);
  } else {
    _702 = _660;
    _703 = _661;
    _704 = _662;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_702, _703, _704);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _702 = tonemapped.x;
    _703 = tonemapped.y;
    _704 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _722 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _726 = 1.0f - (sqrt(dot(float3(_702, _703, _704), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _740 = ((((UberPostBaseCBuffer_208.x * _702) * _722) * _726) + _702);
    _741 = ((((UberPostBaseCBuffer_208.x * _703) * _722) * _726) + _703);
    _742 = ((((UberPostBaseCBuffer_208.x * _704) * _722) * _726) + _704);
  } else {
    _740 = _702;
    _741 = _703;
    _742 = _704;
  }
  _753 = ((((((Globals_080.z) + -1.0f) * (Globals_080.y)) + -1.0f) * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _56;
  _755 = atan(_753 / _55);
  _758 = (_55 < 0.0f);
  _759 = (_55 == 0.0f);
  _760 = (_753 >= 0.0f);
  _761 = (_753 < 0.0f);
  _34[0] = ((((Globals_2208.x) * (TEXCOORD.x + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _35[0] = TEXCOORD.y;
  _34[1] = select((_759 && _760), 2.0f, select((_759 && _761), -2.0f, (select((_758 && _761), (_755 + -3.1415927410125732f), select((_758 && _760), (_755 + 3.1415927410125732f), _755)) * 1.2732394933700562f)));
  _35[1] = (sqrt((_753 * _753) + (_55 * _55)) * 0.5f);
  _34[2] = TEXCOORD.x;
  _35[2] = TEXCOORD.y;
  _818 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _841 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _866 = t13.SampleBias(s9, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _177) + (UberPostScreenEffectsBaseCBuffer_176.x * _52)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_34[min((uint)(_841), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _178) + (UberPostScreenEffectsBaseCBuffer_176.y * _52)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_35[min((uint)(_841), 2u)])))), (Globals_976), int2(0, 0));
  _40[0] = _866.x;
  _40[1] = _866.y;
  _40[2] = _866.z;
  _40[3] = _866.w;
  _879 = ((_40[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _887 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _891 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _906 = UberPostScreenEffectsBaseCBuffer_208.y * _879;
  _920 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _934 = UberPostScreenEffectsBaseCBuffer_208.z * _879;
  _950 = t12.SampleBias(s8, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _177) + (UberPostScreenEffectsBaseCBuffer_160.z * _52)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_34[min((uint)(_920), 2u)]))) + _934), (((((UberPostScreenEffectsRandomCBuffer_000.y + _178) + (UberPostScreenEffectsBaseCBuffer_160.w * _52)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_35[min((uint)(_920), 2u)]))) + _934)), (Globals_976), int2(0, 0));
  _39[0] = _950.x;
  _39[1] = _950.y;
  _39[2] = _950.z;
  _39[3] = _950.w;
  _961 = _39[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _962 = t10.SampleBias(s6, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _52) + _177) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_34[min((uint)(_891), 2u)]) * _887) * UberPostScreenEffectsBaseCBuffer_032.x)) + _906), (((((UberPostScreenEffectsBaseCBuffer_096.y * _52) + _178) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_35[min((uint)(_891), 2u)]) * _887) * UberPostScreenEffectsBaseCBuffer_032.y)) + _906)), (Globals_976), int2(0, 0));
  _970 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _961, 1.0f);
  _38[0] = _962.x;
  _38[1] = _962.y;
  _38[2] = _962.z;
  _38[3] = _962.w;
  _981 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _984 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _970);
  _993 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _994 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _995 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1007 = saturate((_970 * (_38[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1014 = select(_981, (((_993 * _984) + UberPostScreenEffectsBaseCBuffer_064.x) * _962.x), ((_993 * _1007) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1015 = select(_981, (((_994 * _984) + UberPostScreenEffectsBaseCBuffer_064.y) * _962.y), ((_994 * _1007) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1016 = select(_981, (((_995 * _984) + UberPostScreenEffectsBaseCBuffer_064.z) * _962.z), ((_995 * _1007) + UberPostScreenEffectsBaseCBuffer_064.z));
  _37[0] = _962.x;
  _37[1] = _962.y;
  _37[2] = _962.z;
  _37[3] = _962.w;
  _1025 = _37[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1026 = _1025 * _961;
  _1042 = t11.SampleBias(s7, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _52) + _177) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_34[min((uint)(_818), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _52) + _178) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_35[min((uint)(_818), 2u)])))), (Globals_976), int2(0, 0));
  _36[0] = _1042.x;
  _36[1] = _1042.y;
  _36[2] = _1042.z;
  _36[3] = _1042.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1064 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1025));
  } else {
    _1064 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1026 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1026 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1066 = ((_36[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1064) * _108;
  _1070 = select((_1066 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1066;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1146 = ((_1070 * (_1014 - _740)) + _740);
    _1147 = ((_1070 * (_1015 - _741)) + _741);
    _1148 = ((_1070 * (_1016 - _742)) + _742);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1146 = ((_1070 * _1014) + _740);
      _1147 = ((_1070 * _1015) + _741);
      _1148 = ((_1070 * _1016) + _742);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1146 = (((_1070 * (_1014 + -1.0f)) + 1.0f) * _740);
        _1147 = (((_1070 * (_1015 + -1.0f)) + 1.0f) * _741);
        _1148 = (((_1070 * (_1016 + -1.0f)) + 1.0f) * _742);
      } else {
        _1112 = _1070 * (_1014 + -0.5f);
        _1113 = _1070 * (_1015 + -0.5f);
        _1114 = _1070 * (_1016 + -0.5f);
        _1146 = select((_740 < 0.5f), ((_740 * 2.0f) * (_1112 + 0.5f)), (1.0f - (((1.0f - _740) * 2.0f) * (0.5f - _1112))));
        _1147 = select((_741 < 0.5f), ((_741 * 2.0f) * (_1113 + 0.5f)), (1.0f - (((1.0f - _741) * 2.0f) * (0.5f - _1113))));
        _1148 = select((_742 < 0.5f), ((_742 * 2.0f) * (_1114 + 0.5f)), (1.0f - (((1.0f - _742) * 2.0f) * (0.5f - _1114))));
      }
    }
  }
  _1153 = ((_1147 + _1146) + _1148) * 0.3333333432674408f;
  _1160 = ((_1146 - _1153) * UberPostFXColorCorrectionCBuffer_000.w) + _1153;
  _1161 = ((_1147 - _1153) * UberPostFXColorCorrectionCBuffer_000.w) + _1153;
  _1162 = ((_1148 - _1153) * UberPostFXColorCorrectionCBuffer_000.w) + _1153;
  if ((Globals_816[3].w) > 0.5f) {
    _1170 = t0.SampleBias(s0, float2(dot(float3(_1160, _1161, _1162), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _1175 = _1170.x;
    _1176 = _1170.y;
    _1177 = _1170.z;
  } else {
    _1175 = _1160;
    _1176 = _1161;
    _1177 = _1162;
  }
  _1192 = (((1.0f - _1175) - saturate(_1175)) * UberPostFXColorCorrectionCBuffer_016.w) + _1175;
  _1193 = (((1.0f - _1176) - saturate(_1176)) * UberPostFXColorCorrectionCBuffer_016.w) + _1176;
  _1194 = (((1.0f - _1177) - saturate(_1177)) * UberPostFXColorCorrectionCBuffer_016.w) + _1177;
  _1202 = saturate((saturate(dot(float3(_1192, _1193, _1194), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _1229 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _1192) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1202)) * UberPostFXColorCorrectionCBuffer_032.x) + _1192);
  // _1230 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _1193) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1202)) * UberPostFXColorCorrectionCBuffer_032.x) + _1193);
  // _1231 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _1194) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1202)) * UberPostFXColorCorrectionCBuffer_032.x) + _1194);
  _1229 = ((((UberPostFXColorCorrectionCBuffer_000.x - _1192) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1202)) * UberPostFXColorCorrectionCBuffer_032.x) + _1192);
  _1230 = ((((UberPostFXColorCorrectionCBuffer_000.y - _1193) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1202)) * UberPostFXColorCorrectionCBuffer_032.x) + _1193);
  _1231 = ((((UberPostFXColorCorrectionCBuffer_000.z - _1194) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1202)) * UberPostFXColorCorrectionCBuffer_032.x) + _1194);

  // HDR FX Mask Blend
  float3 result = float3(_1229, _1230, _1231);
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    float m = smoothstep(0.0f, 1.0f, t3.Sample(s0, TEXCOORD).x);

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
  _1306 = result.x;
  _1307 = result.y;
  _1308 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _1237 = t3.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _1306 = min((_1237.x + _1229), 1.0f);
        _1307 = min((_1237.x + _1230), 1.0f);
        _1308 = min((_1237.x + _1231), 1.0f);
      } else {
        _1274 = select((_1229 > 0.5f), 0.0f, 1.0f);
        _1275 = select((_1230 > 0.5f), 0.0f, 1.0f);
        _1276 = select((_1231 > 0.5f), 0.0f, 1.0f);
        _1295 = 1.0f - _1237.x;
        _1306 = (((((1.0f - (((1.0f - _1229) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _1274)) + (((_1229 * 2.0f) * _1274) * UberPostFXColorCorrectionCBuffer_048.x)) * _1237.x) + (_1295 * _1229));
        _1307 = (((((1.0f - (((1.0f - _1230) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _1275)) + (((_1230 * 2.0f) * _1275) * UberPostFXColorCorrectionCBuffer_048.y)) * _1237.x) + (_1295 * _1230));
        _1308 = (((((1.0f - (((1.0f - _1231) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1276)) + (((_1231 * 2.0f) * _1276) * UberPostFXColorCorrectionCBuffer_048.z)) * _1237.x) + (_1295 * _1231));
      }
  } else {
    _1306 = _1229;
    _1307 = _1230;
    _1308 = _1231;
  }
  */

  SV_Target.x = _1306;
  SV_Target.y = _1307;
  SV_Target.z = _1308;
  SV_Target.w = _663;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
