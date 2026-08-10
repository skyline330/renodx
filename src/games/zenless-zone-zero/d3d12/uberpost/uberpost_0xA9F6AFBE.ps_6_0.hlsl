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
  float _66;
  float _73;
  float _74;
  float _109;
  float _110;
  float _111;
  float _112;
  float _113;
  float _114;
  float _115;
  float _116;
  float _214;
  float _215;
  float _216;
  float _245;
  float _246;
  float _247;
  float _335;
  float _342;
  float _343;
  float _392;
  float _399;
  float _400;
  float _449;
  float _456;
  float _457;
  float _523;
  float _530;
  float _531;
  float _574;
  float _581;
  float _582;
  float _625;
  float _632;
  float _633;
  float _639;
  float _640;
  float _641;
  float _642;
  float _828;
  float _829;
  float _830;
  float _840;
  float _841;
  float _842;
  float _843;
  float _882;
  float _883;
  float _884;
  float _971;
  float _972;
  float _973;
  float _1000;
  float _1001;
  float _1002;
  float _1131;
  float _1132;
  float _1133;
  float _34;
  float _35;
  float _45;
  float _46;
  float _50;
  float _54;
  float _67;
  float4 _81;
  float _85;
  float _86;
  float _91;
  float _92;
  float _119;
  float _128;
  float _138;
  float _141;
  float _142;
  float _149;
  float _150;
  float _151;
  float _153;
  float _154;
  float _155;
  float _156;
  float _157;
  float _165;
  float _178;
  float _185;
  float _192;
  float _193;
  float _194;
  float4 _208;
  float4 _239;
  float _253;
  float _254;
  bool _257;
  float _264;
  float _266;
  float _270;
  float _272;
  float _274;
  float _276;
  float _283;
  float _288;
  float _290;
  float _292;
  float _297;
  float _298;
  float _303;
  float _304;
  float _314;
  float _315;
  float _319;
  float _323;
  float _336;
  float4 _344;
  float _354;
  float _355;
  float _360;
  float _361;
  float _371;
  float _372;
  float _376;
  float _380;
  float _393;
  float4 _401;
  float _411;
  float _412;
  float _417;
  float _418;
  float _428;
  float _429;
  float _433;
  float _437;
  float _450;
  float4 _458;
  float _491;
  float _492;
  float _502;
  float _503;
  float _507;
  float _511;
  float _524;
  float _536;
  float _537;
  float _542;
  float _543;
  float _553;
  float _554;
  float _558;
  float _562;
  float _575;
  float _587;
  float _588;
  float _593;
  float _594;
  float _604;
  float _605;
  float _609;
  float _613;
  float _626;
  float4 _655;
  float _667;
  float _668;
  float _681;
  float _686;
  float _696;
  float _697;
  float _698;
  bool _705;
  float _715;
  float _723;
  float _726;
  float4 _745;
  float _782;
  float _783;
  float _784;
  float _785;
  bool _788;
  float _801;
  float _802;
  float _803;
  float4 _814;
  float _860;
  float _862;
  float _868;
  float _907;
  float _908;
  float _914;
  float _916;
  float _917;
  float4 _919;
  float4 _923;
  float _933;
  float _934;
  float _935;
  float _953;
  float _957;
  float _978;
  float _985;
  float _986;
  float _987;
  float4 _995;
  float _1017;
  float _1018;
  float _1019;
  float _1027;
  float _1054;
  float _1055;
  float _1056;
  float4 _1062;
  float _1099;
  float _1100;
  float _1101;
  float _1120;
  if (!(UberPostBaseCBuffer_080.w == 0.0f)) {
    _34 = UberPostBaseCBuffer_080.z * (TEXCOORD.x + -0.5f);
    _35 = UberPostBaseCBuffer_080.z * (TEXCOORD.y + -0.5f);
    _45 = (_34 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
    _46 = (_35 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
    _50 = sqrt((_45 * _45) + (_46 * _46));
    _54 = UberPostBaseCBuffer_080.y * _50;
    [branch]
    if (UberPostBaseCBuffer_080.w > 0.0f) {
      _66 = ((1.0f / _54) * tan(UberPostBaseCBuffer_080.x * _50));
    } else {
      _66 = ((UberPostBaseCBuffer_080.x * (1.0f / _50)) * atan(_54));
    }
    _67 = _66 + -1.0f;
    _73 = ((_34 + 0.5f) + (_67 * _45));
    _74 = ((_35 + 0.5f) + (_67 * _46));
  } else {
    _73 = TEXCOORD.x;
    _74 = TEXCOORD.y;
  }
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _81 = t5.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _85 = _81.x * 0.10000000149011612f;
    _86 = _81.y * 0.10000000149011612f;
    _91 = (_85 * _81.z) * UberPostBaseCBuffer_176.w;
    _92 = (_86 * _81.z) * UberPostBaseCBuffer_176.w;
    _109 = (_85 + _73);
    _110 = (_86 + _74);
    _111 = ((_91 * UberPostBaseCBuffer_176.x) + _85);
    _112 = ((_92 * UberPostBaseCBuffer_176.x) + _86);
    _113 = ((_91 * UberPostBaseCBuffer_176.y) + _85);
    _114 = ((_92 * UberPostBaseCBuffer_176.y) + _86);
    _115 = ((UberPostBaseCBuffer_176.z * _91) + _85);
    _116 = ((UberPostBaseCBuffer_176.z * _92) + _86);
  } else {
    _109 = _73;
    _110 = _74;
    _111 = 0.0f;
    _112 = 0.0f;
    _113 = 0.0f;
    _114 = 0.0f;
    _115 = 0.0f;
    _116 = 0.0f;
  }
  _119 = frac(Globals_208[1].x);
  _128 = (((float4)(t6.SampleBias(s3, float2((_119 + (TEXCOORD.x * 5.0f)), (_119 + (TEXCOORD.y * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _138 = ((_128 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_128 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _141 = cos(UberPostBaseCBuffer_224.w);
  _142 = sin(UberPostBaseCBuffer_224.w);
  _149 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _138;
  _150 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _138;
  _151 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _138;
  _153 = _149 * _142;
  _154 = _150 * _141;
  _155 = _150 * _142;
  _156 = _151 * _141;
  _157 = _151 * _142;
  _165 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + TEXCOORD.y);
  _178 = frac(_119 * 1234.0f);
  _185 = (((_178 * _178) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _178) + UberPostBaseCBuffer_256.x;
  _192 = select((_185 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_165 + _153)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _193 = select((_185 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_165 + _155)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _194 = select((_185 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_165 + _157)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _208 = t7.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * TEXCOORD.x) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * TEXCOORD.y) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _214 = (_208.x * _192);
    _215 = (_208.x * _193);
    _216 = (_208.x * _194);
  } else {
    _214 = _192;
    _215 = _193;
    _216 = _194;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _239 = t7.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * TEXCOORD.x) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * TEXCOORD.y) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _245 = (_239.y * _214);
    _246 = (_239.y * _215);
    _247 = (_239.y * _216);
  } else {
    _245 = _214;
    _246 = _215;
    _247 = _216;
  }
  _253 = (_111 + TEXCOORD.x) + (_149 * _141);
  _254 = (_112 + TEXCOORD.y) + _153;
  _257 = !(UberPostBaseCBuffer_080.w == 0.0f);
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _264 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _266 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _270 = dot(float2(_264, _266), float2(_264, _266)) * -0.3333333432674408f;
    _272 = (_270 * _264) * UberPostBaseCBuffer_192.z;
    _274 = (_270 * _266) * UberPostBaseCBuffer_192.z;
    _276 = rsqrt(dot(float3(_272, _274, 9.999999747378752e-05f), float3(_272, _274, 9.999999747378752e-05f)));
    _283 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _288 = exp2(log2(sqrt((_272 * _272) + (_274 * _274)) / _283) * UberPostBaseCBuffer_384.z);
    _290 = ((_272 * _276) * _283) * _288;
    _292 = ((_274 * _276) * _283) * _288;
    _297 = _253 + (_290 * UberPostBaseCBuffer_400.w);
    _298 = _254 + (_292 * UberPostBaseCBuffer_400.w);
    if (_257) {
      _303 = UberPostBaseCBuffer_080.z * (_297 + -0.5f);
      _304 = UberPostBaseCBuffer_080.z * (_298 + -0.5f);
      _314 = (_303 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _315 = (_304 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _319 = sqrt((_314 * _314) + (_315 * _315));
      _323 = UberPostBaseCBuffer_080.y * _319;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _335 = ((1.0f / _323) * tan(UberPostBaseCBuffer_080.x * _319));
      } else {
        _335 = ((UberPostBaseCBuffer_080.x * (1.0f / _319)) * atan(_323));
      }
      _336 = _335 + -1.0f;
      _342 = ((_303 + 0.5f) + (_336 * _314));
      _343 = ((_304 + 0.5f) + (_336 * _315));
    } else {
      _342 = _297;
      _343 = _298;
    }
    _344 = t1.SampleBias(s0, float2(_342, _343), (Globals_976), int2(0, 0));
    _354 = ((_113 + TEXCOORD.x) + _154) + (UberPostBaseCBuffer_416.w * _290);
    _355 = ((_114 + TEXCOORD.y) + _155) + (UberPostBaseCBuffer_416.w * _292);
    if (_257) {
      _360 = UberPostBaseCBuffer_080.z * (_354 + -0.5f);
      _361 = UberPostBaseCBuffer_080.z * (_355 + -0.5f);
      _371 = (_360 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _372 = (_361 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _376 = sqrt((_371 * _371) + (_372 * _372));
      _380 = UberPostBaseCBuffer_080.y * _376;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _392 = ((1.0f / _380) * tan(UberPostBaseCBuffer_080.x * _376));
      } else {
        _392 = ((UberPostBaseCBuffer_080.x * (1.0f / _376)) * atan(_380));
      }
      _393 = _392 + -1.0f;
      _399 = ((_360 + 0.5f) + (_393 * _371));
      _400 = ((_361 + 0.5f) + (_393 * _372));
    } else {
      _399 = _354;
      _400 = _355;
    }
    _401 = t1.SampleBias(s0, float2(_399, _400), (Globals_976), int2(0, 0));
    _411 = ((_115 + TEXCOORD.x) + _156) + (UberPostBaseCBuffer_432.w * _290);
    _412 = ((_116 + TEXCOORD.y) + _157) + (UberPostBaseCBuffer_432.w * _292);
    if (_257) {
      _417 = UberPostBaseCBuffer_080.z * (_411 + -0.5f);
      _418 = UberPostBaseCBuffer_080.z * (_412 + -0.5f);
      _428 = (_417 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _429 = (_418 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _433 = sqrt((_428 * _428) + (_429 * _429));
      _437 = UberPostBaseCBuffer_080.y * _433;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _449 = ((1.0f / _437) * tan(UberPostBaseCBuffer_080.x * _433));
      } else {
        _449 = ((UberPostBaseCBuffer_080.x * (1.0f / _433)) * atan(_437));
      }
      _450 = _449 + -1.0f;
      _456 = ((_417 + 0.5f) + (_450 * _428));
      _457 = ((_418 + 0.5f) + (_450 * _429));
    } else {
      _456 = _411;
      _457 = _412;
    }
    _458 = t1.SampleBias(s0, float2(_456, _457), (Globals_976), int2(0, 0));
    _639 = (((float4)(t1.SampleBias(s0, float2(_109, _110), (Globals_976), int2(0, 0)))).w);
    _640 = (((UberPostBaseCBuffer_416.x * _401.y) + (UberPostBaseCBuffer_400.x * _344.x)) + (UberPostBaseCBuffer_432.x * _458.z));
    _641 = (((UberPostBaseCBuffer_416.y * _401.y) + (UberPostBaseCBuffer_400.y * _344.x)) + (UberPostBaseCBuffer_432.y * _458.z));
    _642 = (((UberPostBaseCBuffer_416.z * _401.y) + (UberPostBaseCBuffer_400.z * _344.x)) + (UberPostBaseCBuffer_432.z * _458.z));
  } else {
    if (_257) {
      _491 = UberPostBaseCBuffer_080.z * (_253 + -0.5f);
      _492 = UberPostBaseCBuffer_080.z * (_254 + -0.5f);
      _502 = (_491 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _503 = (_492 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _507 = sqrt((_502 * _502) + (_503 * _503));
      _511 = UberPostBaseCBuffer_080.y * _507;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _523 = ((1.0f / _511) * tan(UberPostBaseCBuffer_080.x * _507));
      } else {
        _523 = ((UberPostBaseCBuffer_080.x * (1.0f / _507)) * atan(_511));
      }
      _524 = _523 + -1.0f;
      _530 = ((_491 + 0.5f) + (_524 * _502));
      _531 = ((_492 + 0.5f) + (_524 * _503));
    } else {
      _530 = _253;
      _531 = _254;
    }
    _536 = (_113 + TEXCOORD.x) + _154;
    _537 = (_114 + TEXCOORD.y) + _155;
    if (_257) {
      _542 = UberPostBaseCBuffer_080.z * (_536 + -0.5f);
      _543 = UberPostBaseCBuffer_080.z * (_537 + -0.5f);
      _553 = (_542 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _554 = (_543 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _558 = sqrt((_553 * _553) + (_554 * _554));
      _562 = UberPostBaseCBuffer_080.y * _558;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _574 = ((1.0f / _562) * tan(UberPostBaseCBuffer_080.x * _558));
      } else {
        _574 = ((UberPostBaseCBuffer_080.x * (1.0f / _558)) * atan(_562));
      }
      _575 = _574 + -1.0f;
      _581 = ((_542 + 0.5f) + (_575 * _553));
      _582 = ((_543 + 0.5f) + (_575 * _554));
    } else {
      _581 = _536;
      _582 = _537;
    }
    _587 = (_115 + TEXCOORD.x) + _156;
    _588 = (_116 + TEXCOORD.y) + _157;
    if (_257) {
      _593 = UberPostBaseCBuffer_080.z * (_587 + -0.5f);
      _594 = UberPostBaseCBuffer_080.z * (_588 + -0.5f);
      _604 = (_593 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _605 = (_594 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _609 = sqrt((_604 * _604) + (_605 * _605));
      _613 = UberPostBaseCBuffer_080.y * _609;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _625 = ((1.0f / _613) * tan(UberPostBaseCBuffer_080.x * _609));
      } else {
        _625 = ((UberPostBaseCBuffer_080.x * (1.0f / _609)) * atan(_613));
      }
      _626 = _625 + -1.0f;
      _632 = ((_593 + 0.5f) + (_626 * _604));
      _633 = ((_594 + 0.5f) + (_626 * _605));
    } else {
      _632 = _587;
      _633 = _588;
    }
    _639 = (((float4)(t1.SampleBias(s0, float2(_109, _110), (Globals_976), int2(0, 0)))).w);
    _640 = (((float4)(t1.SampleBias(s0, float2(_530, _531), (Globals_976), int2(0, 0)))).x);
    _641 = (((float4)(t1.SampleBias(s0, float2(_581, _582), (Globals_976), int2(0, 0)))).y);
    _642 = (((float4)(t1.SampleBias(s0, float2(_632, _633), (Globals_976), int2(0, 0)))).z);
  }
  _655 = t10.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * TEXCOORD.x) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * TEXCOORD.y) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _667 = frac((Globals_208[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  _668 = 0.4000000059604645f - _667;
  _681 = (UberPostBaseCBuffer_368.w * max(((select((_668 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_667 + 0.05000000074505806f) * 10.0f) - _668)) + _668), 0.0f)) + 1.0f;
  _686 = 1.0f - UberPostBaseCBuffer_368.z;
  _696 = (((((_655.x * 12.0f) * _681) * _686) + UberPostBaseCBuffer_368.z) * _640) + _245;
  _697 = (((((_655.y * 12.0f) * _681) * _686) + UberPostBaseCBuffer_368.z) * _641) + _246;
  _698 = (((((_655.z * 12.0f) * _681) * _686) + UberPostBaseCBuffer_368.z) * _642) + _247;
  _705 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _705)) {
    _715 = fmod((((Globals_2208.y) * _110) * UberPostBaseCBuffer_448.x), 2.0f);
    _723 = (((select((_715 > 1.0f), (2.0f - _715), _715) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _109;
    _726 = (Globals_2208.w) * (Globals_2208.x);
    _745 = t8.SampleBias(s5, float2(_723, ((select(((frac((((_723 + abs(UberPostBaseCBuffer_464.y)) * _726) - (UberPostBaseCBuffer_464.y * _110)) / ((_726 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _110)), (Globals_976), int2(0, 0));
    _782 = ((((-0.699999988079071f - _745.x) + (exp2(log2(abs(_745.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_745.x < 0.30000001192092896f), 0.0f, 1.0f)) + _745.x) * UberPostBaseCBuffer_336.x;
    _783 = ((((-0.699999988079071f - _745.y) + (exp2(log2(abs(_745.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_745.y < 0.30000001192092896f), 0.0f, 1.0f)) + _745.y) * UberPostBaseCBuffer_336.x;
    _784 = ((((-0.699999988079071f - _745.z) + (exp2(log2(abs(_745.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_745.z < 0.30000001192092896f), 0.0f, 1.0f)) + _745.z) * UberPostBaseCBuffer_336.x;
    _785 = dot(float3(_696, _697, _698), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _788 = (UberPostBaseCBuffer_352.x > 0.5f);
    _801 = select(_788, ((((_782 * _785) - _782) * _639) + _782), _782);
    _802 = select(_788, ((((_783 * _785) - _783) * _639) + _783), _783);
    _803 = select(_788, ((((_784 * _785) - _784) * _639) + _784), _784);
    if (_705) {
      _814 = t9.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _109) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _110) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _828 = (((_814.x * _782) * UberPostBaseCBuffer_336.y) + _801);
      _829 = (((_814.y * _783) * UberPostBaseCBuffer_336.y) + _802);
      _830 = (((_814.z * _784) * UberPostBaseCBuffer_336.y) + _803);
    } else {
      _828 = _801;
      _829 = _802;
      _830 = _803;
    }
    _840 = (_828 + _696);
    _841 = (_829 + _697);
    _842 = (_830 + _698);
    _843 = saturate((((_829 + _828) + _830) * 0.33329999446868896f) + _639);
  } else {
    _840 = _696;
    _841 = _697;
    _842 = _698;
    _843 = _639;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _860 = abs(_110 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z;
    _862 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_109 - UberPostBaseCBuffer_112.x);
    _868 = exp2(log2(saturate(1.0f - dot(float2(_862, _860), float2(_862, _860)))) * UberPostBaseCBuffer_112.w);
    _882 = (((_868 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _840);
    _883 = (((_868 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _841);
    _884 = (((_868 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _842);
  } else {
    _882 = _840;
    _883 = _841;
    _884 = _842;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_882, _883, _884);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t3, s0, UberPostBaseCBuffer_000.xyz);
    _933 = tonemapped.x;
    _934 = tonemapped.y;
    _935 = tonemapped.z;
  } else {
    _907 = saturate((log2((_884 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _908 = floor(_907);
    _914 = ((saturate((log2((_883 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _916 = (_908 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_882 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _917 = _907 - _908;
    _919 = t3.SampleLevel(s0, float2((_916 + UberPostBaseCBuffer_000.y), _914), 0.0f);
    _923 = t3.SampleLevel(s0, float2(_916, _914), 0.0f);
    _933 = ((_919.x - _923.x) * _917) + _923.x;
    _934 = ((_919.y - _923.y) * _917) + _923.y;
    _935 = ((_919.z - _923.z) * _917) + _923.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _953 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _957 = 1.0f - (sqrt(dot(float3(_933, _934, _935), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _971 = ((((UberPostBaseCBuffer_208.x * _933) * _953) * _957) + _933);
    _972 = ((((UberPostBaseCBuffer_208.x * _934) * _953) * _957) + _934);
    _973 = ((((UberPostBaseCBuffer_208.x * _935) * _953) * _957) + _935);
  } else {
    _971 = _933;
    _972 = _934;
    _973 = _935;
  }
  _978 = ((_972 + _971) + _973) * 0.3333333432674408f;
  _985 = ((_971 - _978) * UberPostFXColorCorrectionCBuffer_000.w) + _978;
  _986 = ((_972 - _978) * UberPostFXColorCorrectionCBuffer_000.w) + _978;
  _987 = ((_973 - _978) * UberPostFXColorCorrectionCBuffer_000.w) + _978;
  if ((Globals_816[3].w) > 0.5f) {
    _995 = t0.SampleBias(s0, float2(dot(float3(_985, _986, _987), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _1000 = _995.x;
    _1001 = _995.y;
    _1002 = _995.z;
  } else {
    _1000 = _985;
    _1001 = _986;
    _1002 = _987;
  }
  _1017 = (((1.0f - _1000) - saturate(_1000)) * UberPostFXColorCorrectionCBuffer_016.w) + _1000;
  _1018 = (((1.0f - _1001) - saturate(_1001)) * UberPostFXColorCorrectionCBuffer_016.w) + _1001;
  _1019 = (((1.0f - _1002) - saturate(_1002)) * UberPostFXColorCorrectionCBuffer_016.w) + _1002;
  _1027 = saturate((saturate(dot(float3(_1017, _1018, _1019), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _1054 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _1017) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1027)) * UberPostFXColorCorrectionCBuffer_032.x) + _1017);
  // _1055 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _1018) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1027)) * UberPostFXColorCorrectionCBuffer_032.x) + _1018);
  // _1056 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _1019) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1027)) * UberPostFXColorCorrectionCBuffer_032.x) + _1019);
  _1054 = ((((UberPostFXColorCorrectionCBuffer_000.x - _1017) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1027)) * UberPostFXColorCorrectionCBuffer_032.x) + _1017);
  _1055 = ((((UberPostFXColorCorrectionCBuffer_000.y - _1018) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1027)) * UberPostFXColorCorrectionCBuffer_032.x) + _1018);
  _1056 = ((((UberPostFXColorCorrectionCBuffer_000.z - _1019) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1027)) * UberPostFXColorCorrectionCBuffer_032.x) + _1019);

  // HDR FX Mask Blend
  float3 result = float3(_1054, _1055, _1056);
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
  _1131 = result.x;
  _1132 = result.y;
  _1133 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _1062 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _1131 = min((_1062.x + _1054), 1.0f);
        _1132 = min((_1062.x + _1055), 1.0f);
        _1133 = min((_1062.x + _1056), 1.0f);
      } else {
        _1099 = select((_1054 > 0.5f), 0.0f, 1.0f);
        _1100 = select((_1055 > 0.5f), 0.0f, 1.0f);
        _1101 = select((_1056 > 0.5f), 0.0f, 1.0f);
        _1120 = 1.0f - _1062.x;
        _1131 = (((((1.0f - (((1.0f - _1054) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _1099)) + (((_1054 * 2.0f) * _1099) * UberPostFXColorCorrectionCBuffer_048.x)) * _1062.x) + (_1120 * _1054));
        _1132 = (((((1.0f - (((1.0f - _1055) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _1100)) + (((_1055 * 2.0f) * _1100) * UberPostFXColorCorrectionCBuffer_048.y)) * _1062.x) + (_1120 * _1055));
        _1133 = (((((1.0f - (((1.0f - _1056) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1101)) + (((_1056 * 2.0f) * _1101) * UberPostFXColorCorrectionCBuffer_048.z)) * _1062.x) + (_1120 * _1056));
      }
  } else {
    _1131 = _1054;
    _1132 = _1055;
    _1133 = _1056;
  }
  */

  SV_Target.x = _1131;
  SV_Target.y = _1132;
  SV_Target.z = _1133;
  SV_Target.w = _843;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
