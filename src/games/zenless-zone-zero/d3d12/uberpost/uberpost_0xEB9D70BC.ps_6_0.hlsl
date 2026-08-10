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
  float4 UberPostFXColorCorrectionCBuffer_000 : packoffset(c000.x);
  float4 UberPostFXColorCorrectionCBuffer_016 : packoffset(c001.x);
  float4 UberPostFXColorCorrectionCBuffer_032 : packoffset(c002.x);
  float4 UberPostFXColorCorrectionCBuffer_048 : packoffset(c003.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

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
  float4 _26;
  float _50;
  float _52;
  float _68;
  float _69;
  float _70;
  float _71;
  float _72;
  float _73;
  float _74;
  float _75;
  float _76;
  float _77;
  float _80;
  float _83;
  float _86;
  float _88;
  float _103;
  float _117;
  float _123;
  float _124;
  float _125;
  float _127;
  float _132;
  float _140;
  float _141;
  float _146;
  float _147;
  float _148;
  float _151;
  float _152;
  float _155;
  float _156;
  float _157;
  bool _158;
  float _159;
  float _160;
  float _163;
  float _164;
  float _165;
  float _166;
  float _173;
  float _174;
  float _175;
  float _176;
  float _183;
  float _184;
  float _185;
  float _196;
  float _199;
  float _202;
  float _209;
  float _210;
  float _211;
  float _230;
  float _231;
  float _232;
  float _233;
  float _234;
  float _235;
  float _245;
  float _246;
  float _247;
  float _248;
  float _249;
  float _250;
  float _254;
  float _255;
  float _256;
  float _263;
  float _264;
  float _265;
  float _299;
  float _300;
  float _301;
  float _304;
  float _305;
  float _308;
  float _309;
  float _310;
  bool _311;
  float _312;
  float _313;
  float _316;
  float _317;
  float _318;
  float _319;
  float _326;
  float _327;
  float _328;
  float _329;
  float _336;
  float _337;
  float _338;
  float _349;
  float _352;
  float _355;
  float _362;
  float _363;
  float _364;
  float _383;
  float _384;
  float _385;
  float _386;
  float _387;
  float _388;
  float _398;
  float _399;
  float _400;
  float _401;
  float _402;
  float _403;
  float _407;
  float _408;
  float _409;
  float _416;
  float _417;
  float _418;
  float _455;
  float _473;
  float _474;
  float _475;
  bool _478;
  float _510;
  float _511;
  float _512;
  float _513;
  float _514;
  float _515;
  float _516;
  float _517;
  float _634;
  float _635;
  float _636;
  float _642;
  float _643;
  float _644;
  float _645;
  float _777;
  float _778;
  float _779;
  float _789;
  float _790;
  float _791;
  float _792;
  float _831;
  float _832;
  float _833;
  float _922;
  float _923;
  float _924;
  float _951;
  float _952;
  float _953;
  float _1082;
  float _1083;
  float _1084;
  float4 _482;
  float _486;
  float _487;
  float _492;
  float _493;
  float _529;
  float _531;
  float _535;
  float _537;
  float _539;
  float _541;
  float _548;
  float _553;
  float _555;
  float _557;
  float4 _566;
  float4 _576;
  float4 _586;
  float4 _629;
  bool _652;
  float _662;
  float _670;
  float _673;
  float4 _694;
  float _731;
  float _732;
  float _733;
  float _734;
  bool _737;
  float _750;
  float _751;
  float _752;
  float4 _763;
  float _809;
  float _811;
  float _817;
  float _856;
  float _857;
  float _863;
  float _865;
  float _866;
  float4 _868;
  float4 _872;
  float _882;
  float _883;
  float _884;
  float _904;
  float _908;
  float _929;
  float _936;
  float _937;
  float _938;
  float4 _946;
  float _968;
  float _969;
  float _970;
  float _978;
  float _1005;
  float _1006;
  float _1007;
  float4 _1013;
  float _1050;
  float _1051;
  float _1052;
  float _1071;
  _26 = t1.Load(int3((int)(uint((Globals_2208.x) * TEXCOORD.x)), (int)(uint((Globals_2208.y) * TEXCOORD.y)), 0));
  _50 = (TEXCOORD.x * 2.0f) + -1.0f;
  _52 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  _68 = mad((Globals_2144[2].w), _26.x, mad((Globals_2144[1].w), _52, ((Globals_2144[0].w) * _50))) + (Globals_2144[3].w);
  _69 = (mad((Globals_2144[2].x), _26.x, mad((Globals_2144[1].x), _52, ((Globals_2144[0].x) * _50))) + (Globals_2144[3].x)) / _68;
  _70 = (mad((Globals_2144[2].y), _26.x, mad((Globals_2144[1].y), _52, ((Globals_2144[0].y) * _50))) + (Globals_2144[3].y)) / _68;
  _71 = (mad((Globals_2144[2].z), _26.x, mad((Globals_2144[1].z), _52, ((Globals_2144[0].z) * _50))) + (Globals_2144[3].z)) / _68;
  _72 = ddy_coarse(_69);
  _73 = ddy_coarse(_70);
  _74 = ddy_coarse(_71);
  _75 = ddx_coarse(_69);
  _76 = ddx_coarse(_70);
  _77 = ddx_coarse(_71);
  _80 = (_76 * _74) - (_77 * _73);
  _83 = (_77 * _72) - (_75 * _74);
  _86 = (_75 * _73) - (_76 * _72);
  _88 = rsqrt(dot(float3(_80, _83, _86), float3(_80, _83, _86)));
  _103 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((Globals_992.z) * _26.x) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y);
  _117 = UberPostBaseCBuffer_544.w * _70;
  _123 = max(abs(_80 * _88), 9.999999747378752e-06f);
  _124 = max(abs(_83 * _88), 9.999999747378752e-06f);
  _125 = max(abs(_88 * _86), 9.999999747378752e-06f);
  _127 = rsqrt(dot(float3(_123, _124, _125), float3(_123, _124, _125)));
  _132 = _127 * ((_124 + _123) + _125);
  _140 = UberPostBaseCBuffer_560.x * (Globals_208[1].x);
  _141 = UberPostBaseCBuffer_560.y * (Globals_208[1].x);
  _146 = (_117 * UberPostBaseCBuffer_560.z) + _140;
  _147 = ((UberPostBaseCBuffer_544.w * _71) * UberPostBaseCBuffer_560.w) + _141;
  _148 = dot(float2(_146, _147), float2(0.3660254180431366f, 0.3660254180431366f));
  _151 = floor(_146 + _148);
  _152 = floor(_147 + _148);
  _155 = dot(float2(_151, _152), float2(0.21132487058639526f, 0.21132487058639526f));
  _156 = (_146 - _151) + _155;
  _157 = (_147 - _152) + _155;
  _158 = (_156 > _157);
  _159 = select(_158, 1.0f, 0.0f);
  _160 = select(_158, 0.0f, 1.0f);
  _163 = _156 + -0.5773502588272095f;
  _164 = _157 + -0.5773502588272095f;
  _165 = (_156 + 0.21132487058639526f) - _159;
  _166 = (_157 + 0.21132487058639526f) - _160;
  _173 = _151 - (floor(_151 * 0.0034602077212184668f) * 289.0f);
  _174 = _152 - (floor(_152 * 0.0034602077212184668f) * 289.0f);
  _175 = _174 + _160;
  _176 = _174 + 1.0f;
  _183 = ((_174 * 34.0f) + 1.0f) * _174;
  _184 = ((_175 * 34.0f) + 1.0f) * _175;
  _185 = ((_176 * 34.0f) + 1.0f) * _176;
  _196 = (_183 - (floor(_183 * 0.0034602077212184668f) * 289.0f)) + _173;
  _199 = ((_159 + _173) - (floor(_184 * 0.0034602077212184668f) * 289.0f)) + _184;
  _202 = ((_173 + 1.0f) - (floor(_185 * 0.0034602077212184668f) * 289.0f)) + _185;
  _209 = ((_196 * 34.0f) + 1.0f) * _196;
  _210 = ((_199 * 34.0f) + 1.0f) * _199;
  _211 = ((_202 * 34.0f) + 1.0f) * _202;
  _230 = max((0.5f - dot(float2(_156, _157), float2(_156, _157))), 0.0f);
  _231 = max((0.5f - dot(float2(_165, _166), float2(_165, _166))), 0.0f);
  _232 = max((0.5f - dot(float2(_163, _164), float2(_163, _164))), 0.0f);
  _233 = _230 * _230;
  _234 = _231 * _231;
  _235 = _232 * _232;
  _245 = frac((_209 - (floor(_209 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _246 = frac((_210 - (floor(_210 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _247 = frac((_211 - (floor(_211 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _248 = _245 + -1.0f;
  _249 = _246 + -1.0f;
  _250 = _247 + -1.0f;
  _254 = abs(_248) + -0.5f;
  _255 = abs(_249) + -0.5f;
  _256 = abs(_250) + -0.5f;
  _263 = _248 - floor(_245 + -0.5f);
  _264 = _249 - floor(_246 + -0.5f);
  _265 = _250 - floor(_247 + -0.5f);
  _299 = ((UberPostBaseCBuffer_544.w * _69) * UberPostBaseCBuffer_592.x) + _140;
  _300 = (_117 * UberPostBaseCBuffer_592.y) + _141;
  _301 = dot(float2(_299, _300), float2(0.3660254180431366f, 0.3660254180431366f));
  _304 = floor(_299 + _301);
  _305 = floor(_300 + _301);
  _308 = dot(float2(_304, _305), float2(0.21132487058639526f, 0.21132487058639526f));
  _309 = (_299 - _304) + _308;
  _310 = (_300 - _305) + _308;
  _311 = (_309 > _310);
  _312 = select(_311, 1.0f, 0.0f);
  _313 = select(_311, 0.0f, 1.0f);
  _316 = _309 + -0.5773502588272095f;
  _317 = _310 + -0.5773502588272095f;
  _318 = (_309 + 0.21132487058639526f) - _312;
  _319 = (_310 + 0.21132487058639526f) - _313;
  _326 = _304 - (floor(_304 * 0.0034602077212184668f) * 289.0f);
  _327 = _305 - (floor(_305 * 0.0034602077212184668f) * 289.0f);
  _328 = _327 + _313;
  _329 = _327 + 1.0f;
  _336 = ((_327 * 34.0f) + 1.0f) * _327;
  _337 = ((_328 * 34.0f) + 1.0f) * _328;
  _338 = ((_329 * 34.0f) + 1.0f) * _329;
  _349 = (_336 - (floor(_336 * 0.0034602077212184668f) * 289.0f)) + _326;
  _352 = ((_312 + _326) - (floor(_337 * 0.0034602077212184668f) * 289.0f)) + _337;
  _355 = ((_326 + 1.0f) - (floor(_338 * 0.0034602077212184668f) * 289.0f)) + _338;
  _362 = ((_349 * 34.0f) + 1.0f) * _349;
  _363 = ((_352 * 34.0f) + 1.0f) * _352;
  _364 = ((_355 * 34.0f) + 1.0f) * _355;
  _383 = max((0.5f - dot(float2(_309, _310), float2(_309, _310))), 0.0f);
  _384 = max((0.5f - dot(float2(_318, _319), float2(_318, _319))), 0.0f);
  _385 = max((0.5f - dot(float2(_316, _317), float2(_316, _317))), 0.0f);
  _386 = _383 * _383;
  _387 = _384 * _384;
  _388 = _385 * _385;
  _398 = frac((_362 - (floor(_362 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _399 = frac((_363 - (floor(_363 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _400 = frac((_364 - (floor(_364 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _401 = _398 + -1.0f;
  _402 = _399 + -1.0f;
  _403 = _400 + -1.0f;
  _407 = abs(_401) + -0.5f;
  _408 = abs(_402) + -0.5f;
  _409 = abs(_403) + -0.5f;
  _416 = _401 - floor(_398 + -0.5f);
  _417 = _402 - floor(_399 + -0.5f);
  _418 = _403 - floor(_400 + -0.5f);
  _455 = ((((_103 * _103) * 130.0f) * exp2(log2(1.0f - saturate(abs(_70 - UberPostBaseCBuffer_576.y) / UberPostBaseCBuffer_576.x)) * UberPostBaseCBuffer_576.z)) * UberPostBaseCBuffer_544.x) * ((dot(float3(((_386 * _386) * (1.7928428649902344f - (((_416 * _416) + (_407 * _407)) * 0.8537347316741943f))), ((_387 * _387) * (1.7928428649902344f - (((_417 * _417) + (_408 * _408)) * 0.8537347316741943f))), ((_388 * _388) * (1.7928428649902344f - (((_418 * _418) + (_409 * _409)) * 0.8537347316741943f)))), float3(((_416 * _309) + (_407 * _310)), ((_417 * _318) + (_408 * _319)), ((_418 * _316) + (_409 * _317)))) * ((_127 * _125) / _132)) + (dot(float3(((_233 * _233) * (1.7928428649902344f - (((_263 * _263) + (_254 * _254)) * 0.8537347316741943f))), ((_234 * _234) * (1.7928428649902344f - (((_264 * _264) + (_255 * _255)) * 0.8537347316741943f))), ((_235 * _235) * (1.7928428649902344f - (((_265 * _265) + (_256 * _256)) * 0.8537347316741943f)))), float3(((_263 * _156) + (_254 * _157)), ((_264 * _165) + (_255 * _166)), ((_265 * _163) + (_256 * _164)))) * ((_127 * _123) / _132)));
  _473 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((((float4)(t1.Load(int3((int)(uint((_455 + TEXCOORD.x) * (Globals_2208.x))), (int)(uint((_455 + TEXCOORD.y) * (Globals_2208.y))), 0)))).x) * (Globals_992.z)) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y) * _455;
  _474 = _473 + TEXCOORD.x;
  _475 = _473 + TEXCOORD.y;
  _478 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_478) {
    _482 = t6.SampleBias(s2, float2(_474, _475), (Globals_976), int2(0, 0));
    _486 = _482.x * 0.10000000149011612f;
    _487 = _482.y * 0.10000000149011612f;
    _492 = (_486 * _482.z) * UberPostBaseCBuffer_176.w;
    _493 = (_487 * _482.z) * UberPostBaseCBuffer_176.w;
    _510 = (_486 + TEXCOORD.x);
    _511 = (_487 + TEXCOORD.y);
    _512 = ((_492 * UberPostBaseCBuffer_176.x) + _486);
    _513 = ((_493 * UberPostBaseCBuffer_176.x) + _487);
    _514 = ((_492 * UberPostBaseCBuffer_176.y) + _486);
    _515 = ((_493 * UberPostBaseCBuffer_176.y) + _487);
    _516 = ((UberPostBaseCBuffer_176.z * _492) + _486);
    _517 = ((UberPostBaseCBuffer_176.z * _493) + _487);
  } else {
    _510 = TEXCOORD.x;
    _511 = TEXCOORD.y;
    _512 = 0.0f;
    _513 = 0.0f;
    _514 = 0.0f;
    _515 = 0.0f;
    _516 = 0.0f;
    _517 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _529 = ((_474 * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _531 = ((_475 * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _535 = dot(float2(_529, _531), float2(_529, _531)) * -0.3333333432674408f;
    _537 = (_535 * _529) * UberPostBaseCBuffer_192.z;
    _539 = (_535 * _531) * UberPostBaseCBuffer_192.z;
    _541 = rsqrt(dot(float3(_537, _539, 9.999999747378752e-05f), float3(_537, _539, 9.999999747378752e-05f)));
    _548 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _553 = exp2(log2(sqrt((_537 * _537) + (_539 * _539)) / _548) * UberPostBaseCBuffer_384.z);
    _555 = ((_537 * _541) * _548) * _553;
    _557 = ((_539 * _541) * _548) * _553;
    _566 = t2.SampleBias(s0, float2(((_512 + _474) + (_555 * UberPostBaseCBuffer_400.w)), ((_513 + _475) + (_557 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _576 = t2.SampleBias(s0, float2(((_514 + _474) + (UberPostBaseCBuffer_416.w * _555)), ((_515 + _475) + (UberPostBaseCBuffer_416.w * _557))), (Globals_976), int2(0, 0));
    _586 = t2.SampleBias(s0, float2(((_516 + _474) + (UberPostBaseCBuffer_432.w * _555)), ((_517 + _475) + (UberPostBaseCBuffer_432.w * _557))), (Globals_976), int2(0, 0));
    _642 = (((float4)(t2.SampleBias(s0, float2(_510, _511), (Globals_976), int2(0, 0)))).w);
    _643 = (((UberPostBaseCBuffer_416.x * _576.y) + (UberPostBaseCBuffer_400.x * _566.x)) + (UberPostBaseCBuffer_432.x * _586.z));
    _644 = (((UberPostBaseCBuffer_416.y * _576.y) + (UberPostBaseCBuffer_400.y * _566.x)) + (UberPostBaseCBuffer_432.y * _586.z));
    _645 = (((UberPostBaseCBuffer_416.z * _576.y) + (UberPostBaseCBuffer_400.z * _566.x)) + (UberPostBaseCBuffer_432.z * _586.z));
  } else {
    if (_478) {
      _634 = (((float4)(t2.SampleBias(s0, float2((_512 + _474), (_513 + _475)), (Globals_976), int2(0, 0)))).x);
      _635 = (((float4)(t2.SampleBias(s0, float2((_514 + _474), (_515 + _475)), (Globals_976), int2(0, 0)))).y);
      _636 = (((float4)(t2.SampleBias(s0, float2((_516 + _474), (_517 + _475)), (Globals_976), int2(0, 0)))).z);
    } else {
      _629 = t2.SampleBias(s0, float2(_510, _511), (Globals_976), int2(0, 0));
      _634 = _629.x;
      _635 = _629.y;
      _636 = _629.z;
    }
    _642 = (((float4)(t2.SampleBias(s0, float2(_510, _511), (Globals_976), int2(0, 0)))).w);
    _643 = _634;
    _644 = _635;
    _645 = _636;
  }
  _652 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _652)) {
    _662 = fmod((((Globals_2208.y) * _511) * UberPostBaseCBuffer_448.x), 2.0f);
    _670 = (((select((_662 > 1.0f), (2.0f - _662), _662) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _510;
    _673 = (Globals_2208.w) * (Globals_2208.x);
    _694 = t7.SampleBias(s3, float2(_670, ((select(((frac((((_670 + abs(UberPostBaseCBuffer_464.y)) * _673) - (UberPostBaseCBuffer_464.y * _511)) / ((_673 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _511)), (Globals_976), int2(0, 0));
    _731 = ((((-0.699999988079071f - _694.x) + (exp2(log2(abs(_694.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_694.x < 0.30000001192092896f), 0.0f, 1.0f)) + _694.x) * UberPostBaseCBuffer_336.x;
    _732 = ((((-0.699999988079071f - _694.y) + (exp2(log2(abs(_694.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_694.y < 0.30000001192092896f), 0.0f, 1.0f)) + _694.y) * UberPostBaseCBuffer_336.x;
    _733 = ((((-0.699999988079071f - _694.z) + (exp2(log2(abs(_694.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_694.z < 0.30000001192092896f), 0.0f, 1.0f)) + _694.z) * UberPostBaseCBuffer_336.x;
    _734 = dot(float3(_643, _644, _645), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _737 = (UberPostBaseCBuffer_352.x > 0.5f);
    _750 = select(_737, ((((_731 * _734) - _731) * _642) + _731), _731);
    _751 = select(_737, ((((_732 * _734) - _732) * _642) + _732), _732);
    _752 = select(_737, ((((_733 * _734) - _733) * _642) + _733), _733);
    if (_652) {
      _763 = t8.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _510) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _511) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _777 = (((_763.x * _731) * UberPostBaseCBuffer_336.y) + _750);
      _778 = (((_763.y * _732) * UberPostBaseCBuffer_336.y) + _751);
      _779 = (((_763.z * _733) * UberPostBaseCBuffer_336.y) + _752);
    } else {
      _777 = _750;
      _778 = _751;
      _779 = _752;
    }
    _789 = (_777 + _643);
    _790 = (_778 + _644);
    _791 = (_779 + _645);
    _792 = saturate((((_778 + _777) + _779) * 0.33329999446868896f) + _642);
  } else {
    _789 = _643;
    _790 = _644;
    _791 = _645;
    _792 = _642;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _809 = abs(_511 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _811 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_510 - UberPostBaseCBuffer_112.x);
    _817 = exp2(log2(saturate(1.0f - dot(float2(_811, _809), float2(_811, _809)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _831 = (((_817 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _789);
    _832 = (((_817 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _790);
    _833 = (((_817 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _791);
  } else {
    _831 = _789;
    _832 = _790;
    _833 = _791;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_831, _832, _833);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t4, s0, UberPostBaseCBuffer_000.xyz);
    _882 = tonemapped.x;
    _883 = tonemapped.y;
    _884 = tonemapped.z;
  } else {
    _856 = saturate((log2((_833 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _857 = floor(_856);
    _863 = ((saturate((log2((_832 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _865 = (_857 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_831 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _866 = _856 - _857;
    _868 = t4.SampleLevel(s0, float2((_865 + UberPostBaseCBuffer_000.y), _863), 0.0f);
    _872 = t4.SampleLevel(s0, float2(_865, _863), 0.0f);
    _882 = ((_868.x - _872.x) * _866) + _872.x;
    _883 = ((_868.y - _872.y) * _866) + _872.y;
    _884 = ((_868.z - _872.z) * _866) + _872.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _904 = ((((float4)(t3.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * _474) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * _475) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _908 = 1.0f - (sqrt(dot(float3(_882, _883, _884), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _922 = ((((UberPostBaseCBuffer_208.x * _882) * _904) * _908) + _882);
    _923 = ((((UberPostBaseCBuffer_208.x * _883) * _904) * _908) + _883);
    _924 = ((((UberPostBaseCBuffer_208.x * _884) * _904) * _908) + _884);
  } else {
    _922 = _882;
    _923 = _883;
    _924 = _884;
  }
  _929 = ((_923 + _922) + _924) * 0.3333333432674408f;
  _936 = ((_922 - _929) * UberPostFXColorCorrectionCBuffer_000.w) + _929;
  _937 = ((_923 - _929) * UberPostFXColorCorrectionCBuffer_000.w) + _929;
  _938 = ((_924 - _929) * UberPostFXColorCorrectionCBuffer_000.w) + _929;
  if ((Globals_816[3].w) > 0.5f) {
    _946 = t0.SampleBias(s0, float2(dot(float3(_936, _937, _938), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _951 = _946.x;
    _952 = _946.y;
    _953 = _946.z;
  } else {
    _951 = _936;
    _952 = _937;
    _953 = _938;
  }
  _968 = (((1.0f - _951) - saturate(_951)) * UberPostFXColorCorrectionCBuffer_016.w) + _951;
  _969 = (((1.0f - _952) - saturate(_952)) * UberPostFXColorCorrectionCBuffer_016.w) + _952;
  _970 = (((1.0f - _953) - saturate(_953)) * UberPostFXColorCorrectionCBuffer_016.w) + _953;
  _978 = saturate((saturate(dot(float3(_968, _969, _970), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _1005 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _968) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _978)) * UberPostFXColorCorrectionCBuffer_032.x) + _968);
  // _1006 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _969) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _978)) * UberPostFXColorCorrectionCBuffer_032.x) + _969);
  // _1007 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _970) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _978)) * UberPostFXColorCorrectionCBuffer_032.x) + _970);
  _1005 = ((((UberPostFXColorCorrectionCBuffer_000.x - _968) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _978)) * UberPostFXColorCorrectionCBuffer_032.x) + _968);
  _1006 = ((((UberPostFXColorCorrectionCBuffer_000.y - _969) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _978)) * UberPostFXColorCorrectionCBuffer_032.x) + _969);
  _1007 = ((((UberPostFXColorCorrectionCBuffer_000.z - _970) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _978)) * UberPostFXColorCorrectionCBuffer_032.x) + _970);

  // HDR FX Mask Blend
  float3 result = float3(_1005, _1006, _1007);
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    float m = smoothstep(0.0f, 1.0f, t5.Sample(s0, TEXCOORD).x);

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
  _1082 = result.x;
  _1083 = result.y;
  _1084 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _1013 = t5.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _1082 = min((_1013.x + _1005), 1.0f);
        _1083 = min((_1013.x + _1006), 1.0f);
        _1084 = min((_1013.x + _1007), 1.0f);
      } else {
        _1050 = select((_1005 > 0.5f), 0.0f, 1.0f);
        _1051 = select((_1006 > 0.5f), 0.0f, 1.0f);
        _1052 = select((_1007 > 0.5f), 0.0f, 1.0f);
        _1071 = 1.0f - _1013.x;
        _1082 = (((((1.0f - (((1.0f - _1005) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _1050)) + (((_1005 * 2.0f) * _1050) * UberPostFXColorCorrectionCBuffer_048.x)) * _1013.x) + (_1071 * _1005));
        _1083 = (((((1.0f - (((1.0f - _1006) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _1051)) + (((_1006 * 2.0f) * _1051) * UberPostFXColorCorrectionCBuffer_048.y)) * _1013.x) + (_1071 * _1006));
        _1084 = (((((1.0f - (((1.0f - _1007) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1052)) + (((_1007 * 2.0f) * _1052) * UberPostFXColorCorrectionCBuffer_048.z)) * _1013.x) + (_1071 * _1007));
      }
  } else {
    _1082 = _1005;
    _1083 = _1006;
    _1084 = _1007;
  }
  */

  SV_Target.x = _1082;
  SV_Target.y = _1083;
  SV_Target.z = _1084;
  SV_Target.w = _792;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
