#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t7 : register(t7);

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
  float4 _25;
  float _49;
  float _51;
  float _67;
  float _68;
  float _69;
  float _70;
  float _71;
  float _72;
  float _73;
  float _74;
  float _75;
  float _76;
  float _79;
  float _82;
  float _85;
  float _87;
  float _102;
  float _116;
  float _122;
  float _123;
  float _124;
  float _126;
  float _131;
  float _139;
  float _140;
  float _145;
  float _146;
  float _147;
  float _150;
  float _151;
  float _154;
  float _155;
  float _156;
  bool _157;
  float _158;
  float _159;
  float _162;
  float _163;
  float _164;
  float _165;
  float _172;
  float _173;
  float _174;
  float _175;
  float _182;
  float _183;
  float _184;
  float _195;
  float _198;
  float _201;
  float _208;
  float _209;
  float _210;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  float _234;
  float _244;
  float _245;
  float _246;
  float _247;
  float _248;
  float _249;
  float _253;
  float _254;
  float _255;
  float _262;
  float _263;
  float _264;
  float _298;
  float _299;
  float _300;
  float _303;
  float _304;
  float _307;
  float _308;
  float _309;
  bool _310;
  float _311;
  float _312;
  float _315;
  float _316;
  float _317;
  float _318;
  float _325;
  float _326;
  float _327;
  float _328;
  float _335;
  float _336;
  float _337;
  float _348;
  float _351;
  float _354;
  float _361;
  float _362;
  float _363;
  float _382;
  float _383;
  float _384;
  float _385;
  float _386;
  float _387;
  float _397;
  float _398;
  float _399;
  float _400;
  float _401;
  float _402;
  float _406;
  float _407;
  float _408;
  float _415;
  float _416;
  float _417;
  float _454;
  float _472;
  float _473;
  float _474;
  bool _477;
  float _509;
  float _510;
  float _511;
  float _512;
  float _513;
  float _514;
  float _515;
  float _516;
  float _633;
  float _634;
  float _635;
  float _641;
  float _642;
  float _643;
  float _644;
  float _776;
  float _777;
  float _778;
  float _788;
  float _789;
  float _790;
  float _791;
  float _830;
  float _831;
  float _832;
  float _870;
  float _871;
  float _872;
  float _899;
  float _900;
  float _901;
  float _1030;
  float _1031;
  float _1032;
  float4 _481;
  float _485;
  float _486;
  float _491;
  float _492;
  float _528;
  float _530;
  float _534;
  float _536;
  float _538;
  float _540;
  float _547;
  float _552;
  float _554;
  float _556;
  float4 _565;
  float4 _575;
  float4 _585;
  float4 _628;
  bool _651;
  float _661;
  float _669;
  float _672;
  float4 _693;
  float _730;
  float _731;
  float _732;
  float _733;
  bool _736;
  float _749;
  float _750;
  float _751;
  float4 _762;
  float _808;
  float _810;
  float _816;
  float _852;
  float _856;
  float _877;
  float _884;
  float _885;
  float _886;
  float4 _894;
  float _916;
  float _917;
  float _918;
  float _926;
  float _953;
  float _954;
  float _955;
  float4 _961;
  float _998;
  float _999;
  float _1000;
  float _1019;
  _25 = t1.Load(int3((int)(uint((Globals_2208.x) * TEXCOORD.x)), (int)(uint((Globals_2208.y) * TEXCOORD.y)), 0));
  _49 = (TEXCOORD.x * 2.0f) + -1.0f;
  _51 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  _67 = mad((Globals_2144[2].w), _25.x, mad((Globals_2144[1].w), _51, ((Globals_2144[0].w) * _49))) + (Globals_2144[3].w);
  _68 = (mad((Globals_2144[2].x), _25.x, mad((Globals_2144[1].x), _51, ((Globals_2144[0].x) * _49))) + (Globals_2144[3].x)) / _67;
  _69 = (mad((Globals_2144[2].y), _25.x, mad((Globals_2144[1].y), _51, ((Globals_2144[0].y) * _49))) + (Globals_2144[3].y)) / _67;
  _70 = (mad((Globals_2144[2].z), _25.x, mad((Globals_2144[1].z), _51, ((Globals_2144[0].z) * _49))) + (Globals_2144[3].z)) / _67;
  _71 = ddy_coarse(_68);
  _72 = ddy_coarse(_69);
  _73 = ddy_coarse(_70);
  _74 = ddx_coarse(_68);
  _75 = ddx_coarse(_69);
  _76 = ddx_coarse(_70);
  _79 = (_75 * _73) - (_76 * _72);
  _82 = (_76 * _71) - (_74 * _73);
  _85 = (_74 * _72) - (_75 * _71);
  _87 = rsqrt(dot(float3(_79, _82, _85), float3(_79, _82, _85)));
  _102 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((Globals_992.z) * _25.x) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y);
  _116 = UberPostBaseCBuffer_544.w * _69;
  _122 = max(abs(_79 * _87), 9.999999747378752e-06f);
  _123 = max(abs(_82 * _87), 9.999999747378752e-06f);
  _124 = max(abs(_87 * _85), 9.999999747378752e-06f);
  _126 = rsqrt(dot(float3(_122, _123, _124), float3(_122, _123, _124)));
  _131 = _126 * ((_123 + _122) + _124);
  _139 = UberPostBaseCBuffer_560.x * (Globals_208[1].x);
  _140 = UberPostBaseCBuffer_560.y * (Globals_208[1].x);
  _145 = (_116 * UberPostBaseCBuffer_560.z) + _139;
  _146 = ((UberPostBaseCBuffer_544.w * _70) * UberPostBaseCBuffer_560.w) + _140;
  _147 = dot(float2(_145, _146), float2(0.3660254180431366f, 0.3660254180431366f));
  _150 = floor(_145 + _147);
  _151 = floor(_146 + _147);
  _154 = dot(float2(_150, _151), float2(0.21132487058639526f, 0.21132487058639526f));
  _155 = (_145 - _150) + _154;
  _156 = (_146 - _151) + _154;
  _157 = (_155 > _156);
  _158 = select(_157, 1.0f, 0.0f);
  _159 = select(_157, 0.0f, 1.0f);
  _162 = _155 + -0.5773502588272095f;
  _163 = _156 + -0.5773502588272095f;
  _164 = (_155 + 0.21132487058639526f) - _158;
  _165 = (_156 + 0.21132487058639526f) - _159;
  _172 = _150 - (floor(_150 * 0.0034602077212184668f) * 289.0f);
  _173 = _151 - (floor(_151 * 0.0034602077212184668f) * 289.0f);
  _174 = _173 + _159;
  _175 = _173 + 1.0f;
  _182 = ((_173 * 34.0f) + 1.0f) * _173;
  _183 = ((_174 * 34.0f) + 1.0f) * _174;
  _184 = ((_175 * 34.0f) + 1.0f) * _175;
  _195 = (_182 - (floor(_182 * 0.0034602077212184668f) * 289.0f)) + _172;
  _198 = ((_158 + _172) - (floor(_183 * 0.0034602077212184668f) * 289.0f)) + _183;
  _201 = ((_172 + 1.0f) - (floor(_184 * 0.0034602077212184668f) * 289.0f)) + _184;
  _208 = ((_195 * 34.0f) + 1.0f) * _195;
  _209 = ((_198 * 34.0f) + 1.0f) * _198;
  _210 = ((_201 * 34.0f) + 1.0f) * _201;
  _229 = max((0.5f - dot(float2(_155, _156), float2(_155, _156))), 0.0f);
  _230 = max((0.5f - dot(float2(_164, _165), float2(_164, _165))), 0.0f);
  _231 = max((0.5f - dot(float2(_162, _163), float2(_162, _163))), 0.0f);
  _232 = _229 * _229;
  _233 = _230 * _230;
  _234 = _231 * _231;
  _244 = frac((_208 - (floor(_208 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _245 = frac((_209 - (floor(_209 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _246 = frac((_210 - (floor(_210 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _247 = _244 + -1.0f;
  _248 = _245 + -1.0f;
  _249 = _246 + -1.0f;
  _253 = abs(_247) + -0.5f;
  _254 = abs(_248) + -0.5f;
  _255 = abs(_249) + -0.5f;
  _262 = _247 - floor(_244 + -0.5f);
  _263 = _248 - floor(_245 + -0.5f);
  _264 = _249 - floor(_246 + -0.5f);
  _298 = ((UberPostBaseCBuffer_544.w * _68) * UberPostBaseCBuffer_592.x) + _139;
  _299 = (_116 * UberPostBaseCBuffer_592.y) + _140;
  _300 = dot(float2(_298, _299), float2(0.3660254180431366f, 0.3660254180431366f));
  _303 = floor(_298 + _300);
  _304 = floor(_299 + _300);
  _307 = dot(float2(_303, _304), float2(0.21132487058639526f, 0.21132487058639526f));
  _308 = (_298 - _303) + _307;
  _309 = (_299 - _304) + _307;
  _310 = (_308 > _309);
  _311 = select(_310, 1.0f, 0.0f);
  _312 = select(_310, 0.0f, 1.0f);
  _315 = _308 + -0.5773502588272095f;
  _316 = _309 + -0.5773502588272095f;
  _317 = (_308 + 0.21132487058639526f) - _311;
  _318 = (_309 + 0.21132487058639526f) - _312;
  _325 = _303 - (floor(_303 * 0.0034602077212184668f) * 289.0f);
  _326 = _304 - (floor(_304 * 0.0034602077212184668f) * 289.0f);
  _327 = _326 + _312;
  _328 = _326 + 1.0f;
  _335 = ((_326 * 34.0f) + 1.0f) * _326;
  _336 = ((_327 * 34.0f) + 1.0f) * _327;
  _337 = ((_328 * 34.0f) + 1.0f) * _328;
  _348 = (_335 - (floor(_335 * 0.0034602077212184668f) * 289.0f)) + _325;
  _351 = ((_311 + _325) - (floor(_336 * 0.0034602077212184668f) * 289.0f)) + _336;
  _354 = ((_325 + 1.0f) - (floor(_337 * 0.0034602077212184668f) * 289.0f)) + _337;
  _361 = ((_348 * 34.0f) + 1.0f) * _348;
  _362 = ((_351 * 34.0f) + 1.0f) * _351;
  _363 = ((_354 * 34.0f) + 1.0f) * _354;
  _382 = max((0.5f - dot(float2(_308, _309), float2(_308, _309))), 0.0f);
  _383 = max((0.5f - dot(float2(_317, _318), float2(_317, _318))), 0.0f);
  _384 = max((0.5f - dot(float2(_315, _316), float2(_315, _316))), 0.0f);
  _385 = _382 * _382;
  _386 = _383 * _383;
  _387 = _384 * _384;
  _397 = frac((_361 - (floor(_361 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _398 = frac((_362 - (floor(_362 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _399 = frac((_363 - (floor(_363 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _400 = _397 + -1.0f;
  _401 = _398 + -1.0f;
  _402 = _399 + -1.0f;
  _406 = abs(_400) + -0.5f;
  _407 = abs(_401) + -0.5f;
  _408 = abs(_402) + -0.5f;
  _415 = _400 - floor(_397 + -0.5f);
  _416 = _401 - floor(_398 + -0.5f);
  _417 = _402 - floor(_399 + -0.5f);
  _454 = ((((_102 * _102) * 130.0f) * exp2(log2(1.0f - saturate(abs(_69 - UberPostBaseCBuffer_576.y) / UberPostBaseCBuffer_576.x)) * UberPostBaseCBuffer_576.z)) * UberPostBaseCBuffer_544.x) * ((dot(float3(((_385 * _385) * (1.7928428649902344f - (((_415 * _415) + (_406 * _406)) * 0.8537347316741943f))), ((_386 * _386) * (1.7928428649902344f - (((_416 * _416) + (_407 * _407)) * 0.8537347316741943f))), ((_387 * _387) * (1.7928428649902344f - (((_417 * _417) + (_408 * _408)) * 0.8537347316741943f)))), float3(((_415 * _308) + (_406 * _309)), ((_416 * _317) + (_407 * _318)), ((_417 * _315) + (_408 * _316)))) * ((_126 * _124) / _131)) + (dot(float3(((_232 * _232) * (1.7928428649902344f - (((_262 * _262) + (_253 * _253)) * 0.8537347316741943f))), ((_233 * _233) * (1.7928428649902344f - (((_263 * _263) + (_254 * _254)) * 0.8537347316741943f))), ((_234 * _234) * (1.7928428649902344f - (((_264 * _264) + (_255 * _255)) * 0.8537347316741943f)))), float3(((_262 * _155) + (_253 * _156)), ((_263 * _164) + (_254 * _165)), ((_264 * _162) + (_255 * _163)))) * ((_126 * _122) / _131)));
  _472 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((((float4)(t1.Load(int3((int)(uint((_454 + TEXCOORD.x) * (Globals_2208.x))), (int)(uint((_454 + TEXCOORD.y) * (Globals_2208.y))), 0)))).x) * (Globals_992.z)) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y) * _454;
  _473 = _472 + TEXCOORD.x;
  _474 = _472 + TEXCOORD.y;
  _477 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_477) {
    _481 = t5.SampleBias(s2, float2(_473, _474), (Globals_976), int2(0, 0));
    _485 = _481.x * 0.10000000149011612f;
    _486 = _481.y * 0.10000000149011612f;
    _491 = (_485 * _481.z) * UberPostBaseCBuffer_176.w;
    _492 = (_486 * _481.z) * UberPostBaseCBuffer_176.w;
    _509 = (_485 + TEXCOORD.x);
    _510 = (_486 + TEXCOORD.y);
    _511 = ((_491 * UberPostBaseCBuffer_176.x) + _485);
    _512 = ((_492 * UberPostBaseCBuffer_176.x) + _486);
    _513 = ((_491 * UberPostBaseCBuffer_176.y) + _485);
    _514 = ((_492 * UberPostBaseCBuffer_176.y) + _486);
    _515 = ((UberPostBaseCBuffer_176.z * _491) + _485);
    _516 = ((UberPostBaseCBuffer_176.z * _492) + _486);
  } else {
    _509 = TEXCOORD.x;
    _510 = TEXCOORD.y;
    _511 = 0.0f;
    _512 = 0.0f;
    _513 = 0.0f;
    _514 = 0.0f;
    _515 = 0.0f;
    _516 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _528 = ((_473 * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _530 = ((_474 * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _534 = dot(float2(_528, _530), float2(_528, _530)) * -0.3333333432674408f;
    _536 = (_534 * _528) * UberPostBaseCBuffer_192.z;
    _538 = (_534 * _530) * UberPostBaseCBuffer_192.z;
    _540 = rsqrt(dot(float3(_536, _538, 9.999999747378752e-05f), float3(_536, _538, 9.999999747378752e-05f)));
    _547 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _552 = exp2(log2(sqrt((_536 * _536) + (_538 * _538)) / _547) * UberPostBaseCBuffer_384.z);
    _554 = ((_536 * _540) * _547) * _552;
    _556 = ((_538 * _540) * _547) * _552;
    _565 = t2.SampleBias(s0, float2(((_511 + _473) + (_554 * UberPostBaseCBuffer_400.w)), ((_512 + _474) + (_556 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _575 = t2.SampleBias(s0, float2(((_513 + _473) + (UberPostBaseCBuffer_416.w * _554)), ((_514 + _474) + (UberPostBaseCBuffer_416.w * _556))), (Globals_976), int2(0, 0));
    _585 = t2.SampleBias(s0, float2(((_515 + _473) + (UberPostBaseCBuffer_432.w * _554)), ((_516 + _474) + (UberPostBaseCBuffer_432.w * _556))), (Globals_976), int2(0, 0));
    _641 = (((float4)(t2.SampleBias(s0, float2(_509, _510), (Globals_976), int2(0, 0)))).w);
    _642 = (((UberPostBaseCBuffer_416.x * _575.y) + (UberPostBaseCBuffer_400.x * _565.x)) + (UberPostBaseCBuffer_432.x * _585.z));
    _643 = (((UberPostBaseCBuffer_416.y * _575.y) + (UberPostBaseCBuffer_400.y * _565.x)) + (UberPostBaseCBuffer_432.y * _585.z));
    _644 = (((UberPostBaseCBuffer_416.z * _575.y) + (UberPostBaseCBuffer_400.z * _565.x)) + (UberPostBaseCBuffer_432.z * _585.z));
  } else {
    if (_477) {
      _633 = (((float4)(t2.SampleBias(s0, float2((_511 + _473), (_512 + _474)), (Globals_976), int2(0, 0)))).x);
      _634 = (((float4)(t2.SampleBias(s0, float2((_513 + _473), (_514 + _474)), (Globals_976), int2(0, 0)))).y);
      _635 = (((float4)(t2.SampleBias(s0, float2((_515 + _473), (_516 + _474)), (Globals_976), int2(0, 0)))).z);
    } else {
      _628 = t2.SampleBias(s0, float2(_509, _510), (Globals_976), int2(0, 0));
      _633 = _628.x;
      _634 = _628.y;
      _635 = _628.z;
    }
    _641 = (((float4)(t2.SampleBias(s0, float2(_509, _510), (Globals_976), int2(0, 0)))).w);
    _642 = _633;
    _643 = _634;
    _644 = _635;
  }
  _651 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _651)) {
    _661 = fmod((((Globals_2208.y) * _510) * UberPostBaseCBuffer_448.x), 2.0f);
    _669 = (((select((_661 > 1.0f), (2.0f - _661), _661) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _509;
    _672 = (Globals_2208.w) * (Globals_2208.x);
    _693 = t6.SampleBias(s3, float2(_669, ((select(((frac((((_669 + abs(UberPostBaseCBuffer_464.y)) * _672) - (UberPostBaseCBuffer_464.y * _510)) / ((_672 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _510)), (Globals_976), int2(0, 0));
    _730 = ((((-0.699999988079071f - _693.x) + (exp2(log2(abs(_693.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_693.x < 0.30000001192092896f), 0.0f, 1.0f)) + _693.x) * UberPostBaseCBuffer_336.x;
    _731 = ((((-0.699999988079071f - _693.y) + (exp2(log2(abs(_693.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_693.y < 0.30000001192092896f), 0.0f, 1.0f)) + _693.y) * UberPostBaseCBuffer_336.x;
    _732 = ((((-0.699999988079071f - _693.z) + (exp2(log2(abs(_693.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_693.z < 0.30000001192092896f), 0.0f, 1.0f)) + _693.z) * UberPostBaseCBuffer_336.x;
    _733 = dot(float3(_642, _643, _644), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _736 = (UberPostBaseCBuffer_352.x > 0.5f);
    _749 = select(_736, ((((_730 * _733) - _730) * _641) + _730), _730);
    _750 = select(_736, ((((_731 * _733) - _731) * _641) + _731), _731);
    _751 = select(_736, ((((_732 * _733) - _732) * _641) + _732), _732);
    if (_651) {
      _762 = t7.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _509) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _510) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _776 = (((_762.x * _730) * UberPostBaseCBuffer_336.y) + _749);
      _777 = (((_762.y * _731) * UberPostBaseCBuffer_336.y) + _750);
      _778 = (((_762.z * _732) * UberPostBaseCBuffer_336.y) + _751);
    } else {
      _776 = _749;
      _777 = _750;
      _778 = _751;
    }
    _788 = (_776 + _642);
    _789 = (_777 + _643);
    _790 = (_778 + _644);
    _791 = saturate((((_777 + _776) + _778) * 0.33329999446868896f) + _641);
  } else {
    _788 = _642;
    _789 = _643;
    _790 = _644;
    _791 = _641;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _808 = abs(_510 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _810 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_509 - UberPostBaseCBuffer_112.x);
    _816 = exp2(log2(saturate(1.0f - dot(float2(_810, _808), float2(_810, _808)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _830 = (((_816 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _788);
    _831 = (((_816 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _789);
    _832 = (((_816 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _790);
  } else {
    _830 = _788;
    _831 = _789;
    _832 = _790;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_830, _831, _832);
    float3 tonemapped = ApplyOutputToneMap(untonemapped, TEXCOORD.xy);
    _830 = tonemapped.x;
    _831 = tonemapped.y;
    _832 = tonemapped.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _852 = ((((float4)(t3.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * _473) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * _474) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _856 = 1.0f - (sqrt(dot(float3(_830, _831, _832), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _870 = ((((UberPostBaseCBuffer_208.x * _830) * _852) * _856) + _830);
    _871 = ((((UberPostBaseCBuffer_208.x * _831) * _852) * _856) + _831);
    _872 = ((((UberPostBaseCBuffer_208.x * _832) * _852) * _856) + _832);
  } else {
    _870 = _830;
    _871 = _831;
    _872 = _832;
  }
  _877 = ((_871 + _870) + _872) * 0.3333333432674408f;
  _884 = ((_870 - _877) * UberPostFXColorCorrectionCBuffer_000.w) + _877;
  _885 = ((_871 - _877) * UberPostFXColorCorrectionCBuffer_000.w) + _877;
  _886 = ((_872 - _877) * UberPostFXColorCorrectionCBuffer_000.w) + _877;
  if ((Globals_816[3].w) > 0.5f) {
    _894 = t0.SampleBias(s0, float2(dot(float3(_884, _885, _886), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _899 = _894.x;
    _900 = _894.y;
    _901 = _894.z;
  } else {
    _899 = _884;
    _900 = _885;
    _901 = _886;
  }
  _916 = (((1.0f - _899) - saturate(_899)) * UberPostFXColorCorrectionCBuffer_016.w) + _899;
  _917 = (((1.0f - _900) - saturate(_900)) * UberPostFXColorCorrectionCBuffer_016.w) + _900;
  _918 = (((1.0f - _901) - saturate(_901)) * UberPostFXColorCorrectionCBuffer_016.w) + _901;
  _926 = saturate((saturate(dot(float3(_916, _917, _918), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);

  // _953 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _916) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _926)) * UberPostFXColorCorrectionCBuffer_032.x) + _916);
  // _954 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _917) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _926)) * UberPostFXColorCorrectionCBuffer_032.x) + _917);
  // _955 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _918) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _926)) * UberPostFXColorCorrectionCBuffer_032.x) + _918);
  _953 = ((((UberPostFXColorCorrectionCBuffer_000.x - _916) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _926)) * UberPostFXColorCorrectionCBuffer_032.x) + _916);
  _954 = ((((UberPostFXColorCorrectionCBuffer_000.y - _917) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _926)) * UberPostFXColorCorrectionCBuffer_032.x) + _917);
  _955 = ((((UberPostFXColorCorrectionCBuffer_000.z - _918) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _926)) * UberPostFXColorCorrectionCBuffer_032.x) + _918);

  // HDR FX Mask Blend
  float3 result = float3(_953, _954, _955);
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
  _1030 = result.x;
  _1031 = result.y;
  _1032 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _961 = t4.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
      if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
        _1030 = min((_961.x + _953), 1.0f);
        _1031 = min((_961.x + _954), 1.0f);
        _1032 = min((_961.x + _955), 1.0f);
      } else {
        _998 = select((_953 > 0.5f), 0.0f, 1.0f);
        _999 = select((_954 > 0.5f), 0.0f, 1.0f);
        _1000 = select((_955 > 0.5f), 0.0f, 1.0f);
        _1019 = 1.0f - _961.x;
        _1030 = (((((1.0f - (((1.0f - _953) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _998)) + (((_953 * 2.0f) * _998) * UberPostFXColorCorrectionCBuffer_048.x)) * _961.x) + (_1019 * _953));
        _1031 = (((((1.0f - (((1.0f - _954) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _999)) + (((_954 * 2.0f) * _999) * UberPostFXColorCorrectionCBuffer_048.y)) * _961.x) + (_1019 * _954));
        _1032 = (((((1.0f - (((1.0f - _955) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1000)) + (((_955 * 2.0f) * _1000) * UberPostFXColorCorrectionCBuffer_048.z)) * _961.x) + (_1019 * _955));
      }
  } else {
    _1030 = _953;
    _1031 = _954;
    _1032 = _955;
  }
  */

  SV_Target.x = _1030;
  SV_Target.y = _1031;
  SV_Target.z = _1032;
  SV_Target.w = _791;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
