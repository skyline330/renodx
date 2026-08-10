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
  float4 _41;
  float _65;
  float _67;
  float _83;
  float _84;
  float _85;
  float _86;
  float _87;
  float _88;
  float _89;
  float _90;
  float _91;
  float _92;
  float _95;
  float _98;
  float _101;
  float _103;
  float _118;
  float _132;
  float _138;
  float _139;
  float _140;
  float _142;
  float _147;
  float _155;
  float _156;
  float _161;
  float _162;
  float _163;
  float _166;
  float _167;
  float _170;
  float _171;
  float _172;
  bool _173;
  float _174;
  float _175;
  float _178;
  float _179;
  float _180;
  float _181;
  float _188;
  float _189;
  float _190;
  float _191;
  float _198;
  float _199;
  float _200;
  float _211;
  float _214;
  float _217;
  float _224;
  float _225;
  float _226;
  float _245;
  float _246;
  float _247;
  float _248;
  float _249;
  float _250;
  float _260;
  float _261;
  float _262;
  float _263;
  float _264;
  float _265;
  float _269;
  float _270;
  float _271;
  float _278;
  float _279;
  float _280;
  float _314;
  float _315;
  float _316;
  float _319;
  float _320;
  float _323;
  float _324;
  float _325;
  bool _326;
  float _327;
  float _328;
  float _331;
  float _332;
  float _333;
  float _334;
  float _341;
  float _342;
  float _343;
  float _344;
  float _351;
  float _352;
  float _353;
  float _364;
  float _367;
  float _370;
  float _377;
  float _378;
  float _379;
  float _398;
  float _399;
  float _400;
  float _401;
  float _402;
  float _403;
  float _413;
  float _414;
  float _415;
  float _416;
  float _417;
  float _418;
  float _422;
  float _423;
  float _424;
  float _431;
  float _432;
  float _433;
  float _470;
  float _488;
  float _489;
  float _490;
  float _498;
  float _499;
  float _500;
  float _501;
  float _502;
  float _512;
  float _514;
  float _516;
  float _517;
  float _518;
  float _529;
  float _539;
  float _545;
  float _551;
  float _554;
  float _623;
  float _624;
  float _660;
  float _661;
  float _662;
  float _663;
  float _664;
  float _665;
  float _666;
  float _667;
  float _782;
  float _783;
  float _784;
  float _790;
  float _791;
  float _792;
  float _793;
  float _925;
  float _926;
  float _927;
  float _937;
  float _938;
  float _939;
  float _940;
  float _979;
  float _980;
  float _981;
  float _1019;
  float _1020;
  float _1021;
  float _1336;
  float _1418;
  float _1419;
  float _1420;
  float _562;
  float _564;
  bool _567;
  bool _568;
  bool _569;
  bool _570;
  bool _594;
  float4 _610;
  float _619;
  bool _627;
  float4 _631;
  float _637;
  float _638;
  float _641;
  float _642;
  float _643;
  float _677;
  float _679;
  float _683;
  float _685;
  float _687;
  float _689;
  float _696;
  float _701;
  float _703;
  float _705;
  float4 _714;
  float4 _724;
  float4 _734;
  float4 _777;
  bool _800;
  float _810;
  float _818;
  float _821;
  float4 _842;
  float _879;
  float _880;
  float _881;
  float _882;
  bool _885;
  float _898;
  float _899;
  float _900;
  float4 _911;
  float _957;
  float _959;
  float _965;
  float _1001;
  float _1005;
  float _1025;
  float _1027;
  bool _1030;
  bool _1031;
  bool _1032;
  bool _1033;
  int _1090;
  int _1113;
  float4 _1138;
  float _1151;
  float _1159;
  int _1163;
  float _1178;
  int _1192;
  float _1206;
  float4 _1222;
  float _1233;
  float4 _1234;
  float _1242;
  bool _1253;
  float _1256;
  float _1265;
  float _1266;
  float _1267;
  float _1279;
  float _1286;
  float _1287;
  float _1288;
  float _1297;
  float _1298;
  float4 _1314;
  float _1338;
  float _1342;
  float _1384;
  float _1385;
  float _1386;
  float _27[3];
  float _28[3];
  float _29[4];
  float _30[4];
  float _31[4];
  float _32[4];
  float _33[4];
  _41 = t0.Load(int3((int)(uint((Globals_2208.x) * TEXCOORD.x)), (int)(uint((Globals_2208.y) * TEXCOORD.y)), 0));
  _65 = (TEXCOORD.x * 2.0f) + -1.0f;
  _67 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  _83 = mad((Globals_2144[2].w), _41.x, mad((Globals_2144[1].w), _67, ((Globals_2144[0].w) * _65))) + (Globals_2144[3].w);
  _84 = (mad((Globals_2144[2].x), _41.x, mad((Globals_2144[1].x), _67, ((Globals_2144[0].x) * _65))) + (Globals_2144[3].x)) / _83;
  _85 = (mad((Globals_2144[2].y), _41.x, mad((Globals_2144[1].y), _67, ((Globals_2144[0].y) * _65))) + (Globals_2144[3].y)) / _83;
  _86 = (mad((Globals_2144[2].z), _41.x, mad((Globals_2144[1].z), _67, ((Globals_2144[0].z) * _65))) + (Globals_2144[3].z)) / _83;
  _87 = ddy_coarse(_84);
  _88 = ddy_coarse(_85);
  _89 = ddy_coarse(_86);
  _90 = ddx_coarse(_84);
  _91 = ddx_coarse(_85);
  _92 = ddx_coarse(_86);
  _95 = (_91 * _89) - (_92 * _88);
  _98 = (_92 * _87) - (_90 * _89);
  _101 = (_90 * _88) - (_91 * _87);
  _103 = rsqrt(dot(float3(_95, _98, _101), float3(_95, _98, _101)));
  _118 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((Globals_992.z) * _41.x) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y);
  _132 = UberPostBaseCBuffer_544.w * _85;
  _138 = max(abs(_95 * _103), 9.999999747378752e-06f);
  _139 = max(abs(_98 * _103), 9.999999747378752e-06f);
  _140 = max(abs(_103 * _101), 9.999999747378752e-06f);
  _142 = rsqrt(dot(float3(_138, _139, _140), float3(_138, _139, _140)));
  _147 = _142 * ((_139 + _138) + _140);
  _155 = UberPostBaseCBuffer_560.x * (Globals_208[1].x);
  _156 = UberPostBaseCBuffer_560.y * (Globals_208[1].x);
  _161 = (_132 * UberPostBaseCBuffer_560.z) + _155;
  _162 = ((UberPostBaseCBuffer_544.w * _86) * UberPostBaseCBuffer_560.w) + _156;
  _163 = dot(float2(_161, _162), float2(0.3660254180431366f, 0.3660254180431366f));
  _166 = floor(_161 + _163);
  _167 = floor(_162 + _163);
  _170 = dot(float2(_166, _167), float2(0.21132487058639526f, 0.21132487058639526f));
  _171 = (_161 - _166) + _170;
  _172 = (_162 - _167) + _170;
  _173 = (_171 > _172);
  _174 = select(_173, 1.0f, 0.0f);
  _175 = select(_173, 0.0f, 1.0f);
  _178 = _171 + -0.5773502588272095f;
  _179 = _172 + -0.5773502588272095f;
  _180 = (_171 + 0.21132487058639526f) - _174;
  _181 = (_172 + 0.21132487058639526f) - _175;
  _188 = _166 - (floor(_166 * 0.0034602077212184668f) * 289.0f);
  _189 = _167 - (floor(_167 * 0.0034602077212184668f) * 289.0f);
  _190 = _189 + _175;
  _191 = _189 + 1.0f;
  _198 = ((_189 * 34.0f) + 1.0f) * _189;
  _199 = ((_190 * 34.0f) + 1.0f) * _190;
  _200 = ((_191 * 34.0f) + 1.0f) * _191;
  _211 = (_198 - (floor(_198 * 0.0034602077212184668f) * 289.0f)) + _188;
  _214 = ((_174 + _188) - (floor(_199 * 0.0034602077212184668f) * 289.0f)) + _199;
  _217 = ((_188 + 1.0f) - (floor(_200 * 0.0034602077212184668f) * 289.0f)) + _200;
  _224 = ((_211 * 34.0f) + 1.0f) * _211;
  _225 = ((_214 * 34.0f) + 1.0f) * _214;
  _226 = ((_217 * 34.0f) + 1.0f) * _217;
  _245 = max((0.5f - dot(float2(_171, _172), float2(_171, _172))), 0.0f);
  _246 = max((0.5f - dot(float2(_180, _181), float2(_180, _181))), 0.0f);
  _247 = max((0.5f - dot(float2(_178, _179), float2(_178, _179))), 0.0f);
  _248 = _245 * _245;
  _249 = _246 * _246;
  _250 = _247 * _247;
  _260 = frac((_224 - (floor(_224 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _261 = frac((_225 - (floor(_225 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _262 = frac((_226 - (floor(_226 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _263 = _260 + -1.0f;
  _264 = _261 + -1.0f;
  _265 = _262 + -1.0f;
  _269 = abs(_263) + -0.5f;
  _270 = abs(_264) + -0.5f;
  _271 = abs(_265) + -0.5f;
  _278 = _263 - floor(_260 + -0.5f);
  _279 = _264 - floor(_261 + -0.5f);
  _280 = _265 - floor(_262 + -0.5f);
  _314 = ((UberPostBaseCBuffer_544.w * _84) * UberPostBaseCBuffer_592.x) + _155;
  _315 = (_132 * UberPostBaseCBuffer_592.y) + _156;
  _316 = dot(float2(_314, _315), float2(0.3660254180431366f, 0.3660254180431366f));
  _319 = floor(_314 + _316);
  _320 = floor(_315 + _316);
  _323 = dot(float2(_319, _320), float2(0.21132487058639526f, 0.21132487058639526f));
  _324 = (_314 - _319) + _323;
  _325 = (_315 - _320) + _323;
  _326 = (_324 > _325);
  _327 = select(_326, 1.0f, 0.0f);
  _328 = select(_326, 0.0f, 1.0f);
  _331 = _324 + -0.5773502588272095f;
  _332 = _325 + -0.5773502588272095f;
  _333 = (_324 + 0.21132487058639526f) - _327;
  _334 = (_325 + 0.21132487058639526f) - _328;
  _341 = _319 - (floor(_319 * 0.0034602077212184668f) * 289.0f);
  _342 = _320 - (floor(_320 * 0.0034602077212184668f) * 289.0f);
  _343 = _342 + _328;
  _344 = _342 + 1.0f;
  _351 = ((_342 * 34.0f) + 1.0f) * _342;
  _352 = ((_343 * 34.0f) + 1.0f) * _343;
  _353 = ((_344 * 34.0f) + 1.0f) * _344;
  _364 = (_351 - (floor(_351 * 0.0034602077212184668f) * 289.0f)) + _341;
  _367 = ((_327 + _341) - (floor(_352 * 0.0034602077212184668f) * 289.0f)) + _352;
  _370 = ((_341 + 1.0f) - (floor(_353 * 0.0034602077212184668f) * 289.0f)) + _353;
  _377 = ((_364 * 34.0f) + 1.0f) * _364;
  _378 = ((_367 * 34.0f) + 1.0f) * _367;
  _379 = ((_370 * 34.0f) + 1.0f) * _370;
  _398 = max((0.5f - dot(float2(_324, _325), float2(_324, _325))), 0.0f);
  _399 = max((0.5f - dot(float2(_333, _334), float2(_333, _334))), 0.0f);
  _400 = max((0.5f - dot(float2(_331, _332), float2(_331, _332))), 0.0f);
  _401 = _398 * _398;
  _402 = _399 * _399;
  _403 = _400 * _400;
  _413 = frac((_377 - (floor(_377 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _414 = frac((_378 - (floor(_378 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _415 = frac((_379 - (floor(_379 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _416 = _413 + -1.0f;
  _417 = _414 + -1.0f;
  _418 = _415 + -1.0f;
  _422 = abs(_416) + -0.5f;
  _423 = abs(_417) + -0.5f;
  _424 = abs(_418) + -0.5f;
  _431 = _416 - floor(_413 + -0.5f);
  _432 = _417 - floor(_414 + -0.5f);
  _433 = _418 - floor(_415 + -0.5f);
  _470 = ((((_118 * _118) * 130.0f) * exp2(log2(1.0f - saturate(abs(_85 - UberPostBaseCBuffer_576.y) / UberPostBaseCBuffer_576.x)) * UberPostBaseCBuffer_576.z)) * UberPostBaseCBuffer_544.x) * ((dot(float3(((_401 * _401) * (1.7928428649902344f - (((_431 * _431) + (_422 * _422)) * 0.8537347316741943f))), ((_402 * _402) * (1.7928428649902344f - (((_432 * _432) + (_423 * _423)) * 0.8537347316741943f))), ((_403 * _403) * (1.7928428649902344f - (((_433 * _433) + (_424 * _424)) * 0.8537347316741943f)))), float3(((_431 * _324) + (_422 * _325)), ((_432 * _333) + (_423 * _334)), ((_433 * _331) + (_424 * _332)))) * ((_142 * _140) / _147)) + (dot(float3(((_248 * _248) * (1.7928428649902344f - (((_278 * _278) + (_269 * _269)) * 0.8537347316741943f))), ((_249 * _249) * (1.7928428649902344f - (((_279 * _279) + (_270 * _270)) * 0.8537347316741943f))), ((_250 * _250) * (1.7928428649902344f - (((_280 * _280) + (_271 * _271)) * 0.8537347316741943f)))), float3(((_278 * _171) + (_269 * _172)), ((_279 * _180) + (_270 * _181)), ((_280 * _178) + (_271 * _179)))) * ((_142 * _138) / _147)));
  _488 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((((float4)(t0.Load(int3((int)(uint((_470 + TEXCOORD.x) * (Globals_2208.x))), (int)(uint((_470 + TEXCOORD.y) * (Globals_2208.y))), 0)))).x) * (Globals_992.z)) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y) * _470;
  _489 = _488 + TEXCOORD.x;
  _490 = _488 + TEXCOORD.y;
  _498 = select((UberPostScreenEffectsBaseCBuffer_256.w > 0.5f), (Globals_208[1].x), (Globals_272[0].y));
  _499 = _489 * 2.0f;
  _500 = _490 * 2.0f;
  _501 = _499 + -1.0f;
  _502 = _500 + -1.0f;
  _512 = (Globals_080.z) + -1.0f;
  _514 = (_512 * (Globals_080.y)) + -1.0f;
  _516 = (_514 * UberPostScreenEffectsBaseCBuffer_016.x) + 1.0f;
  _517 = _516 * _502;
  _518 = _501 * _501;
  _529 = select((UberPostScreenEffectsBaseCBuffer_000.z < 0.5f), min((1.0f - abs(_501)), (_516 * (1.0f - abs(_502)))), (1.0f - (sqrt((_517 * _517) + _518) * 0.7070000171661377f)));
  _539 = saturate((_529 - UberPostScreenEffectsBaseCBuffer_000.w) / (((1.0f - UberPostScreenEffectsBaseCBuffer_016.y) * UberPostScreenEffectsBaseCBuffer_000.w) - UberPostScreenEffectsBaseCBuffer_000.w));
  _545 = select((UberPostScreenEffectsBaseCBuffer_016.y > 9.999999747378752e-05f), ((_539 * _539) * (3.0f - (_539 * 2.0f))), select((UberPostScreenEffectsBaseCBuffer_000.w < _529), 0.0f, 1.0f));
  _551 = select((UberPostScreenEffectsBaseCBuffer_016.w > 0.5f), (1.0f - _545), _545) * UberPostScreenEffectsBaseCBuffer_016.z;
  _554 = select((UberPostScreenEffectsBaseCBuffer_000.w > 9.999999747378752e-05f), _551, 0.0f) * _551;
  if (UberPostScreenEffectsBaseCBuffer_224.z > 0.5f) {
    _562 = ((_514 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _502;
    _564 = atan(_562 / _501);
    _567 = (_501 < 0.0f);
    _568 = (_501 == 0.0f);
    _569 = (_562 >= 0.0f);
    _570 = (_562 < 0.0f);
    _594 = (UberPostScreenEffectsBaseCBuffer_224.w > 0.5f);
    _610 = t10.SampleBias(s8, float2(((UberPostScreenEffectsBaseCBuffer_240.z + (UberPostScreenEffectsBaseCBuffer_256.y * _498)) + (select(_594, select((_568 && _569), 2.0f, select((_568 && _570), -2.0f, (select((_567 && _570), (_564 + -3.1415927410125732f), select((_567 && _569), (_564 + 3.1415927410125732f), _564)) * 1.2732394933700562f))), _489) * UberPostScreenEffectsBaseCBuffer_240.x)), ((UberPostScreenEffectsBaseCBuffer_240.w + (UberPostScreenEffectsBaseCBuffer_256.z * _498)) + (select(_594, (sqrt((_562 * _562) + _518) * 0.6366197466850281f), ((((Globals_080.y) * (_490 + -0.5f)) * _512) + 0.5f)) * UberPostScreenEffectsBaseCBuffer_240.y))), (Globals_976), int2(0, 0));
    _619 = (_554 * 0.10000000149011612f) * UberPostScreenEffectsBaseCBuffer_256.x;
    _623 = (_619 * ((_610.x * 2.0f) + -1.0f));
    _624 = (_619 * ((_610.y * 2.0f) + -1.0f));
  } else {
    _623 = 0.0f;
    _624 = 0.0f;
  }
  _627 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_627) {
    _631 = t3.SampleBias(s2, float2(_489, _490), (Globals_976), int2(0, 0));
    _637 = (_631.x * 0.10000000149011612f) + _623;
    _638 = (_631.y * 0.10000000149011612f) + _624;
    _641 = UberPostBaseCBuffer_176.w * _631.z;
    _642 = _641 * _637;
    _643 = _641 * _638;
    _660 = (_637 + TEXCOORD.x);
    _661 = (_638 + TEXCOORD.y);
    _662 = ((_642 * UberPostBaseCBuffer_176.x) + _637);
    _663 = ((_643 * UberPostBaseCBuffer_176.x) + _638);
    _664 = ((_642 * UberPostBaseCBuffer_176.y) + _637);
    _665 = ((_643 * UberPostBaseCBuffer_176.y) + _638);
    _666 = ((_642 * UberPostBaseCBuffer_176.z) + _637);
    _667 = ((_643 * UberPostBaseCBuffer_176.z) + _638);
  } else {
    _660 = TEXCOORD.x;
    _661 = TEXCOORD.y;
    _662 = 0.0f;
    _663 = 0.0f;
    _664 = 0.0f;
    _665 = 0.0f;
    _666 = 0.0f;
    _667 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _677 = (_499 - UberPostBaseCBuffer_384.x) + -0.5f;
    _679 = (_500 - UberPostBaseCBuffer_384.y) + -0.5f;
    _683 = dot(float2(_677, _679), float2(_677, _679)) * -0.3333333432674408f;
    _685 = (_683 * _677) * UberPostBaseCBuffer_192.z;
    _687 = (_683 * _679) * UberPostBaseCBuffer_192.z;
    _689 = rsqrt(dot(float3(_685, _687, 9.999999747378752e-05f), float3(_685, _687, 9.999999747378752e-05f)));
    _696 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _701 = exp2(log2(sqrt((_685 * _685) + (_687 * _687)) / _696) * UberPostBaseCBuffer_384.z);
    _703 = ((_685 * _689) * _696) * _701;
    _705 = ((_687 * _689) * _696) * _701;
    _714 = t1.SampleBias(s0, float2(((_662 + _489) + (_703 * UberPostBaseCBuffer_400.w)), ((_663 + _490) + (_705 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _724 = t1.SampleBias(s0, float2(((_664 + _489) + (UberPostBaseCBuffer_416.w * _703)), ((_665 + _490) + (UberPostBaseCBuffer_416.w * _705))), (Globals_976), int2(0, 0));
    _734 = t1.SampleBias(s0, float2(((_666 + _489) + (UberPostBaseCBuffer_432.w * _703)), ((_667 + _490) + (UberPostBaseCBuffer_432.w * _705))), (Globals_976), int2(0, 0));
    _790 = (((float4)(t1.SampleBias(s0, float2(_660, _661), (Globals_976), int2(0, 0)))).w);
    _791 = (((UberPostBaseCBuffer_416.x * _724.y) + (UberPostBaseCBuffer_400.x * _714.x)) + (UberPostBaseCBuffer_432.x * _734.z));
    _792 = (((UberPostBaseCBuffer_416.y * _724.y) + (UberPostBaseCBuffer_400.y * _714.x)) + (UberPostBaseCBuffer_432.y * _734.z));
    _793 = (((UberPostBaseCBuffer_416.z * _724.y) + (UberPostBaseCBuffer_400.z * _714.x)) + (UberPostBaseCBuffer_432.z * _734.z));
  } else {
    if (_627) {
      _782 = (((float4)(t1.SampleBias(s0, float2((_662 + _489), (_663 + _490)), (Globals_976), int2(0, 0)))).x);
      _783 = (((float4)(t1.SampleBias(s0, float2((_664 + _489), (_665 + _490)), (Globals_976), int2(0, 0)))).y);
      _784 = (((float4)(t1.SampleBias(s0, float2((_666 + _489), (_667 + _490)), (Globals_976), int2(0, 0)))).z);
    } else {
      _777 = t1.SampleBias(s0, float2(_660, _661), (Globals_976), int2(0, 0));
      _782 = _777.x;
      _783 = _777.y;
      _784 = _777.z;
    }
    _790 = (((float4)(t1.SampleBias(s0, float2(_660, _661), (Globals_976), int2(0, 0)))).w);
    _791 = _782;
    _792 = _783;
    _793 = _784;
  }
  _800 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _800)) {
    _810 = fmod((((Globals_2208.y) * _661) * UberPostBaseCBuffer_448.x), 2.0f);
    _818 = (((select((_810 > 1.0f), (2.0f - _810), _810) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _660;
    _821 = (Globals_2208.w) * (Globals_2208.x);
    _842 = t4.SampleBias(s3, float2(_818, ((select(((frac((((_818 + abs(UberPostBaseCBuffer_464.y)) * _821) - (UberPostBaseCBuffer_464.y * _661)) / ((_821 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _661)), (Globals_976), int2(0, 0));
    _879 = ((((-0.699999988079071f - _842.x) + (exp2(log2(abs(_842.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_842.x < 0.30000001192092896f), 0.0f, 1.0f)) + _842.x) * UberPostBaseCBuffer_336.x;
    _880 = ((((-0.699999988079071f - _842.y) + (exp2(log2(abs(_842.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_842.y < 0.30000001192092896f), 0.0f, 1.0f)) + _842.y) * UberPostBaseCBuffer_336.x;
    _881 = ((((-0.699999988079071f - _842.z) + (exp2(log2(abs(_842.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_842.z < 0.30000001192092896f), 0.0f, 1.0f)) + _842.z) * UberPostBaseCBuffer_336.x;
    _882 = dot(float3(_791, _792, _793), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _885 = (UberPostBaseCBuffer_352.x > 0.5f);
    _898 = select(_885, ((((_879 * _882) - _879) * _790) + _879), _879);
    _899 = select(_885, ((((_880 * _882) - _880) * _790) + _880), _880);
    _900 = select(_885, ((((_881 * _882) - _881) * _790) + _881), _881);
    if (_800) {
      _911 = t5.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _660) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _661) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _925 = (((_911.x * _879) * UberPostBaseCBuffer_336.y) + _898);
      _926 = (((_911.y * _880) * UberPostBaseCBuffer_336.y) + _899);
      _927 = (((_911.z * _881) * UberPostBaseCBuffer_336.y) + _900);
    } else {
      _925 = _898;
      _926 = _899;
      _927 = _900;
    }
    _937 = (_925 + _791);
    _938 = (_926 + _792);
    _939 = (_927 + _793);
    _940 = saturate((((_926 + _925) + _927) * 0.33329999446868896f) + _790);
  } else {
    _937 = _791;
    _938 = _792;
    _939 = _793;
    _940 = _790;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _957 = abs(_661 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _959 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_660 - UberPostBaseCBuffer_112.x);
    _965 = exp2(log2(saturate(1.0f - dot(float2(_959, _957), float2(_959, _957)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _979 = (((_965 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _937);
    _980 = (((_965 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _938);
    _981 = (((_965 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _939);
  } else {
    _979 = _937;
    _980 = _938;
    _981 = _939;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_979, _980, _981);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _979 = tonemapped.x;
    _980 = tonemapped.y;
    _981 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _1001 = ((((float4)(t2.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * _489) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * _490) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _1005 = 1.0f - (sqrt(dot(float3(_979, _980, _981), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _1019 = ((((UberPostBaseCBuffer_208.x * _979) * _1001) * _1005) + _979);
    _1020 = ((((UberPostBaseCBuffer_208.x * _980) * _1001) * _1005) + _980);
    _1021 = ((((UberPostBaseCBuffer_208.x * _981) * _1001) * _1005) + _981);
  } else {
    _1019 = _979;
    _1020 = _980;
    _1021 = _981;
  }
  _1025 = ((_514 * UberPostScreenEffectsBaseCBuffer_000.y) + 1.0f) * _502;
  _1027 = atan(_1025 / _501);
  _1030 = (_501 < 0.0f);
  _1031 = (_501 == 0.0f);
  _1032 = (_1025 >= 0.0f);
  _1033 = (_1025 < 0.0f);
  _27[0] = ((((Globals_2208.x) * (_489 + -0.5f)) * (Globals_2208.w)) + 0.5f);
  _28[0] = _490;
  _27[1] = select((_1031 && _1032), 2.0f, select((_1031 && _1033), -2.0f, (select((_1030 && _1033), (_1027 + -3.1415927410125732f), select((_1030 && _1032), (_1027 + 3.1415927410125732f), _1027)) * 1.2732394933700562f)));
  _28[1] = (sqrt((_1025 * _1025) + (_501 * _501)) * 0.5f);
  _27[2] = _489;
  _28[2] = _490;
  _1090 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_096.z))), (int)(0))), (int)(2));
  _1113 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_176.w))), (int)(0))), (int)(2));
  _1138 = t9.SampleBias(s7, float2(((((UberPostScreenEffectsRandomCBuffer_008.x + _623) + (UberPostScreenEffectsBaseCBuffer_176.x * _498)) + UberPostScreenEffectsBaseCBuffer_192.z) + (UberPostScreenEffectsBaseCBuffer_192.x * (_27[min((uint)(_1113), 2u)]))), ((((UberPostScreenEffectsRandomCBuffer_008.y + _624) + (UberPostScreenEffectsBaseCBuffer_176.y * _498)) + UberPostScreenEffectsBaseCBuffer_192.w) + (UberPostScreenEffectsBaseCBuffer_192.y * (_28[min((uint)(_1113), 2u)])))), (Globals_976), int2(0, 0));
  _33[0] = _1138.x;
  _33[1] = _1138.y;
  _33[2] = _1138.z;
  _33[3] = _1138.w;
  _1151 = ((_33[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_208.x))), (uint)(3)))), 3u)]) + -0.49803921580314636f) * 2.0f;
  _1159 = select((UberPostScreenEffectsBaseCBuffer_048.x < 9.999999747378752e-06f), max(1.0f, ((Globals_2208.y) * 0.0009259259095415473f)), 1.0f);
  _1163 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_048.x))), (int)(0))), (int)(2));
  _1178 = UberPostScreenEffectsBaseCBuffer_208.y * _1151;
  _1192 = min((int)(max((int)(int(round(UberPostScreenEffectsBaseCBuffer_128.w))), (int)(0))), (int)(2));
  _1206 = UberPostScreenEffectsBaseCBuffer_208.z * _1151;
  _1222 = t8.SampleBias(s6, float2((((((UberPostScreenEffectsRandomCBuffer_000.x + _623) + (UberPostScreenEffectsBaseCBuffer_160.z * _498)) + UberPostScreenEffectsBaseCBuffer_144.z) + (UberPostScreenEffectsBaseCBuffer_144.x * (_27[min((uint)(_1192), 2u)]))) + _1206), (((((UberPostScreenEffectsRandomCBuffer_000.y + _624) + (UberPostScreenEffectsBaseCBuffer_160.w * _498)) + UberPostScreenEffectsBaseCBuffer_144.w) + (UberPostScreenEffectsBaseCBuffer_144.y * (_28[min((uint)(_1192), 2u)]))) + _1206)), (Globals_976), int2(0, 0));
  _32[0] = _1222.x;
  _32[1] = _1222.y;
  _32[2] = _1222.z;
  _32[3] = _1222.w;
  _1233 = _32[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_160.y))), (uint)(3)))), 3u)];
  _1234 = t6.SampleBias(s4, float2((((((UberPostScreenEffectsBaseCBuffer_096.x * _498) + _623) + UberPostScreenEffectsBaseCBuffer_032.z) + (((_27[min((uint)(_1163), 2u)]) * _1159) * UberPostScreenEffectsBaseCBuffer_032.x)) + _1178), (((((UberPostScreenEffectsBaseCBuffer_096.y * _498) + _624) + UberPostScreenEffectsBaseCBuffer_032.w) + (((_28[min((uint)(_1163), 2u)]) * _1159) * UberPostScreenEffectsBaseCBuffer_032.y)) + _1178)), (Globals_976), int2(0, 0));
  _1242 = select((UberPostScreenEffectsBaseCBuffer_176.z > 0.5f), _1233, 1.0f);
  _31[0] = _1234.x;
  _31[1] = _1234.y;
  _31[2] = _1234.z;
  _31[3] = _1234.w;
  _1253 = (UberPostScreenEffectsBaseCBuffer_048.y > 3.5f);
  _1256 = saturate(UberPostScreenEffectsBaseCBuffer_048.w * _1242);
  _1265 = UberPostScreenEffectsBaseCBuffer_080.x - UberPostScreenEffectsBaseCBuffer_064.x;
  _1266 = UberPostScreenEffectsBaseCBuffer_080.y - UberPostScreenEffectsBaseCBuffer_064.y;
  _1267 = UberPostScreenEffectsBaseCBuffer_080.z - UberPostScreenEffectsBaseCBuffer_064.z;
  _1279 = saturate((_1242 * (_31[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.y))), (uint)(3)))), 3u)])) * UberPostScreenEffectsBaseCBuffer_048.w);
  _1286 = select(_1253, (((_1265 * _1256) + UberPostScreenEffectsBaseCBuffer_064.x) * _1234.x), ((_1265 * _1279) + UberPostScreenEffectsBaseCBuffer_064.x));
  _1287 = select(_1253, (((_1266 * _1256) + UberPostScreenEffectsBaseCBuffer_064.y) * _1234.y), ((_1266 * _1279) + UberPostScreenEffectsBaseCBuffer_064.y));
  _1288 = select(_1253, (((_1267 * _1256) + UberPostScreenEffectsBaseCBuffer_064.z) * _1234.z), ((_1267 * _1279) + UberPostScreenEffectsBaseCBuffer_064.z));
  _30[0] = _1234.x;
  _30[1] = _1234.y;
  _30[2] = _1234.z;
  _30[3] = _1234.w;
  _1297 = _30[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_048.z))), (uint)(3)))), 3u)];
  _1298 = _1297 * _1233;
  _1314 = t7.SampleBias(s5, float2(((((UberPostScreenEffectsBaseCBuffer_128.x * _498) + _623) + UberPostScreenEffectsBaseCBuffer_112.z) + (UberPostScreenEffectsBaseCBuffer_112.x * (_27[min((uint)(_1090), 2u)]))), ((((UberPostScreenEffectsBaseCBuffer_128.y * _498) + _624) + UberPostScreenEffectsBaseCBuffer_112.w) + (UberPostScreenEffectsBaseCBuffer_112.y * (_28[min((uint)(_1090), 2u)])))), (Globals_976), int2(0, 0));
  _29[0] = _1314.x;
  _29[1] = _1314.y;
  _29[2] = _1314.z;
  _29[3] = _1314.w;
  if (UberPostScreenEffectsBaseCBuffer_128.z < 0.5f) {
    _1336 = (lerp(UberPostScreenEffectsBaseCBuffer_064.w, UberPostScreenEffectsBaseCBuffer_080.w, _1297));
  } else {
    _1336 = select((UberPostScreenEffectsBaseCBuffer_208.w > 0.5f), saturate((_1298 - UberPostScreenEffectsBaseCBuffer_160.x) * UberPostScreenEffectsBaseCBuffer_224.x), select((_1298 < UberPostScreenEffectsBaseCBuffer_160.x), 0.0f, 1.0f));
  }
  _1338 = ((_29[min((uint)(((int)min((uint)((int)(uint(UberPostScreenEffectsBaseCBuffer_096.w))), (uint)(3)))), 3u)]) * _1336) * _554;
  _1342 = select((_1338 < UberPostScreenEffectsBaseCBuffer_224.y), 0.0f, 1.0f) * _1338;
  if (UberPostScreenEffectsBaseCBuffer_000.x < 0.5f) {
    _1418 = ((_1342 * (_1286 - _1019)) + _1019);
    _1419 = ((_1342 * (_1287 - _1020)) + _1020);
    _1420 = ((_1342 * (_1288 - _1021)) + _1021);
  } else {
    if (UberPostScreenEffectsBaseCBuffer_000.x < 1.5f) {
      _1418 = ((_1342 * _1286) + _1019);
      _1419 = ((_1342 * _1287) + _1020);
      _1420 = ((_1342 * _1288) + _1021);
    } else {
      if (UberPostScreenEffectsBaseCBuffer_000.x < 2.5f) {
        _1418 = (((_1342 * (_1286 + -1.0f)) + 1.0f) * _1019);
        _1419 = (((_1342 * (_1287 + -1.0f)) + 1.0f) * _1020);
        _1420 = (((_1342 * (_1288 + -1.0f)) + 1.0f) * _1021);
      } else {
        _1384 = _1342 * (_1286 + -0.5f);
        _1385 = _1342 * (_1287 + -0.5f);
        _1386 = _1342 * (_1288 + -0.5f);
        _1418 = select((_1019 < 0.5f), ((_1019 * 2.0f) * (_1384 + 0.5f)), (1.0f - (((1.0f - _1019) * 2.0f) * (0.5f - _1384))));
        _1419 = select((_1020 < 0.5f), ((_1020 * 2.0f) * (_1385 + 0.5f)), (1.0f - (((1.0f - _1020) * 2.0f) * (0.5f - _1385))));
        _1420 = select((_1021 < 0.5f), ((_1021 * 2.0f) * (_1386 + 0.5f)), (1.0f - (((1.0f - _1021) * 2.0f) * (0.5f - _1386))));
      }
    }
  }
  SV_Target.x = (_1418);
  SV_Target.y = (_1419);
  SV_Target.z = (_1420);
  SV_Target.w = _940;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
