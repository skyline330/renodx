#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

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
  bool _17;
  float _49;
  float _50;
  float _51;
  float _52;
  float _53;
  float _54;
  float _55;
  float _56;
  float _173;
  float _174;
  float _175;
  float _181;
  float _182;
  float _183;
  float _184;
  float _316;
  float _317;
  float _318;
  float _328;
  float _329;
  float _330;
  float _331;
  float _370;
  float _371;
  float _372;
  float _500;
  float _501;
  float _502;
  float4 _21;
  float _25;
  float _26;
  float _31;
  float _32;
  float _68;
  float _70;
  float _74;
  float _76;
  float _78;
  float _80;
  float _87;
  float _92;
  float _94;
  float _96;
  float4 _105;
  float4 _115;
  float4 _125;
  float4 _168;
  bool _191;
  float _201;
  float _209;
  float _212;
  float4 _233;
  float _270;
  float _271;
  float _272;
  float _273;
  bool _276;
  float _289;
  float _290;
  float _291;
  float4 _302;
  float _348;
  float _350;
  float _356;
  float _377;
  float _378;
  float _379;
  float _407;
  float _408;
  float _414;
  float _416;
  float _417;
  float4 _419;
  float4 _423;
  float _433;
  float _434;
  float _435;
  float _460;
  float _461;
  float _462;
  float _482;
  float _486;
  _17 = (UberPostBaseCBuffer_176.w > 0.0f);
  if (_17) {
    _21 = t3.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), (Globals_976), int2(0, 0));
    _25 = _21.x * 0.10000000149011612f;
    _26 = _21.y * 0.10000000149011612f;
    _31 = (_25 * _21.z) * UberPostBaseCBuffer_176.w;
    _32 = (_26 * _21.z) * UberPostBaseCBuffer_176.w;
    _49 = (_25 + TEXCOORD.x);
    _50 = (_26 + TEXCOORD.y);
    _51 = ((_31 * UberPostBaseCBuffer_176.x) + _25);
    _52 = ((_32 * UberPostBaseCBuffer_176.x) + _26);
    _53 = ((_31 * UberPostBaseCBuffer_176.y) + _25);
    _54 = ((_32 * UberPostBaseCBuffer_176.y) + _26);
    _55 = ((UberPostBaseCBuffer_176.z * _31) + _25);
    _56 = ((UberPostBaseCBuffer_176.z * _32) + _26);
  } else {
    _49 = TEXCOORD.x;
    _50 = TEXCOORD.y;
    _51 = 0.0f;
    _52 = 0.0f;
    _53 = 0.0f;
    _54 = 0.0f;
    _55 = 0.0f;
    _56 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    _68 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    _70 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    _74 = dot(float2(_68, _70), float2(_68, _70)) * -0.3333333432674408f;
    _76 = (_74 * _68) * UberPostBaseCBuffer_192.z;
    _78 = (_74 * _70) * UberPostBaseCBuffer_192.z;
    _80 = rsqrt(dot(float3(_76, _78, 9.999999747378752e-05f), float3(_76, _78, 9.999999747378752e-05f)));
    _87 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    _92 = exp2(log2(sqrt((_76 * _76) + (_78 * _78)) / _87) * UberPostBaseCBuffer_384.z);
    _94 = ((_76 * _80) * _87) * _92;
    _96 = ((_78 * _80) * _87) * _92;
    _105 = t0.SampleBias(s0, float2(((_51 + TEXCOORD.x) + (_94 * UberPostBaseCBuffer_400.w)), ((_52 + TEXCOORD.y) + (_96 * UberPostBaseCBuffer_400.w))), (Globals_976), int2(0, 0));
    _115 = t0.SampleBias(s0, float2(((_53 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _94)), ((_54 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _96))), (Globals_976), int2(0, 0));
    _125 = t0.SampleBias(s0, float2(((_55 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _94)), ((_56 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _96))), (Globals_976), int2(0, 0));
    _181 = (((float4)(t0.SampleBias(s0, float2(_49, _50), (Globals_976), int2(0, 0)))).w);
    _182 = (((UberPostBaseCBuffer_416.x * _115.y) + (UberPostBaseCBuffer_400.x * _105.x)) + (UberPostBaseCBuffer_432.x * _125.z));
    _183 = (((UberPostBaseCBuffer_416.y * _115.y) + (UberPostBaseCBuffer_400.y * _105.x)) + (UberPostBaseCBuffer_432.y * _125.z));
    _184 = (((UberPostBaseCBuffer_416.z * _115.y) + (UberPostBaseCBuffer_400.z * _105.x)) + (UberPostBaseCBuffer_432.z * _125.z));
  } else {
    if (_17) {
      _173 = (((float4)(t0.SampleBias(s0, float2((_51 + TEXCOORD.x), (_52 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).x);
      _174 = (((float4)(t0.SampleBias(s0, float2((_53 + TEXCOORD.x), (_54 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).y);
      _175 = (((float4)(t0.SampleBias(s0, float2((_55 + TEXCOORD.x), (_56 + TEXCOORD.y)), (Globals_976), int2(0, 0)))).z);
    } else {
      _168 = t0.SampleBias(s0, float2(_49, _50), (Globals_976), int2(0, 0));
      _173 = _168.x;
      _174 = _168.y;
      _175 = _168.z;
    }
    _181 = (((float4)(t0.SampleBias(s0, float2(_49, _50), (Globals_976), int2(0, 0)))).w);
    _182 = _173;
    _183 = _174;
    _184 = _175;
  }
  _191 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((UberPostBaseCBuffer_336.z < 0.5f) && ((UberPostBaseCBuffer_336.x > 0.0f) || _191)) {
    _201 = fmod((((Globals_2208.y) * _50) * UberPostBaseCBuffer_448.x), 2.0f);
    _209 = (((select((_201 > 1.0f), (2.0f - _201), _201) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _49;
    _212 = (Globals_2208.w) * (Globals_2208.x);
    _233 = t4.SampleBias(s3, float2(_209, ((select(((frac((((_209 + abs(UberPostBaseCBuffer_464.y)) * _212) - (UberPostBaseCBuffer_464.y * _50)) / ((_212 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _50)), (Globals_976), int2(0, 0));
    _270 = ((((-0.699999988079071f - _233.x) + (exp2(log2(abs(_233.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_233.x < 0.30000001192092896f), 0.0f, 1.0f)) + _233.x) * UberPostBaseCBuffer_336.x;
    _271 = ((((-0.699999988079071f - _233.y) + (exp2(log2(abs(_233.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_233.y < 0.30000001192092896f), 0.0f, 1.0f)) + _233.y) * UberPostBaseCBuffer_336.x;
    _272 = ((((-0.699999988079071f - _233.z) + (exp2(log2(abs(_233.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_233.z < 0.30000001192092896f), 0.0f, 1.0f)) + _233.z) * UberPostBaseCBuffer_336.x;
    _273 = dot(float3(_182, _183, _184), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    _276 = (UberPostBaseCBuffer_352.x > 0.5f);
    _289 = select(_276, ((((_270 * _273) - _270) * _181) + _270), _270);
    _290 = select(_276, ((((_271 * _273) - _271) * _181) + _271), _271);
    _291 = select(_276, ((((_272 * _273) - _272) * _181) + _272), _272);
    if (_191) {
      _302 = t5.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _49) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _50) + UberPostBaseCBuffer_320.w)), (Globals_976), int2(0, 0));
      _316 = (((_302.x * _270) * UberPostBaseCBuffer_336.y) + _289);
      _317 = (((_302.y * _271) * UberPostBaseCBuffer_336.y) + _290);
      _318 = (((_302.z * _272) * UberPostBaseCBuffer_336.y) + _291);
    } else {
      _316 = _289;
      _317 = _290;
      _318 = _291;
    }
    _328 = (_316 + _182);
    _329 = (_317 + _183);
    _330 = (_318 + _184);
    _331 = saturate((((_317 + _316) + _318) * 0.33329999446868896f) + _181);
  } else {
    _328 = _182;
    _329 = _183;
    _330 = _184;
    _331 = _181;
  }
  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    _348 = abs(_50 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    _350 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_49 - UberPostBaseCBuffer_112.x);
    _356 = exp2(log2(saturate(1.0f - dot(float2(_350, _348), float2(_350, _348)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _370 = (((_356 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _328);
    _371 = (((_356 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _329);
    _372 = (((_356 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _330);
  } else {
    _370 = _328;
    _371 = _329;
    _372 = _330;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_370, _371, _372);
    float3 tonemapped = UberpostVRLutSample(untonemapped, UberPostBaseCBuffer_000, t2, s0);
    tonemapped = ApplyOutputToneMap(tonemapped, TEXCOORD.xy);
    _460 = tonemapped.x;
    _461 = tonemapped.y;
    _462 = tonemapped.z;
  } else {
    _377 = saturate(_370);
    _378 = saturate(_371);
    _379 = saturate(_372);
    _407 = select((_379 <= 0.0031308000907301903f), (_379 * 12.920000076293945f), ((exp2(log2(abs(_379)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * UberPostBaseCBuffer_000.z;
    _408 = floor(_407);
    _414 = ((select((_378 <= 0.0031308000907301903f), (_378 * 12.920000076293945f), ((exp2(log2(abs(_378)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    _416 = (((select((_377 <= 0.0031308000907301903f), (_377 * 12.920000076293945f), ((exp2(log2(abs(_377)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x) + (_408 * UberPostBaseCBuffer_000.y);
    _417 = _407 - _408;
    _419 = t2.SampleLevel(s0, float2((_416 + UberPostBaseCBuffer_000.y), _414), 0.0f);
    _423 = t2.SampleLevel(s0, float2(_416, _414), 0.0f);
    _433 = ((_419.x - _423.x) * _417) + _423.x;
    _434 = ((_419.y - _423.y) * _417) + _423.y;
    _435 = ((_419.z - _423.z) * _417) + _423.z;
    _460 = select((_433 <= 0.040449999272823334f), (_433 * 0.07739938050508499f), exp2(log2(abs((_433 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _461 = select((_434 <= 0.040449999272823334f), (_434 * 0.07739938050508499f), exp2(log2(abs((_434 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _462 = select((_435 <= 0.040449999272823334f), (_435 * 0.07739938050508499f), exp2(log2(abs((_435 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    _482 = ((((float4)(t1.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), (Globals_976), int2(0, 0)))).w) + -0.5f) * 2.0f;
    _486 = 1.0f - (sqrt(dot(float3(_460, _461, _462), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _500 = ((((UberPostBaseCBuffer_208.x * _460) * _482) * _486) + _460);
    _501 = ((((UberPostBaseCBuffer_208.x * _461) * _482) * _486) + _461);
    _502 = ((((UberPostBaseCBuffer_208.x * _462) * _482) * _486) + _462);
  } else {
    _500 = _460;
    _501 = _461;
    _502 = _462;
  }
  SV_Target.x = (_500);
  SV_Target.y = (_501);
  SV_Target.z = (_502);
  SV_Target.w = _331;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
