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
  float _44;
  float _45;
  float _46;
  float _47;
  float _48;
  float _58;
  float _60;
  float _62;
  float _63;
  float _64;
  float _75;
  float _85;
  float _91;
  float _97;
  float _100;
  float _169;
  float _170;
  float _206;
  float _207;
  float _208;
  float _209;
  float _210;
  float _211;
  float _212;
  float _213;
  float _328;
  float _329;
  float _330;
  float _336;
  float _337;
  float _338;
  float _339;
  float _471;
  float _472;
  float _473;
  float _483;
  float _484;
  float _485;
  float _486;
  float _525;
  float _526;
  float _527;
  float _616;
  float _617;
  float _618;
  float _933;
  float _1015;
  float _1016;
  float _1017;
  float _1044;
  float _1045;
  float _1046;
  float _1175;
  float _1176;
  float _1177;
  float _108;
  float _110;
  bool _113;
  bool _114;
  bool _115;
  bool _116;
  bool _140;
  float4 _156;
  float _165;
  bool _173;
  float4 _177;
  float _183;
  float _184;
  float _187;
  float _188;
  float _189;
  float _223;
  float _225;
  float _229;
  float _231;
  float _233;
  float _235;
  float _242;
  float _247;
  float _249;
  float _251;
  float4 _260;
  float4 _270;
  float4 _280;
  float4 _323;
  bool _346;
  float _356;
  float _364;
  float _367;
  float4 _388;
  float _425;
  float _426;
  float _427;
  float _428;
  bool _431;
  float _444;
  float _445;
  float _446;
  float4 _457;
  float _503;
  float _505;
  float _511;
  float _550;
  float _551;
  float _557;
  float _559;
  float _560;
  float4 _562;
  float4 _566;
  float _576;
  float _577;
  float _578;
  float _598;
  float _602;
  float _622;
  float _624;
  bool _627;
  bool _628;
  bool _629;
  bool _630;
  int _687;
  int _710;
  float4 _735;
  float _748;
  float _756;
  int _760;
  float _775;
  int _789;
  float _803;
  float4 _819;
  float _830;
  float4 _831;
  float _839;
  bool _850;
  float _853;
  float _862;
  float _863;
  float _864;
  float _876;
  float _883;
  float _884;
  float _885;
  float _894;
  float _895;
  float4 _911;
  float _935;
  float _939;
  float _981;
  float _982;
  float _983;
  float _1022;
  float _1029;
  float _1030;
  float _1031;
  float4 _1039;
  float _1061;
  float _1062;
  float _1063;
  float _1071;
  float _1098;
  float _1099;
  float _1100;
  float4 _1106;
  float _1143;
  float _1144;
  float _1145;
  float _1164;
  float _30[3];
  float _31[3];
  float _32[4];
  float _33[4];
  float _34[4];
  float _35[4];
  float _36[4];
  _44 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _45 = TEXCOORD.x * 2.0f;
  _46 = TEXCOORD.y * 2.0f;
  _47 = _45 + -1.0f;
  _48 = _46 + -1.0f;
  _58 = (Globals_080.z) + -1.0f;
  _60 = (_58 * (Globals_080.y)) + -1.0f;
  _62 = (_60 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _63 = _62 * _48;
  _64 = _47 * _47;
  _75 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_47)), (_62 * (1.0f - abs(_48)))), (1.0f - (sqrt((_63 * _63) + _64) * 0.7070000171661377f)));
  _85 = saturate((_75 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _91 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_85 * _85) * (3.0f - (_85 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _75), 0.0f, 1.0f));
  _97 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _91), _91) * UberPostScreenEffectsBaseCBuffer_016.z;
  _100 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _97, 0.0f) * _97;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _108 = ((_60 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _48;
    _110 = atan(_108 / _47);
    _113 = (_47 < 0.0f);
    _114 = (_47 == 0.0f);
    _115 = (_108 >= 0.0f);
    _116 = (_108 < 0.0f);
    _140 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _156 = t12.SampleBias(s8, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _44)) + (select(_140, select((_114 && _115), 2.0f, select((_114 && _116), -2.0f, (select((_113 && _116), (_110 + -3.1415927410125732f), select((_113 && _115), (_110 + 3.1415927410125732f), _110)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _44)) + (select(_140, (sqrt((_108 * _108) + _64) * 0.6366197466850281f), ((((Globals_080.y) * (TEXCOORD.y + -0.5f)) * _58) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _165 = (_100 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _169 = (_165 * ((_156.x * 2.0f) + -1.0f));
    _170 = (_165 * ((_156.y * 2.0f) + -1.0f));
  } else {
    _169 = 0.0f;
    _170 = 0.0f;
  }
  _173 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_173) {
    _177 = t5.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _183 = (_177.x * 0.10000000149011612f) + _169;
    _184 = (_177.y * 0.10000000149011612f) + _170;
    _187 = UberPostBaseCBuffer_176.w * _177.z;
    _188 = _187 * _183;
    _189 = _187 * _184;
    _206 = (_183 + TEXCOORD.x);
    _207 = (_184 + TEXCOORD.y);
    _208 = ((_188 * UberPostBaseCBuffer_176.x) + _183);
    _209 = ((_189 * UberPostBaseCBuffer_176.x) + _184);
    _210 = ((_188 * UberPostBaseCBuffer_176.y) + _183);
    _211 = ((_189 * UberPostBaseCBuffer_176.y) + _184);
    _212 = ((_188 * UberPostBaseCBuffer_176.z) + _183);
    _213 = ((_189 * UberPostBaseCBuffer_176.z) + _184);
  } else {
    _206 = TEXCOORD.x;
    _207 = TEXCOORD.y;
    _208 = 0.0f;
    _209 = 0.0f;
    _210 = 0.0f;
    _211 = 0.0f;
    _212 = 0.0f;
    _213 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _223 = (_45 - UberPostBaseCBuffer_384.x) + -0.5f;
    _225 = (_46 - UberPostBaseCBuffer_384.y) + -0.5f;
    _229 = dot(float2(_223, _225), float2(_223, _225)) * -0.3333333432674408f;
    _231 = (_229 * _223) * UberPostBaseCBuffer_192.z;
    _233 = (_229 * _225) * UberPostBaseCBuffer_192.z;
    _235 = rsqrt(dot(float3(_231, _233, 9.999999747378752e-05f), float3(_231, _233, 9.999999747378752e-05f)));
    _242 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _247 = exp2(log2(sqrt((_231 * _231) + (_233 * _233)) / _242) * UberPostBaseCBuffer_384.z);
    _249 = ((_231 * _235) * _242) * _247;
    _251 = ((_233 * _235) * _242) * _247;
    _260 = t1.SampleBias(s0, float2(((_208 + TEXCOORD.x) + (_249 * UberPostBaseCBuffer_400.w)), ((_209 + TEXCOORD.y) + (_251 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _270 = t1.SampleBias(s0, float2(((_210 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _249)), ((_211 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _251))), (Globals_976), int2(0, 0));
    _280 = t1.SampleBias(s0, float2(((_212 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _249)), ((_213 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _251))), (Globals_976), int2(0, 0));
    _336 = (((float4)(t1.SampleBias(s0, float2(_206, _207), (Globals_976), int2(0, 0)))).w);
    _337 = (((UberPostBaseCBuffer_416.x * _270.y) + (UberPostBaseCBuffer_400.x * _260.x)) + (UberPostBaseCBuffer_432.x * _280.z));
    _338 = (((UberPostBaseCBuffer_416.y * _270.y) + (UberPostBaseCBuffer_400.y * _260.x)) + (UberPostBaseCBuffer_432.y * _280.z));
    _339 = (((UberPostBaseCBuffer_416.z * _270.y) + (UberPostBaseCBuffer_400.z * _260.x)) + (UberPostBaseCBuffer_432.z * _280.z));
  } else {
    if (_173) {
      _328 = (((float4)(t1.SampleBias(s0, float2((_208 + TEXCOORD.x), (_209 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).x);
      _329 = (((float4)(t1.SampleBias(s0, float2((_210 + TEXCOORD.x), (_211 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).y);
      _330 = (((float4)(t1.SampleBias(s0, float2((_212 + TEXCOORD.x), (_213 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).z);
    } else {
      _323 = t1.SampleBias(s0, float2(_206, _207), (Globals_976), int2(0, 0));
      _328 = _323.x;
      _329 = _323.y;
      _330 = _323.z;
    }
    _336 = (((float4)(t1.SampleBias(s0, float2(_206, _207), (Globals_976), int2(0, 0)))).w);
    _337 = _328;
    _338 = _329;
    _339 = _330;
  }
  _346 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _346)) {
    _356 = fmod((((Globals_2208.y) * _207) * UberPostBaseCBuffer_448.x), 2.0f);
    _364 = (((select((_356 > 1.0f), (2.0f - _356), _356) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _206;
    _367 = (Globals_2208.w) * (Globals_2208.x);
    _388 = t6.SampleBias(s3, float2(_364, ((select(((frac((((_364 + abs(UberPostBaseCBuffer_464.y)) * _367) - (UberPostBaseCBuffer_464.y * _207)) / ((_367 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _207)), (Globals_976), int2(0, 0));
    _425 = ((((-0.699999988079071f - _388.x) + (exp2(log2(abs(_388.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_388.x < 0.30000001192092896f), 0.0f, 1.0f)) + _388.x) * UberPostBaseCBuffer_336.x;
    _426 = ((((-0.699999988079071f - _388.y) + (exp2(log2(abs(_388.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_388.y < 0.30000001192092896f), 0.0f, 1.0f)) + _388.y) * UberPostBaseCBuffer_336.x;
    _427 = ((((-0.699999988079071f - _388.z) + (exp2(log2(abs(_388.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_388.z < 0.30000001192092896f), 0.0f, 1.0f)) + _388.z) * UberPostBaseCBuffer_336.x;
    _428 = dot(float3(_337, _338, _339), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _431 = (UberPostBaseCBuffer_352.x > 0.5f);
    _444 = select(_431, ((((_425 * _428) - _425) * _336) + _425), _425);
    _445 = select(_431, ((((_426 * _428) - _426) * _336) + _426), _426);
    _446 = select(_431, ((((_427 * _428) - _427) * _336) + _427), _427);
    if (_346) {
      _457 = t7.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _206) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _207) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _471 = (((_457.x * _425) * UberPostBaseCBuffer_336.y) + _444);
      _472 = (((_457.y * _426) * UberPostBaseCBuffer_336.y) + _445);
      _473 = (((_457.z * _427) * UberPostBaseCBuffer_336.y) + _446);
    } else {
      _471 = _444;
      _472 = _445;
      _473 = _446;
    }
    _483 = (_471 + _337);
    _484 = (_472 + _338);
    _485 = (_473 + _339);
    _486 = saturate((((_472 + _471) + _473) * 0.33329999446868896f) + _336);
  } else {
    _483 = _337;
    _484 = _338;
    _485 = _339;
    _486 = _336;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _503 = abs(_207 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _505 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_206 - UberPostBaseCBuffer_112.x);
    _511 = exp2(log2(saturate(1.0f - dot(float2(_505, _503), float2(_505, _503)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _525 = (((_511 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _483);
    _526 = (((_511 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _484);
    _527 = (((_511 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _485);
  } else {
    _525 = _483;
    _526 = _484;
    _527 = _485;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_525, _526, _527);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t3, s0, UberPostBaseCBuffer_000.xyz);
    _576 = tonemapped.x;
    _577 = tonemapped.y;
    _578 = tonemapped.z;
  } else {
    _550 = saturate((log2((_527 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _551 = floor(_550);
    _557 = ((saturate((log2((_526 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _559 = (_551 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_525 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _560 = _550 - _551;
    _562 = t3.SampleLevel(s0, float2((_559 + UberPostBaseCBuffer_000.y), _557), 0.0f);
    _566 = t3.SampleLevel(s0, float2(_559, _557), 0.0f);
    _576 = ((_562.x - _566.x) * _560) + _566.x;
    _577 = ((_562.y - _566.y) * _560) + _566.y;
    _578 = ((_562.z - _566.z) * _560) + _566.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _598 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _602 = 1.0f - (sqrt(dot(float3(_576, _577, _578), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _616 = ((((UberPostBaseCBuffer_208.x * _576) * _598) * _602) + _576);
    _617 = ((((UberPostBaseCBuffer_208.x * _577) * _598) * _602) + _577);
    _618 = ((((UberPostBaseCBuffer_208.x * _578) * _598) * _602) + _578);
  } else {
    _616 = _576;
    _617 = _577;
    _618 = _578;
  }
  _622 = ((_60 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _48;
  _624 = atan(_622 / _47);
  _627 = (_47 < 0.0f);
  _628 = (_47 == 0.0f);
  _629 = (_622 >= 0.0f);
  _630 = (_622 < 0.0f);
  _30[0] = ((((Globals_2208.x) * (TEXCOORD.x + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _31[0] = TEXCOORD.y;
  _30[1] = select((_628 && _629), 2.0f, select((_628 && _630), -2.0f, (select((_627 && _630), (_624 + -3.1415927410125732f), select((_627 && _629), (_624 + 3.1415927410125732f), _624)) * 1.2732394933700562f)));
  _31[1] = (sqrt((_622 * _622) + (_47 * _47)) * 0.5f);
  _30[2] = TEXCOORD.x;
  _31[2] = TEXCOORD.y;
  _687 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _710 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _735 = t11.SampleBias(s7, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _169) + (UberPostScreenEffectsBaseCBuffer_176.x * _44)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_30[min((uint)(_710), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _170) + (UberPostScreenEffectsBaseCBuffer_176.y * _44)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_31[min((uint)(_710), 2u)])))), (Globals_976), int2(0, 0));
  _36[0] = _735.x;
  _36[1] = _735.y;
  _36[2] = _735.z;
  _36[3] = _735.w;
  _748 = ((_36[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _756 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _760 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _775 = UberPostScreenEffectsBaseCBuffer_208.y * _748;
  _789 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _803 = UberPostScreenEffectsBaseCBuffer_208.z * _748;
  _819 = t10.SampleBias(s6, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _169) + (UberPostScreenEffectsBaseCBuffer_160.z * _44)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_30[min((uint)(_789), 2u)]))) + _803), (((((UberPostScreenEffectsRandomCBuffer_000.y + _170) + (UberPostScreenEffectsBaseCBuffer_160.w * _44)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_31[min((uint)(_789), 2u)]))) + _803)), (Globals_976), int2(0, 0));
  _35[0] = _819.x;
  _35[1] = _819.y;
  _35[2] = _819.z;
  _35[3] = _819.w;
  _830 = _35[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _831 = t8.SampleBias(s4, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _44) + _169) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_30[min((uint)(_760), 2u)]) * _756) * UberPostScreenEffectsBaseCBuffer_032.x)) + _775), (((((UberPostScreenEffectsBaseCBuffer_096.y * _44) + _170) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_31[min((uint)(_760), 2u)]) * _756) * UberPostScreenEffectsBaseCBuffer_032.y)) + _775)), (Globals_976), int2(0, 0));
  _839 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _830, 1.0f);
  _34[0] = _831.x;
  _34[1] = _831.y;
  _34[2] = _831.z;
  _34[3] = _831.w;
  _850 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _853 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _839);
  _862 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _863 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _864 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _876 = saturate((_839 * (_34[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _883 = select(_850, (((_862 * _853) + UberPostScreenEffectsBaseCBuffer_064.x) * _831.x), ((_862 * _876) + UberPostScreenEffectsBaseCBuffer_064.x));
  _884 = select(_850, (((_863 * _853) + UberPostScreenEffectsBaseCBuffer_064.y) * _831.y), ((_863 * _876) + UberPostScreenEffectsBaseCBuffer_064.y));
  _885 = select(_850, (((_864 * _853) + UberPostScreenEffectsBaseCBuffer_064.z) * _831.z), ((_864 * _876) + UberPostScreenEffectsBaseCBuffer_064.z));
  _33[0] = _831.x;
  _33[1] = _831.y;
  _33[2] = _831.z;
  _33[3] = _831.w;
  _894 = _33[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _895 = _894 * _830;
  _911 = t9.SampleBias(s5, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _44) + _169) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_30[min((uint)(_687), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _44) + _170) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_31[min((uint)(_687), 2u)])))), (Globals_976), int2(0, 0));
  _32[0] = _911.x;
  _32[1] = _911.y;
  _32[2] = _911.z;
  _32[3] = _911.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _933 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _894));
  } else {
    _933 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_895 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_895 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _935 = ((_32[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _933) * _100;
  _939 = select((_935 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _935;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1015 = ((_939 * (_883 - _616)) + _616);
    _1016 = ((_939 * (_884 - _617)) + _617);
    _1017 = ((_939 * (_885 - _618)) + _618);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1015 = ((_939 * _883) + _616);
      _1016 = ((_939 * _884) + _617);
      _1017 = ((_939 * _885) + _618);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1015 = (((_939 * (_883 + -1.0f)) + 1.0f) * _616);
        _1016 = (((_939 * (_884 + -1.0f)) + 1.0f) * _617);
        _1017 = (((_939 * (_885 + -1.0f)) + 1.0f) * _618);
      } else {
        _981 = _939 * (_883 + -0.5f);
        _982 = _939 * (_884 + -0.5f);
        _983 = _939 * (_885 + -0.5f);
        _1015 = select((_616 < 0.5f), ((_616 * 2.0f) * (_981 + 0.5f)), (1.0f - (((1.0f - _616) * 2.0f) * (0.5f - _981))));
        _1016 = select((_617 < 0.5f), ((_617 * 2.0f) * (_982 + 0.5f)), (1.0f - (((1.0f - _617) * 2.0f) * (0.5f - _982))));
        _1017 = select((_618 < 0.5f), ((_618 * 2.0f) * (_983 + 0.5f)), (1.0f - (((1.0f - _618) * 2.0f) * (0.5f - _983))));
      }
    }
  }
  _1022 = ((_1016 + _1015) + _1017) * 0.3333333432674408f;
  _1029 = ((_1015 - _1022) * UberPostFXColorCorrectionCBuffer_000.w) + _1022;
  _1030 = ((_1016 - _1022) * UberPostFXColorCorrectionCBuffer_000.w) + _1022;
  _1031 = ((_1017 - _1022) * UberPostFXColorCorrectionCBuffer_000.w) + _1022;
  if ((Globals_816[3].w) > 0.5f) {
    _1039 = t0.SampleBias(s0, float2(dot(float3(_1029, _1030, _1031), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _1044 = _1039.x;
    _1045 = _1039.y;
    _1046 = _1039.z;
  } else {
    _1044 = _1029;
    _1045 = _1030;
    _1046 = _1031;
  }
  _1061 = (((1.0f - _1044) - saturate(_1044)) * UberPostFXColorCorrectionCBuffer_016.w) + _1044;
  _1062 = (((1.0f - _1045) - saturate(_1045)) * UberPostFXColorCorrectionCBuffer_016.w) + _1045;
  _1063 = (((1.0f - _1046) - saturate(_1046)) * UberPostFXColorCorrectionCBuffer_016.w) + _1046;
  _1071 = saturate((saturate(dot(float3(_1061, _1062, _1063), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _1098 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _1061) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1071)) * UberPostFXColorCorrectionCBuffer_032.x) + _1061);
  // _1099 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _1062) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1071)) * UberPostFXColorCorrectionCBuffer_032.x) + _1062);
  // _1100 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _1063) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1071)) * UberPostFXColorCorrectionCBuffer_032.x) + _1063);
  _1098 = ((((UberPostFXColorCorrectionCBuffer_000.x - _1061) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1071)) * UberPostFXColorCorrectionCBuffer_032.x) + _1061);
  _1099 = ((((UberPostFXColorCorrectionCBuffer_000.y - _1062) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1071)) * UberPostFXColorCorrectionCBuffer_032.x) + _1062);
  _1100 = ((((UberPostFXColorCorrectionCBuffer_000.z - _1063) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1071)) * UberPostFXColorCorrectionCBuffer_032.x) + _1063);

  // HDR FX Mask Blend
  float3 result = float3(_1098, _1099, _1100);
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
  _1175 = result.x;
  _1176 = result.y;
  _1177 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _1106 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _1175 = min((_1106.x + _1098), 1.0f);
        _1176 = min((_1106.x + _1099), 1.0f);
        _1177 = min((_1106.x + _1100), 1.0f);
      } else {
        _1143 = select((_1098 > 0.5f), 0.0f, 1.0f);
        _1144 = select((_1099 > 0.5f), 0.0f, 1.0f);
        _1145 = select((_1100 > 0.5f), 0.0f, 1.0f);
        _1164 = 1.0f - _1106.x;
        _1175 = (((((1.0f - (((1.0f - _1098) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _1143)) + (((_1098 * 2.0f) * _1143) * UberPostFXColorCorrectionCBuffer_048.x)) * _1106.x) + (_1164 * _1098));
        _1176 = (((((1.0f - (((1.0f - _1099) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _1144)) + (((_1099 * 2.0f) * _1144) * UberPostFXColorCorrectionCBuffer_048.y)) * _1106.x) + (_1164 * _1099));
        _1177 = (((((1.0f - (((1.0f - _1100) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1145)) + (((_1100 * 2.0f) * _1145) * UberPostFXColorCorrectionCBuffer_048.z)) * _1106.x) + (_1164 * _1100));
      }
  } else {
    _1175 = _1098;
    _1176 = _1099;
    _1177 = _1100;
  }
  */

  SV_Target.x = _1175;
  SV_Target.y = _1176;
  SV_Target.z = _1177;
  SV_Target.w = _486;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
