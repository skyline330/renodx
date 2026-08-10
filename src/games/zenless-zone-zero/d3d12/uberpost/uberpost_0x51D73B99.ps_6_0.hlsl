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
  float _214;
  float _215;
  float _251;
  float _252;
  float _253;
  float _254;
  float _255;
  float _256;
  float _257;
  float _258;
  float _342;
  float _349;
  float _350;
  float _399;
  float _406;
  float _407;
  float _454;
  float _461;
  float _462;
  float _536;
  float _543;
  float _544;
  float _585;
  float _592;
  float _593;
  float _634;
  float _641;
  float _642;
  float _651;
  float _652;
  float _653;
  float _659;
  float _660;
  float _661;
  float _662;
  float _794;
  float _795;
  float _796;
  float _806;
  float _807;
  float _808;
  float _809;
  float _848;
  float _849;
  float _850;
  float _939;
  float _940;
  float _941;
  float _1256;
  float _1338;
  float _1339;
  float _1340;
  float _41;
  float _42;
  float _52;
  float _53;
  float _57;
  float _61;
  float _74;
  float _89;
  float _90;
  float _91;
  float _92;
  float _93;
  float _103;
  float _105;
  float _107;
  float _108;
  float _109;
  float _120;
  float _130;
  float _136;
  float _142;
  float _145;
  float _153;
  float _155;
  bool _158;
  bool _159;
  bool _160;
  bool _161;
  bool _185;
  float4 _201;
  float _210;
  bool _218;
  float4 _222;
  float _228;
  float _229;
  float _232;
  float _233;
  float _234;
  float _266;
  float _268;
  float _272;
  float _274;
  float _276;
  float _278;
  float _285;
  float _290;
  float _292;
  float _294;
  float _301;
  float _302;
  bool _305;
  float _310;
  float _311;
  float _321;
  float _322;
  float _326;
  float _330;
  float _343;
  float4 _353;
  float _361;
  float _362;
  float _367;
  float _368;
  float _378;
  float _379;
  float _383;
  float _387;
  float _400;
  float4 _408;
  float _416;
  float _417;
  float _422;
  float _423;
  float _433;
  float _434;
  float _438;
  float _442;
  float _455;
  float4 _463;
  float _495;
  float _496;
  bool _499;
  float _504;
  float _505;
  float _515;
  float _516;
  float _520;
  float _524;
  float _537;
  float _547;
  float _548;
  float _553;
  float _554;
  float _564;
  float _565;
  float _569;
  float _573;
  float _586;
  float _596;
  float _597;
  float _602;
  float _603;
  float _613;
  float _614;
  float _618;
  float _622;
  float _635;
  float4 _646;
  bool _669;
  float _679;
  float _687;
  float _690;
  float4 _711;
  float _748;
  float _749;
  float _750;
  float _751;
  bool _754;
  float _767;
  float _768;
  float _769;
  float4 _780;
  float _826;
  float _828;
  float _834;
  float _873;
  float _874;
  float _880;
  float _882;
  float _883;
  float4 _885;
  float4 _889;
  float _899;
  float _900;
  float _901;
  float _921;
  float _925;
  float _945;
  float _947;
  bool _950;
  bool _951;
  bool _952;
  bool _953;
  int _1010;
  int _1033;
  float4 _1058;
  float _1071;
  float _1079;
  int _1083;
  float _1098;
  int _1112;
  float _1126;
  float4 _1142;
  float _1153;
  float4 _1154;
  float _1162;
  bool _1173;
  float _1176;
  float _1185;
  float _1186;
  float _1187;
  float _1199;
  float _1206;
  float _1207;
  float _1208;
  float _1217;
  float _1218;
  float4 _1234;
  float _1258;
  float _1262;
  float _1304;
  float _1305;
  float _1306;
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
  _89 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _90 = TEXCOORD.x * 2.0f;
  _91 = TEXCOORD.y * 2.0f;
  _92 = _90 + -1.0f;
  _93 = _91 + -1.0f;
  _103 = (Globals_080.z) + -1.0f;
  _105 = (_103 * (Globals_080.y)) + -1.0f;
  _107 = (_105 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _108 = _107 * _93;
  _109 = _92 * _92;
  _120 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_92)), (_107 * (1.0f - abs(_93)))), (1.0f - (sqrt((_108 * _108) + _109) * 0.7070000171661377f)));
  _130 = saturate((_120 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _136 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_130 * _130) * (3.0f - (_130 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _120), 0.0f, 1.0f));
  _142 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _136), _136) * UberPostScreenEffectsBaseCBuffer_016.z;
  _145 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _142, 0.0f) * _142;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _153 = ((_105 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _93;
    _155 = atan(_153 / _92);
    _158 = (_92 < 0.0f);
    _159 = (_92 == 0.0f);
    _160 = (_153 >= 0.0f);
    _161 = (_153 < 0.0f);
    _185 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _201 = t10.SampleBias(s8, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _89)) + (select(_185, select((_159 && _160), 2.0f, select((_159 && _161), -2.0f, (select((_158 && _161), (_155 + -3.1415927410125732f), select((_158 && _160), (_155 + 3.1415927410125732f), _155)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _89)) + (select(_185, (sqrt((_153 * _153) + _109) * 0.6366197466850281f), ((((Globals_080.y) * (TEXCOORD.y + -0.5f)) * _103) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _210 = (_145 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _214 = (_210 * ((_201.x * 2.0f) + -1.0f));
    _215 = (_210 * ((_201.y * 2.0f) + -1.0f));
  } else {
    _214 = 0.0f;
    _215 = 0.0f;
  }
  _218 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_218) {
    _222 = t3.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _228 = (_222.x * 0.10000000149011612f) + _214;
    _229 = (_222.y * 0.10000000149011612f) + _215;
    _232 = UberPostBaseCBuffer_176.w * _222.z;
    _233 = _232 * _228;
    _234 = _232 * _229;
    _251 = (_228 + _80);
    _252 = (_229 + _81);
    _253 = ((_233 * UberPostBaseCBuffer_176.x) + _228);
    _254 = ((_234 * UberPostBaseCBuffer_176.x) + _229);
    _255 = ((_233 * UberPostBaseCBuffer_176.y) + _228);
    _256 = ((_234 * UberPostBaseCBuffer_176.y) + _229);
    _257 = ((_233 * UberPostBaseCBuffer_176.z) + _228);
    _258 = ((_234 * UberPostBaseCBuffer_176.z) + _229);
  } else {
    _251 = _80;
    _252 = _81;
    _253 = 0.0f;
    _254 = 0.0f;
    _255 = 0.0f;
    _256 = 0.0f;
    _257 = 0.0f;
    _258 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _266 = (_90 - UberPostBaseCBuffer_384.x) + -0.5f;
    _268 = (_91 - UberPostBaseCBuffer_384.y) + -0.5f;
    _272 = dot(float2(_266, _268), float2(_266, _268)) * -0.3333333432674408f;
    _274 = (_272 * _266) * UberPostBaseCBuffer_192.z;
    _276 = (_272 * _268) * UberPostBaseCBuffer_192.z;
    _278 = rsqrt(dot(float3(_274, _276, 9.999999747378752e-05f), float3(_274, _276, 9.999999747378752e-05f)));
    _285 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _290 = exp2(log2(sqrt((_274 * _274) + (_276 * _276)) / _285) * UberPostBaseCBuffer_384.z);
    _292 = ((_274 * _278) * _285) * _290;
    _294 = ((_276 * _278) * _285) * _290;
    _301 = (_253 + TEXCOORD.x) + (_292 * UberPostBaseCBuffer_400.w);
    _302 = (_254 + TEXCOORD.y) + (_294 * UberPostBaseCBuffer_400.w);
    _305 = !(UberPostBaseCBuffer_080.w == 0.0f);
    if (_305) {
      _310 = UberPostBaseCBuffer_080.z * (_301 + -0.5f);
      _311 = UberPostBaseCBuffer_080.z * (_302 + -0.5f);
      _321 = (_310 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _322 = (_311 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _326 = sqrt((_321 * _321) + (_322 * _322));
      _330 = UberPostBaseCBuffer_080.y * _326;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _342 = ((1.0f / _330) * tan(UberPostBaseCBuffer_080.x * _326));
      } else {
        _342 = ((UberPostBaseCBuffer_080.x * (1.0f / _326)) * atan(_330));
      }
      _343 = _342 + -1.0f;
      _349 = ((_310 + 0.5f) + (_343 * _321));
      _350 = ((_311 + 0.5f) + (_343 * _322));
    } else {
      _349 = _301;
      _350 = _302;
    }
    _353 = t0.SampleBias(s0, float2(_349, _350), (Globals_976), int2(0, 0));
    _361 = (_255 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _292);
    _362 = (_256 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _294);
    if (_305) {
      _367 = UberPostBaseCBuffer_080.z * (_361 + -0.5f);
      _368 = UberPostBaseCBuffer_080.z * (_362 + -0.5f);
      _378 = (_367 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _379 = (_368 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _383 = sqrt((_378 * _378) + (_379 * _379));
      _387 = UberPostBaseCBuffer_080.y * _383;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _399 = ((1.0f / _387) * tan(UberPostBaseCBuffer_080.x * _383));
      } else {
        _399 = ((UberPostBaseCBuffer_080.x * (1.0f / _383)) * atan(_387));
      }
      _400 = _399 + -1.0f;
      _406 = ((_367 + 0.5f) + (_400 * _378));
      _407 = ((_368 + 0.5f) + (_400 * _379));
    } else {
      _406 = _361;
      _407 = _362;
    }
    _408 = t0.SampleBias(s0, float2(_406, _407), (Globals_976), int2(0, 0));
    _416 = (_257 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _292);
    _417 = (_258 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _294);
    if (_305) {
      _422 = UberPostBaseCBuffer_080.z * (_416 + -0.5f);
      _423 = UberPostBaseCBuffer_080.z * (_417 + -0.5f);
      _433 = (_422 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _434 = (_423 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _438 = sqrt((_433 * _433) + (_434 * _434));
      _442 = UberPostBaseCBuffer_080.y * _438;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _454 = ((1.0f / _442) * tan(UberPostBaseCBuffer_080.x * _438));
      } else {
        _454 = ((UberPostBaseCBuffer_080.x * (1.0f / _438)) * atan(_442));
      }
      _455 = _454 + -1.0f;
      _461 = ((_422 + 0.5f) + (_455 * _433));
      _462 = ((_423 + 0.5f) + (_455 * _434));
    } else {
      _461 = _416;
      _462 = _417;
    }
    _463 = t0.SampleBias(s0, float2(_461, _462), (Globals_976), int2(0, 0));
    _659 = (((float4)(t0.SampleBias(s0, float2(_251, _252), (Globals_976), int2(0, 0)))).w);
    _660 = (((UberPostBaseCBuffer_416.x * _408.y) + (UberPostBaseCBuffer_400.x * _353.x)) + (UberPostBaseCBuffer_432.x * _463.z));
    _661 = (((UberPostBaseCBuffer_416.y * _408.y) + (UberPostBaseCBuffer_400.y * _353.x)) + (UberPostBaseCBuffer_432.y * _463.z));
    _662 = (((UberPostBaseCBuffer_416.z * _408.y) + (UberPostBaseCBuffer_400.z * _353.x)) + (UberPostBaseCBuffer_432.z * _463.z));
  } else {
    if (_218) {
      _495 = _253 + TEXCOORD.x;
      _496 = _254 + TEXCOORD.y;
      _499 = !(UberPostBaseCBuffer_080.w == 0.0f);
      if (_499) {
        _504 = UberPostBaseCBuffer_080.z * (_495 + -0.5f);
        _505 = UberPostBaseCBuffer_080.z * (_496 + -0.5f);
        _515 = (_504 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _516 = (_505 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _520 = sqrt((_515 * _515) + (_516 * _516));
        _524 = UberPostBaseCBuffer_080.y * _520;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _536 = ((1.0f / _524) * tan(UberPostBaseCBuffer_080.x * _520));
        } else {
          _536 = ((UberPostBaseCBuffer_080.x * (1.0f / _520)) * atan(_524));
        }
        _537 = _536 + -1.0f;
        _543 = ((_504 + 0.5f) + (_537 * _515));
        _544 = ((_505 + 0.5f) + (_537 * _516));
      } else {
        _543 = _495;
        _544 = _496;
      }
      _547 = _255 + TEXCOORD.x;
      _548 = _256 + TEXCOORD.y;
      if (_499) {
        _553 = UberPostBaseCBuffer_080.z * (_547 + -0.5f);
        _554 = UberPostBaseCBuffer_080.z * (_548 + -0.5f);
        _564 = (_553 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _565 = (_554 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _569 = sqrt((_564 * _564) + (_565 * _565));
        _573 = UberPostBaseCBuffer_080.y * _569;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _585 = ((1.0f / _573) * tan(UberPostBaseCBuffer_080.x * _569));
        } else {
          _585 = ((UberPostBaseCBuffer_080.x * (1.0f / _569)) * atan(_573));
        }
        _586 = _585 + -1.0f;
        _592 = ((_553 + 0.5f) + (_586 * _564));
        _593 = ((_554 + 0.5f) + (_586 * _565));
      } else {
        _592 = _547;
        _593 = _548;
      }
      _596 = _257 + TEXCOORD.x;
      _597 = _258 + TEXCOORD.y;
      if (_499) {
        _602 = UberPostBaseCBuffer_080.z * (_596 + -0.5f);
        _603 = UberPostBaseCBuffer_080.z * (_597 + -0.5f);
        _613 = (_602 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _614 = (_603 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _618 = sqrt((_613 * _613) + (_614 * _614));
        _622 = UberPostBaseCBuffer_080.y * _618;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _634 = ((1.0f / _622) * tan(UberPostBaseCBuffer_080.x * _618));
        } else {
          _634 = ((UberPostBaseCBuffer_080.x * (1.0f / _618)) * atan(_622));
        }
        _635 = _634 + -1.0f;
        _641 = ((_602 + 0.5f) + (_635 * _613));
        _642 = ((_603 + 0.5f) + (_635 * _614));
      } else {
        _641 = _596;
        _642 = _597;
      }
      _651 = (((float4)(t0.SampleBias(s0, float2(_543, _544), (Globals_976), int2(0, 0)))).x);
      _652 = (((float4)(t0.SampleBias(s0, float2(_592, _593), (Globals_976), int2(0, 0)))).y);
      _653 = (((float4)(t0.SampleBias(s0, float2(_641, _642), (Globals_976), int2(0, 0)))).z);
    } else {
      _646 = t0.SampleBias(s0, float2(_251, _252), (Globals_976), int2(0, 0));
      _651 = _646.x;
      _652 = _646.y;
      _653 = _646.z;
    }
    _659 = (((float4)(t0.SampleBias(s0, float2(_251, _252), (Globals_976), int2(0, 0)))).w);
    _660 = _651;
    _661 = _652;
    _662 = _653;
  }
  _669 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _669)) {
    _679 = fmod((((Globals_2208.y) * _252) * UberPostBaseCBuffer_448.x), 2.0f);
    _687 = (((select((_679 > 1.0f), (2.0f - _679), _679) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _251;
    _690 = (Globals_2208.w) * (Globals_2208.x);
    _711 = t4.SampleBias(s3, float2(_687, ((select(((frac((((_687 + abs(UberPostBaseCBuffer_464.y)) * _690) - (UberPostBaseCBuffer_464.y * _252)) / ((_690 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _252)), (Globals_976), int2(0, 0));
    _748 = ((((-0.699999988079071f - _711.x) + (exp2(log2(abs(_711.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_711.x < 0.30000001192092896f), 0.0f, 1.0f)) + _711.x) * UberPostBaseCBuffer_336.x;
    _749 = ((((-0.699999988079071f - _711.y) + (exp2(log2(abs(_711.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_711.y < 0.30000001192092896f), 0.0f, 1.0f)) + _711.y) * UberPostBaseCBuffer_336.x;
    _750 = ((((-0.699999988079071f - _711.z) + (exp2(log2(abs(_711.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_711.z < 0.30000001192092896f), 0.0f, 1.0f)) + _711.z) * UberPostBaseCBuffer_336.x;
    _751 = dot(float3(_660, _661, _662), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _754 = (UberPostBaseCBuffer_352.x > 0.5f);
    _767 = select(_754, ((((_748 * _751) - _748) * _659) + _748), _748);
    _768 = select(_754, ((((_749 * _751) - _749) * _659) + _749), _749);
    _769 = select(_754, ((((_750 * _751) - _750) * _659) + _750), _750);
    if (_669) {
      _780 = t5.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _251) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _252) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _794 = (((_780.x * _748) * UberPostBaseCBuffer_336.y) + _767);
      _795 = (((_780.y * _749) * UberPostBaseCBuffer_336.y) + _768);
      _796 = (((_780.z * _750) * UberPostBaseCBuffer_336.y) + _769);
    } else {
      _794 = _767;
      _795 = _768;
      _796 = _769;
    }
    _806 = (_794 + _660);
    _807 = (_795 + _661);
    _808 = (_796 + _662);
    _809 = saturate((((_795 + _794) + _796) * 0.33329999446868896f) + _659);
  } else {
    _806 = _660;
    _807 = _661;
    _808 = _662;
    _809 = _659;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _826 = abs(_252 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _828 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_251 - UberPostBaseCBuffer_112.x);
    _834 = exp2(log2(saturate(1.0f - dot(float2(_828, _826), float2(_828, _826)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _848 = (((_834 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _806);
    _849 = (((_834 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _807);
    _850 = (((_834 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _808);
  } else {
    _848 = _806;
    _849 = _807;
    _850 = _808;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_848, _849, _850);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t2, s0, UberPostBaseCBuffer_000.xyz);
    _899 = tonemapped.x;
    _900 = tonemapped.y;
    _901 = tonemapped.z;
  } else {
    _873 = saturate((log2((_850 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _874 = floor(_873);
    _880 = ((saturate((log2((_849 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _882 = (_874 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_848 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _883 = _873 - _874;
    _885 = t2.SampleLevel(s0, float2((_882 + UberPostBaseCBuffer_000.y), _880), 0.0f);
    _889 = t2.SampleLevel(s0, float2(_882, _880), 0.0f);
    _899 = ((_885.x - _889.x) * _883) + _889.x;
    _900 = ((_885.y - _889.y) * _883) + _889.y;
    _901 = ((_885.z - _889.z) * _883) + _889.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _921 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _925 = 1.0f - (sqrt(dot(float3(_899, _900, _901), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _939 = ((((UberPostBaseCBuffer_208.x * _899) * _921) * _925) + _899);
    _940 = ((((UberPostBaseCBuffer_208.x * _900) * _921) * _925) + _900);
    _941 = ((((UberPostBaseCBuffer_208.x * _901) * _921) * _925) + _901);
  } else {
    _939 = _899;
    _940 = _900;
    _941 = _901;
  }
  _945 = ((_105 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _93;
  _947 = atan(_945 / _92);
  _950 = (_92 < 0.0f);
  _951 = (_92 == 0.0f);
  _952 = (_945 >= 0.0f);
  _953 = (_945 < 0.0f);
  _27[0] = ((((Globals_2208.x) * (TEXCOORD.x + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _28[0] = TEXCOORD.y;
  _27[1] = select((_951 && _952), 2.0f, select((_951 && _953), -2.0f, (select((_950 && _953), (_947 + -3.1415927410125732f), select((_950 && _952), (_947 + 3.1415927410125732f), _947)) * 1.2732394933700562f)));
  _28[1] = (sqrt((_945 * _945) + (_92 * _92)) * 0.5f);
  _27[2] = TEXCOORD.x;
  _28[2] = TEXCOORD.y;
  _1010 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _1033 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _1058 = t9.SampleBias(s7, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _214) + (UberPostScreenEffectsBaseCBuffer_176.x * _89)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_27[min((uint)(_1033), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _215) + (UberPostScreenEffectsBaseCBuffer_176.y * _89)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_28[min((uint)(_1033), 2u)])))), (Globals_976), int2(0, 0));
  _33[0] = _1058.x;
  _33[1] = _1058.y;
  _33[2] = _1058.z;
  _33[3] = _1058.w;
  _1071 = ((_33[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _1079 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _1083 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _1098 = UberPostScreenEffectsBaseCBuffer_208.y * _1071;
  _1112 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1126 = UberPostScreenEffectsBaseCBuffer_208.z * _1071;
  _1142 = t8.SampleBias(s6, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _214) + (UberPostScreenEffectsBaseCBuffer_160.z * _89)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_27[min((uint)(_1112), 2u)]))) + _1126), (((((UberPostScreenEffectsRandomCBuffer_000.y + _215) + (UberPostScreenEffectsBaseCBuffer_160.w * _89)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_28[min((uint)(_1112), 2u)]))) + _1126)), (Globals_976), int2(0, 0));
  _32[0] = _1142.x;
  _32[1] = _1142.y;
  _32[2] = _1142.z;
  _32[3] = _1142.w;
  _1153 = _32[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1154 = t6.SampleBias(s4, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _89) + _214) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_27[min((uint)(_1083), 2u)]) * _1079) * UberPostScreenEffectsBaseCBuffer_032.x)) + _1098), (((((UberPostScreenEffectsBaseCBuffer_096.y * _89) + _215) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_28[min((uint)(_1083), 2u)]) * _1079) * UberPostScreenEffectsBaseCBuffer_032.y)) + _1098)), (Globals_976), int2(0, 0));
  _1162 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1153, 1.0f);
  _31[0] = _1154.x;
  _31[1] = _1154.y;
  _31[2] = _1154.z;
  _31[3] = _1154.w;
  _1173 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1176 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1162);
  _1185 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1186 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1187 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1199 = saturate((_1162 * (_31[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1206 = select(_1173, (((_1185 * _1176) + UberPostScreenEffectsBaseCBuffer_064.x) * _1154.x), ((_1185 * _1199) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1207 = select(_1173, (((_1186 * _1176) + UberPostScreenEffectsBaseCBuffer_064.y) * _1154.y), ((_1186 * _1199) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1208 = select(_1173, (((_1187 * _1176) + UberPostScreenEffectsBaseCBuffer_064.z) * _1154.z), ((_1187 * _1199) + UberPostScreenEffectsBaseCBuffer_064.z));
  _30[0] = _1154.x;
  _30[1] = _1154.y;
  _30[2] = _1154.z;
  _30[3] = _1154.w;
  _1217 = _30[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1218 = _1217 * _1153;
  _1234 = t7.SampleBias(s5, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _89) + _214) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_27[min((uint)(_1010), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _89) + _215) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_28[min((uint)(_1010), 2u)])))), (Globals_976), int2(0, 0));
  _29[0] = _1234.x;
  _29[1] = _1234.y;
  _29[2] = _1234.z;
  _29[3] = _1234.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1256 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1217));
  } else {
    _1256 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1218 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1218 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1258 = ((_29[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1256) * _145;
  _1262 = select((_1258 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1258;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1338 = ((_1262 * (_1206 - _939)) + _939);
    _1339 = ((_1262 * (_1207 - _940)) + _940);
    _1340 = ((_1262 * (_1208 - _941)) + _941);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1338 = ((_1262 * _1206) + _939);
      _1339 = ((_1262 * _1207) + _940);
      _1340 = ((_1262 * _1208) + _941);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1338 = (((_1262 * (_1206 + -1.0f)) + 1.0f) * _939);
        _1339 = (((_1262 * (_1207 + -1.0f)) + 1.0f) * _940);
        _1340 = (((_1262 * (_1208 + -1.0f)) + 1.0f) * _941);
      } else {
        _1304 = _1262 * (_1206 + -0.5f);
        _1305 = _1262 * (_1207 + -0.5f);
        _1306 = _1262 * (_1208 + -0.5f);
        _1338 = select((_939 < 0.5f), ((_939 * 2.0f) * (_1304 + 0.5f)), (1.0f - (((1.0f - _939) * 2.0f) * (0.5f - _1304))));
        _1339 = select((_940 < 0.5f), ((_940 * 2.0f) * (_1305 + 0.5f)), (1.0f - (((1.0f - _940) * 2.0f) * (0.5f - _1305))));
        _1340 = select((_941 < 0.5f), ((_941 * 2.0f) * (_1306 + 0.5f)), (1.0f - (((1.0f - _941) * 2.0f) * (0.5f - _1306))));
      }
    }
  }
  SV_Target.x = (_1338);
  SV_Target.y = (_1339);
  SV_Target.z = (_1340);
  SV_Target.w = _809;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
