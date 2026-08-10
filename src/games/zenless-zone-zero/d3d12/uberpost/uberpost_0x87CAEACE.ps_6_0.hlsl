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
  float4 _35;
  float _59;
  float _61;
  float _77;
  float _78;
  float _79;
  float _80;
  float _81;
  float _82;
  float _83;
  float _84;
  float _85;
  float _86;
  float _89;
  float _92;
  float _95;
  float _97;
  float _112;
  float _126;
  float _132;
  float _133;
  float _134;
  float _136;
  float _141;
  float _149;
  float _150;
  float _155;
  float _156;
  float _157;
  float _160;
  float _161;
  float _164;
  float _165;
  float _166;
  bool _167;
  float _168;
  float _169;
  float _172;
  float _173;
  float _174;
  float _175;
  float _182;
  float _183;
  float _184;
  float _185;
  float _192;
  float _193;
  float _194;
  float _205;
  float _208;
  float _211;
  float _218;
  float _219;
  float _220;
  float _239;
  float _240;
  float _241;
  float _242;
  float _243;
  float _244;
  float _254;
  float _255;
  float _256;
  float _257;
  float _258;
  float _259;
  float _263;
  float _264;
  float _265;
  float _272;
  float _273;
  float _274;
  float _308;
  float _309;
  float _310;
  float _313;
  float _314;
  float _317;
  float _318;
  float _319;
  bool _320;
  float _321;
  float _322;
  float _325;
  float _326;
  float _327;
  float _328;
  float _335;
  float _336;
  float _337;
  float _338;
  float _345;
  float _346;
  float _347;
  float _358;
  float _361;
  float _364;
  float _371;
  float _372;
  float _373;
  float _392;
  float _393;
  float _394;
  float _395;
  float _396;
  float _397;
  float _407;
  float _408;
  float _409;
  float _410;
  float _411;
  float _412;
  float _416;
  float _417;
  float _418;
  float _425;
  float _426;
  float _427;
  float _464;
  float _482;
  float _483;
  float _484;
  float _519;
  float _520;
  float _521;
  float _522;
  float _523;
  float _524;
  float _525;
  float _526;
  float _625;
  float _626;
  float _627;
  float _656;
  float _657;
  float _658;
  float _767;
  float _768;
  float _769;
  float _955;
  float _956;
  float _957;
  float _967;
  float _968;
  float _969;
  float _970;
  float _1009;
  float _1010;
  float _1011;
  float _1098;
  float _1099;
  float _1100;
  float _1127;
  float _1128;
  float _1129;
  float _1258;
  float _1259;
  float _1260;
  float4 _491;
  float _495;
  float _496;
  float _501;
  float _502;
  float _529;
  float _538;
  float _548;
  float _551;
  float _552;
  float _559;
  float _560;
  float _561;
  float _563;
  float _565;
  float _567;
  float _576;
  float _589;
  float _596;
  float _603;
  float _604;
  float _605;
  float4 _619;
  float4 _650;
  float _664;
  float _665;
  float _668;
  float _669;
  float _672;
  float _673;
  float4 _674;
  float _682;
  float _684;
  float _688;
  float _690;
  float _692;
  float _694;
  float _701;
  float _706;
  float _708;
  float _710;
  float4 _717;
  float4 _725;
  float4 _733;
  float4 _782;
  float _794;
  float _795;
  float _808;
  float _813;
  float _823;
  float _824;
  float _825;
  bool _832;
  float _842;
  float _850;
  float _853;
  float4 _872;
  float _909;
  float _910;
  float _911;
  float _912;
  bool _915;
  float _928;
  float _929;
  float _930;
  float4 _941;
  float _987;
  float _989;
  float _995;
  float _1034;
  float _1035;
  float _1041;
  float _1043;
  float _1044;
  float4 _1046;
  float4 _1050;
  float _1060;
  float _1061;
  float _1062;
  float _1080;
  float _1084;
  float _1105;
  float _1112;
  float _1113;
  float _1114;
  float4 _1122;
  float _1144;
  float _1145;
  float _1146;
  float _1154;
  float _1181;
  float _1182;
  float _1183;
  float4 _1189;
  float _1226;
  float _1227;
  float _1228;
  float _1247;
  _35 = t1.Load(int3((int)(uint((Globals_2208.x) * TEXCOORD.x)), (int)(uint((Globals_2208.y) * TEXCOORD.y)), 0));
  _59 = (TEXCOORD.x * 2.0f) + -1.0f;
  _61 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  _77 = mad((Globals_2144[2].w), _35.x, mad((Globals_2144[1].w), _61, ((Globals_2144[0].w) * _59))) + (Globals_2144[3].w);
  _78 = (mad((Globals_2144[2].x), _35.x, mad((Globals_2144[1].x), _61, ((Globals_2144[0].x) * _59))) + (Globals_2144[3].x)) / _77;
  _79 = (mad((Globals_2144[2].y), _35.x, mad((Globals_2144[1].y), _61, ((Globals_2144[0].y) * _59))) + (Globals_2144[3].y)) / _77;
  _80 = (mad((Globals_2144[2].z), _35.x, mad((Globals_2144[1].z), _61, ((Globals_2144[0].z) * _59))) + (Globals_2144[3].z)) / _77;
  _81 = ddy_coarse(_78);
  _82 = ddy_coarse(_79);
  _83 = ddy_coarse(_80);
  _84 = ddx_coarse(_78);
  _85 = ddx_coarse(_79);
  _86 = ddx_coarse(_80);
  _89 = (_85 * _83) - (_86 * _82);
  _92 = (_86 * _81) - (_84 * _83);
  _95 = (_84 * _82) - (_85 * _81);
  _97 = rsqrt(dot(float3(_89, _92, _95), float3(_89, _92, _95)));
  _112 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((Globals_992.z) * _35.x) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y);
  _126 = UberPostBaseCBuffer_544.w * _79;
  _132 = max(abs(_89 * _97), 9.999999747378752e-06f);
  _133 = max(abs(_92 * _97), 9.999999747378752e-06f);
  _134 = max(abs(_97 * _95), 9.999999747378752e-06f);
  _136 = rsqrt(dot(float3(_132, _133, _134), float3(_132, _133, _134)));
  _141 = _136 * ((_133 + _132) + _134);
  _149 = UberPostBaseCBuffer_560.x * (Globals_208[1].x);
  _150 = UberPostBaseCBuffer_560.y * (Globals_208[1].x);
  _155 = (_126 * UberPostBaseCBuffer_560.z) + _149;
  _156 = ((UberPostBaseCBuffer_544.w * _80) * UberPostBaseCBuffer_560.w) + _150;
  _157 = dot(float2(_155, _156), float2(0.3660254180431366f, 0.3660254180431366f));
  _160 = floor(_155 + _157);
  _161 = floor(_156 + _157);
  _164 = dot(float2(_160, _161), float2(0.21132487058639526f, 0.21132487058639526f));
  _165 = (_155 - _160) + _164;
  _166 = (_156 - _161) + _164;
  _167 = (_165 > _166);
  _168 = select(_167, 1.0f, 0.0f);
  _169 = select(_167, 0.0f, 1.0f);
  _172 = _165 + -0.5773502588272095f;
  _173 = _166 + -0.5773502588272095f;
  _174 = (_165 + 0.21132487058639526f) - _168;
  _175 = (_166 + 0.21132487058639526f) - _169;
  _182 = _160 - (floor(_160 * 0.0034602077212184668f) * 289.0f);
  _183 = _161 - (floor(_161 * 0.0034602077212184668f) * 289.0f);
  _184 = _183 + _169;
  _185 = _183 + 1.0f;
  _192 = ((_183 * 34.0f) + 1.0f) * _183;
  _193 = ((_184 * 34.0f) + 1.0f) * _184;
  _194 = ((_185 * 34.0f) + 1.0f) * _185;
  _205 = (_192 - (floor(_192 * 0.0034602077212184668f) * 289.0f)) + _182;
  _208 = ((_168 + _182) - (floor(_193 * 0.0034602077212184668f) * 289.0f)) + _193;
  _211 = ((_182 + 1.0f) - (floor(_194 * 0.0034602077212184668f) * 289.0f)) + _194;
  _218 = ((_205 * 34.0f) + 1.0f) * _205;
  _219 = ((_208 * 34.0f) + 1.0f) * _208;
  _220 = ((_211 * 34.0f) + 1.0f) * _211;
  _239 = max((0.5f - dot(float2(_165, _166), float2(_165, _166))), 0.0f);
  _240 = max((0.5f - dot(float2(_174, _175), float2(_174, _175))), 0.0f);
  _241 = max((0.5f - dot(float2(_172, _173), float2(_172, _173))), 0.0f);
  _242 = _239 * _239;
  _243 = _240 * _240;
  _244 = _241 * _241;
  _254 = frac((_218 - (floor(_218 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _255 = frac((_219 - (floor(_219 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _256 = frac((_220 - (floor(_220 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _257 = _254 + -1.0f;
  _258 = _255 + -1.0f;
  _259 = _256 + -1.0f;
  _263 = abs(_257) + -0.5f;
  _264 = abs(_258) + -0.5f;
  _265 = abs(_259) + -0.5f;
  _272 = _257 - floor(_254 + -0.5f);
  _273 = _258 - floor(_255 + -0.5f);
  _274 = _259 - floor(_256 + -0.5f);
  _308 = ((UberPostBaseCBuffer_544.w * _78) * UberPostBaseCBuffer_592.x) + _149;
  _309 = (_126 * UberPostBaseCBuffer_592.y) + _150;
  _310 = dot(float2(_308, _309), float2(0.3660254180431366f, 0.3660254180431366f));
  _313 = floor(_308 + _310);
  _314 = floor(_309 + _310);
  _317 = dot(float2(_313, _314), float2(0.21132487058639526f, 0.21132487058639526f));
  _318 = (_308 - _313) + _317;
  _319 = (_309 - _314) + _317;
  _320 = (_318 > _319);
  _321 = select(_320, 1.0f, 0.0f);
  _322 = select(_320, 0.0f, 1.0f);
  _325 = _318 + -0.5773502588272095f;
  _326 = _319 + -0.5773502588272095f;
  _327 = (_318 + 0.21132487058639526f) - _321;
  _328 = (_319 + 0.21132487058639526f) - _322;
  _335 = _313 - (floor(_313 * 0.0034602077212184668f) * 289.0f);
  _336 = _314 - (floor(_314 * 0.0034602077212184668f) * 289.0f);
  _337 = _336 + _322;
  _338 = _336 + 1.0f;
  _345 = ((_336 * 34.0f) + 1.0f) * _336;
  _346 = ((_337 * 34.0f) + 1.0f) * _337;
  _347 = ((_338 * 34.0f) + 1.0f) * _338;
  _358 = (_345 - (floor(_345 * 0.0034602077212184668f) * 289.0f)) + _335;
  _361 = ((_321 + _335) - (floor(_346 * 0.0034602077212184668f) * 289.0f)) + _346;
  _364 = ((_335 + 1.0f) - (floor(_347 * 0.0034602077212184668f) * 289.0f)) + _347;
  _371 = ((_358 * 34.0f) + 1.0f) * _358;
  _372 = ((_361 * 34.0f) + 1.0f) * _361;
  _373 = ((_364 * 34.0f) + 1.0f) * _364;
  _392 = max((0.5f - dot(float2(_318, _319), float2(_318, _319))), 0.0f);
  _393 = max((0.5f - dot(float2(_327, _328), float2(_327, _328))), 0.0f);
  _394 = max((0.5f - dot(float2(_325, _326), float2(_325, _326))), 0.0f);
  _395 = _392 * _392;
  _396 = _393 * _393;
  _397 = _394 * _394;
  _407 = frac((_371 - (floor(_371 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _408 = frac((_372 - (floor(_372 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _409 = frac((_373 - (floor(_373 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  _410 = _407 + -1.0f;
  _411 = _408 + -1.0f;
  _412 = _409 + -1.0f;
  _416 = abs(_410) + -0.5f;
  _417 = abs(_411) + -0.5f;
  _418 = abs(_412) + -0.5f;
  _425 = _410 - floor(_407 + -0.5f);
  _426 = _411 - floor(_408 + -0.5f);
  _427 = _412 - floor(_409 + -0.5f);
  _464 = ((((_112 * _112) * 130.0f) * exp2(log2(1.0f - saturate(abs(_79 - UberPostBaseCBuffer_576.y) / UberPostBaseCBuffer_576.x)) * UberPostBaseCBuffer_576.z)) * UberPostBaseCBuffer_544.x) * ((dot(float3(((_395 * _395) * (1.7928428649902344f - (((_425 * _425) + (_416 * _416)) * 0.8537347316741943f))), ((_396 * _396) * (1.7928428649902344f - (((_426 * _426) + (_417 * _417)) * 0.8537347316741943f))), ((_397 * _397) * (1.7928428649902344f - (((_427 * _427) + (_418 * _418)) * 0.8537347316741943f)))), float3(((_425 * _318) + (_416 * _319)), ((_426 * _327) + (_417 * _328)), ((_427 * _325) + (_418 * _326)))) * ((_136 * _134) / _141)) + (dot(float3(((_242 * _242) * (1.7928428649902344f - (((_272 * _272) + (_263 * _263)) * 0.8537347316741943f))), ((_243 * _243) * (1.7928428649902344f - (((_273 * _273) + (_264 * _264)) * 0.8537347316741943f))), ((_244 * _244) * (1.7928428649902344f - (((_274 * _274) + (_265 * _265)) * 0.8537347316741943f)))), float3(((_272 * _165) + (_263 * _166)), ((_273 * _174) + (_264 * _175)), ((_274 * _172) + (_265 * _173)))) * ((_136 * _132) / _141)));
  _482 = saturate((UberPostBaseCBuffer_544.z * (1.0f / (((((float4)(t1.Load(int3((int)(uint((_464 + TEXCOORD.x) * (Globals_2208.x))), (int)(uint((_464 + TEXCOORD.y) * (Globals_2208.y))), 0)))).x) * (Globals_992.z)) + (Globals_992.w)))) - UberPostBaseCBuffer_544.y) * _464;
  _483 = _482 + TEXCOORD.x;
  _484 = _482 + TEXCOORD.y;
  if (UberPostBaseCBuffer_176.w > 0.0f) {
    _491 = t6.SampleBias(s2, float2(_483, _484), (Globals_976), int2(0, 0));
    _495 = _491.x * 0.10000000149011612f;
    _496 = _491.y * 0.10000000149011612f;
    _501 = (_495 * _491.z) * UberPostBaseCBuffer_176.w;
    _502 = (_496 * _491.z) * UberPostBaseCBuffer_176.w;
    _519 = (_495 + TEXCOORD.x);
    _520 = (_496 + TEXCOORD.y);
    _521 = ((_501 * UberPostBaseCBuffer_176.x) + _495);
    _522 = ((_502 * UberPostBaseCBuffer_176.x) + _496);
    _523 = ((_501 * UberPostBaseCBuffer_176.y) + _495);
    _524 = ((_502 * UberPostBaseCBuffer_176.y) + _496);
    _525 = ((UberPostBaseCBuffer_176.z * _501) + _495);
    _526 = ((UberPostBaseCBuffer_176.z * _502) + _496);
  } else {
    _519 = TEXCOORD.x;
    _520 = TEXCOORD.y;
    _521 = 0.0f;
    _522 = 0.0f;
    _523 = 0.0f;
    _524 = 0.0f;
    _525 = 0.0f;
    _526 = 0.0f;
  }
  _529 = frac(Globals_208[1].x);
  _538 = (((float4)(t7.SampleBias(s3, float2((_529 + (_483 * 5.0f)), (_529 + (_484 * 5.0f))), (Globals_976), int2(0, 0)))).x) + -0.5f;
  _548 = ((_538 * 0.019999999552965164f) * UberPostBaseCBuffer_240.y) * select((abs(_538 * 2.0f) < UberPostBaseCBuffer_240.z), 0.0f, 1.0f);
  _551 = cos(UberPostBaseCBuffer_224.w);
  _552 = sin(UberPostBaseCBuffer_224.w);
  _559 = (UberPostBaseCBuffer_224.x * 0.10000000149011612f) + _548;
  _560 = (UberPostBaseCBuffer_224.y * 0.10000000149011612f) + _548;
  _561 = (UberPostBaseCBuffer_224.z * 0.10000000149011612f) + _548;
  _563 = _559 * _552;
  _565 = _560 * _552;
  _567 = _561 * _552;
  _576 = UberPostBaseCBuffer_240.x * (frac(frac(Globals_208[1].x) * 88.0f) + _484);
  _589 = frac(_529 * 1234.0f);
  _596 = (((_589 * _589) * (select((UberPostBaseCBuffer_256.y < UberPostBaseCBuffer_256.x), UberPostBaseCBuffer_256.x, UberPostBaseCBuffer_256.y) - UberPostBaseCBuffer_256.x)) * _589) + UberPostBaseCBuffer_256.x;
  _603 = select((_596 < (((float4)(t7.SampleBias(s3, float2(0.5f, (_576 + _563)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _604 = select((_596 < (((float4)(t7.SampleBias(s3, float2(0.5f, (_576 + _565)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  _605 = select((_596 < (((float4)(t7.SampleBias(s3, float2(0.5f, (_576 + _567)), (Globals_976), int2(0, 0)))).x)), 0.0f, 1.0f) * UberPostBaseCBuffer_256.z;
  [branch]
  if (UberPostBaseCBuffer_304.z > 0.5f) {
    _619 = t8.SampleBias(s4, float2(((UberPostBaseCBuffer_272.x * _483) + UberPostBaseCBuffer_272.z), ((UberPostBaseCBuffer_272.y * _484) + UberPostBaseCBuffer_272.w)), (Globals_976), int2(0, 0));
    _625 = (_619.x * _603);
    _626 = (_619.x * _604);
    _627 = (_619.x * _605);
  } else {
    _625 = _603;
    _626 = _604;
    _627 = _605;
  }
  [branch]
  if (UberPostBaseCBuffer_304.w > 0.5f) {
    _650 = t8.SampleBias(s4, float2((((UberPostBaseCBuffer_288.x * _483) + UberPostBaseCBuffer_288.z) + frac(UberPostBaseCBuffer_304.x * (Globals_208[1].x))), (((UberPostBaseCBuffer_288.y * _484) + UberPostBaseCBuffer_288.w) + frac(UberPostBaseCBuffer_304.y * (Globals_208[1].x)))), (Globals_976), int2(0, 0));
    _656 = (_650.y * _625);
    _657 = (_650.y * _626);
    _658 = (_650.y * _627);
  } else {
    _656 = _625;
    _657 = _626;
    _658 = _627;
  }
  _664 = (_521 + _483) + (_559 * _551);
  _665 = (_522 + _484) + _563;
  _668 = (_523 + _483) + (_560 * _551);
  _669 = (_524 + _484) + _565;
  _672 = (_525 + _483) + (_561 * _551);
  _673 = (_526 + _484) + _567;
  _674 = t2.SampleBias(s0, float2(_519, _520), (Globals_976), int2(0, 0));
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _682 = ((_483 * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _684 = ((_484 * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _688 = dot(float2(_682, _684), float2(_682, _684)) * -0.3333333432674408f;
    _690 = (_688 * _682) * UberPostBaseCBuffer_192.z;
    _692 = (_688 * _684) * UberPostBaseCBuffer_192.z;
    _694 = rsqrt(dot(float3(_690, _692, 9.999999747378752e-05f), float3(_690, _692, 9.999999747378752e-05f)));
    _701 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _706 = exp2(log2(sqrt((_690 * _690) + (_692 * _692)) / _701) * UberPostBaseCBuffer_384.z);
    _708 = ((_690 * _694) * _701) * _706;
    _710 = ((_692 * _694) * _701) * _706;
    _717 = t2.SampleBias(s0, float2((_664 + (_708 * UberPostBaseCBuffer_400.w)), (_665 + (_710 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _725 = t2.SampleBias(s0, float2((_668 + (UberPostBaseCBuffer_416.w * _708)), (_669 + (UberPostBaseCBuffer_416.w * _710))), (Globals_976), int2(0, 0));
    _733 = t2.SampleBias(s0, float2((_672 + (UberPostBaseCBuffer_432.w * _708)), (_673 + (UberPostBaseCBuffer_432.w * _710))), (Globals_976), int2(0, 0));
    _767 = (((UberPostBaseCBuffer_416.x * _725.y) + (UberPostBaseCBuffer_400.x * _717.x)) + (UberPostBaseCBuffer_432.x * _733.z));
    _768 = (((UberPostBaseCBuffer_416.y * _725.y) + (UberPostBaseCBuffer_400.y * _717.x)) + (UberPostBaseCBuffer_432.y * _733.z));
    _769 = (((UberPostBaseCBuffer_416.z * _725.y) + (UberPostBaseCBuffer_400.z * _717.x)) + (UberPostBaseCBuffer_432.z * _733.z));
  } else {
    _767 = (((float4)(t2.SampleBias(s0, float2(_664, _665), (Globals_976), int2(0, 0)))).x);
    _768 = (((float4)(t2.SampleBias(s0, float2(_668, _669), (Globals_976), int2(0, 0)))).y);
    _769 = (((float4)(t2.SampleBias(s0, float2(_672, _673), (Globals_976), int2(0, 0)))).z);
  }
  _782 = t11.SampleBias(s1, float2(((UberPostBaseCBuffer_368.x * _483) * (Globals_3344.x)), ((UberPostBaseCBuffer_368.y * _484) * (Globals_3344.y))), (Globals_976), int2(0, 0));
  _794 = frac((Globals_208[1].x) * 25.0f) - (1.0f - _484);
  _795 = 0.4000000059604645f - _794;
  _808 = (UberPostBaseCBuffer_368.w * max(((select((_795 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_794 + 0.05000000074505806f) * 10.0f) - _795)) + _795), 0.0f)) + 1.0f;
  _813 = 1.0f - UberPostBaseCBuffer_368.z;
  _823 = (((((_782.x * 12.0f) * _808) * _813) + UberPostBaseCBuffer_368.z) * _767) + _656;
  _824 = (((((_782.y * 12.0f) * _808) * _813) + UberPostBaseCBuffer_368.z) * _768) + _657;
  _825 = (((((_782.z * 12.0f) * _808) * _813) + UberPostBaseCBuffer_368.z) * _769) + _658;
  _832 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _832)) {
    _842 = fmod((((Globals_2208.y) * _520) * UberPostBaseCBuffer_448.x), 2.0f);
    _850 = (((select((_842 > 1.0f), (2.0f - _842), _842) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _519;
    _853 = (Globals_2208.w) * (Globals_2208.x);
    _872 = t9.SampleBias(s5, float2(_850, ((select(((frac((((_850 + abs(UberPostBaseCBuffer_464.y)) * _853) - (UberPostBaseCBuffer_464.y * _520)) / ((_853 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _520)), (Globals_976), int2(0, 0));
    _909 = ((((-0.699999988079071f - _872.x) + (exp2(log2(abs(_872.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_872.x < 0.30000001192092896f), 0.0f, 1.0f)) + _872.x) * UberPostBaseCBuffer_336.x;
    _910 = ((((-0.699999988079071f - _872.y) + (exp2(log2(abs(_872.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_872.y < 0.30000001192092896f), 0.0f, 1.0f)) + _872.y) * UberPostBaseCBuffer_336.x;
    _911 = ((((-0.699999988079071f - _872.z) + (exp2(log2(abs(_872.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_872.z < 0.30000001192092896f), 0.0f, 1.0f)) + _872.z) * UberPostBaseCBuffer_336.x;
    _912 = dot(float3(_823, _824, _825), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _915 = (UberPostBaseCBuffer_352.x > 0.5f);
    _928 = select(_915, ((((_909 * _912) - _909) * _674.w) + _909), _909);
    _929 = select(_915, ((((_910 * _912) - _910) * _674.w) + _910), _910);
    _930 = select(_915, ((((_911 * _912) - _911) * _674.w) + _911), _911);
    if (_832) {
      _941 = t10.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _519) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _520) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _955 = (((_941.x * _909) * UberPostBaseCBuffer_336.y) + _928);
      _956 = (((_941.y * _910) * UberPostBaseCBuffer_336.y) + _929);
      _957 = (((_941.z * _911) * UberPostBaseCBuffer_336.y) + _930);
    } else {
      _955 = _928;
      _956 = _929;
      _957 = _930;
    }
    _967 = (_955 + _823);
    _968 = (_956 + _824);
    _969 = (_957 + _825);
    _970 = saturate((((_956 + _955) + _957) * 0.33329999446868896f) + _674.w);
  } else {
    _967 = _823;
    _968 = _824;
    _969 = _825;
    _970 = _674.w;
  }

  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _987 = abs(_520 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _989 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_519 - UberPostBaseCBuffer_112.x);
    _995 = exp2(log2(saturate(1.0f - dot(float2(_989, _987), float2(_989, _987)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _1009 = (((_995 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _967);
    _1010 = (((_995 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _968);
    _1011 = (((_995 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _969);
  } else {
    _1009 = _967;
    _1010 = _968;
    _1011 = _969;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_1009, _1010, _1011);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t4, s0, UberPostBaseCBuffer_000.xyz);
    _1060 = tonemapped.x;
    _1061 = tonemapped.y;
    _1062 = tonemapped.z;
  } else {
    _1034 = saturate((log2((_1011 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    _1035 = floor(_1034);
    _1041 = ((saturate((log2((_1010 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _1043 = (_1035 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_1009 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    _1044 = _1034 - _1035;
    _1046 = t4.SampleLevel(s0, float2((_1043 + UberPostBaseCBuffer_000.y), _1041), 0.0f);
    _1050 = t4.SampleLevel(s0, float2(_1043, _1041), 0.0f);
    _1060 = ((_1046.x - _1050.x) * _1044) + _1050.x;
    _1061 = ((_1046.y - _1050.y) * _1044) + _1050.y;
    _1062 = ((_1046.z - _1050.z) * _1044) + _1050.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _1080 = ((((float4)(t3.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * _483) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * _484) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _1084 = 1.0f - (sqrt(dot(float3(_1060, _1061, _1062), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _1098 = ((((UberPostBaseCBuffer_208.x * _1060) * _1080) * _1084) + _1060);
    _1099 = ((((UberPostBaseCBuffer_208.x * _1061) * _1080) * _1084) + _1061);
    _1100 = ((((UberPostBaseCBuffer_208.x * _1062) * _1080) * _1084) + _1062);
  } else {
    _1098 = _1060;
    _1099 = _1061;
    _1100 = _1062;
  }
  _1105 = ((_1099 + _1098) + _1100) * 0.3333333432674408f;
  _1112 = ((_1098 - _1105) * UberPostFXColorCorrectionCBuffer_000.w) + _1105;
  _1113 = ((_1099 - _1105) * UberPostFXColorCorrectionCBuffer_000.w) + _1105;
  _1114 = ((_1100 - _1105) * UberPostFXColorCorrectionCBuffer_000.w) + _1105;
  if ((Globals_816[3].w) > 0.5f) {
    _1122 = t0.SampleBias(s0, float2(dot(float3(_1112, _1113, _1114), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), (Globals_976), int2(0, 0));
    _1127 = _1122.x;
    _1128 = _1122.y;
    _1129 = _1122.z;
  } else {
    _1127 = _1112;
    _1128 = _1113;
    _1129 = _1114;
  }
  _1144 = (((1.0f - _1127) - saturate(_1127)) * UberPostFXColorCorrectionCBuffer_016.w) + _1127;
  _1145 = (((1.0f - _1128) - saturate(_1128)) * UberPostFXColorCorrectionCBuffer_016.w) + _1128;
  _1146 = (((1.0f - _1129) - saturate(_1129)) * UberPostFXColorCorrectionCBuffer_016.w) + _1129;
  _1154 = saturate((saturate(dot(float3(_1144, _1145, _1146), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);
  _1181 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _1144) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _1154)) * UberPostFXColorCorrectionCBuffer_032.x) + _1144);
  _1182 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _1145) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _1154)) * UberPostFXColorCorrectionCBuffer_032.x) + _1145);
  _1183 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _1146) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _1154)) * UberPostFXColorCorrectionCBuffer_032.x) + _1146);
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    _1189 = t5.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
      _1258 = min((_1189.x + _1181), 1.0f);
      _1259 = min((_1189.x + _1182), 1.0f);
      _1260 = min((_1189.x + _1183), 1.0f);
    } else {
      _1226 = select((_1181 > 0.5f), 0.0f, 1.0f);
      _1227 = select((_1182 > 0.5f), 0.0f, 1.0f);
      _1228 = select((_1183 > 0.5f), 0.0f, 1.0f);
      _1247 = 1.0f - _1189.x;
      _1258 = (((((1.0f - (((1.0f - _1181) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _1226)) + (((_1181 * 2.0f) * _1226) * UberPostFXColorCorrectionCBuffer_048.x)) * _1189.x) + (_1247 * _1181));
      _1259 = (((((1.0f - (((1.0f - _1182) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _1227)) + (((_1182 * 2.0f) * _1227) * UberPostFXColorCorrectionCBuffer_048.y)) * _1189.x) + (_1247 * _1182));
      _1260 = (((((1.0f - (((1.0f - _1183) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _1228)) + (((_1183 * 2.0f) * _1228) * UberPostFXColorCorrectionCBuffer_048.z)) * _1189.x) + (_1247 * _1183));
    }
  } else {
    _1258 = _1181;
    _1259 = _1182;
    _1260 = _1183;
  }
  SV_Target.x = _1258;
  SV_Target.y = _1259;
  SV_Target.z = _1260;
  SV_Target.w = _970;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
