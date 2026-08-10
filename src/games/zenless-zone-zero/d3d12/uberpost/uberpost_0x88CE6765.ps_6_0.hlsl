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
  float _49;
  float _50;
  float _51;
  float _52;
  float _53;
  float _63;
  float _65;
  float _67;
  float _68;
  float _69;
  float _80;
  float _90;
  float _96;
  float _102;
  float _105;
  float _174;
  float _175;
  float _211;
  float _212;
  float _213;
  float _214;
  float _215;
  float _216;
  float _217;
  float _218;
  float _317;
  float _318;
  float _319;
  float _348;
  float _349;
  float _350;
  float _457;
  float _458;
  float _459;
  float _645;
  float _646;
  float _647;
  float _657;
  float _658;
  float _659;
  float _660;
  float _699;
  float _700;
  float _701;
  float _737;
  float _738;
  float _739;
  float _1061;
  float _1143;
  float _1144;
  float _1145;
  float _113;
  float _115;
  bool _118;
  bool _119;
  bool _120;
  bool _121;
  bool _145;
  float4 _161;
  float _170;
  float4 _182;
  float _188;
  float _189;
  float _192;
  float _193;
  float _194;
  float _221;
  float _230;
  float _240;
  float _243;
  float _244;
  float _251;
  float _252;
  float _253;
  float _255;
  float _257;
  float _259;
  float _268;
  float _281;
  float _288;
  float _295;
  float _296;
  float _297;
  float4 _311;
  float4 _342;
  float _356;
  float _357;
  float _360;
  float _361;
  float _364;
  float _365;
  float4 _366;
  float _372;
  float _374;
  float _378;
  float _380;
  float _382;
  float _384;
  float _391;
  float _396;
  float _398;
  float _400;
  float4 _407;
  float4 _415;
  float4 _423;
  float4 _472;
  float _484;
  float _485;
  float _498;
  float _503;
  float _513;
  float _514;
  float _515;
  bool _522;
  float _532;
  float _540;
  float _543;
  float4 _562;
  float _599;
  float _600;
  float _601;
  float _602;
  bool _605;
  float _618;
  float _619;
  float _620;
  float4 _631;
  float _677;
  float _679;
  float _685;
  float _719;
  float _723;
  float _750;
  float _752;
  bool _755;
  bool _756;
  bool _757;
  bool _758;
  int _815;
  int _838;
  float4 _863;
  float _876;
  float _884;
  int _888;
  float _903;
  int _917;
  float _931;
  float4 _947;
  float _958;
  float4 _959;
  float _967;
  bool _978;
  float _981;
  float _990;
  float _991;
  float _992;
  float _1004;
  float _1011;
  float _1012;
  float _1013;
  float _1022;
  float _1023;
  float4 _1039;
  float _1063;
  float _1067;
  float _1109;
  float _1110;
  float _1111;
  float _31[3];
  float _32[3];
  float _33[4];
  float _34[4];
  float _35[4];
  float _36[4];
  float _37[4];
  _49 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _50 = TEXCOORD.x * 2.0f;
  _51 = TEXCOORD.y * 2.0f;
  _52 = _50 + -1.0f;
  _53 = _51 + -1.0f;
  _63 = (Globals_080.z) + -1.0f;
  _65 = (_63 * (Globals_080.y)) + -1.0f;
  _67 = (_65 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _68 = _67 * _53;
  _69 = _52 * _52;
  _80 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_52)), (_67 * (1.0f - abs(_53)))), (1.0f - (sqrt((_68 * _68) + _69) * 0.7070000171661377f)));
  _90 = saturate((_80 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _96 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_90 * _90) * (3.0f - (_90 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _80), 0.0f, 1.0f));
  _102 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _96), _96) * UberPostScreenEffectsBaseCBuffer_016.z;
  _105 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _102, 0.0f) * _102;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _113 = ((_65 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _53;
    _115 = atan(_113 / _52);
    _118 = (_52 < 0.0f);
    _119 = (_52 == 0.0f);
    _120 = (_113 >= 0.0f);
    _121 = (_113 < 0.0f);
    _145 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _161 = t12.SampleBias(s10, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _49)) + (select(_145, select((_119 && _120), 2.0f, select((_119 && _121), -2.0f, (select((_118 && _121), (_115 + -3.1415927410125732f), select((_118 && _120), (_115 + 3.1415927410125732f), _115)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _49)) + (select(_145, (sqrt((_113 * _113) + _69) * 0.6366197466850281f), ((((Globals_080.y) * (TEXCOORD.y + -0.5f)) * _63) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _170 = (_105 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _174 = (_170 * ((_161.x * 2.0f) + -1.0f));
    _175 = (_170 * ((_161.y * 2.0f) + -1.0f));
  } else {
    _174 = 0.0f;
    _175 = 0.0f;
  }
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _182 = t2.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _188 = (_182.x * 0.10000000149011612f) + _174;
    _189 = (_182.y * 0.10000000149011612f) + _175;
    _192 = UberPostBaseCBuffer_176.w * _182.z;
    _193 = _192 * _188;
    _194 = _192 * _189;
    _211 = (_188 + TEXCOORD.x);
    _212 = (_189 + TEXCOORD.y);
    _213 = ((_193 * UberPostBaseCBuffer_176.x) + _188);
    _214 = ((_194 * UberPostBaseCBuffer_176.x) + _189);
    _215 = ((_193 * UberPostBaseCBuffer_176.y) + _188);
    _216 = ((_194 * UberPostBaseCBuffer_176.y) + _189);
    _217 = ((_193 * UberPostBaseCBuffer_176.z) + _188);
    _218 = ((_194 * UberPostBaseCBuffer_176.z) + _189);
  } else {
    _211 = TEXCOORD.x;
    _212 = TEXCOORD.y;
    _213 = 0.0f;
    _214 = 0.0f;
    _215 = 0.0f;
    _216 = 0.0f;
    _217 = 0.0f;
    _218 = 0.0f;
  }
  _221 = frac(Globals_208[1].x);
  _230 = (((float4)(t3.SampleBias(s3, float2((_221 + (TEXCOORD.x * 5.0f)), (_221 + (TEXCOORD.y * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _240 = ((_230 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_230 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _243 = cos(UberPostBaseCBuffer_224.w);
  _244 = sin(UberPostBaseCBuffer_224.w);
  _251 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _240;
  _252 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _240;
  _253 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _240;
  _255 = _251 * _244;
  _257 = _252 * _244;
  _259 = _253 * _244;
  _268 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + TEXCOORD.y);
  _281 = frac(_221 * 1234.0f);
  _288 = (((_281 * _281) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _281) + UberPostBaseCBuffer_256.x;
  _295 = select((_288 < (((float4)(t3.SampleBias(s3, float2(0.5f, (_268 + _255)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _296 = select((_288 < (((float4)(t3.SampleBias(s3, float2(0.5f, (_268 + _257)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _297 = select((_288 < (((float4)(t3.SampleBias(s3, float2(0.5f, (_268 + _259)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _311 = t4.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * TEXCOORD.x) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * TEXCOORD.y) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _317 = (_311.x * _295);
    _318 = (_311.x * _296);
    _319 = (_311.x * _297);
  } else {
    _317 = _295;
    _318 = _296;
    _319 = _297;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _342 = t4.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * TEXCOORD.x) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * TEXCOORD.y) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _348 = (_342.y * _317);
    _349 = (_342.y * _318);
    _350 = (_342.y * _319);
  } else {
    _348 = _317;
    _349 = _318;
    _350 = _319;
  }
  _356 = (_213 + TEXCOORD.x) + (_251 * _243);
  _357 = (_214 + TEXCOORD.y) + _255;
  _360 = (_215 + TEXCOORD.x) + (_252 * _243);
  _361 = (_216 + TEXCOORD.y) + _257;
  _364 = (_217 + TEXCOORD.x) + (_253 * _243);
  _365 = (_218 + TEXCOORD.y) + _259;
  _366 = t0.SampleBias(s0, float2(_211, _212), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _372 = (_50 - UberPostBaseCBuffer_384.x) + -0.5f;
    _374 = (_51 - UberPostBaseCBuffer_384.y) + -0.5f;
    _378 = dot(float2(_372, _374), float2(_372, _374)) * -0.3333333432674408f;
    _380 = (_378 * _372) * UberPostBaseCBuffer_192.z;
    _382 = (_378 * _374) * UberPostBaseCBuffer_192.z;
    _384 = rsqrt(dot(float3(_380, _382, 9.999999747378752e-05f), float3(_380, _382, 9.999999747378752e-05f)));
    _391 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _396 = exp2(log2(sqrt((_380 * _380) + (_382 * _382)) / _391) * UberPostBaseCBuffer_384.z);
    _398 = ((_380 * _384) * _391) * _396;
    _400 = ((_382 * _384) * _391) * _396;
    _407 = t0.SampleBias(s0, float2((_356 + (_398 * UberPostBaseCBuffer_400.w)), (_357 + (_400 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _415 = t0.SampleBias(s0, float2((_360 + (UberPostBaseCBuffer_416.w * _398)), (_361 + (UberPostBaseCBuffer_416.w * _400))), (Globals_976), int2(0, 0));
    _423 = t0.SampleBias(s0, float2((_364 + (UberPostBaseCBuffer_432.w * _398)), (_365 + (UberPostBaseCBuffer_432.w * _400))), (Globals_976), int2(0, 0));
    _457 = (((UberPostBaseCBuffer_416.x * _415.y) + (UberPostBaseCBuffer_400.x * _407.x)) + (UberPostBaseCBuffer_432.x * _423.z));
    _458 = (((UberPostBaseCBuffer_416.y * _415.y) + (UberPostBaseCBuffer_400.y * _407.x)) + (UberPostBaseCBuffer_432.y * _423.z));
    _459 = (((UberPostBaseCBuffer_416.z * _415.y) + (UberPostBaseCBuffer_400.z * _407.x)) + (UberPostBaseCBuffer_432.z * _423.z));
  } else {
    _457 = (((float4)(t0.SampleBias(s0, float2(_356, _357), (Globals_976), int2(0, 0)))).x);
    _458 = (((float4)(t0.SampleBias(s0, float2(_360, _361), (Globals_976), int2(0, 0)))).y);
    _459 = (((float4)(t0.SampleBias(s0, float2(_364, _365), (Globals_976), int2(0, 0)))).z);
  }
  _472 = t7.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * TEXCOORD.x) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * TEXCOORD.y) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _484 = frac((Globals_208[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  _485 = 0.4000000059604645f - _484;
  _498 = (UberPostBaseCBuffer_368.w * max(((select((_485 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_484 + 0.05000000074505806f) * 10.0f) - _485)) + _485), 0.0f)) + 1.0f;
  _503 = 1.0f - UberPostBaseCBuffer_368.z;
  _513 = (((((_472.x * 12.0f) * _498) * _503) + UberPostBaseCBuffer_368.z) * _457) + _348;
  _514 = (((((_472.y * 12.0f) * _498) * _503) + UberPostBaseCBuffer_368.z) * _458) + _349;
  _515 = (((((_472.z * 12.0f) * _498) * _503) + UberPostBaseCBuffer_368.z) * _459) + _350;
  _522 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _522)) {
    _532 = fmod((((Globals_2208.y) * _212) * UberPostBaseCBuffer_448.x), 2.0f);
    _540 = (((select((_532 > 1.0f), (2.0f - _532), _532) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _211;
    _543 = (Globals_2208.w) * (Globals_2208.x);
    _562 = t5.SampleBias(s5, float2(_540, ((select(((frac((((_540 + abs(UberPostBaseCBuffer_464.y)) * _543) - (UberPostBaseCBuffer_464.y * _212)) / ((_543 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _212)), (Globals_976), int2(0, 0));
    _599 = ((((-0.699999988079071f - _562.x) + (exp2(log2(abs(_562.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_562.x < 0.30000001192092896f), 0.0f, 1.0f)) + _562.x) * UberPostBaseCBuffer_336.x;
    _600 = ((((-0.699999988079071f - _562.y) + (exp2(log2(abs(_562.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_562.y < 0.30000001192092896f), 0.0f, 1.0f)) + _562.y) * UberPostBaseCBuffer_336.x;
    _601 = ((((-0.699999988079071f - _562.z) + (exp2(log2(abs(_562.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_562.z < 0.30000001192092896f), 0.0f, 1.0f)) + _562.z) * UberPostBaseCBuffer_336.x;
    _602 = dot(float3(_513, _514, _515), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _605 = (UberPostBaseCBuffer_352.x > 0.5f);
    _618 = select(_605, ((((_599 * _602) - _599) * _366.w) + _599), _599);
    _619 = select(_605, ((((_600 * _602) - _600) * _366.w) + _600), _600);
    _620 = select(_605, ((((_601 * _602) - _601) * _366.w) + _601), _601);
    if (_522) {
      _631 = t6.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _211) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _212) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _645 = (((_631.x * _599) * UberPostBaseCBuffer_336.y) + _618);
      _646 = (((_631.y * _600) * UberPostBaseCBuffer_336.y) + _619);
      _647 = (((_631.z * _601) * UberPostBaseCBuffer_336.y) + _620);
    } else {
      _645 = _618;
      _646 = _619;
      _647 = _620;
    }
    _657 = (_645 + _513);
    _658 = (_646 + _514);
    _659 = (_647 + _515);
    _660 = saturate((((_646 + _645) + _647) * 0.33329999446868896f) + _366.w);
  } else {
    _657 = _513;
    _658 = _514;
    _659 = _515;
    _660 = _366.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _677 = abs(_212 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _679 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_211 - UberPostBaseCBuffer_112.x);
    _685 = exp2(log2(saturate(1.0f - dot(float2(_679, _677), float2(_679, _677)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _699 = (((_685 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _657);
    _700 = (((_685 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _658);
    _701 = (((_685 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _659);
  } else {
    _699 = _657;
    _700 = _658;
    _701 = _659;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_699, _700, _701);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _699 = tonemapped.x;
    _700 = tonemapped.y;
    _701 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _719 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _723 = 1.0f - (sqrt(dot(float3(_699, _700, _701), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _737 = ((((UberPostBaseCBuffer_208.x * _699) * _719) * _723) + _699);
    _738 = ((((UberPostBaseCBuffer_208.x * _700) * _719) * _723) + _700);
    _739 = ((((UberPostBaseCBuffer_208.x * _701) * _719) * _723) + _701);
  } else {
    _737 = _699;
    _738 = _700;
    _739 = _701;
  }
  _750 = ((((((Globals_080.z) + -1.0f) * (Globals_080.y)) + -1.0f) * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _53;
  _752 = atan(_750 / _52);
  _755 = (_52 < 0.0f);
  _756 = (_52 == 0.0f);
  _757 = (_750 >= 0.0f);
  _758 = (_750 < 0.0f);
  _31[0] = ((((Globals_2208.x) * (TEXCOORD.x + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _32[0] = TEXCOORD.y;
  _31[1] = select((_756 && _757), 2.0f, select((_756 && _758), -2.0f, (select((_755 && _758), (_752 + -3.1415927410125732f), select((_755 && _757), (_752 + 3.1415927410125732f), _752)) * 1.2732394933700562f)));
  _32[1] = (sqrt((_750 * _750) + (_52 * _52)) * 0.5f);
  _31[2] = TEXCOORD.x;
  _32[2] = TEXCOORD.y;
  _815 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _838 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _863 = t11.SampleBias(s9, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _174) + (UberPostScreenEffectsBaseCBuffer_176.x * _49)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_31[min((uint)(_838), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _175) + (UberPostScreenEffectsBaseCBuffer_176.y * _49)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_32[min((uint)(_838), 2u)])))), (Globals_976), int2(0, 0));
  _37[0] = _863.x;
  _37[1] = _863.y;
  _37[2] = _863.z;
  _37[3] = _863.w;
  _876 = ((_37[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _884 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _888 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _903 = UberPostScreenEffectsBaseCBuffer_208.y * _876;
  _917 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _931 = UberPostScreenEffectsBaseCBuffer_208.z * _876;
  _947 = t10.SampleBias(s8, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _174) + (UberPostScreenEffectsBaseCBuffer_160.z * _49)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_31[min((uint)(_917), 2u)]))) + _931), (((((UberPostScreenEffectsRandomCBuffer_000.y + _175) + (UberPostScreenEffectsBaseCBuffer_160.w * _49)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_32[min((uint)(_917), 2u)]))) + _931)), (Globals_976), int2(0, 0));
  _36[0] = _947.x;
  _36[1] = _947.y;
  _36[2] = _947.z;
  _36[3] = _947.w;
  _958 = _36[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _959 = t8.SampleBias(s6, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _49) + _174) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_31[min((uint)(_888), 2u)]) * _884) * UberPostScreenEffectsBaseCBuffer_032.x)) + _903), (((((UberPostScreenEffectsBaseCBuffer_096.y * _49) + _175) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_32[min((uint)(_888), 2u)]) * _884) * UberPostScreenEffectsBaseCBuffer_032.y)) + _903)), (Globals_976), int2(0, 0));
  _967 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _958, 1.0f);
  _35[0] = _959.x;
  _35[1] = _959.y;
  _35[2] = _959.z;
  _35[3] = _959.w;
  _978 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _981 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _967);
  _990 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _991 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _992 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1004 = saturate((_967 * (_35[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1011 = select(_978, (((_990 * _981) + UberPostScreenEffectsBaseCBuffer_064.x) * _959.x), ((_990 * _1004) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1012 = select(_978, (((_991 * _981) + UberPostScreenEffectsBaseCBuffer_064.y) * _959.y), ((_991 * _1004) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1013 = select(_978, (((_992 * _981) + UberPostScreenEffectsBaseCBuffer_064.z) * _959.z), ((_992 * _1004) + UberPostScreenEffectsBaseCBuffer_064.z));
  _34[0] = _959.x;
  _34[1] = _959.y;
  _34[2] = _959.z;
  _34[3] = _959.w;
  _1022 = _34[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1023 = _1022 * _958;
  _1039 = t9.SampleBias(s7, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _49) + _174) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_31[min((uint)(_815), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _49) + _175) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_32[min((uint)(_815), 2u)])))), (Globals_976), int2(0, 0));
  _33[0] = _1039.x;
  _33[1] = _1039.y;
  _33[2] = _1039.z;
  _33[3] = _1039.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1061 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1022));
  } else {
    _1061 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1023 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1023 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1063 = ((_33[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1061) * _105;
  _1067 = select((_1063 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1063;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1143 = ((_1067 * (_1011 - _737)) + _737);
    _1144 = ((_1067 * (_1012 - _738)) + _738);
    _1145 = ((_1067 * (_1013 - _739)) + _739);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1143 = ((_1067 * _1011) + _737);
      _1144 = ((_1067 * _1012) + _738);
      _1145 = ((_1067 * _1013) + _739);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1143 = (((_1067 * (_1011 + -1.0f)) + 1.0f) * _737);
        _1144 = (((_1067 * (_1012 + -1.0f)) + 1.0f) * _738);
        _1145 = (((_1067 * (_1013 + -1.0f)) + 1.0f) * _739);
      } else {
        _1109 = _1067 * (_1011 + -0.5f);
        _1110 = _1067 * (_1012 + -0.5f);
        _1111 = _1067 * (_1013 + -0.5f);
        _1143 = select((_737 < 0.5f), ((_737 * 2.0f) * (_1109 + 0.5f)), (1.0f - (((1.0f - _737) * 2.0f) * (0.5f - _1109))));
        _1144 = select((_738 < 0.5f), ((_738 * 2.0f) * (_1110 + 0.5f)), (1.0f - (((1.0f - _738) * 2.0f) * (0.5f - _1110))));
        _1145 = select((_739 < 0.5f), ((_739 * 2.0f) * (_1111 + 0.5f)), (1.0f - (((1.0f - _739) * 2.0f) * (0.5f - _1111))));
      }
    }
  }
  SV_Target.x = (_1143);
  SV_Target.y = (_1144);
  SV_Target.z = (_1145);
  SV_Target.w = _660;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
