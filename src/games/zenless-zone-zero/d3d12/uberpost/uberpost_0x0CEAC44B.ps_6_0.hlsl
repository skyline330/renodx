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
  float _53;
  float _54;
  float _55;
  float _56;
  float _57;
  float _67;
  float _69;
  float _71;
  float _72;
  float _73;
  float _84;
  float _94;
  float _100;
  float _106;
  float _109;
  float _178;
  float _179;
  float _215;
  float _216;
  float _217;
  float _218;
  float _219;
  float _220;
  float _221;
  float _222;
  float _321;
  float _322;
  float _323;
  float _352;
  float _353;
  float _354;
  float _461;
  float _462;
  float _463;
  float _649;
  float _650;
  float _651;
  float _661;
  float _662;
  float _663;
  float _664;
  float _703;
  float _704;
  float _705;
  float _831;
  float _832;
  float _833;
  float _1155;
  float _1237;
  float _1238;
  float _1239;
  float _1266;
  float _1267;
  float _1268;
  float _1397;
  float _1398;
  float _1399;
  float _117;
  float _119;
  bool _122;
  bool _123;
  bool _124;
  bool _125;
  bool _149;
  float4 _165;
  float _174;
  float4 _186;
  float _192;
  float _193;
  float _196;
  float _197;
  float _198;
  float _225;
  float _234;
  float _244;
  float _247;
  float _248;
  float _255;
  float _256;
  float _257;
  float _259;
  float _261;
  float _263;
  float _272;
  float _285;
  float _292;
  float _299;
  float _300;
  float _301;
  float4 _315;
  float4 _346;
  float _360;
  float _361;
  float _364;
  float _365;
  float _368;
  float _369;
  float4 _370;
  float _376;
  float _378;
  float _382;
  float _384;
  float _386;
  float _388;
  float _395;
  float _400;
  float _402;
  float _404;
  float4 _411;
  float4 _419;
  float4 _427;
  float4 _476;
  float _488;
  float _489;
  float _502;
  float _507;
  float _517;
  float _518;
  float _519;
  bool _526;
  float _536;
  float _544;
  float _547;
  float4 _566;
  float _603;
  float _604;
  float _605;
  float _606;
  bool _609;
  float _622;
  float _623;
  float _624;
  float4 _635;
  float _681;
  float _683;
  float _689;
  float _710;
  float _711;
  float _712;
  float _740;
  float _741;
  float _747;
  float _749;
  float _750;
  float4 _752;
  float4 _756;
  float _766;
  float _767;
  float _768;
  float _793;
  float _794;
  float _795;
  float _813;
  float _817;
  float _844;
  float _846;
  bool _849;
  bool _850;
  bool _851;
  bool _852;
  int _909;
  int _932;
  float4 _957;
  float _970;
  float _978;
  int _982;
  float _997;
  int _1011;
  float _1025;
  float4 _1041;
  float _1052;
  float4 _1053;
  float _1061;
  bool _1072;
  float _1075;
  float _1084;
  float _1085;
  float _1086;
  float _1098;
  float _1105;
  float _1106;
  float _1107;
  float _1116;
  float _1117;
  float4 _1133;
  float _1157;
  float _1161;
  float _1203;
  float _1204;
  float _1205;
  float _1244;
  float _1251;
  float _1252;
  float _1253;
  float4 _1261;
  float _1283;
  float _1284;
  float _1285;
  float _1293;
  float _1320;
  float _1321;
  float _1322;
  float4 _1328;
  float _1365;
  float _1366;
  float _1367;
  float _1386;
  float _35[3];
  float _36[3];
  float _37[4];
  float _38[4];
  float _39[4];
  float _40[4];
  float _41[4];
  _53 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _54 = TEXCOORD.x * 2.0f;
  _55 = TEXCOORD.y * 2.0f;
  _56 = _54 + -1.0f;
  _57 = _55 + -1.0f;
  _67 = (Globals_080.z) + -1.0f;
  _69 = (_67 * (Globals_080.y)) + -1.0f;
  _71 = (_69 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _72 = _71 * _57;
  _73 = _56 * _56;
  _84 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_56)), (_71 * (1.0f - abs(_57)))), (1.0f - (sqrt((_72 * _72) + _73) * 0.7070000171661377f)));
  _94 = saturate((_84 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _100 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_94 * _94) * (3.0f - (_94 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _84), 0.0f, 1.0f));
  _106 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _100), _100) * UberPostScreenEffectsBaseCBuffer_016.z;
  _109 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _106, 0.0f) * _106;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _117 = ((_69 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _57;
    _119 = atan(_117 / _56);
    _122 = (_56 < 0.0f);
    _123 = (_56 == 0.0f);
    _124 = (_117 >= 0.0f);
    _125 = (_117 < 0.0f);
    _149 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _165 = t15.SampleBias(s10, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _53)) + (select(_149, select((_123 && _124), 2.0f, select((_123 && _125), -2.0f, (select((_122 && _125), (_119 + -3.1415927410125732f), select((_122 && _124), (_119 + 3.1415927410125732f), _119)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _53)) + (select(_149, (sqrt((_117 * _117) + _73) * 0.6366197466850281f), ((((Globals_080.y) * (TEXCOORD.y + -0.5f)) * _67) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _174 = (_109 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _178 = (_174 * ((_165.x * 2.0f) + -1.0f));
    _179 = (_174 * ((_165.y * 2.0f) + -1.0f));
  } else {
    _178 = 0.0f;
    _179 = 0.0f;
  }
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _186 = t5.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _192 = (_186.x * 0.10000000149011612f) + _178;
    _193 = (_186.y * 0.10000000149011612f) + _179;
    _196 = UberPostBaseCBuffer_176.w * _186.z;
    _197 = _196 * _192;
    _198 = _196 * _193;
    _215 = (_192 + TEXCOORD.x);
    _216 = (_193 + TEXCOORD.y);
    _217 = ((_197 * UberPostBaseCBuffer_176.x) + _192);
    _218 = ((_198 * UberPostBaseCBuffer_176.x) + _193);
    _219 = ((_197 * UberPostBaseCBuffer_176.y) + _192);
    _220 = ((_198 * UberPostBaseCBuffer_176.y) + _193);
    _221 = ((_197 * UberPostBaseCBuffer_176.z) + _192);
    _222 = ((_198 * UberPostBaseCBuffer_176.z) + _193);
  } else {
    _215 = TEXCOORD.x;
    _216 = TEXCOORD.y;
    _217 = 0.0f;
    _218 = 0.0f;
    _219 = 0.0f;
    _220 = 0.0f;
    _221 = 0.0f;
    _222 = 0.0f;
  }
  _225 = frac(Globals_208[1].x);
  _234 = (((float4)(t6.SampleBias(s3, float2((_225 + (TEXCOORD.x * 5.0f)), (_225 + (TEXCOORD.y * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _244 = ((_234 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_234 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _247 = cos(UberPostBaseCBuffer_224.w);
  _248 = sin(UberPostBaseCBuffer_224.w);
  _255 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _244;
  _256 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _244;
  _257 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _244;
  _259 = _255 * _248;
  _261 = _256 * _248;
  _263 = _257 * _248;
  _272 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + TEXCOORD.y);
  _285 = frac(_225 * 1234.0f);
  _292 = (((_285 * _285) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _285) + UberPostBaseCBuffer_256.x;
  _299 = select((_292 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_272 + _259)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _300 = select((_292 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_272 + _261)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _301 = select((_292 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_272 + _263)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _315 = t7.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * TEXCOORD.x) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * TEXCOORD.y) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _321 = (_315.x * _299);
    _322 = (_315.x * _300);
    _323 = (_315.x * _301);
  } else {
    _321 = _299;
    _322 = _300;
    _323 = _301;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _346 = t7.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * TEXCOORD.x) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * TEXCOORD.y) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _352 = (_346.y * _321);
    _353 = (_346.y * _322);
    _354 = (_346.y * _323);
  } else {
    _352 = _321;
    _353 = _322;
    _354 = _323;
  }
  _360 = (_217 + TEXCOORD.x) + (_255 * _247);
  _361 = (_218 + TEXCOORD.y) + _259;
  _364 = (_219 + TEXCOORD.x) + (_256 * _247);
  _365 = (_220 + TEXCOORD.y) + _261;
  _368 = (_221 + TEXCOORD.x) + (_257 * _247);
  _369 = (_222 + TEXCOORD.y) + _263;
  _370 = t1.SampleBias(s0, float2(_215, _216), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _376 = (_54 - UberPostBaseCBuffer_384.x) + -0.5f;
    _378 = (_55 - UberPostBaseCBuffer_384.y) + -0.5f;
    _382 = dot(float2(_376, _378), float2(_376, _378)) * -0.3333333432674408f;
    _384 = (_382 * _376) * UberPostBaseCBuffer_192.z;
    _386 = (_382 * _378) * UberPostBaseCBuffer_192.z;
    _388 = rsqrt(dot(float3(_384, _386, 9.999999747378752e-05f), float3(_384, _386, 9.999999747378752e-05f)));
    _395 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _400 = exp2(log2(sqrt((_384 * _384) + (_386 * _386)) / _395) * UberPostBaseCBuffer_384.z);
    _402 = ((_384 * _388) * _395) * _400;
    _404 = ((_386 * _388) * _395) * _400;
    _411 = t1.SampleBias(s0, float2((_360 + (_402 * UberPostBaseCBuffer_400.w)), (_361 + (_404 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _419 = t1.SampleBias(s0, float2((_364 + (UberPostBaseCBuffer_416.w * _402)), (_365 + (UberPostBaseCBuffer_416.w * _404))), (Globals_976), int2(0, 0));
    _427 = t1.SampleBias(s0, float2((_368 + (UberPostBaseCBuffer_432.w * _402)), (_369 + (UberPostBaseCBuffer_432.w * _404))), (Globals_976), int2(0, 0));
    _461 = (((UberPostBaseCBuffer_416.x * _419.y) + (UberPostBaseCBuffer_400.x * _411.x)) + (UberPostBaseCBuffer_432.x * _427.z));
    _462 = (((UberPostBaseCBuffer_416.y * _419.y) + (UberPostBaseCBuffer_400.y * _411.x)) + (UberPostBaseCBuffer_432.y * _427.z));
    _463 = (((UberPostBaseCBuffer_416.z * _419.y) + (UberPostBaseCBuffer_400.z * _411.x)) + (UberPostBaseCBuffer_432.z * _427.z));
  } else {
    _461 = (((float4)(t1.SampleBias(s0, float2(_360, _361), (Globals_976), int2(0, 0)))).x);
    _462 = (((float4)(t1.SampleBias(s0, float2(_364, _365), (Globals_976), int2(0, 0)))).y);
    _463 = (((float4)(t1.SampleBias(s0, float2(_368, _369), (Globals_976), int2(0, 0)))).z);
  }
  _476 = t10.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * TEXCOORD.x) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * TEXCOORD.y) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _488 = frac((Globals_208[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  _489 = 0.4000000059604645f - _488;
  _502 = (UberPostBaseCBuffer_368.w * max(((select((_489 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_488 + 0.05000000074505806f) * 10.0f) - _489)) + _489), 0.0f)) + 1.0f;
  _507 = 1.0f - UberPostBaseCBuffer_368.z;
  _517 = (((((_476.x * 12.0f) * _502) * _507) + UberPostBaseCBuffer_368.z) * _461) + _352;
  _518 = (((((_476.y * 12.0f) * _502) * _507) + UberPostBaseCBuffer_368.z) * _462) + _353;
  _519 = (((((_476.z * 12.0f) * _502) * _507) + UberPostBaseCBuffer_368.z) * _463) + _354;
  _526 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _526)) {
    _536 = fmod((((Globals_2208.y) * _216) * UberPostBaseCBuffer_448.x), 2.0f);
    _544 = (((select((_536 > 1.0f), (2.0f - _536), _536) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _215;
    _547 = (Globals_2208.w) * (Globals_2208.x);
    _566 = t8.SampleBias(s5, float2(_544, ((select(((frac((((_544 + abs(UberPostBaseCBuffer_464.y)) * _547) - (UberPostBaseCBuffer_464.y * _216)) / ((_547 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _216)), (Globals_976), int2(0, 0));
    _603 = ((((-0.699999988079071f - _566.x) + (exp2(log2(abs(_566.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_566.x < 0.30000001192092896f), 0.0f, 1.0f)) + _566.x) * UberPostBaseCBuffer_336.x;
    _604 = ((((-0.699999988079071f - _566.y) + (exp2(log2(abs(_566.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_566.y < 0.30000001192092896f), 0.0f, 1.0f)) + _566.y) * UberPostBaseCBuffer_336.x;
    _605 = ((((-0.699999988079071f - _566.z) + (exp2(log2(abs(_566.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_566.z < 0.30000001192092896f), 0.0f, 1.0f)) + _566.z) * UberPostBaseCBuffer_336.x;
    _606 = dot(float3(_517, _518, _519), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _609 = (UberPostBaseCBuffer_352.x > 0.5f);
    _622 = select(_609, ((((_603 * _606) - _603) * _370.w) + _603), _603);
    _623 = select(_609, ((((_604 * _606) - _604) * _370.w) + _604), _604);
    _624 = select(_609, ((((_605 * _606) - _605) * _370.w) + _605), _605);
    if (_526) {
      _635 = t9.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _215) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _216) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _649 = (((_635.x * _603) * UberPostBaseCBuffer_336.y) + _622);
      _650 = (((_635.y * _604) * UberPostBaseCBuffer_336.y) + _623);
      _651 = (((_635.z * _605) * UberPostBaseCBuffer_336.y) + _624);
    } else {
      _649 = _622;
      _650 = _623;
      _651 = _624;
    }
    _661 = (_649 + _517);
    _662 = (_650 + _518);
    _663 = (_651 + _519);
    _664 = saturate((((_650 + _649) + _651) * 0.33329999446868896f) + _370.w);
  } else {
    _661 = _517;
    _662 = _518;
    _663 = _519;
    _664 = _370.w;
  }
  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _681 = abs(_216 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _683 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_215 - UberPostBaseCBuffer_112.x);
    _689 = exp2(log2(saturate(1.0f - dot(float2(_683, _681), float2(_683, _681)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _703 = (((_689 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _661);
    _704 = (((_689 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _662);
    _705 = (((_689 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _663);
  } else {
    _703 = _661;
    _704 = _662;
    _705 = _663;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_703, _704, _705);
    float3 tonemapped = UberpostSrgbLutSample(untonemapped, UberPostBaseCBuffer_000, t3, s0);
    _793 = tonemapped.x;
    _794 = tonemapped.y;
    _795 = tonemapped.z;
  } else {
    _710 = saturate(_703);
    _711 = saturate(_704);
    _712 = saturate(_705);
    _740 = select((_712 <= 0.0031308000907301903f), (_712 * 12.920000076293945f), ((exp2(log2(abs(_712)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * UberPostBaseCBuffer_000.z;
    _741 = floor(_740);
    _747 = ((select((_711 <= 0.0031308000907301903f), (_711 * 12.920000076293945f), ((exp2(log2(abs(_711)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _749 = (((select((_710 <= 0.0031308000907301903f), (_710 * 12.920000076293945f), ((exp2(log2(abs(_710)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x) + (_741 * UberPostBaseCBuffer_000.y);
    _750 = _740 - _741;
    _752 = t3.SampleLevel(s0, float2((_749 + UberPostBaseCBuffer_000.y), _747), 0.0f);
    _756 = t3.SampleLevel(s0, float2(_749, _747), 0.0f);
    _766 = ((_752.x - _756.x) * _750) + _756.x;
    _767 = ((_752.y - _756.y) * _750) + _756.y;
    _768 = ((_752.z - _756.z) * _750) + _756.z;
    _793 = select((_766 <= 0.040449999272823334f), (_766 * 0.07739938050508499f), exp2(log2(abs((_766 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _794 = select((_767 <= 0.040449999272823334f), (_767 * 0.07739938050508499f), exp2(log2(abs((_767 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _795 = select((_768 <= 0.040449999272823334f), (_768 * 0.07739938050508499f), exp2(log2(abs((_768 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _813 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _817 = 1.0f - (sqrt(dot(float3(_793, _794, _795), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _831 = ((((UberPostBaseCBuffer_208.x * _793) * _813) * _817) + _793);
    _832 = ((((UberPostBaseCBuffer_208.x * _794) * _813) * _817) + _794);
    _833 = ((((UberPostBaseCBuffer_208.x * _795) * _813) * _817) + _795);
  } else {
    _831 = _793;
    _832 = _794;
    _833 = _795;
  }
  _844 = ((((((Globals_080.z) + -1.0f) * (Globals_080.y)) + -1.0f) * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _57;
  _846 = atan(_844 / _56);
  _849 = (_56 < 0.0f);
  _850 = (_56 == 0.0f);
  _851 = (_844 >= 0.0f);
  _852 = (_844 < 0.0f);
  _35[0] = ((((Globals_2208.x) * (TEXCOORD.x + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _36[0] = TEXCOORD.y;
  _35[1] = select((_850 && _851), 2.0f, select((_850 && _852), -2.0f, (select((_849 && _852), (_846 + -3.1415927410125732f), select((_849 && _851), (_846 + 3.1415927410125732f), _846)) * 1.2732394933700562f)));
  _36[1] = (sqrt((_844 * _844) + (_56 * _56)) * 0.5f);
  _35[2] = TEXCOORD.x;
  _36[2] = TEXCOORD.y;
  _909 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _932 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _957 = t14.SampleBias(s9, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _178) + (UberPostScreenEffectsBaseCBuffer_176.x * _53)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_35[min((uint)(_932), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _179) + (UberPostScreenEffectsBaseCBuffer_176.y * _53)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_36[min((uint)(_932), 2u)])))), (Globals_976), int2(0, 0));
  _41[0] = _957.x;
  _41[1] = _957.y;
  _41[2] = _957.z;
  _41[3] = _957.w;
  _970 = ((_41[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _978 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _982 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _997 = UberPostScreenEffectsBaseCBuffer_208.y * _970;
  _1011 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1025 = UberPostScreenEffectsBaseCBuffer_208.z * _970;
  _1041 = t13.SampleBias(s8, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _178) + (UberPostScreenEffectsBaseCBuffer_160.z * _53)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_35[min((uint)(_1011), 2u)]))) + _1025), (((((UberPostScreenEffectsRandomCBuffer_000.y + _179) + (UberPostScreenEffectsBaseCBuffer_160.w * _53)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_36[min((uint)(_1011), 2u)]))) + _1025)), (Globals_976), int2(0, 0));
  _40[0] = _1041.x;
  _40[1] = _1041.y;
  _40[2] = _1041.z;
  _40[3] = _1041.w;
  _1052 = _40[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1053 = t11.SampleBias(s6, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _53) + _178) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_35[min((uint)(_982), 2u)]) * _978) * UberPostScreenEffectsBaseCBuffer_032.x)) + _997), (((((UberPostScreenEffectsBaseCBuffer_096.y * _53) + _179) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_36[min((uint)(_982), 2u)]) * _978) * UberPostScreenEffectsBaseCBuffer_032.y)) + _997)), (Globals_976), int2(0, 0));
  _1061 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1052, 1.0f);
  _39[0] = _1053.x;
  _39[1] = _1053.y;
  _39[2] = _1053.z;
  _39[3] = _1053.w;
  _1072 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1075 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1061);
  _1084 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1085 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1086 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1098 = saturate((_1061 * (_39[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1105 = select(_1072, (((_1084 * _1075) + UberPostScreenEffectsBaseCBuffer_064.x) * _1053.x), ((_1084 * _1098) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1106 = select(_1072, (((_1085 * _1075) + UberPostScreenEffectsBaseCBuffer_064.y) * _1053.y), ((_1085 * _1098) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1107 = select(_1072, (((_1086 * _1075) + UberPostScreenEffectsBaseCBuffer_064.z) * _1053.z), ((_1086 * _1098) + UberPostScreenEffectsBaseCBuffer_064.z));
  _38[0] = _1053.x;
  _38[1] = _1053.y;
  _38[2] = _1053.z;
  _38[3] = _1053.w;
  _1116 = _38[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1117 = _1116 * _1052;
  _1133 = t12.SampleBias(s7, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _53) + _178) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_35[min((uint)(_909), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _53) + _179) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_36[min((uint)(_909), 2u)])))), (Globals_976), int2(0, 0));
  _37[0] = _1133.x;
  _37[1] = _1133.y;
  _37[2] = _1133.z;
  _37[3] = _1133.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1155 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1116));
  } else {
    _1155 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1117 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1117 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1157 = ((_37[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1155) * _109;
  _1161 = select((_1157 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1157;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1237 = ((_1161 * (_1105 - _831)) + _831);
    _1238 = ((_1161 * (_1106 - _832)) + _832);
    _1239 = ((_1161 * (_1107 - _833)) + _833);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1237 = ((_1161 * _1105) + _831);
      _1238 = ((_1161 * _1106) + _832);
      _1239 = ((_1161 * _1107) + _833);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1237 = (((_1161 * (_1105 + -1.0f)) + 1.0f) * _831);
        _1238 = (((_1161 * (_1106 + -1.0f)) + 1.0f) * _832);
        _1239 = (((_1161 * (_1107 + -1.0f)) + 1.0f) * _833);
      } else {
        _1203 = _1161 * (_1105 + -0.5f);
        _1204 = _1161 * (_1106 + -0.5f);
        _1205 = _1161 * (_1107 + -0.5f);
        _1237 = select((_831 < 0.5f), ((_831 * 2.0f) * (_1203 + 0.5f)), (1.0f - (((1.0f - _831) * 2.0f) * (0.5f - _1203))));
        _1238 = select((_832 < 0.5f), ((_832 * 2.0f) * (_1204 + 0.5f)), (1.0f - (((1.0f - _832) * 2.0f) * (0.5f - _1204))));
        _1239 = select((_833 < 0.5f), ((_833 * 2.0f) * (_1205 + 0.5f)), (1.0f - (((1.0f - _833) * 2.0f) * (0.5f - _1205))));
      }
    }
  }
  _1244 = ((_1238 + _1237) + _1239) * 0.3333333432674408f;
  _1251 = ((_1237 - _1244) * UberPostFXColorCorrectionCBuffer_000.w) + _1244;
  _1252 = ((_1238 - _1244) * UberPostFXColorCorrectionCBuffer_000.w) + _1244;
  _1253 = ((_1239 - _1244) * UberPostFXColorCorrectionCBuffer_000.w) + _1244;
  if ((Globals_816[3].w) > 0.5f) {
    _1261 = t0.SampleBias(s0, float2(dot(float3(_1251, _1252, _1253), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _1266 = _1261.x;
    _1267 = _1261.y;
    _1268 = _1261.z;
  } else {
    _1266 = _1251;
    _1267 = _1252;
    _1268 = _1253;
  }
  _1283 = (((1.0f - _1266) - saturate(_1266)) * UberPostFXColorCorrectionCBuffer_016.w) + _1266;
  _1284 = (((1.0f - _1267) - saturate(_1267)) * UberPostFXColorCorrectionCBuffer_016.w) + _1267;
  _1285 = (((1.0f - _1268) - saturate(_1268)) * UberPostFXColorCorrectionCBuffer_016.w) + _1268;
  _1293 = saturate((saturate(dot(float3(_1283, _1284, _1285), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _1320 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _1283) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1293)) * UberPostFXColorCorrectionCBuffer_032.x) + _1283);
  // _1321 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _1284) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1293)) * UberPostFXColorCorrectionCBuffer_032.x) + _1284);
  // _1322 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _1285) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1293)) * UberPostFXColorCorrectionCBuffer_032.x) + _1285);
  _1320 = ((((UberPostFXColorCorrectionCBuffer_000.x - _1283) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1293)) * UberPostFXColorCorrectionCBuffer_032.x) + _1283);
  _1321 = ((((UberPostFXColorCorrectionCBuffer_000.y - _1284) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1293)) * UberPostFXColorCorrectionCBuffer_032.x) + _1284);
  _1322 = ((((UberPostFXColorCorrectionCBuffer_000.z - _1285) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1293)) * UberPostFXColorCorrectionCBuffer_032.x) + _1285);

  // HDR FX Mask Blend
  float3 result = float3(_1320, _1321, _1322);
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
  _1397 = result.x;
  _1398 = result.y;
  _1399 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _1328 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
      _1397 = min((_1328.x + _1320), 1.0f);
      _1398 = min((_1328.x + _1321), 1.0f);
      _1399 = min((_1328.x + _1322), 1.0f);
    } else {
      _1365 = select((_1320 > 0.5f), 0.0f, 1.0f);
      _1366 = select((_1321 > 0.5f), 0.0f, 1.0f);
      _1367 = select((_1322 > 0.5f), 0.0f, 1.0f);
      _1386 = 1.0f - _1328.x;
      _1397 = (((((1.0f - (((1.0f - _1320) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _1365)) + (((_1320 * 2.0f) * _1365) * UberPostFXColorCorrectionCBuffer_048.x)) * _1328.x) + (_1386 * _1320));
      _1398 = (((((1.0f - (((1.0f - _1321) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _1366)) + (((_1321 * 2.0f) * _1366) * UberPostFXColorCorrectionCBuffer_048.y)) * _1328.x) + (_1386 * _1321));
      _1399 = (((((1.0f - (((1.0f - _1322) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1367)) + (((_1322 * 2.0f) * _1367) * UberPostFXColorCorrectionCBuffer_048.z)) * _1328.x) + (_1386 * _1322));
    }
  } else {
    _1397 = _1320;
    _1398 = _1321;
    _1399 = _1322;
  }
  */

  SV_Target.x = _1397;
  SV_Target.y = _1398;
  SV_Target.z = _1399;
  SV_Target.w = _664;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
