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
  float _72;
  float _79;
  float _80;
  float _213;
  float _214;
  float _250;
  float _251;
  float _252;
  float _253;
  float _254;
  float _255;
  float _256;
  float _257;
  float _341;
  float _348;
  float _349;
  float _398;
  float _405;
  float _406;
  float _453;
  float _460;
  float _461;
  float _535;
  float _542;
  float _543;
  float _584;
  float _591;
  float _592;
  float _633;
  float _640;
  float _641;
  float _650;
  float _651;
  float _652;
  float _658;
  float _659;
  float _660;
  float _661;
  float _793;
  float _794;
  float _795;
  float _805;
  float _806;
  float _807;
  float _808;
  float _847;
  float _848;
  float _849;
  float _887;
  float _888;
  float _889;
  float _1204;
  float _1286;
  float _1287;
  float _1288;
  float _40;
  float _41;
  float _51;
  float _52;
  float _56;
  float _60;
  float _73;
  float _88;
  float _89;
  float _90;
  float _91;
  float _92;
  float _102;
  float _104;
  float _106;
  float _107;
  float _108;
  float _119;
  float _129;
  float _135;
  float _141;
  float _144;
  float _152;
  float _154;
  bool _157;
  bool _158;
  bool _159;
  bool _160;
  bool _184;
  float4 _200;
  float _209;
  bool _217;
  float4 _221;
  float _227;
  float _228;
  float _231;
  float _232;
  float _233;
  float _265;
  float _267;
  float _271;
  float _273;
  float _275;
  float _277;
  float _284;
  float _289;
  float _291;
  float _293;
  float _300;
  float _301;
  bool _304;
  float _309;
  float _310;
  float _320;
  float _321;
  float _325;
  float _329;
  float _342;
  float4 _352;
  float _360;
  float _361;
  float _366;
  float _367;
  float _377;
  float _378;
  float _382;
  float _386;
  float _399;
  float4 _407;
  float _415;
  float _416;
  float _421;
  float _422;
  float _432;
  float _433;
  float _437;
  float _441;
  float _454;
  float4 _462;
  float _494;
  float _495;
  bool _498;
  float _503;
  float _504;
  float _514;
  float _515;
  float _519;
  float _523;
  float _536;
  float _546;
  float _547;
  float _552;
  float _553;
  float _563;
  float _564;
  float _568;
  float _572;
  float _585;
  float _595;
  float _596;
  float _601;
  float _602;
  float _612;
  float _613;
  float _617;
  float _621;
  float _634;
  float4 _645;
  bool _668;
  float _678;
  float _686;
  float _689;
  float4 _710;
  float _747;
  float _748;
  float _749;
  float _750;
  bool _753;
  float _766;
  float _767;
  float _768;
  float4 _779;
  float _825;
  float _827;
  float _833;
  float _869;
  float _873;
  float _893;
  float _895;
  bool _898;
  bool _899;
  bool _900;
  bool _901;
  int _958;
  int _981;
  float4 _1006;
  float _1019;
  float _1027;
  int _1031;
  float _1046;
  int _1060;
  float _1074;
  float4 _1090;
  float _1101;
  float4 _1102;
  float _1110;
  bool _1121;
  float _1124;
  float _1133;
  float _1134;
  float _1135;
  float _1147;
  float _1154;
  float _1155;
  float _1156;
  float _1165;
  float _1166;
  float4 _1182;
  float _1206;
  float _1210;
  float _1252;
  float _1253;
  float _1254;
  float _26[3];
  float _27[3];
  float _28[4];
  float _29[4];
  float _30[4];
  float _31[4];
  float _32[4];
  if (!(UberPostBaseCBuffer_080.w == 0.0f)) {
    _40 = UberPostBaseCBuffer_080.z * (TEXCOORD.x + -0.5f);
    _41 = UberPostBaseCBuffer_080.z * (TEXCOORD.y + -0.5f);
    _51 = (_40 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
    _52 = (_41 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
    _56 = sqrt((_51 * _51) + (_52 * _52));
    _60 = UberPostBaseCBuffer_080.y * _56;
    [branch]
    if (UberPostBaseCBuffer_080.w > 0.0f) {
      _72 = ((1.0f / _60) * tan(UberPostBaseCBuffer_080.x * _56));
    } else {
      _72 = ((UberPostBaseCBuffer_080.x * (1.0f / _56)) * atan(_60));
    }
    _73 = _72 + -1.0f;
    _79 = ((_40 + 0.5f) + (_73 * _51));
    _80 = ((_41 + 0.5f) + (_73 * _52));
  } else {
    _79 = TEXCOORD.x;
    _80 = TEXCOORD.y;
  }
  _88 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _89 = TEXCOORD.x * 2.0f;
  _90 = TEXCOORD.y * 2.0f;
  _91 = _89 + -1.0f;
  _92 = _90 + -1.0f;
  _102 = (Globals_080.z) + -1.0f;
  _104 = (_102 * (Globals_080.y)) + -1.0f;
  _106 = (_104 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _107 = _106 * _92;
  _108 = _91 * _91;
  _119 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_91)), (_106 * (1.0f - abs(_92)))), (1.0f - (sqrt((_107 * _107) + _108) * 0.7070000171661377f)));
  _129 = saturate((_119 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _135 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_129 * _129) * (3.0f - (_129 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _119), 0.0f, 1.0f));
  _141 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _135), _135) * UberPostScreenEffectsBaseCBuffer_016.z;
  _144 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _141, 0.0f) * _141;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _152 = ((_104 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _92;
    _154 = atan(_152 / _91);
    _157 = (_91 < 0.0f);
    _158 = (_91 == 0.0f);
    _159 = (_152 >= 0.0f);
    _160 = (_152 < 0.0f);
    _184 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _200 = t9.SampleBias(s8, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _88)) + (select(_184, select((_158 && _159), 2.0f, select((_158 && _160), -2.0f, (select((_157 && _160), (_154 + -3.1415927410125732f), select((_157 && _159), (_154 + 3.1415927410125732f), _154)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _88)) + (select(_184, (sqrt((_152 * _152) + _108) * 0.6366197466850281f), ((((Globals_080.y) * (TEXCOORD.y + -0.5f)) * _102) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _209 = (_144 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _213 = (_209 * ((_200.x * 2.0f) + -1.0f));
    _214 = (_209 * ((_200.y * 2.0f) + -1.0f));
  } else {
    _213 = 0.0f;
    _214 = 0.0f;
  }
  _217 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_217) {
    _221 = t2.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _227 = (_221.x * 0.10000000149011612f) + _213;
    _228 = (_221.y * 0.10000000149011612f) + _214;
    _231 = UberPostBaseCBuffer_176.w * _221.z;
    _232 = _231 * _227;
    _233 = _231 * _228;
    _250 = (_227 + _79);
    _251 = (_228 + _80);
    _252 = ((_232 * UberPostBaseCBuffer_176.x) + _227);
    _253 = ((_233 * UberPostBaseCBuffer_176.x) + _228);
    _254 = ((_232 * UberPostBaseCBuffer_176.y) + _227);
    _255 = ((_233 * UberPostBaseCBuffer_176.y) + _228);
    _256 = ((_232 * UberPostBaseCBuffer_176.z) + _227);
    _257 = ((_233 * UberPostBaseCBuffer_176.z) + _228);
  } else {
    _250 = _79;
    _251 = _80;
    _252 = 0.0f;
    _253 = 0.0f;
    _254 = 0.0f;
    _255 = 0.0f;
    _256 = 0.0f;
    _257 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _265 = (_89 - UberPostBaseCBuffer_384.x) + -0.5f;
    _267 = (_90 - UberPostBaseCBuffer_384.y) + -0.5f;
    _271 = dot(float2(_265, _267), float2(_265, _267)) * -0.3333333432674408f;
    _273 = (_271 * _265) * UberPostBaseCBuffer_192.z;
    _275 = (_271 * _267) * UberPostBaseCBuffer_192.z;
    _277 = rsqrt(dot(float3(_273, _275, 9.999999747378752e-05f), float3(_273, _275, 9.999999747378752e-05f)));
    _284 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _289 = exp2(log2(sqrt((_273 * _273) + (_275 * _275)) / _284) * UberPostBaseCBuffer_384.z);
    _291 = ((_273 * _277) * _284) * _289;
    _293 = ((_275 * _277) * _284) * _289;
    _300 = (_252 + TEXCOORD.x) + (_291 * UberPostBaseCBuffer_400.w);
    _301 = (_253 + TEXCOORD.y) + (_293 * UberPostBaseCBuffer_400.w);
    _304 = !(UberPostBaseCBuffer_080.w == 0.0f);
    if (_304) {
      _309 = UberPostBaseCBuffer_080.z * (_300 + -0.5f);
      _310 = UberPostBaseCBuffer_080.z * (_301 + -0.5f);
      _320 = (_309 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _321 = (_310 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _325 = sqrt((_320 * _320) + (_321 * _321));
      _329 = UberPostBaseCBuffer_080.y * _325;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _341 = ((1.0f / _329) * tan(UberPostBaseCBuffer_080.x * _325));
      } else {
        _341 = ((UberPostBaseCBuffer_080.x * (1.0f / _325)) * atan(_329));
      }
      _342 = _341 + -1.0f;
      _348 = ((_309 + 0.5f) + (_342 * _320));
      _349 = ((_310 + 0.5f) + (_342 * _321));
    } else {
      _348 = _300;
      _349 = _301;
    }
    _352 = t0.SampleBias(s0, float2(_348, _349), (Globals_976), int2(0, 0));
    _360 = (_254 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _291);
    _361 = (_255 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _293);
    if (_304) {
      _366 = UberPostBaseCBuffer_080.z * (_360 + -0.5f);
      _367 = UberPostBaseCBuffer_080.z * (_361 + -0.5f);
      _377 = (_366 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _378 = (_367 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _382 = sqrt((_377 * _377) + (_378 * _378));
      _386 = UberPostBaseCBuffer_080.y * _382;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _398 = ((1.0f / _386) * tan(UberPostBaseCBuffer_080.x * _382));
      } else {
        _398 = ((UberPostBaseCBuffer_080.x * (1.0f / _382)) * atan(_386));
      }
      _399 = _398 + -1.0f;
      _405 = ((_366 + 0.5f) + (_399 * _377));
      _406 = ((_367 + 0.5f) + (_399 * _378));
    } else {
      _405 = _360;
      _406 = _361;
    }
    _407 = t0.SampleBias(s0, float2(_405, _406), (Globals_976), int2(0, 0));
    _415 = (_256 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _291);
    _416 = (_257 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _293);
    if (_304) {
      _421 = UberPostBaseCBuffer_080.z * (_415 + -0.5f);
      _422 = UberPostBaseCBuffer_080.z * (_416 + -0.5f);
      _432 = (_421 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
      _433 = (_422 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
      _437 = sqrt((_432 * _432) + (_433 * _433));
      _441 = UberPostBaseCBuffer_080.y * _437;
      [branch]
      if (UberPostBaseCBuffer_080.w > 0.0f) {
        _453 = ((1.0f / _441) * tan(UberPostBaseCBuffer_080.x * _437));
      } else {
        _453 = ((UberPostBaseCBuffer_080.x * (1.0f / _437)) * atan(_441));
      }
      _454 = _453 + -1.0f;
      _460 = ((_421 + 0.5f) + (_454 * _432));
      _461 = ((_422 + 0.5f) + (_454 * _433));
    } else {
      _460 = _415;
      _461 = _416;
    }
    _462 = t0.SampleBias(s0, float2(_460, _461), (Globals_976), int2(0, 0));
    _658 = (((float4)(t0.SampleBias(s0, float2(_250, _251), (Globals_976), int2(0, 0)))).w);
    _659 = (((UberPostBaseCBuffer_416.x * _407.y) + (UberPostBaseCBuffer_400.x * _352.x)) + (UberPostBaseCBuffer_432.x * _462.z));
    _660 = (((UberPostBaseCBuffer_416.y * _407.y) + (UberPostBaseCBuffer_400.y * _352.x)) + (UberPostBaseCBuffer_432.y * _462.z));
    _661 = (((UberPostBaseCBuffer_416.z * _407.y) + (UberPostBaseCBuffer_400.z * _352.x)) + (UberPostBaseCBuffer_432.z * _462.z));
  } else {
    if (_217) {
      _494 = _252 + TEXCOORD.x;
      _495 = _253 + TEXCOORD.y;
      _498 = !(UberPostBaseCBuffer_080.w == 0.0f);
      if (_498) {
        _503 = UberPostBaseCBuffer_080.z * (_494 + -0.5f);
        _504 = UberPostBaseCBuffer_080.z * (_495 + -0.5f);
        _514 = (_503 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _515 = (_504 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _519 = sqrt((_514 * _514) + (_515 * _515));
        _523 = UberPostBaseCBuffer_080.y * _519;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _535 = ((1.0f / _523) * tan(UberPostBaseCBuffer_080.x * _519));
        } else {
          _535 = ((UberPostBaseCBuffer_080.x * (1.0f / _519)) * atan(_523));
        }
        _536 = _535 + -1.0f;
        _542 = ((_503 + 0.5f) + (_536 * _514));
        _543 = ((_504 + 0.5f) + (_536 * _515));
      } else {
        _542 = _494;
        _543 = _495;
      }
      _546 = _254 + TEXCOORD.x;
      _547 = _255 + TEXCOORD.y;
      if (_498) {
        _552 = UberPostBaseCBuffer_080.z * (_546 + -0.5f);
        _553 = UberPostBaseCBuffer_080.z * (_547 + -0.5f);
        _563 = (_552 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _564 = (_553 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _568 = sqrt((_563 * _563) + (_564 * _564));
        _572 = UberPostBaseCBuffer_080.y * _568;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _584 = ((1.0f / _572) * tan(UberPostBaseCBuffer_080.x * _568));
        } else {
          _584 = ((UberPostBaseCBuffer_080.x * (1.0f / _568)) * atan(_572));
        }
        _585 = _584 + -1.0f;
        _591 = ((_552 + 0.5f) + (_585 * _563));
        _592 = ((_553 + 0.5f) + (_585 * _564));
      } else {
        _591 = _546;
        _592 = _547;
      }
      _595 = _256 + TEXCOORD.x;
      _596 = _257 + TEXCOORD.y;
      if (_498) {
        _601 = UberPostBaseCBuffer_080.z * (_595 + -0.5f);
        _602 = UberPostBaseCBuffer_080.z * (_596 + -0.5f);
        _612 = (_601 - UberPostBaseCBuffer_064.x) * UberPostBaseCBuffer_064.z;
        _613 = (_602 - UberPostBaseCBuffer_064.y) * UberPostBaseCBuffer_064.w;
        _617 = sqrt((_612 * _612) + (_613 * _613));
        _621 = UberPostBaseCBuffer_080.y * _617;
        [branch]
        if (UberPostBaseCBuffer_080.w > 0.0f) {
          _633 = ((1.0f / _621) * tan(UberPostBaseCBuffer_080.x * _617));
        } else {
          _633 = ((UberPostBaseCBuffer_080.x * (1.0f / _617)) * atan(_621));
        }
        _634 = _633 + -1.0f;
        _640 = ((_601 + 0.5f) + (_634 * _612));
        _641 = ((_602 + 0.5f) + (_634 * _613));
      } else {
        _640 = _595;
        _641 = _596;
      }
      _650 = (((float4)(t0.SampleBias(s0, float2(_542, _543), (Globals_976), int2(0, 0)))).x);
      _651 = (((float4)(t0.SampleBias(s0, float2(_591, _592), (Globals_976), int2(0, 0)))).y);
      _652 = (((float4)(t0.SampleBias(s0, float2(_640, _641), (Globals_976), int2(0, 0)))).z);
    } else {
      _645 = t0.SampleBias(s0, float2(_250, _251), (Globals_976), int2(0, 0));
      _650 = _645.x;
      _651 = _645.y;
      _652 = _645.z;
    }
    _658 = (((float4)(t0.SampleBias(s0, float2(_250, _251), (Globals_976), int2(0, 0)))).w);
    _659 = _650;
    _660 = _651;
    _661 = _652;
  }
  _668 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _668)) {
    _678 = fmod((((Globals_2208.y) * _251) * UberPostBaseCBuffer_448.x), 2.0f);
    _686 = (((select((_678 > 1.0f), (2.0f - _678), _678) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _250;
    _689 = (Globals_2208.w) * (Globals_2208.x);
    _710 = t3.SampleBias(s3, float2(_686, ((select(((frac((((_686 + abs(UberPostBaseCBuffer_464.y)) * _689) - (UberPostBaseCBuffer_464.y * _251)) / ((_689 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _251)), (Globals_976), int2(0, 0));
    _747 = ((((-0.699999988079071f - _710.x) + (exp2(log2(abs(_710.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_710.x < 0.30000001192092896f), 0.0f, 1.0f)) + _710.x) * UberPostBaseCBuffer_336.x;
    _748 = ((((-0.699999988079071f - _710.y) + (exp2(log2(abs(_710.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_710.y < 0.30000001192092896f), 0.0f, 1.0f)) + _710.y) * UberPostBaseCBuffer_336.x;
    _749 = ((((-0.699999988079071f - _710.z) + (exp2(log2(abs(_710.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_710.z < 0.30000001192092896f), 0.0f, 1.0f)) + _710.z) * UberPostBaseCBuffer_336.x;
    _750 = dot(float3(_659, _660, _661), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _753 = (UberPostBaseCBuffer_352.x > 0.5f);
    _766 = select(_753, ((((_747 * _750) - _747) * _658) + _747), _747);
    _767 = select(_753, ((((_748 * _750) - _748) * _658) + _748), _748);
    _768 = select(_753, ((((_749 * _750) - _749) * _658) + _749), _749);
    if (_668) {
      _779 = t4.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _250) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _251) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _793 = (((_779.x * _747) * UberPostBaseCBuffer_336.y) + _766);
      _794 = (((_779.y * _748) * UberPostBaseCBuffer_336.y) + _767);
      _795 = (((_779.z * _749) * UberPostBaseCBuffer_336.y) + _768);
    } else {
      _793 = _766;
      _794 = _767;
      _795 = _768;
    }
    _805 = (_793 + _659);
    _806 = (_794 + _660);
    _807 = (_795 + _661);
    _808 = saturate((((_794 + _793) + _795) * 0.33329999446868896f) + _658);
  } else {
    _805 = _659;
    _806 = _660;
    _807 = _661;
    _808 = _658;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _825 = abs(_251 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _827 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_250 - UberPostBaseCBuffer_112.x);
    _833 = exp2(log2(saturate(1.0f - dot(float2(_827, _825), float2(_827, _825)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _847 = (((_833 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _805);
    _848 = (((_833 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _806);
    _849 = (((_833 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _807);
  } else {
    _847 = _805;
    _848 = _806;
    _849 = _807;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_847, _848, _849);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _847 = tonemapped.x;
    _848 = tonemapped.y;
    _849 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _869 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _873 = 1.0f - (sqrt(dot(float3(_847, _848, _849), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _887 = ((((UberPostBaseCBuffer_208.x * _847) * _869) * _873) + _847);
    _888 = ((((UberPostBaseCBuffer_208.x * _848) * _869) * _873) + _848);
    _889 = ((((UberPostBaseCBuffer_208.x * _849) * _869) * _873) + _849);
  } else {
    _887 = _847;
    _888 = _848;
    _889 = _849;
  }
  _893 = ((_104 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _92;
  _895 = atan(_893 / _91);
  _898 = (_91 < 0.0f);
  _899 = (_91 == 0.0f);
  _900 = (_893 >= 0.0f);
  _901 = (_893 < 0.0f);
  _26[0] = ((((Globals_2208.x) * (TEXCOORD.x + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _27[0] = TEXCOORD.y;
  _26[1] = select((_899 && _900), 2.0f, select((_899 && _901), -2.0f, (select((_898 && _901), (_895 + -3.1415927410125732f), select((_898 && _900), (_895 + 3.1415927410125732f), _895)) * 1.2732394933700562f)));
  _27[1] = (sqrt((_893 * _893) + (_91 * _91)) * 0.5f);
  _26[2] = TEXCOORD.x;
  _27[2] = TEXCOORD.y;
  _958 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _981 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _1006 = t8.SampleBias(s7, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _213) + (UberPostScreenEffectsBaseCBuffer_176.x * _88)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_26[min((uint)(_981), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _214) + (UberPostScreenEffectsBaseCBuffer_176.y * _88)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_27[min((uint)(_981), 2u)])))), (Globals_976), int2(0, 0));
  _32[0] = _1006.x;
  _32[1] = _1006.y;
  _32[2] = _1006.z;
  _32[3] = _1006.w;
  _1019 = ((_32[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _1027 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _1031 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _1046 = UberPostScreenEffectsBaseCBuffer_208.y * _1019;
  _1060 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1074 = UberPostScreenEffectsBaseCBuffer_208.z * _1019;
  _1090 = t7.SampleBias(s6, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _213) + (UberPostScreenEffectsBaseCBuffer_160.z * _88)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_26[min((uint)(_1060), 2u)]))) + _1074), (((((UberPostScreenEffectsRandomCBuffer_000.y + _214) + (UberPostScreenEffectsBaseCBuffer_160.w * _88)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_27[min((uint)(_1060), 2u)]))) + _1074)), (Globals_976), int2(0, 0));
  _31[0] = _1090.x;
  _31[1] = _1090.y;
  _31[2] = _1090.z;
  _31[3] = _1090.w;
  _1101 = _31[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1102 = t5.SampleBias(s4, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _88) + _213) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_26[min((uint)(_1031), 2u)]) * _1027) * UberPostScreenEffectsBaseCBuffer_032.x)) + _1046), (((((UberPostScreenEffectsBaseCBuffer_096.y * _88) + _214) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_27[min((uint)(_1031), 2u)]) * _1027) * UberPostScreenEffectsBaseCBuffer_032.y)) + _1046)), (Globals_976), int2(0, 0));
  _1110 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1101, 1.0f);
  _30[0] = _1102.x;
  _30[1] = _1102.y;
  _30[2] = _1102.z;
  _30[3] = _1102.w;
  _1121 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1124 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1110);
  _1133 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1134 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1135 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1147 = saturate((_1110 * (_30[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1154 = select(_1121, (((_1133 * _1124) + UberPostScreenEffectsBaseCBuffer_064.x) * _1102.x), ((_1133 * _1147) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1155 = select(_1121, (((_1134 * _1124) + UberPostScreenEffectsBaseCBuffer_064.y) * _1102.y), ((_1134 * _1147) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1156 = select(_1121, (((_1135 * _1124) + UberPostScreenEffectsBaseCBuffer_064.z) * _1102.z), ((_1135 * _1147) + UberPostScreenEffectsBaseCBuffer_064.z));
  _29[0] = _1102.x;
  _29[1] = _1102.y;
  _29[2] = _1102.z;
  _29[3] = _1102.w;
  _1165 = _29[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1166 = _1165 * _1101;
  _1182 = t6.SampleBias(s5, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _88) + _213) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_26[min((uint)(_958), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _88) + _214) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_27[min((uint)(_958), 2u)])))), (Globals_976), int2(0, 0));
  _28[0] = _1182.x;
  _28[1] = _1182.y;
  _28[2] = _1182.z;
  _28[3] = _1182.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1204 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1165));
  } else {
    _1204 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1166 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1166 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1206 = ((_28[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1204) * _144;
  _1210 = select((_1206 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1206;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1286 = ((_1210 * (_1154 - _887)) + _887);
    _1287 = ((_1210 * (_1155 - _888)) + _888);
    _1288 = ((_1210 * (_1156 - _889)) + _889);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1286 = ((_1210 * _1154) + _887);
      _1287 = ((_1210 * _1155) + _888);
      _1288 = ((_1210 * _1156) + _889);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1286 = (((_1210 * (_1154 + -1.0f)) + 1.0f) * _887);
        _1287 = (((_1210 * (_1155 + -1.0f)) + 1.0f) * _888);
        _1288 = (((_1210 * (_1156 + -1.0f)) + 1.0f) * _889);
      } else {
        _1252 = _1210 * (_1154 + -0.5f);
        _1253 = _1210 * (_1155 + -0.5f);
        _1254 = _1210 * (_1156 + -0.5f);
        _1286 = select((_887 < 0.5f), ((_887 * 2.0f) * (_1252 + 0.5f)), (1.0f - (((1.0f - _887) * 2.0f) * (0.5f - _1252))));
        _1287 = select((_888 < 0.5f), ((_888 * 2.0f) * (_1253 + 0.5f)), (1.0f - (((1.0f - _888) * 2.0f) * (0.5f - _1253))));
        _1288 = select((_889 < 0.5f), ((_889 * 2.0f) * (_1254 + 0.5f)), (1.0f - (((1.0f - _889) * 2.0f) * (0.5f - _1254))));
      }
    }
  }
  SV_Target.x = (_1286);
  SV_Target.y = (_1287);
  SV_Target.z = (_1288);
  SV_Target.w = _808;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
