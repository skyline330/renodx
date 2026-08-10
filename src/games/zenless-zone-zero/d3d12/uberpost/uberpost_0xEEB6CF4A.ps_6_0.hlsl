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
  float4 _34;
  float _58;
  float _60;
  float _76;
  float _77;
  float _78;
  float _79;
  float _80;
  float _81;
  float _82;
  float _83;
  float _84;
  float _85;
  float _88;
  float _91;
  float _94;
  float _96;
  float _111;
  float _125;
  float _131;
  float _132;
  float _133;
  float _135;
  float _140;
  float _148;
  float _149;
  float _154;
  float _155;
  float _156;
  float _159;
  float _160;
  float _163;
  float _164;
  float _165;
  bool _166;
  float _167;
  float _168;
  float _171;
  float _172;
  float _173;
  float _174;
  float _181;
  float _182;
  float _183;
  float _184;
  float _191;
  float _192;
  float _193;
  float _204;
  float _207;
  float _210;
  float _217;
  float _218;
  float _219;
  float _238;
  float _239;
  float _240;
  float _241;
  float _242;
  float _243;
  float _253;
  float _254;
  float _255;
  float _256;
  float _257;
  float _258;
  float _262;
  float _263;
  float _264;
  float _271;
  float _272;
  float _273;
  float _307;
  float _308;
  float _309;
  float _312;
  float _313;
  float _316;
  float _317;
  float _318;
  bool _319;
  float _320;
  float _321;
  float _324;
  float _325;
  float _326;
  float _327;
  float _334;
  float _335;
  float _336;
  float _337;
  float _344;
  float _345;
  float _346;
  float _357;
  float _360;
  float _363;
  float _370;
  float _371;
  float _372;
  float _391;
  float _392;
  float _393;
  float _394;
  float _395;
  float _396;
  float _406;
  float _407;
  float _408;
  float _409;
  float _410;
  float _411;
  float _415;
  float _416;
  float _417;
  float _424;
  float _425;
  float _426;
  float _463;
  float _481;
  float _482;
  float _483;
  float _518;
  float _519;
  float _520;
  float _521;
  float _522;
  float _523;
  float _524;
  float _525;
  float _624;
  float _625;
  float _626;
  float _655;
  float _656;
  float _657;
  float _766;
  float _767;
  float _768;
  float _954;
  float _955;
  float _956;
  float _966;
  float _967;
  float _968;
  float _969;
  float _1008;
  float _1009;
  float _1010;
  float _1046;
  float _1047;
  float _1048;
  float _1075;
  float _1076;
  float _1077;
  float _1206;
  float _1207;
  float _1208;
  float4 _490;
  float _494;
  float _495;
  float _500;
  float _501;
  float _528;
  float _537;
  float _547;
  float _550;
  float _551;
  float _558;
  float _559;
  float _560;
  float _562;
  float _564;
  float _566;
  float _575;
  float _588;
  float _595;
  float _602;
  float _603;
  float _604;
  float4 _618;
  float4 _649;
  float _663;
  float _664;
  float _667;
  float _668;
  float _671;
  float _672;
  float4 _673;
  float _681;
  float _683;
  float _687;
  float _689;
  float _691;
  float _693;
  float _700;
  float _705;
  float _707;
  float _709;
  float4 _716;
  float4 _724;
  float4 _732;
  float4 _781;
  float _793;
  float _794;
  float _807;
  float _812;
  float _822;
  float _823;
  float _824;
  bool _831;
  float _841;
  float _849;
  float _852;
  float4 _871;
  float _908;
  float _909;
  float _910;
  float _911;
  bool _914;
  float _927;
  float _928;
  float _929;
  float4 _940;
  float _986;
  float _988;
  float _994;
  float _1028;
  float _1032;
  float _1053;
  float _1060;
  float _1061;
  float _1062;
  float4 _1070;
  float _1092;
  float _1093;
  float _1094;
  float _1102;
  float _1129;
  float _1130;
  float _1131;
  float4 _1137;
  float _1174;
  float _1175;
  float _1176;
  float _1195;
  _34 = t1.Load(int3((int)(uint((Globals_2208.x) * TEXCOORD.x)), (int)(uint((Globals_2208.y) * TEXCOORD.y)), 0));
  _58 = (TEXCOORD.x * 2.0f) + -1.0f;
  _60 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  _76 = mad((Globals_2144[2].w), _34.x, mad((Globals_2144[1].w), _60, ((Globals_2144[0].w) * _58))) + (Globals_2144[3].w);
  _77 = (mad((Globals_2144[2].x), _34.x, mad((Globals_2144[1].x), _60, ((Globals_2144[0].x) * _58))) + (Globals_2144[3].x)) / _76;
  _78 = (mad((Globals_2144[2].y), _34.x, mad((Globals_2144[1].y), _60, ((Globals_2144[0].y) * _58))) + (Globals_2144[3].y)) / _76;
  _79 = (mad((Globals_2144[2].z), _34.x, mad((Globals_2144[1].z), _60, ((Globals_2144[0].z) * _58))) + (Globals_2144[3].z)) / _76;
  _80 = ddy_coarse(_77);
  _81 = ddy_coarse(_78);
  _82 = ddy_coarse(_79);
  _83 = ddx_coarse(_77);
  _84 = ddx_coarse(_78);
  _85 = ddx_coarse(_79);
  _88 = (_84 * _82) - (_85 * _81);
  _91 = (_85 * _80) - (_83 * _82);
  _94 = (_83 * _81) - (_84 * _80);
  _96 = rsqrt(dot(float3(_88, _91, _94), float3(_88, _91, _94)));
  _111 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((Globals_992.z) * _34.x) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y);
  _125 = UberPostBaseCBuffer_544.w * _78;
  _131 = max(abs(_88 * _96), 9.999999747378752e-06f);
  _132 = max(abs(_91 * _96), 9.999999747378752e-06f);
  _133 = max(abs(_96 * _94), 9.999999747378752e-06f);
  _135 = rsqrt(dot(float3(_131, _132, _133), float3(_131, _132, _133)));
  _140 = _135 * ((_132 + _131) + _133);
  _148 = UberPostBaseCBuffer_560.x * (Globals_208[1].x);
  _149 = UberPostBaseCBuffer_560.y * (Globals_208[1].x);
  _154 = (_125 * UberPostBaseCBuffer_560.z) + _148;
  _155 = ((UberPostBaseCBuffer_544.w * _79) * UberPostBaseCBuffer_560.w) + _149;
  _156 = dot(float2(_154, _155), float2(0.3660254180431366f, 0.3660254180431366f));
  _159 = floor(_154 + _156);
  _160 = floor(_155 + _156);
  _163 = dot(float2(_159, _160), float2(0.21132487058639526f, 0.21132487058639526f));
  _164 = (_154 - _159) + _163;
  _165 = (_155 - _160) + _163;
  _166 = (_164 > _165);
  _167 = select(_166, 1.0f, 0.0f);
  _168 = select(_166, 0.0f, 1.0f);
  _171 = _164 + -0.5773502588272095f;
  _172 = _165 + -0.5773502588272095f;
  _173 = (_164 + 0.21132487058639526f) - _167;
  _174 = (_165 + 0.21132487058639526f) - _168;
  _181 = _159 - (floor(_159 * 0.0034602077212184668f) * 289.0f);
  _182 = _160 - (floor(_160 * 0.0034602077212184668f) * 289.0f);
  _183 = _182 + _168;
  _184 = _182 + 1.0f;
  _191 = ((_182 * 34.0f) + 1.0f) * _182;
  _192 = ((_183 * 34.0f) + 1.0f) * _183;
  _193 = ((_184 * 34.0f) + 1.0f) * _184;
  _204 = (_191 - (floor(_191 * 0.0034602077212184668f) * 289.0f)) + _181;
  _207 = ((_167 + _181) - (floor(_192 * 0.0034602077212184668f) * 289.0f)) + _192;
  _210 = ((_181 + 1.0f) - (floor(_193 * 0.0034602077212184668f) * 289.0f)) + _193;
  _217 = ((_204 * 34.0f) + 1.0f) * _204;
  _218 = ((_207 * 34.0f) + 1.0f) * _207;
  _219 = ((_210 * 34.0f) + 1.0f) * _210;
  _238 = max((0.5f - dot(float2(_164, _165), float2(_164, _165))), 0.0f);
  _239 = max((0.5f - dot(float2(_173, _174), float2(_173, _174))), 0.0f);
  _240 = max((0.5f - dot(float2(_171, _172), float2(_171, _172))), 0.0f);
  _241 = _238 * _238;
  _242 = _239 * _239;
  _243 = _240 * _240;
  _253 = frac((_217 - (floor(_217 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _254 = frac((_218 - (floor(_218 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _255 = frac((_219 - (floor(_219 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _256 = _253 + -1.0f;
  _257 = _254 + -1.0f;
  _258 = _255 + -1.0f;
  _262 = abs(_256) + -0.5f;
  _263 = abs(_257) + -0.5f;
  _264 = abs(_258) + -0.5f;
  _271 = _256 - floor(_253 + -0.5f);
  _272 = _257 - floor(_254 + -0.5f);
  _273 = _258 - floor(_255 + -0.5f);
  _307 = ((UberPostBaseCBuffer_544.w * _77) * UberPostBaseCBuffer_592.x) + _148;
  _308 = (_125 * UberPostBaseCBuffer_592.y) + _149;
  _309 = dot(float2(_307, _308), float2(0.3660254180431366f, 0.3660254180431366f));
  _312 = floor(_307 + _309);
  _313 = floor(_308 + _309);
  _316 = dot(float2(_312, _313), float2(0.21132487058639526f, 0.21132487058639526f));
  _317 = (_307 - _312) + _316;
  _318 = (_308 - _313) + _316;
  _319 = (_317 > _318);
  _320 = select(_319, 1.0f, 0.0f);
  _321 = select(_319, 0.0f, 1.0f);
  _324 = _317 + -0.5773502588272095f;
  _325 = _318 + -0.5773502588272095f;
  _326 = (_317 + 0.21132487058639526f) - _320;
  _327 = (_318 + 0.21132487058639526f) - _321;
  _334 = _312 - (floor(_312 * 0.0034602077212184668f) * 289.0f);
  _335 = _313 - (floor(_313 * 0.0034602077212184668f) * 289.0f);
  _336 = _335 + _321;
  _337 = _335 + 1.0f;
  _344 = ((_335 * 34.0f) + 1.0f) * _335;
  _345 = ((_336 * 34.0f) + 1.0f) * _336;
  _346 = ((_337 * 34.0f) + 1.0f) * _337;
  _357 = (_344 - (floor(_344 * 0.0034602077212184668f) * 289.0f)) + _334;
  _360 = ((_320 + _334) - (floor(_345 * 0.0034602077212184668f) * 289.0f)) + _345;
  _363 = ((_334 + 1.0f) - (floor(_346 * 0.0034602077212184668f) * 289.0f)) + _346;
  _370 = ((_357 * 34.0f) + 1.0f) * _357;
  _371 = ((_360 * 34.0f) + 1.0f) * _360;
  _372 = ((_363 * 34.0f) + 1.0f) * _363;
  _391 = max((0.5f - dot(float2(_317, _318), float2(_317, _318))), 0.0f);
  _392 = max((0.5f - dot(float2(_326, _327), float2(_326, _327))), 0.0f);
  _393 = max((0.5f - dot(float2(_324, _325), float2(_324, _325))), 0.0f);
  _394 = _391 * _391;
  _395 = _392 * _392;
  _396 = _393 * _393;
  _406 = frac((_370 - (floor(_370 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _407 = frac((_371 - (floor(_371 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _408 = frac((_372 - (floor(_372 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _409 = _406 + -1.0f;
  _410 = _407 + -1.0f;
  _411 = _408 + -1.0f;
  _415 = abs(_409) + -0.5f;
  _416 = abs(_410) + -0.5f;
  _417 = abs(_411) + -0.5f;
  _424 = _409 - floor(_406 + -0.5f);
  _425 = _410 - floor(_407 + -0.5f);
  _426 = _411 - floor(_408 + -0.5f);
  _463 = ((((_111 * _111) * 130.0f) * exp2(log2(1.0f - saturate(abs(_78 - UberPostBaseCBuffer_576.y) / UberPostBaseCBuffer_576.x)) * UberPostBaseCBuffer_576.z)) * UberPostBaseCBuffer_544.x) * ((dot(float3(((_394 * _394) * (1.7928428649902344f - (((_424 * _424) + (_415 * _415)) * 0.8537347316741943f))), ((_395 * _395) * (1.7928428649902344f - (((_425 * _425) + (_416 * _416)) * 0.8537347316741943f))), ((_396 * _396) * (1.7928428649902344f - (((_426 * _426) + (_417 * _417)) * 0.8537347316741943f)))), float3(((_424 * _317) + (_415 * _318)), ((_425 * _326) + (_416 * _327)), ((_426 * _324) + (_417 * _325)))) * ((_135 * _133) / _140)) + (dot(float3(((_241 * _241) * (1.7928428649902344f - (((_271 * _271) + (_262 * _262)) * 0.8537347316741943f))), ((_242 * _242) * (1.7928428649902344f - (((_272 * _272) + (_263 * _263)) * 0.8537347316741943f))), ((_243 * _243) * (1.7928428649902344f - (((_273 * _273) + (_264 * _264)) * 0.8537347316741943f)))), float3(((_271 * _164) + (_262 * _165)), ((_272 * _173) + (_263 * _174)), ((_273 * _171) + (_264 * _172)))) * ((_135 * _131) / _140)));
  _481 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((((float4)(t1.Load(int3((int)(uint((_463 + TEXCOORD.x) * (Globals_2208.x))), (int)(uint((_463 + TEXCOORD.y) * (Globals_2208.y))), 0)))).x) * (Globals_992.z)) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y) * _463;
  _482 = _481 + TEXCOORD.x;
  _483 = _481 + TEXCOORD.y;
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _490 = t5.SampleBias(s2, float2(_482, _483), (Globals_976), int2(0, 0));
    _494 = _490.x * 0.10000000149011612f;
    _495 = _490.y * 0.10000000149011612f;
    _500 = (_494 * _490.z) * UberPostBaseCBuffer_176.w;
    _501 = (_495 * _490.z) * UberPostBaseCBuffer_176.w;
    _518 = (_494 + TEXCOORD.x);
    _519 = (_495 + TEXCOORD.y);
    _520 = ((_500 * UberPostBaseCBuffer_176.x) + _494);
    _521 = ((_501 * UberPostBaseCBuffer_176.x) + _495);
    _522 = ((_500 * UberPostBaseCBuffer_176.y) + _494);
    _523 = ((_501 * UberPostBaseCBuffer_176.y) + _495);
    _524 = ((UberPostBaseCBuffer_176.z * _500) + _494);
    _525 = ((UberPostBaseCBuffer_176.z * _501) + _495);
  } else {
    _518 = TEXCOORD.x;
    _519 = TEXCOORD.y;
    _520 = 0.0f;
    _521 = 0.0f;
    _522 = 0.0f;
    _523 = 0.0f;
    _524 = 0.0f;
    _525 = 0.0f;
  }
  _528 = frac(Globals_208[1].x);
  _537 = (((float4)(t6.SampleBias(s3, float2((_528 + (_482 * 5.0f)), (_528 + (_483 * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _547 = ((_537 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_537 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _550 = cos(UberPostBaseCBuffer_224.w);
  _551 = sin(UberPostBaseCBuffer_224.w);
  _558 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _547;
  _559 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _547;
  _560 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _547;
  _562 = _558 * _551;
  _564 = _559 * _551;
  _566 = _560 * _551;
  _575 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + _483);
  _588 = frac(_528 * 1234.0f);
  _595 = (((_588 * _588) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _588) + UberPostBaseCBuffer_256.x;
  _602 = select((_595 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_575 + _562)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _603 = select((_595 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_575 + _564)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _604 = select((_595 < (((float4)(t6.SampleBias(s3, float2(0.5f, (_575 + _566)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _618 = t7.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * _482) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * _483) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _624 = (_618.x * _602);
    _625 = (_618.x * _603);
    _626 = (_618.x * _604);
  } else {
    _624 = _602;
    _625 = _603;
    _626 = _604;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _649 = t7.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * _482) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * _483) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _655 = (_649.y * _624);
    _656 = (_649.y * _625);
    _657 = (_649.y * _626);
  } else {
    _655 = _624;
    _656 = _625;
    _657 = _626;
  }
  _663 = (_520 + _482) + (_558 * _550);
  _664 = (_521 + _483) + _562;
  _667 = (_522 + _482) + (_559 * _550);
  _668 = (_523 + _483) + _564;
  _671 = (_524 + _482) + (_560 * _550);
  _672 = (_525 + _483) + _566;
  _673 = t2.SampleBias(s0, float2(_518, _519), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _681 = ((_482 * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _683 = ((_483 * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _687 = dot(float2(_681, _683), float2(_681, _683)) * -0.3333333432674408f;
    _689 = (_687 * _681) * UberPostBaseCBuffer_192.z;
    _691 = (_687 * _683) * UberPostBaseCBuffer_192.z;
    _693 = rsqrt(dot(float3(_689, _691, 9.999999747378752e-05f), float3(_689, _691, 9.999999747378752e-05f)));
    _700 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _705 = exp2(log2(sqrt((_689 * _689) + (_691 * _691)) / _700) * UberPostBaseCBuffer_384.z);
    _707 = ((_689 * _693) * _700) * _705;
    _709 = ((_691 * _693) * _700) * _705;
    _716 = t2.SampleBias(s0, float2((_663 + (_707 * UberPostBaseCBuffer_400.w)), (_664 + (_709 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _724 = t2.SampleBias(s0, float2((_667 + (UberPostBaseCBuffer_416.w * _707)), (_668 + (UberPostBaseCBuffer_416.w * _709))), (Globals_976), int2(0, 0));
    _732 = t2.SampleBias(s0, float2((_671 + (UberPostBaseCBuffer_432.w * _707)), (_672 + (UberPostBaseCBuffer_432.w * _709))), (Globals_976), int2(0, 0));
    _766 = (((UberPostBaseCBuffer_416.x * _724.y) + (UberPostBaseCBuffer_400.x * _716.x)) + (UberPostBaseCBuffer_432.x * _732.z));
    _767 = (((UberPostBaseCBuffer_416.y * _724.y) + (UberPostBaseCBuffer_400.y * _716.x)) + (UberPostBaseCBuffer_432.y * _732.z));
    _768 = (((UberPostBaseCBuffer_416.z * _724.y) + (UberPostBaseCBuffer_400.z * _716.x)) + (UberPostBaseCBuffer_432.z * _732.z));
  } else {
    _766 = (((float4)(t2.SampleBias(s0, float2(_663, _664), (Globals_976), int2(0, 0)))).x);
    _767 = (((float4)(t2.SampleBias(s0, float2(_667, _668), (Globals_976), int2(0, 0)))).y);
    _768 = (((float4)(t2.SampleBias(s0, float2(_671, _672), (Globals_976), int2(0, 0)))).z);
  }
  _781 = t10.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * _482) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * _483) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _793 = frac((Globals_208[1].x) * 25.0f) - (1.0f - _483);
  _794 = 0.4000000059604645f - _793;
  _807 = (UberPostBaseCBuffer_368.w * max(((select((_794 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_793 + 0.05000000074505806f) * 10.0f) - _794)) + _794), 0.0f)) + 1.0f;
  _812 = 1.0f - UberPostBaseCBuffer_368.z;
  _822 = (((((_781.x * 12.0f) * _807) * _812) + UberPostBaseCBuffer_368.z) * _766) + _655;
  _823 = (((((_781.y * 12.0f) * _807) * _812) + UberPostBaseCBuffer_368.z) * _767) + _656;
  _824 = (((((_781.z * 12.0f) * _807) * _812) + UberPostBaseCBuffer_368.z) * _768) + _657;
  _831 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _831)) {
    _841 = fmod((((Globals_2208.y) * _519) * UberPostBaseCBuffer_448.x), 2.0f);
    _849 = (((select((_841 > 1.0f), (2.0f - _841), _841) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _518;
    _852 = (Globals_2208.w) * (Globals_2208.x);
    _871 = t8.SampleBias(s5, float2(_849, ((select(((frac((((_849 + abs(UberPostBaseCBuffer_464.y)) * _852) - (UberPostBaseCBuffer_464.y * _519)) / ((_852 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _519)), (Globals_976), int2(0, 0));
    _908 = ((((-0.699999988079071f - _871.x) + (exp2(log2(abs(_871.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_871.x < 0.30000001192092896f), 0.0f, 1.0f)) + _871.x) * UberPostBaseCBuffer_336.x;
    _909 = ((((-0.699999988079071f - _871.y) + (exp2(log2(abs(_871.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_871.y < 0.30000001192092896f), 0.0f, 1.0f)) + _871.y) * UberPostBaseCBuffer_336.x;
    _910 = ((((-0.699999988079071f - _871.z) + (exp2(log2(abs(_871.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_871.z < 0.30000001192092896f), 0.0f, 1.0f)) + _871.z) * UberPostBaseCBuffer_336.x;
    _911 = dot(float3(_822, _823, _824), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _914 = (UberPostBaseCBuffer_352.x > 0.5f);
    _927 = select(_914, ((((_908 * _911) - _908) * _673.w) + _908), _908);
    _928 = select(_914, ((((_909 * _911) - _909) * _673.w) + _909), _909);
    _929 = select(_914, ((((_910 * _911) - _910) * _673.w) + _910), _910);
    if (_831) {
      _940 = t9.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _518) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _519) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _954 = (((_940.x * _908) * UberPostBaseCBuffer_336.y) + _927);
      _955 = (((_940.y * _909) * UberPostBaseCBuffer_336.y) + _928);
      _956 = (((_940.z * _910) * UberPostBaseCBuffer_336.y) + _929);
    } else {
      _954 = _927;
      _955 = _928;
      _956 = _929;
    }
    _966 = (_954 + _822);
    _967 = (_955 + _823);
    _968 = (_956 + _824);
    _969 = saturate((((_955 + _954) + _956) * 0.33329999446868896f) + _673.w);
  } else {
    _966 = _822;
    _967 = _823;
    _968 = _824;
    _969 = _673.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _986 = abs(_519 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _988 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_518 - UberPostBaseCBuffer_112.x);
    _994 = exp2(log2(saturate(1.0f - dot(float2(_988, _986), float2(_988, _986)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _1008 = (((_994 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _966);
    _1009 = (((_994 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _967);
    _1010 = (((_994 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _968);
  } else {
    _1008 = _966;
    _1009 = _967;
    _1010 = _968;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_1008, _1009, _1010);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _1008 = tonemapped.x;
    _1009 = tonemapped.y;
    _1010 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _1028 = ((((float4)(t3.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * _482) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * _483) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _1032 = 1.0f - (sqrt(dot(float3(_1008, _1009, _1010), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _1046 = ((((UberPostBaseCBuffer_208.x * _1008) * _1028) * _1032) + _1008);
    _1047 = ((((UberPostBaseCBuffer_208.x * _1009) * _1028) * _1032) + _1009);
    _1048 = ((((UberPostBaseCBuffer_208.x * _1010) * _1028) * _1032) + _1010);
  } else {
    _1046 = _1008;
    _1047 = _1009;
    _1048 = _1010;
  }
  _1053 = ((_1047 + _1046) + _1048) * 0.3333333432674408f;
  _1060 = ((_1046 - _1053) * UberPostFXColorCorrectionCBuffer_000.w) + _1053;
  _1061 = ((_1047 - _1053) * UberPostFXColorCorrectionCBuffer_000.w) + _1053;
  _1062 = ((_1048 - _1053) * UberPostFXColorCorrectionCBuffer_000.w) + _1053;
  if ((Globals_816[3].w) > 0.5f) {
    _1070 = t0.SampleBias(s0, float2(dot(float3(_1060, _1061, _1062), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _1075 = _1070.x;
    _1076 = _1070.y;
    _1077 = _1070.z;
  } else {
    _1075 = _1060;
    _1076 = _1061;
    _1077 = _1062;
  }
  _1092 = (((1.0f - _1075) - saturate(_1075)) * UberPostFXColorCorrectionCBuffer_016.w) + _1075;
  _1093 = (((1.0f - _1076) - saturate(_1076)) * UberPostFXColorCorrectionCBuffer_016.w) + _1076;
  _1094 = (((1.0f - _1077) - saturate(_1077)) * UberPostFXColorCorrectionCBuffer_016.w) + _1077;
  _1102 = saturate((saturate(dot(float3(_1092, _1093, _1094), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _1129 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _1092) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1102)) * UberPostFXColorCorrectionCBuffer_032.x) + _1092);
  // _1130 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _1093) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1102)) * UberPostFXColorCorrectionCBuffer_032.x) + _1093);
  // _1131 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _1094) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1102)) * UberPostFXColorCorrectionCBuffer_032.x) + _1094);
  _1129 = ((((UberPostFXColorCorrectionCBuffer_000.x - _1092) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1102)) * UberPostFXColorCorrectionCBuffer_032.x) + _1092);
  _1130 = ((((UberPostFXColorCorrectionCBuffer_000.y - _1093) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1102)) * UberPostFXColorCorrectionCBuffer_032.x) + _1093);
  _1131 = ((((UberPostFXColorCorrectionCBuffer_000.z - _1094) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1102)) * UberPostFXColorCorrectionCBuffer_032.x) + _1094);

  // HDR FX Mask Blend
  float3 result = float3(_1129, _1130, _1131);
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
  _1206 = result.x;
  _1207 = result.y;
  _1208 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _1137 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _1206 = min((_1137.x + _1129), 1.0f);
        _1207 = min((_1137.x + _1130), 1.0f);
        _1208 = min((_1137.x + _1131), 1.0f);
      } else {
        _1174 = select((_1129 > 0.5f), 0.0f, 1.0f);
        _1175 = select((_1130 > 0.5f), 0.0f, 1.0f);
        _1176 = select((_1131 > 0.5f), 0.0f, 1.0f);
        _1195 = 1.0f - _1137.x;
        _1206 = (((((1.0f - (((1.0f - _1129) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _1174)) + (((_1129 * 2.0f) * _1174) * UberPostFXColorCorrectionCBuffer_048.x)) * _1137.x) + (_1195 * _1129));
        _1207 = (((((1.0f - (((1.0f - _1130) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _1175)) + (((_1130 * 2.0f) * _1175) * UberPostFXColorCorrectionCBuffer_048.y)) * _1137.x) + (_1195 * _1130));
        _1208 = (((((1.0f - (((1.0f - _1131) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1176)) + (((_1131 * 2.0f) * _1176) * UberPostFXColorCorrectionCBuffer_048.z)) * _1137.x) + (_1195 * _1131));
      }
  } else {
    _1206 = _1129;
    _1207 = _1130;
    _1208 = _1131;
  }
  */

  SV_Target.x = _1206;
  SV_Target.y = _1207;
  SV_Target.z = _1208;
  SV_Target.w = _969;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
