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
  float _76;
  float _83;
  float _84;
  float _217;
  float _218;
  float _254;
  float _255;
  float _256;
  float _257;
  float _258;
  float _259;
  float _260;
  float _261;
  float _345;
  float _352;
  float _353;
  float _402;
  float _409;
  float _410;
  float _457;
  float _464;
  float _465;
  float _539;
  float _546;
  float _547;
  float _588;
  float _595;
  float _596;
  float _637;
  float _644;
  float _645;
  float _654;
  float _655;
  float _656;
  float _662;
  float _663;
  float _664;
  float _665;
  float _797;
  float _798;
  float _799;
  float _809;
  float _810;
  float _811;
  float _812;
  float _851;
  float _852;
  float _853;
  float _942;
  float _943;
  float _944;
  float _1259;
  float _1341;
  float _1342;
  float _1343;
  float _1370;
  float _1371;
  float _1372;
  float _1501;
  float _1502;
  float _1503;
  float _44;
  float _45;
  float _55;
  float _56;
  float _60;
  float _64;
  float _77;
  float _92;
  float _93;
  float _94;
  float _95;
  float _96;
  float _106;
  float _108;
  float _110;
  float _111;
  float _112;
  float _123;
  float _133;
  float _139;
  float _145;
  float _148;
  float _156;
  float _158;
  bool _161;
  bool _162;
  bool _163;
  bool _164;
  bool _188;
  float4 _204;
  float _213;
  bool _221;
  float4 _225;
  float _231;
  float _232;
  float _235;
  float _236;
  float _237;
  float _269;
  float _271;
  float _275;
  float _277;
  float _279;
  float _281;
  float _288;
  float _293;
  float _295;
  float _297;
  float _304;
  float _305;
  bool _308;
  float _313;
  float _314;
  float _324;
  float _325;
  float _329;
  float _333;
  float _346;
  float4 _356;
  float _364;
  float _365;
  float _370;
  float _371;
  float _381;
  float _382;
  float _386;
  float _390;
  float _403;
  float4 _411;
  float _419;
  float _420;
  float _425;
  float _426;
  float _436;
  float _437;
  float _441;
  float _445;
  float _458;
  float4 _466;
  float _498;
  float _499;
  bool _502;
  float _507;
  float _508;
  float _518;
  float _519;
  float _523;
  float _527;
  float _540;
  float _550;
  float _551;
  float _556;
  float _557;
  float _567;
  float _568;
  float _572;
  float _576;
  float _589;
  float _599;
  float _600;
  float _605;
  float _606;
  float _616;
  float _617;
  float _621;
  float _625;
  float _638;
  float4 _649;
  bool _672;
  float _682;
  float _690;
  float _693;
  float4 _714;
  float _751;
  float _752;
  float _753;
  float _754;
  bool _757;
  float _770;
  float _771;
  float _772;
  float4 _783;
  float _829;
  float _831;
  float _837;
  float _876;
  float _877;
  float _883;
  float _885;
  float _886;
  float4 _888;
  float4 _892;
  float _902;
  float _903;
  float _904;
  float _924;
  float _928;
  float _948;
  float _950;
  bool _953;
  bool _954;
  bool _955;
  bool _956;
  int _1013;
  int _1036;
  float4 _1061;
  float _1074;
  float _1082;
  int _1086;
  float _1101;
  int _1115;
  float _1129;
  float4 _1145;
  float _1156;
  float4 _1157;
  float _1165;
  bool _1176;
  float _1179;
  float _1188;
  float _1189;
  float _1190;
  float _1202;
  float _1209;
  float _1210;
  float _1211;
  float _1220;
  float _1221;
  float4 _1237;
  float _1261;
  float _1265;
  float _1307;
  float _1308;
  float _1309;
  float _1348;
  float _1355;
  float _1356;
  float _1357;
  float4 _1365;
  float _1387;
  float _1388;
  float _1389;
  float _1397;
  float _1424;
  float _1425;
  float _1426;
  float4 _1432;
  float _1469;
  float _1470;
  float _1471;
  float _1490;
  float _30[3];
  float _31[3];
  float _32[4];
  float _33[4];
  float _34[4];
  float _35[4];
  float _36[4];
  if (!(UberPostBaseCBuffer_080.w == 0.0f)) {
    _44 = UberPostBaseCBuffer_080.z * (TEXCOORD.x + -0.5f);
    _45 = UberPostBaseCBuffer_080.z * (TEXCOORD.y + -0.5f);
    _55 = (_44 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
    _56 = (_45 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
    _60 = sqrt((_55 * _55) + (_56 * _56));
    _64 = UberPostBaseCBuffer_080.y * _60;
    [branch]
    if (UberPostBaseCBuffer_080.w > 0.0f) {
      _76 = ((1.0f / _64) * tan(UberPostBaseCBuffer_080.x * _60));
    } else {
      _76 = ((UberPostBaseCBuffer_080.x * (1.0f / _60)) * atan(_64));
    }
    _77 = _76 + -1.0f;
    _83 = ((_44 + 0.5f) + (_77 * _55));
    _84 = ((_45 + 0.5f) + (_77 * _56));
  } else {
    _83 = TEXCOORD.x;
    _84 = TEXCOORD.y;
  }
  _92 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _93 = TEXCOORD.x * 2.0f;
  _94 = TEXCOORD.y * 2.0f;
  _95 = _93 + -1.0f;
  _96 = _94 + -1.0f;
  _106 = (Globals_080.z) + -1.0f;
  _108 = (_106 * (Globals_080.y)) + -1.0f;
  _110 = (_108 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _111 = _110 * _96;
  _112 = _95 * _95;
  _123 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_95)), (_110 * (1.0f - abs(_96)))), (1.0f - (sqrt((_111 * _111) + _112) * 0.7070000171661377f)));
  _133 = saturate((_123 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _139 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_133 * _133) * (3.0f - (_133 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _123), 0.0f, 1.0f));
  _145 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _139), _139) * UberPostScreenEffectsBaseCBuffer_016.z;
  _148 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _145, 0.0f) * _145;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _156 = ((_108 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _96;
    _158 = atan(_156 / _95);
    _161 = (_95 < 0.0f);
    _162 = (_95 == 0.0f);
    _163 = (_156 >= 0.0f);
    _164 = (_156 < 0.0f);
    _188 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _204 = t12.SampleBias(s8, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _92)) + (select(_188, select((_162 && _163), 2.0f, select((_162 && _164), -2.0f, (select((_161 && _164), (_158 + -3.1415927410125732f), select((_161 && _163), (_158 + 3.1415927410125732f), _158)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _92)) + (select(_188, (sqrt((_156 * _156) + _112) * 0.6366197466850281f), ((((Globals_080.y) * (TEXCOORD.y + -0.5f)) * _106) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _213 = (_148 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _217 = (_213 * ((_204.x * 2.0f) + -1.0f));
    _218 = (_213 * ((_204.y * 2.0f) + -1.0f));
  } else {
    _217 = 0.0f;
    _218 = 0.0f;
  }
  _221 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_221) {
    _225 = t5.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _231 = (_225.x * 0.10000000149011612f) + _217;
    _232 = (_225.y * 0.10000000149011612f) + _218;
    _235 = UberPostBaseCBuffer_176.w * _225.z;
    _236 = _235 * _231;
    _237 = _235 * _232;
    _254 = (_231 + _83);
    _255 = (_232 + _84);
    _256 = ((_236 * UberPostBaseCBuffer_176.x) + _231);
    _257 = ((_237 * UberPostBaseCBuffer_176.x) + _232);
    _258 = ((_236 * UberPostBaseCBuffer_176.y) + _231);
    _259 = ((_237 * UberPostBaseCBuffer_176.y) + _232);
    _260 = ((_236 * UberPostBaseCBuffer_176.z) + _231);
    _261 = ((_237 * UberPostBaseCBuffer_176.z) + _232);
  } else {
    _254 = _83;
    _255 = _84;
    _256 = 0.0f;
    _257 = 0.0f;
    _258 = 0.0f;
    _259 = 0.0f;
    _260 = 0.0f;
    _261 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _269 = (_93 - UberPostBaseCBuffer_384.x) + -0.5f;
    _271 = (_94 - UberPostBaseCBuffer_384.y) + -0.5f;
    _275 = dot(float2(_269, _271), float2(_269, _271)) * -0.3333333432674408f;
    _277 = (_275 * _269) * UberPostBaseCBuffer_192.z;
    _279 = (_275 * _271) * UberPostBaseCBuffer_192.z;
    _281 = rsqrt(dot(float3(_277, _279, 9.999999747378752e-05f), float3(_277, _279, 9.999999747378752e-05f)));
    _288 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _293 = exp2(log2(sqrt((_277 * _277) + (_279 * _279)) / _288) * UberPostBaseCBuffer_384.z);
    _295 = ((_277 * _281) * _288) * _293;
    _297 = ((_279 * _281) * _288) * _293;
    _304 = (_256 + TEXCOORD.x) + (_295 * UberPostBaseCBuffer_400.w);
    _305 = (_257 + TEXCOORD.y) + (_297 * UberPostBaseCBuffer_400.w);
    _308 = !(UberPostBaseCBuffer_080.w == 0.0f);
    if (_308) {
      _313 = UberPostBaseCBuffer_080.z * (_304 + -0.5f);
      _314 = UberPostBaseCBuffer_080.z * (_305 + -0.5f);
      _324 = (_313 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _325 = (_314 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _329 = sqrt((_324 * _324) + (_325 * _325));
      _333 = UberPostBaseCBuffer_080.y * _329;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _345 = ((1.0f / _333) * tan(UberPostBaseCBuffer_080.x * _329));
      } else {
        _345 = ((UberPostBaseCBuffer_080.x * (1.0f / _329)) * atan(_333));
      }
      _346 = _345 + -1.0f;
      _352 = ((_313 + 0.5f) + (_346 * _324));
      _353 = ((_314 + 0.5f) + (_346 * _325));
    } else {
      _352 = _304;
      _353 = _305;
    }
    _356 = t1.SampleBias(s0, float2(_352, _353), (Globals_976), int2(0, 0));
    _364 = (_258 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _295);
    _365 = (_259 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _297);
    if (_308) {
      _370 = UberPostBaseCBuffer_080.z * (_364 + -0.5f);
      _371 = UberPostBaseCBuffer_080.z * (_365 + -0.5f);
      _381 = (_370 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _382 = (_371 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _386 = sqrt((_381 * _381) + (_382 * _382));
      _390 = UberPostBaseCBuffer_080.y * _386;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _402 = ((1.0f / _390) * tan(UberPostBaseCBuffer_080.x * _386));
      } else {
        _402 = ((UberPostBaseCBuffer_080.x * (1.0f / _386)) * atan(_390));
      }
      _403 = _402 + -1.0f;
      _409 = ((_370 + 0.5f) + (_403 * _381));
      _410 = ((_371 + 0.5f) + (_403 * _382));
    } else {
      _409 = _364;
      _410 = _365;
    }
    _411 = t1.SampleBias(s0, float2(_409, _410), (Globals_976), int2(0, 0));
    _419 = (_260 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _295);
    _420 = (_261 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _297);
    if (_308) {
      _425 = UberPostBaseCBuffer_080.z * (_419 + -0.5f);
      _426 = UberPostBaseCBuffer_080.z * (_420 + -0.5f);
      _436 = (_425 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _437 = (_426 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _441 = sqrt((_436 * _436) + (_437 * _437));
      _445 = UberPostBaseCBuffer_080.y * _441;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _457 = ((1.0f / _445) * tan(UberPostBaseCBuffer_080.x * _441));
      } else {
        _457 = ((UberPostBaseCBuffer_080.x * (1.0f / _441)) * atan(_445));
      }
      _458 = _457 + -1.0f;
      _464 = ((_425 + 0.5f) + (_458 * _436));
      _465 = ((_426 + 0.5f) + (_458 * _437));
    } else {
      _464 = _419;
      _465 = _420;
    }
    _466 = t1.SampleBias(s0, float2(_464, _465), (Globals_976), int2(0, 0));
    _662 = (((float4)(t1.SampleBias(s0, float2(_254, _255), (Globals_976), int2(0, 0)))).w);
    _663 = (((UberPostBaseCBuffer_416.x * _411.y) + (UberPostBaseCBuffer_400.x * _356.x)) + (UberPostBaseCBuffer_432.x * _466.z));
    _664 = (((UberPostBaseCBuffer_416.y * _411.y) + (UberPostBaseCBuffer_400.y * _356.x)) + (UberPostBaseCBuffer_432.y * _466.z));
    _665 = (((UberPostBaseCBuffer_416.z * _411.y) + (UberPostBaseCBuffer_400.z * _356.x)) + (UberPostBaseCBuffer_432.z * _466.z));
  } else {
    if (_221) {
      _498 = _256 + TEXCOORD.x;
      _499 = _257 + TEXCOORD.y;
      _502 = !(UberPostBaseCBuffer_080.w == 0.0f);
      if (_502) {
        _507 = UberPostBaseCBuffer_080.z * (_498 + -0.5f);
        _508 = UberPostBaseCBuffer_080.z * (_499 + -0.5f);
        _518 = (_507 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _519 = (_508 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _523 = sqrt((_518 * _518) + (_519 * _519));
        _527 = UberPostBaseCBuffer_080.y * _523;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _539 = ((1.0f / _527) * tan(UberPostBaseCBuffer_080.x * _523));
        } else {
          _539 = ((UberPostBaseCBuffer_080.x * (1.0f / _523)) * atan(_527));
        }
        _540 = _539 + -1.0f;
        _546 = ((_507 + 0.5f) + (_540 * _518));
        _547 = ((_508 + 0.5f) + (_540 * _519));
      } else {
        _546 = _498;
        _547 = _499;
      }
      _550 = _258 + TEXCOORD.x;
      _551 = _259 + TEXCOORD.y;
      if (_502) {
        _556 = UberPostBaseCBuffer_080.z * (_550 + -0.5f);
        _557 = UberPostBaseCBuffer_080.z * (_551 + -0.5f);
        _567 = (_556 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _568 = (_557 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _572 = sqrt((_567 * _567) + (_568 * _568));
        _576 = UberPostBaseCBuffer_080.y * _572;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _588 = ((1.0f / _576) * tan(UberPostBaseCBuffer_080.x * _572));
        } else {
          _588 = ((UberPostBaseCBuffer_080.x * (1.0f / _572)) * atan(_576));
        }
        _589 = _588 + -1.0f;
        _595 = ((_556 + 0.5f) + (_589 * _567));
        _596 = ((_557 + 0.5f) + (_589 * _568));
      } else {
        _595 = _550;
        _596 = _551;
      }
      _599 = _260 + TEXCOORD.x;
      _600 = _261 + TEXCOORD.y;
      if (_502) {
        _605 = UberPostBaseCBuffer_080.z * (_599 + -0.5f);
        _606 = UberPostBaseCBuffer_080.z * (_600 + -0.5f);
        _616 = (_605 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _617 = (_606 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _621 = sqrt((_616 * _616) + (_617 * _617));
        _625 = UberPostBaseCBuffer_080.y * _621;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _637 = ((1.0f / _625) * tan(UberPostBaseCBuffer_080.x * _621));
        } else {
          _637 = ((UberPostBaseCBuffer_080.x * (1.0f / _621)) * atan(_625));
        }
        _638 = _637 + -1.0f;
        _644 = ((_605 + 0.5f) + (_638 * _616));
        _645 = ((_606 + 0.5f) + (_638 * _617));
      } else {
        _644 = _599;
        _645 = _600;
      }
      _654 = (((float4)(t1.SampleBias(s0, float2(_546, _547), (Globals_976), int2(0, 0)))).x);
      _655 = (((float4)(t1.SampleBias(s0, float2(_595, _596), (Globals_976), int2(0, 0)))).y);
      _656 = (((float4)(t1.SampleBias(s0, float2(_644, _645), (Globals_976), int2(0, 0)))).z);
    } else {
      _649 = t1.SampleBias(s0, float2(_254, _255), (Globals_976), int2(0, 0));
      _654 = _649.x;
      _655 = _649.y;
      _656 = _649.z;
    }
    _662 = (((float4)(t1.SampleBias(s0, float2(_254, _255), (Globals_976), int2(0, 0)))).w);
    _663 = _654;
    _664 = _655;
    _665 = _656;
  }
  _672 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _672)) {
    _682 = fmod((((Globals_2208.y) * _255) * UberPostBaseCBuffer_448.x), 2.0f);
    _690 = (((select((_682 > 1.0f), (2.0f - _682), _682) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _254;
    _693 = (Globals_2208.w) * (Globals_2208.x);
    _714 = t6.SampleBias(s3, float2(_690, ((select(((frac((((_690 + abs(UberPostBaseCBuffer_464.y)) * _693) - (UberPostBaseCBuffer_464.y * _255)) / ((_693 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _255)), (Globals_976), int2(0, 0));
    _751 = ((((-0.699999988079071f - _714.x) + (exp2(log2(abs(_714.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_714.x < 0.30000001192092896f), 0.0f, 1.0f)) + _714.x) * UberPostBaseCBuffer_336.x;
    _752 = ((((-0.699999988079071f - _714.y) + (exp2(log2(abs(_714.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_714.y < 0.30000001192092896f), 0.0f, 1.0f)) + _714.y) * UberPostBaseCBuffer_336.x;
    _753 = ((((-0.699999988079071f - _714.z) + (exp2(log2(abs(_714.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_714.z < 0.30000001192092896f), 0.0f, 1.0f)) + _714.z) * UberPostBaseCBuffer_336.x;
    _754 = dot(float3(_663, _664, _665), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _757 = (UberPostBaseCBuffer_352.x > 0.5f);
    _770 = select(_757, ((((_751 * _754) - _751) * _662) + _751), _751);
    _771 = select(_757, ((((_752 * _754) - _752) * _662) + _752), _752);
    _772 = select(_757, ((((_753 * _754) - _753) * _662) + _753), _753);
    if (_672) {
      _783 = t7.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _254) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _255) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _797 = (((_783.x * _751) * UberPostBaseCBuffer_336.y) + _770);
      _798 = (((_783.y * _752) * UberPostBaseCBuffer_336.y) + _771);
      _799 = (((_783.z * _753) * UberPostBaseCBuffer_336.y) + _772);
    } else {
      _797 = _770;
      _798 = _771;
      _799 = _772;
    }
    _809 = (_797 + _663);
    _810 = (_798 + _664);
    _811 = (_799 + _665);
    _812 = saturate((((_798 + _797) + _799) * 0.33329999446868896f) + _662);
  } else {
    _809 = _663;
    _810 = _664;
    _811 = _665;
    _812 = _662;
  }
  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _829 = abs(_255 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _831 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_254 - UberPostBaseCBuffer_112.x);
    _837 = exp2(log2(saturate(1.0f - dot(float2(_831, _829), float2(_831, _829)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _851 = (((_837 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _809);
    _852 = (((_837 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _810);
    _853 = (((_837 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _811);
  } else {
    _851 = _809;
    _852 = _810;
    _853 = _811;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_851, _852, _853);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t3, s0, UberPostBaseCBuffer_000.xyz);
    _902 = tonemapped.x;
    _903 = tonemapped.y;
    _904 = tonemapped.z;
  } else {
    _876 = saturate((log2((_853 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _877 = floor(_876);
    _883 = ((saturate((log2((_852 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _885 = (_877 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_851 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _886 = _876 - _877;
    _888 = t3.SampleLevel(s0, float2((_885 + UberPostBaseCBuffer_000.y), _883), 0.0f);
    _892 = t3.SampleLevel(s0, float2(_885, _883), 0.0f);
    _902 = ((_888.x - _892.x) * _886) + _892.x;
    _903 = ((_888.y - _892.y) * _886) + _892.y;
    _904 = ((_888.z - _892.z) * _886) + _892.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _924 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _928 = 1.0f - (sqrt(dot(float3(_902, _903, _904), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _942 = ((((UberPostBaseCBuffer_208.x * _902) * _924) * _928) + _902);
    _943 = ((((UberPostBaseCBuffer_208.x * _903) * _924) * _928) + _903);
    _944 = ((((UberPostBaseCBuffer_208.x * _904) * _924) * _928) + _904);
  } else {
    _942 = _902;
    _943 = _903;
    _944 = _904;
  }
  _948 = ((_108 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _96;
  _950 = atan(_948 / _95);
  _953 = (_95 < 0.0f);
  _954 = (_95 == 0.0f);
  _955 = (_948 >= 0.0f);
  _956 = (_948 < 0.0f);
  _30[0] = ((((Globals_2208.x) * (TEXCOORD.x + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _31[0] = TEXCOORD.y;
  _30[1] = select((_954 && _955), 2.0f, select((_954 && _956), -2.0f, (select((_953 && _956), (_950 + -3.1415927410125732f), select((_953 && _955), (_950 + 3.1415927410125732f), _950)) * 1.2732394933700562f)));
  _31[1] = (sqrt((_948 * _948) + (_95 * _95)) * 0.5f);
  _30[2] = TEXCOORD.x;
  _31[2] = TEXCOORD.y;
  _1013 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _1036 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _1061 = t11.SampleBias(s7, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _217) + (UberPostScreenEffectsBaseCBuffer_176.x * _92)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_30[min((uint)(_1036), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _218) + (UberPostScreenEffectsBaseCBuffer_176.y * _92)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_31[min((uint)(_1036), 2u)])))), (Globals_976), int2(0, 0));
  _36[0] = _1061.x;
  _36[1] = _1061.y;
  _36[2] = _1061.z;
  _36[3] = _1061.w;
  _1074 = ((_36[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _1082 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _1086 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _1101 = UberPostScreenEffectsBaseCBuffer_208.y * _1074;
  _1115 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1129 = UberPostScreenEffectsBaseCBuffer_208.z * _1074;
  _1145 = t10.SampleBias(s6, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _217) + (UberPostScreenEffectsBaseCBuffer_160.z * _92)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_30[min((uint)(_1115), 2u)]))) + _1129), (((((UberPostScreenEffectsRandomCBuffer_000.y + _218) + (UberPostScreenEffectsBaseCBuffer_160.w * _92)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_31[min((uint)(_1115), 2u)]))) + _1129)), (Globals_976), int2(0, 0));
  _35[0] = _1145.x;
  _35[1] = _1145.y;
  _35[2] = _1145.z;
  _35[3] = _1145.w;
  _1156 = _35[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1157 = t8.SampleBias(s4, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _92) + _217) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_30[min((uint)(_1086), 2u)]) * _1082) * UberPostScreenEffectsBaseCBuffer_032.x)) + _1101), (((((UberPostScreenEffectsBaseCBuffer_096.y * _92) + _218) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_31[min((uint)(_1086), 2u)]) * _1082) * UberPostScreenEffectsBaseCBuffer_032.y)) + _1101)), (Globals_976), int2(0, 0));
  _1165 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1156, 1.0f);
  _34[0] = _1157.x;
  _34[1] = _1157.y;
  _34[2] = _1157.z;
  _34[3] = _1157.w;
  _1176 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1179 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1165);
  _1188 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1189 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1190 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1202 = saturate((_1165 * (_34[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1209 = select(_1176, (((_1188 * _1179) + UberPostScreenEffectsBaseCBuffer_064.x) * _1157.x), ((_1188 * _1202) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1210 = select(_1176, (((_1189 * _1179) + UberPostScreenEffectsBaseCBuffer_064.y) * _1157.y), ((_1189 * _1202) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1211 = select(_1176, (((_1190 * _1179) + UberPostScreenEffectsBaseCBuffer_064.z) * _1157.z), ((_1190 * _1202) + UberPostScreenEffectsBaseCBuffer_064.z));
  _33[0] = _1157.x;
  _33[1] = _1157.y;
  _33[2] = _1157.z;
  _33[3] = _1157.w;
  _1220 = _33[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1221 = _1220 * _1156;
  _1237 = t9.SampleBias(s5, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _92) + _217) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_30[min((uint)(_1013), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _92) + _218) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_31[min((uint)(_1013), 2u)])))), (Globals_976), int2(0, 0));
  _32[0] = _1237.x;
  _32[1] = _1237.y;
  _32[2] = _1237.z;
  _32[3] = _1237.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1259 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1220));
  } else {
    _1259 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1221 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1221 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1261 = ((_32[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1259) * _148;
  _1265 = select((_1261 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1261;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1341 = ((_1265 * (_1209 - _942)) + _942);
    _1342 = ((_1265 * (_1210 - _943)) + _943);
    _1343 = ((_1265 * (_1211 - _944)) + _944);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1341 = ((_1265 * _1209) + _942);
      _1342 = ((_1265 * _1210) + _943);
      _1343 = ((_1265 * _1211) + _944);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1341 = (((_1265 * (_1209 + -1.0f)) + 1.0f) * _942);
        _1342 = (((_1265 * (_1210 + -1.0f)) + 1.0f) * _943);
        _1343 = (((_1265 * (_1211 + -1.0f)) + 1.0f) * _944);
      } else {
        _1307 = _1265 * (_1209 + -0.5f);
        _1308 = _1265 * (_1210 + -0.5f);
        _1309 = _1265 * (_1211 + -0.5f);
        _1341 = select((_942 < 0.5f), ((_942 * 2.0f) * (_1307 + 0.5f)), (1.0f - (((1.0f - _942) * 2.0f) * (0.5f - _1307))));
        _1342 = select((_943 < 0.5f), ((_943 * 2.0f) * (_1308 + 0.5f)), (1.0f - (((1.0f - _943) * 2.0f) * (0.5f - _1308))));
        _1343 = select((_944 < 0.5f), ((_944 * 2.0f) * (_1309 + 0.5f)), (1.0f - (((1.0f - _944) * 2.0f) * (0.5f - _1309))));
      }
    }
  }
  _1348 = ((_1342 + _1341) + _1343) * 0.3333333432674408f;
  _1355 = ((_1341 - _1348) * UberPostFXColorCorrectionCBuffer_000.w) + _1348;
  _1356 = ((_1342 - _1348) * UberPostFXColorCorrectionCBuffer_000.w) + _1348;
  _1357 = ((_1343 - _1348) * UberPostFXColorCorrectionCBuffer_000.w) + _1348;
  if ((Globals_816[3].w) > 0.5f) {
    _1365 = t0.SampleBias(s0, float2(dot(float3(_1355, _1356, _1357), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _1370 = _1365.x;
    _1371 = _1365.y;
    _1372 = _1365.z;
  } else {
    _1370 = _1355;
    _1371 = _1356;
    _1372 = _1357;
  }
  _1387 = (((1.0f - _1370) - saturate(_1370)) * UberPostFXColorCorrectionCBuffer_016.w) + _1370;
  _1388 = (((1.0f - _1371) - saturate(_1371)) * UberPostFXColorCorrectionCBuffer_016.w) + _1371;
  _1389 = (((1.0f - _1372) - saturate(_1372)) * UberPostFXColorCorrectionCBuffer_016.w) + _1372;
  _1397 = saturate((saturate(dot(float3(_1387, _1388, _1389), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _1424 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _1387) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1397)) * UberPostFXColorCorrectionCBuffer_032.x) + _1387);
  // _1425 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _1388) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1397)) * UberPostFXColorCorrectionCBuffer_032.x) + _1388);
  // _1426 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _1389) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1397)) * UberPostFXColorCorrectionCBuffer_032.x) + _1389);
  _1424 = ((((UberPostFXColorCorrectionCBuffer_000.x - _1387) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1397)) * UberPostFXColorCorrectionCBuffer_032.x) + _1387);
  _1425 = ((((UberPostFXColorCorrectionCBuffer_000.y - _1388) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1397)) * UberPostFXColorCorrectionCBuffer_032.x) + _1388);
  _1426 = ((((UberPostFXColorCorrectionCBuffer_000.z - _1389) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1397)) * UberPostFXColorCorrectionCBuffer_032.x) + _1389);

  // HDR FX Mask Blend
  float3 result = float3(_1424, _1425, _1426);
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
  _1501 = result.x;
  _1502 = result.y;
  _1503 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _1432 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
      _1501 = min((_1432.x + _1424), 1.0f);
      _1502 = min((_1432.x + _1425), 1.0f);
      _1503 = min((_1432.x + _1426), 1.0f);
    } else {
      _1469 = select((_1424 > 0.5f), 0.0f, 1.0f);
      _1470 = select((_1425 > 0.5f), 0.0f, 1.0f);
      _1471 = select((_1426 > 0.5f), 0.0f, 1.0f);
      _1490 = 1.0f - _1432.x;
      _1501 = (((((1.0f - (((1.0f - _1424) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _1469)) + (((_1424 * 2.0f) * _1469) * UberPostFXColorCorrectionCBuffer_048.x)) * _1432.x) + (_1490 * _1424));
      _1502 = (((((1.0f - (((1.0f - _1425) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _1470)) + (((_1425 * 2.0f) * _1470) * UberPostFXColorCorrectionCBuffer_048.y)) * _1432.x) + (_1490 * _1425));
      _1503 = (((((1.0f - (((1.0f - _1426) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1471)) + (((_1426 * 2.0f) * _1471) * UberPostFXColorCorrectionCBuffer_048.z)) * _1432.x) + (_1490 * _1426));
    }
  } else {
    _1501 = _1424;
    _1502 = _1425;
    _1503 = _1426;
  }
  */

  SV_Target.x = _1501;
  SV_Target.y = _1502;
  SV_Target.z = _1503;
  SV_Target.w = _812;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
