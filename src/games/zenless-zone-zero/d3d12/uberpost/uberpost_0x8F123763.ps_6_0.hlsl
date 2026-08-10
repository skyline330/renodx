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
  float _46;
  float _47;
  float _48;
  float _49;
  float _50;
  float _60;
  float _62;
  float _64;
  float _65;
  float _66;
  float _77;
  float _87;
  float _93;
  float _99;
  float _102;
  float _171;
  float _172;
  float _208;
  float _209;
  float _210;
  float _211;
  float _212;
  float _213;
  float _214;
  float _215;
  float _377;
  float _378;
  float _379;
  float _385;
  float _386;
  float _387;
  float _388;
  float _520;
  float _521;
  float _522;
  float _539;
  float _540;
  float _541;
  float _542;
  float _581;
  float _582;
  float _583;
  float _672;
  float _673;
  float _674;
  float _996;
  float _1078;
  float _1079;
  float _1080;
  float _1107;
  float _1108;
  float _1109;
  float _1238;
  float _1239;
  float _1240;
  float _110;
  float _112;
  bool _115;
  bool _116;
  bool _117;
  bool _118;
  bool _142;
  float4 _158;
  float _167;
  float4 _179;
  float _185;
  float _186;
  float _189;
  float _190;
  float _191;
  float4 _218;
  float _240;
  float _241;
  float _242;
  float _243;
  float _244;
  float _245;
  float _248;
  float _251;
  float _252;
  float _255;
  float _258;
  float _259;
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
  float4 _306;
  float4 _316;
  float4 _326;
  float4 _372;
  bool _395;
  float _405;
  float _413;
  float _416;
  float4 _437;
  float _474;
  float _475;
  float _476;
  float _477;
  bool _480;
  float _493;
  float _494;
  float _495;
  float4 _506;
  float _526;
  float _559;
  float _561;
  float _567;
  float _606;
  float _607;
  float _613;
  float _615;
  float _616;
  float4 _618;
  float4 _622;
  float _632;
  float _633;
  float _634;
  float _654;
  float _658;
  float _685;
  float _687;
  bool _690;
  bool _691;
  bool _692;
  bool _693;
  int _750;
  int _773;
  float4 _798;
  float _811;
  float _819;
  int _823;
  float _838;
  int _852;
  float _866;
  float4 _882;
  float _893;
  float4 _894;
  float _902;
  bool _913;
  float _916;
  float _925;
  float _926;
  float _927;
  float _939;
  float _946;
  float _947;
  float _948;
  float _957;
  float _958;
  float4 _974;
  float _998;
  float _1002;
  float _1044;
  float _1045;
  float _1046;
  float _1085;
  float _1092;
  float _1093;
  float _1094;
  float4 _1102;
  float _1124;
  float _1125;
  float _1126;
  float _1134;
  float _1161;
  float _1162;
  float _1163;
  float4 _1169;
  float _1206;
  float _1207;
  float _1208;
  float _1227;
  float _32[3];
  float _33[3];
  float _34[4];
  float _35[4];
  float _36[4];
  float _37[4];
  float _38[4];
  _46 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _47 = TEXCOORD.x * 2.0f;
  _48 = TEXCOORD.y * 2.0f;
  _49 = _47 + -1.0f;
  _50 = _48 + -1.0f;
  _60 = (Globals_080.z) + -1.0f;
  _62 = (_60 * (Globals_080.y)) + -1.0f;
  _64 = (_62 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _65 = _64 * _50;
  _66 = _49 * _49;
  _77 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_49)), (_64 * (1.0f - abs(_50)))), (1.0f - (sqrt((_65 * _65) + _66) * 0.7070000171661377f)));
  _87 = saturate((_77 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _93 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_87 * _87) * (3.0f - (_87 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _77), 0.0f, 1.0f));
  _99 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _93), _93) * UberPostScreenEffectsBaseCBuffer_016.z;
  _102 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _99, 0.0f) * _99;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _110 = ((_62 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _50;
    _112 = atan(_110 / _49);
    _115 = (_49 < 0.0f);
    _116 = (_49 == 0.0f);
    _117 = (_110 >= 0.0f);
    _118 = (_110 < 0.0f);
    _142 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _158 = t14.SampleBias(s8, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _46)) + (select(_142, select((_116 && _117), 2.0f, select((_116 && _118), -2.0f, (select((_115 && _118), (_112 + -3.1415927410125732f), select((_115 && _117), (_112 + 3.1415927410125732f), _112)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _46)) + (select(_142, (sqrt((_110 * _110) + _66) * 0.6366197466850281f), ((((Globals_080.y) * (TEXCOORD.y + -0.5f)) * _60) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _167 = (_102 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _171 = (_167 * ((_158.x * 2.0f) + -1.0f));
    _172 = (_167 * ((_158.y * 2.0f) + -1.0f));
  } else {
    _171 = 0.0f;
    _172 = 0.0f;
  }
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _179 = t7.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _185 = (_179.x * 0.10000000149011612f) + _171;
    _186 = (_179.y * 0.10000000149011612f) + _172;
    _189 = UberPostBaseCBuffer_176.w * _179.z;
    _190 = _189 * _185;
    _191 = _189 * _186;
    _208 = (_185 + TEXCOORD.x);
    _209 = (_186 + TEXCOORD.y);
    _210 = ((_190 * UberPostBaseCBuffer_176.x) + _185);
    _211 = ((_191 * UberPostBaseCBuffer_176.x) + _186);
    _212 = ((_190 * UberPostBaseCBuffer_176.y) + _185);
    _213 = ((_191 * UberPostBaseCBuffer_176.y) + _186);
    _214 = ((_190 * UberPostBaseCBuffer_176.z) + _185);
    _215 = ((_191 * UberPostBaseCBuffer_176.z) + _186);
  } else {
    _208 = TEXCOORD.x;
    _209 = TEXCOORD.y;
    _210 = 0.0f;
    _211 = 0.0f;
    _212 = 0.0f;
    _213 = 0.0f;
    _214 = 0.0f;
    _215 = 0.0f;
  }
  _218 = t5.SampleBias(s1, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
  _240 = saturate(((_218.z + -1.0f) + (((float4)(t6.SampleBias(s1, float2(((Globals_3344.y) + _218.w), 0.5f), (Globals_976), int2(0, 0)))).x)) / _218.z) * _218.z;
  _241 = _240 * (Globals_3344.x);
  _242 = _241 * ((_218.x * 2.0f) + -1.0f);
  _243 = _241 * ((_218.y * 2.0f) + -1.0f);
  _244 = _210 - _242;
  _245 = _211 - _243;
  _248 = (Globals_3344.z) + 1.0f;
  _251 = _212 - (_248 * _242);
  _252 = _213 - (_248 * _243);
  _255 = 1.0f - (Globals_3344.z);
  _258 = _214 - (_255 * _242);
  _259 = _215 - (_255 * _243);
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _269 = (_47 - UberPostBaseCBuffer_384.x) + -0.5f;
    _271 = (_48 - UberPostBaseCBuffer_384.y) + -0.5f;
    _275 = dot(float2(_269, _271), float2(_269, _271)) * -0.3333333432674408f;
    _277 = (_275 * _269) * UberPostBaseCBuffer_192.z;
    _279 = (_275 * _271) * UberPostBaseCBuffer_192.z;
    _281 = rsqrt(dot(float3(_277, _279, 9.999999747378752e-05f), float3(_277, _279, 9.999999747378752e-05f)));
    _288 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _293 = exp2(log2(sqrt((_277 * _277) + (_279 * _279)) / _288) * UberPostBaseCBuffer_384.z);
    _295 = ((_277 * _281) * _288) * _293;
    _297 = ((_279 * _281) * _288) * _293;
    _306 = t1.SampleBias(s0, float2(((_244 + TEXCOORD.x) + (_295 * UberPostBaseCBuffer_400.w)), ((_245 + TEXCOORD.y) + (_297 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _316 = t1.SampleBias(s0, float2(((_251 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _295)), ((_252 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _297))), (Globals_976), int2(0, 0));
    _326 = t1.SampleBias(s0, float2(((_258 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _295)), ((_259 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _297))), (Globals_976), int2(0, 0));
    _385 = (((float4)(t1.SampleBias(s0, float2(_208, _209), (Globals_976), int2(0, 0)))).w);
    _386 = (((UberPostBaseCBuffer_416.x * _316.y) + (UberPostBaseCBuffer_400.x * _306.x)) + (UberPostBaseCBuffer_432.x * _326.z));
    _387 = (((UberPostBaseCBuffer_416.y * _316.y) + (UberPostBaseCBuffer_400.y * _306.x)) + (UberPostBaseCBuffer_432.y * _326.z));
    _388 = (((UberPostBaseCBuffer_416.z * _316.y) + (UberPostBaseCBuffer_400.z * _306.x)) + (UberPostBaseCBuffer_432.z * _326.z));
  } else {
    if (UberPostBaseCBuffer_176.w > 0.0f) {
      _377 = (((float4)(t1.SampleBias(s0, float2((_244 + TEXCOORD.x), (_245 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).x);
      _378 = (((float4)(t1.SampleBias(s0, float2((_251 + TEXCOORD.x), (_252 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).y);
      _379 = (((float4)(t1.SampleBias(s0, float2((_258 + TEXCOORD.x), (_259 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).z);
    } else {
      _372 = t1.SampleBias(s0, float2(_208, _209), (Globals_976), int2(0, 0));
      _377 = _372.x;
      _378 = _372.y;
      _379 = _372.z;
    }
    _385 = (((float4)(t1.SampleBias(s0, float2(_208, _209), (Globals_976), int2(0, 0)))).w);
    _386 = _377;
    _387 = _378;
    _388 = _379;
  }
  _395 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _395)) {
    _405 = fmod((((Globals_2208.y) * _209) * UberPostBaseCBuffer_448.x), 2.0f);
    _413 = (((select((_405 > 1.0f), (2.0f - _405), _405) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _208;
    _416 = (Globals_2208.w) * (Globals_2208.x);
    _437 = t8.SampleBias(s3, float2(_413, ((select(((frac((((_413 + abs(UberPostBaseCBuffer_464.y)) * _416) - (UberPostBaseCBuffer_464.y * _209)) / ((_416 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _209)), (Globals_976), int2(0, 0));
    _474 = ((((-0.699999988079071f - _437.x) + (exp2(log2(abs(_437.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_437.x < 0.30000001192092896f), 0.0f, 1.0f)) + _437.x) * UberPostBaseCBuffer_336.x;
    _475 = ((((-0.699999988079071f - _437.y) + (exp2(log2(abs(_437.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_437.y < 0.30000001192092896f), 0.0f, 1.0f)) + _437.y) * UberPostBaseCBuffer_336.x;
    _476 = ((((-0.699999988079071f - _437.z) + (exp2(log2(abs(_437.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_437.z < 0.30000001192092896f), 0.0f, 1.0f)) + _437.z) * UberPostBaseCBuffer_336.x;
    _477 = dot(float3(_386, _387, _388), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _480 = (UberPostBaseCBuffer_352.x > 0.5f);
    _493 = select(_480, ((((_474 * _477) - _474) * _385) + _474), _474);
    _494 = select(_480, ((((_475 * _477) - _475) * _385) + _475), _475);
    _495 = select(_480, ((((_476 * _477) - _476) * _385) + _476), _476);
    if (_395) {
      _506 = t9.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _208) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _209) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _520 = (((_506.x * _474) * UberPostBaseCBuffer_336.y) + _493);
      _521 = (((_506.y * _475) * UberPostBaseCBuffer_336.y) + _494);
      _522 = (((_506.z * _476) * UberPostBaseCBuffer_336.y) + _495);
    } else {
      _520 = _493;
      _521 = _494;
      _522 = _495;
    }
    _526 = (_240 * (Globals_3344.w)) + 1.0f;
    _539 = ((_526 * _386) + _520);
    _540 = ((_526 * _387) + _521);
    _541 = ((_526 * _388) + _522);
    _542 = saturate((((_521 + _520) + _522) * 0.33329999446868896f) + _385);
  } else {
    _539 = _386;
    _540 = _387;
    _541 = _388;
    _542 = _385;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _559 = abs(_209 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _561 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_208 - UberPostBaseCBuffer_112.x);
    _567 = exp2(log2(saturate(1.0f - dot(float2(_561, _559), float2(_561, _559)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _581 = (((_567 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _539);
    _582 = (((_567 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _540);
    _583 = (((_567 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _541);
  } else {
    _581 = _539;
    _582 = _540;
    _583 = _541;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_581, _582, _583);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t3, s0, UberPostBaseCBuffer_000.xyz);
    _632 = tonemapped.x;
    _633 = tonemapped.y;
    _634 = tonemapped.z;
  } else {
    _606 = saturate((log2((_583 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _607 = floor(_606);
    _613 = ((saturate((log2((_582 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _615 = (_607 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_581 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _616 = _606 - _607;
    _618 = t3.SampleLevel(s0, float2((_615 + UberPostBaseCBuffer_000.y), _613), 0.0f);
    _622 = t3.SampleLevel(s0, float2(_615, _613), 0.0f);
    _632 = ((_618.x - _622.x) * _616) + _622.x;
    _633 = ((_618.y - _622.y) * _616) + _622.y;
    _634 = ((_618.z - _622.z) * _616) + _622.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _654 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _658 = 1.0f - (sqrt(dot(float3(_632, _633, _634), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _672 = ((((UberPostBaseCBuffer_208.x * _632) * _654) * _658) + _632);
    _673 = ((((UberPostBaseCBuffer_208.x * _633) * _654) * _658) + _633);
    _674 = ((((UberPostBaseCBuffer_208.x * _634) * _654) * _658) + _634);
  } else {
    _672 = _632;
    _673 = _633;
    _674 = _634;
  }
  _685 = ((((((Globals_080.z) + -1.0f) * (Globals_080.y)) + -1.0f) * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _50;
  _687 = atan(_685 / _49);
  _690 = (_49 < 0.0f);
  _691 = (_49 == 0.0f);
  _692 = (_685 >= 0.0f);
  _693 = (_685 < 0.0f);
  _32[0] = ((((Globals_2208.x) * (TEXCOORD.x + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _33[0] = TEXCOORD.y;
  _32[1] = select((_691 && _692), 2.0f, select((_691 && _693), -2.0f, (select((_690 && _693), (_687 + -3.1415927410125732f), select((_690 && _692), (_687 + 3.1415927410125732f), _687)) * 1.2732394933700562f)));
  _33[1] = (sqrt((_685 * _685) + (_49 * _49)) * 0.5f);
  _32[2] = TEXCOORD.x;
  _33[2] = TEXCOORD.y;
  _750 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _773 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _798 = t13.SampleBias(s7, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _171) + (UberPostScreenEffectsBaseCBuffer_176.x * _46)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_32[min((uint)(_773), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _172) + (UberPostScreenEffectsBaseCBuffer_176.y * _46)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_33[min((uint)(_773), 2u)])))), (Globals_976), int2(0, 0));
  _38[0] = _798.x;
  _38[1] = _798.y;
  _38[2] = _798.z;
  _38[3] = _798.w;
  _811 = ((_38[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _819 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _823 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _838 = UberPostScreenEffectsBaseCBuffer_208.y * _811;
  _852 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _866 = UberPostScreenEffectsBaseCBuffer_208.z * _811;
  _882 = t12.SampleBias(s6, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _171) + (UberPostScreenEffectsBaseCBuffer_160.z * _46)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_32[min((uint)(_852), 2u)]))) + _866), (((((UberPostScreenEffectsRandomCBuffer_000.y + _172) + (UberPostScreenEffectsBaseCBuffer_160.w * _46)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_33[min((uint)(_852), 2u)]))) + _866)), (Globals_976), int2(0, 0));
  _37[0] = _882.x;
  _37[1] = _882.y;
  _37[2] = _882.z;
  _37[3] = _882.w;
  _893 = _37[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _894 = t10.SampleBias(s4, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _46) + _171) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_32[min((uint)(_823), 2u)]) * _819) * UberPostScreenEffectsBaseCBuffer_032.x)) + _838), (((((UberPostScreenEffectsBaseCBuffer_096.y * _46) + _172) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_33[min((uint)(_823), 2u)]) * _819) * UberPostScreenEffectsBaseCBuffer_032.y)) + _838)), (Globals_976), int2(0, 0));
  _902 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _893, 1.0f);
  _36[0] = _894.x;
  _36[1] = _894.y;
  _36[2] = _894.z;
  _36[3] = _894.w;
  _913 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _916 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _902);
  _925 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _926 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _927 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _939 = saturate((_902 * (_36[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _946 = select(_913, (((_925 * _916) + UberPostScreenEffectsBaseCBuffer_064.x) * _894.x), ((_925 * _939) + UberPostScreenEffectsBaseCBuffer_064.x));
  _947 = select(_913, (((_926 * _916) + UberPostScreenEffectsBaseCBuffer_064.y) * _894.y), ((_926 * _939) + UberPostScreenEffectsBaseCBuffer_064.y));
  _948 = select(_913, (((_927 * _916) + UberPostScreenEffectsBaseCBuffer_064.z) * _894.z), ((_927 * _939) + UberPostScreenEffectsBaseCBuffer_064.z));
  _35[0] = _894.x;
  _35[1] = _894.y;
  _35[2] = _894.z;
  _35[3] = _894.w;
  _957 = _35[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _958 = _957 * _893;
  _974 = t11.SampleBias(s5, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _46) + _171) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_32[min((uint)(_750), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _46) + _172) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_33[min((uint)(_750), 2u)])))), (Globals_976), int2(0, 0));
  _34[0] = _974.x;
  _34[1] = _974.y;
  _34[2] = _974.z;
  _34[3] = _974.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _996 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _957));
  } else {
    _996 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_958 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_958 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _998 = ((_34[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _996) * _102;
  _1002 = select((_998 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _998;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1078 = ((_1002 * (_946 - _672)) + _672);
    _1079 = ((_1002 * (_947 - _673)) + _673);
    _1080 = ((_1002 * (_948 - _674)) + _674);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1078 = ((_1002 * _946) + _672);
      _1079 = ((_1002 * _947) + _673);
      _1080 = ((_1002 * _948) + _674);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1078 = (((_1002 * (_946 + -1.0f)) + 1.0f) * _672);
        _1079 = (((_1002 * (_947 + -1.0f)) + 1.0f) * _673);
        _1080 = (((_1002 * (_948 + -1.0f)) + 1.0f) * _674);
      } else {
        _1044 = _1002 * (_946 + -0.5f);
        _1045 = _1002 * (_947 + -0.5f);
        _1046 = _1002 * (_948 + -0.5f);
        _1078 = select((_672 < 0.5f), ((_672 * 2.0f) * (_1044 + 0.5f)), (1.0f - (((1.0f - _672) * 2.0f) * (0.5f - _1044))));
        _1079 = select((_673 < 0.5f), ((_673 * 2.0f) * (_1045 + 0.5f)), (1.0f - (((1.0f - _673) * 2.0f) * (0.5f - _1045))));
        _1080 = select((_674 < 0.5f), ((_674 * 2.0f) * (_1046 + 0.5f)), (1.0f - (((1.0f - _674) * 2.0f) * (0.5f - _1046))));
      }
    }
  }
  _1085 = ((_1079 + _1078) + _1080) * 0.3333333432674408f;
  _1092 = ((_1078 - _1085) * UberPostFXColorCorrectionCBuffer_000.w) + _1085;
  _1093 = ((_1079 - _1085) * UberPostFXColorCorrectionCBuffer_000.w) + _1085;
  _1094 = ((_1080 - _1085) * UberPostFXColorCorrectionCBuffer_000.w) + _1085;
  if ((Globals_816[3].w) > 0.5f) {
    _1102 = t0.SampleBias(s0, float2(dot(float3(_1092, _1093, _1094), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _1107 = _1102.x;
    _1108 = _1102.y;
    _1109 = _1102.z;
  } else {
    _1107 = _1092;
    _1108 = _1093;
    _1109 = _1094;
  }
  _1124 = (((1.0f - _1107) - saturate(_1107)) * UberPostFXColorCorrectionCBuffer_016.w) + _1107;
  _1125 = (((1.0f - _1108) - saturate(_1108)) * UberPostFXColorCorrectionCBuffer_016.w) + _1108;
  _1126 = (((1.0f - _1109) - saturate(_1109)) * UberPostFXColorCorrectionCBuffer_016.w) + _1109;
  _1134 = saturate((saturate(dot(float3(_1124, _1125, _1126), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _1161 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _1124) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1134)) * UberPostFXColorCorrectionCBuffer_032.x) + _1124);
  // _1162 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _1125) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1134)) * UberPostFXColorCorrectionCBuffer_032.x) + _1125);
  // _1163 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _1126) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1134)) * UberPostFXColorCorrectionCBuffer_032.x) + _1126);
  _1161 = ((((UberPostFXColorCorrectionCBuffer_000.x - _1124) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1134)) * UberPostFXColorCorrectionCBuffer_032.x) + _1124);
  _1162 = ((((UberPostFXColorCorrectionCBuffer_000.y - _1125) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1134)) * UberPostFXColorCorrectionCBuffer_032.x) + _1125);
  _1163 = ((((UberPostFXColorCorrectionCBuffer_000.z - _1126) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1134)) * UberPostFXColorCorrectionCBuffer_032.x) + _1126);

  // HDR FX Mask Blend
  float3 result = float3(_1161, _1162, _1163);
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
  _1238 = result.x;
  _1239 = result.y;
  _1240 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _1169 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _1238 = min((_1169.x + _1161), 1.0f);
        _1239 = min((_1169.x + _1162), 1.0f);
        _1240 = min((_1169.x + _1163), 1.0f);
      } else {
        _1206 = select((_1161 > 0.5f), 0.0f, 1.0f);
        _1207 = select((_1162 > 0.5f), 0.0f, 1.0f);
        _1208 = select((_1163 > 0.5f), 0.0f, 1.0f);
        _1227 = 1.0f - _1169.x;
        _1238 = (((((1.0f - (((1.0f - _1161) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _1206)) + (((_1161 * 2.0f) * _1206) * UberPostFXColorCorrectionCBuffer_048.x)) * _1169.x) + (_1227 * _1161));
        _1239 = (((((1.0f - (((1.0f - _1162) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _1207)) + (((_1162 * 2.0f) * _1207) * UberPostFXColorCorrectionCBuffer_048.y)) * _1169.x) + (_1227 * _1162));
        _1240 = (((((1.0f - (((1.0f - _1163) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1208)) + (((_1163 * 2.0f) * _1208) * UberPostFXColorCorrectionCBuffer_048.z)) * _1169.x) + (_1227 * _1163));
      }
  } else {
    _1238 = _1161;
    _1239 = _1162;
    _1240 = _1163;
  }
  */

  SV_Target.x = _1238;
  SV_Target.y = _1239;
  SV_Target.z = _1240;
  SV_Target.w = _542;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
