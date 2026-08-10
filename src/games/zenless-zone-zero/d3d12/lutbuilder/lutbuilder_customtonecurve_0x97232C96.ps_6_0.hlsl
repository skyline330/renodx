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
  float Globals_2752 : packoffset(c172.x);
  float4 Globals_2768 : packoffset(c173.x);
  float4 Globals_2784 : packoffset(c174.x);
  float4 Globals_2800 : packoffset(c175.x);
  float4 Globals_2816 : packoffset(c176.x);
  float4 Globals_2832 : packoffset(c177.x);
  float4 Globals_2848 : packoffset(c178.x);
  float4 Globals_2864 : packoffset(c179.x);
  float4 Globals_2880 : packoffset(c180.x);
  float4 Globals_2896 : packoffset(c181.x);
  float4 Globals_2912 : packoffset(c182.x);
  float4 Globals_2928 : packoffset(c183.x);
  float4 Globals_2944 : packoffset(c184.x);
  float4 Globals_2960 : packoffset(c185.x);
  float4 Globals_2976 : packoffset(c186.x);
  float4 Globals_2992 : packoffset(c187.x);
  float4 Globals_3008 : packoffset(c188.x);
  float4 Globals_3024 : packoffset(c189.x);
  float3 Globals_3040 : packoffset(c190.x);
  float4 Globals_3056 : packoffset(c191.x);
  float2 Globals_3072 : packoffset(c192.x);
  float4 Globals_3088 : packoffset(c193.x);
  float2 Globals_3104 : packoffset(c194.x);
  float4 Globals_3120 : packoffset(c195.x);
  float2 Globals_3136 : packoffset(c196.x);
  float Globals_3144 : packoffset(c196.z);
  float Globals_3148 : packoffset(c196.w);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

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

  // https://github.com/Unity-Technologies/Graphics/blob/v7.7.1/com.unity.render-pipelines.universal/Shaders/PostProcessing/LutBuilderHdr.shader

  float _22;
  float _25;
  float _40;
  float _43;
  float _44;
  float _58;
  float _59;
  float _60;
  float _126;
  float _127;
  float _128;
  float _134;
  float _135;
  float _142;
  float _143;
  float _144;
  float _145;
  float _146;
  float _147;
  float _155;
  float _156;
  float _157;
  float _158;
  float _159;
  float _160;
  float _161;
  float _162;
  float _163;
  float _197;
  float _198;
  float _199;
  float _212;
  float _213;
  float _214;
  float _215;
  float _216;
  float _217;
  float _251;
  float _252;
  float _253;
  float _278;
  float _279;
  float _280;
  float _285;
  float _290;
  float _295;
  float _296;
  float _303;
  float _307;
  float _308;
  float _314;
  float _318;
  float _319;
  float _361;
  float _362;
  float _363;
  float _398;
  float _399;
  float _400;
  float _402;
  float _407;
  float _408;
  float _410;
  float _412;
  float _419;
  float _420;
  float _422;
  float _429;
  float _431;
  float _450;
  float _453;
  float _460;
  float _466;
  float _497;
  float _498;
  float _499;
  float _500;
  float _513;
  float _693;
  float _694;
  float _695;
  float _696;
  float _697;
  float _698;
  float _716;
  float _717;
  float _718;
  float _719;
  float _720;
  float _721;
  float _739;
  float _740;
  float _741;
  float _742;
  float _743;
  float _744;
  float _860;
  float _861;
  float _862;
  float _528;
  float _529;
  float _530;
  float _553;
  float _554;
  float _560;
  float _562;
  float _563;
  float4 _565;
  float4 _569;
  float _604;
  float _605;
  float _606;
  float _610;
  float _639;
  float _644;
  float _649;
  float _653;
  float _685;
  float _686;
  float _687;
  float _700;
  float _710;
  float _723;
  float _733;
  float _746;
  float _756;
  float _761;
  float _762;
  float _763;
  float _788;
  float _789;
  float _790;
  float _794;
  float _795;
  float _801;
  float _803;
  float _804;
  float4 _806;
  float4 _810;
  float _829;
  float _830;
  float _831;
  float _866;
  _22 = TEXCOORD.x - (Globals_2784.y);
  _25 = frac(_22 * (Globals_2784.x));
  _40 = exp2(((_25 * (Globals_2784.w)) + -0.3860360085964203f) * 13.60548210144043f) + -0.047995999455451965f;
  _43 = (exp2((((TEXCOORD.y - (Globals_2784.z)) * (Globals_2784.w)) + -0.3860360085964203f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f;
  _44 = (exp2((((_22 - (_25 / (Globals_2784.x))) * (Globals_2784.w)) + -0.3860360085964203f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f;

  _58 = (Globals_2800.x) * mad(0.008926319889724255f, _44, mad(0.5499410033226013f, _43, (_40 * 0.07027290016412735f)));
  _59 = (Globals_2800.y) * mad(0.0013577500358223915f, _44, mad(0.9631720185279846f, _43, (_40 * 0.012751488015055656f)));
  _60 = (Globals_2800.z) * mad(0.9362450242042542f, _44, mad(0.1280210018157959f, _43, (_40 * 0.004159475676715374f)));

  _126 = exp2(log2(abs(max(0.0f, (((exp2((((Globals_2880.z) * ((log2((mad(-0.024891000241041183f, _60, mad(-1.628790020942688f, _59, (_58 * 2.8584699630737305f))) * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + -0.027552396059036255f)) + 0.027552396059036255f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) * (Globals_2816.x))))) * 0.4545454680919647f);
  _127 = exp2(log2(abs(max(0.0f, (((exp2((((Globals_2880.z) * ((log2((mad(0.00032428099075332284f, _60, mad(1.1582000255584717f, _59, (_58 * -0.21018199622631073f))) * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + -0.027552396059036255f)) + 0.027552396059036255f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) * (Globals_2816.y))))) * 0.4545454680919647f);
  _128 = exp2(log2(abs(max(0.0f, (((exp2(((((log2((mad(1.0686700344085693f, _60, mad(-0.11816900223493576f, _59, (_58 * -0.041811998933553696f))) * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + -0.027552396059036255f) * (Globals_2880.z)) + 0.027552396059036255f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) * (Globals_2816.z))))) * 0.4545454680919647f);

  _134 = saturate(dot(float3(saturate(_126), saturate(_127), saturate(_128)), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)) + (Globals_3008.w));
  _135 = 1.0f - _134;
  _142 = ((Globals_3008.x) + -0.5f) * _135;
  _143 = ((Globals_3008.y) + -0.5f) * _135;
  _144 = ((Globals_3008.z) + -0.5f) * _135;
  _145 = _142 + 0.5f;
  _146 = _143 + 0.5f;
  _147 = _144 + 0.5f;
  _155 = ((Globals_3024.x) + -0.5f) * _134;
  _156 = ((Globals_3024.y) + -0.5f) * _134;
  _157 = ((Globals_3024.z) + -0.5f) * _134;
  _158 = _155 + 0.5f;
  _159 = _156 + 0.5f;
  _160 = _157 + 0.5f;
  _161 = _145 * 2.0f;
  _162 = _146 * 2.0f;
  _163 = _147 * 2.0f;
  _197 = select((_145 < 0.5f), 0.0f, 1.0f);
  _198 = select((_146 < 0.5f), 0.0f, 1.0f);
  _199 = select((_147 < 0.5f), 0.0f, 1.0f);
  _212 = ((_126 * (1.0f - _197)) * (lerp(_161, 1.0f, _126))) + ((((_161 + -1.0f) * sqrt(_126)) + ((_126 * 2.0f) * (0.5f - _142))) * _197);
  _213 = ((_127 * (1.0f - _198)) * (lerp(_162, 1.0f, _127))) + ((((_162 + -1.0f) * sqrt(_127)) + ((_127 * 2.0f) * (0.5f - _143))) * _198);
  _214 = ((_128 * (1.0f - _199)) * (lerp(_163, 1.0f, _128))) + ((((_163 + -1.0f) * sqrt(_128)) + ((_128 * 2.0f) * (0.5f - _144))) * _199);
  _215 = _158 * 2.0f;
  _216 = _159 * 2.0f;
  _217 = _160 * 2.0f;
  _251 = select((_158 < 0.5f), 0.0f, 1.0f);
  _252 = select((_159 < 0.5f), 0.0f, 1.0f);
  _253 = select((_160 < 0.5f), 0.0f, 1.0f);
  _278 = exp2(log2(abs((((1.0f - _251) * _212) * (_215 + (_212 * (1.0f - _215)))) + (((((0.5f - _155) * 2.0f) * _212) + ((_215 + -1.0f) * sqrt(_212))) * _251))) * 2.200000047683716f);
  _279 = exp2(log2(abs((((1.0f - _252) * _213) * (_216 + (_213 * (1.0f - _216)))) + (((((0.5f - _156) * 2.0f) * _213) + ((_216 + -1.0f) * sqrt(_213))) * _252))) * 2.200000047683716f);
  _280 = exp2(log2(abs((((1.0f - _253) * _214) * (_217 + (_214 * (1.0f - _217)))) + (((((0.5f - _157) * 2.0f) * _214) + (sqrt(_214) * (_217 + -1.0f))) * _253))) * 2.200000047683716f);
  _285 = dot(float3(_278, _279, _280), float3((Globals_2832.x), (Globals_2832.y), (Globals_2832.z)));
  _290 = dot(float3(_278, _279, _280), float3((Globals_2848.x), (Globals_2848.y), (Globals_2848.z)));
  _295 = dot(float3(_278, _279, _280), float3((Globals_2864.x), (Globals_2864.y), (Globals_2864.z)));
  _296 = dot(float3(_285, _290, _295), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f));
  _303 = saturate((_296 - (Globals_2992.x)) / ((Globals_2992.y) - (Globals_2992.x)));
  _307 = (_303 * _303) * (3.0f - (_303 * 2.0f));
  _308 = 1.0f - _307;
  _314 = saturate((_296 - (Globals_2992.z)) / ((Globals_2992.w) - (Globals_2992.z)));
  _318 = (_314 * _314) * (3.0f - (_314 * 2.0f));
  _319 = _307 - _318;
  _361 = ((_285 * (Globals_2928.x)) * (((_319 * (Globals_2960.x)) + ((Globals_2944.x) * _308)) + ((Globals_2976.x) * _318))) + (Globals_2896.x);
  _362 = ((_290 * (Globals_2928.y)) * (((_319 * (Globals_2960.y)) + ((Globals_2944.y) * _308)) + ((Globals_2976.y) * _318))) + (Globals_2896.y);
  _363 = ((_295 * (Globals_2928.z)) * (((_319 * (Globals_2960.z)) + ((Globals_2944.z) * _308)) + ((Globals_2976.z) * _318))) + (Globals_2896.z);
  _398 = float((int)(((int)(uint)((int)(_361 > 0.0f))) - ((int)(uint)((int)(_361 < 0.0f))))) * exp2(log2(abs(_361)) * (Globals_2912.x));
  _399 = float((int)(((int)(uint)((int)(_362 > 0.0f))) - ((int)(uint)((int)(_362 < 0.0f))))) * exp2(log2(abs(_362)) * (Globals_2912.y));
  _400 = float((int)(((int)(uint)((int)(_363 > 0.0f))) - ((int)(uint)((int)(_363 < 0.0f))))) * exp2(log2(abs(_363)) * (Globals_2912.z));
  _402 = select((_399 < _400), 0.0f, 1.0f);
  _407 = (_402 * (_399 - _400)) + _400;
  _408 = (_402 * (_400 - _399)) + _399;
  _410 = 0.6666666865348816f - _402;
  _412 = select((_398 < _407), 0.0f, 1.0f);
  _419 = (_412 * (_398 - _407)) + _407;
  _420 = (_412 * (_407 - _398)) + _398;
  _422 = _419 - min(_420, _408);
  _429 = abs((_410 + ((_420 - _408) / ((_422 * 6.0f) + 9.999999747378752e-05f))) + (_412 * ((_402 + -1.0f) - _410)));
  _431 = _422 / (_419 + 9.999999747378752e-05f);
  _450 = ((saturate(((float4)(t7.SampleBias(s0, float2(_429, 0.0f), (Globals_976), int2(0, 0)))).x) * 8.0f) * saturate(((float4)(t8.SampleBias(s0, float2(_431, 0.0f), (Globals_976), int2(0, 0)))).x)) * saturate(((float4)(t9.SampleBias(s0, float2(dot(float3(_398, _399, _400), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.0f), (Globals_976), int2(0, 0)))).x);
  _453 = (Globals_2880.x) + _429;
  _460 = (_453 + -0.5f) + saturate(((float4)(t6.SampleBias(s0, float2(_453, 0.0f), (Globals_976), int2(0, 0)))).x);
  _466 = select((_460 < 0.0f), (_460 + 1.0f), select((_460 > 1.0f), (_460 + -1.0f), _460));
  _497 = (((saturate(abs((frac(_466 + 1.0f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _431) + 1.0f) * _419;
  _498 = (((saturate(abs((frac(_466 + 0.6666666865348816f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _431) + 1.0f) * _419;
  _499 = (((saturate(abs((frac(_466 + 0.3333333432674408f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _431) + 1.0f) * _419;

  _500 = dot(float3(_497, _498, _499), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f));
  if ((Globals_3148) > 0.5f) {
    _513 = exp2(log2(saturate(1.0f - saturate(_500)) * 0.699999988079071f) * 2.200000047683716f);
  } else {
    _513 = _500;
  }
  _528 = max(0.0f, ((((_497 - _513) * _450) * (Globals_2880.y)) + _513));
  _529 = max(0.0f, ((((_498 - _513) * _450) * (Globals_2880.y)) + _513));
  _530 = max(0.0f, ((((_499 - _513) * _450) * (Globals_2880.y)) + _513));

  _553 = (Globals_2768.z) * saturate((log2((_530 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f);
  _554 = floor(_553);
  _560 = (((Globals_2768.z) * saturate((log2((_529 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f)) + 0.5f) * (Globals_2768.y);
  _562 = ((((Globals_2768.z) * saturate((log2((_528 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f)) + 0.5f) * (Globals_2768.x)) + (_554 * (Globals_2768.y));
  _563 = _553 - _554;
  _565 = t0.SampleLevel(s1, float2((_562 + (Globals_2768.y)), _560), 0.0f);
  _569 = t0.SampleLevel(s1, float2(_562, _560), 0.0f);
  _604 = ((Globals_2768.w) * (((exp2(((_569.x + -0.3860360085964203f) + ((_565.x - _569.x) * _563)) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) - _528)) + _528;
  _605 = ((Globals_2768.w) * (((exp2(((_569.y + -0.3860360085964203f) + ((_565.y - _569.y) * _563)) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) - _529)) + _529;
  _606 = ((((exp2(((_569.z + -0.3860360085964203f) + ((_565.z - _569.z) * _563)) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) - _530) * (Globals_2768.w)) + _530;

  _610 = 1.0f / (max(max(_604, _605), _606) + 1.0f);
  _639 = saturate(((float4)(t3.SampleBias(s0, float2((saturate(((float4)(t2.SampleBias(s0, float2(((_604 * _610) + 0.00390625f), 0.0f), (Globals_976), int2(0, 0)))).x) + 0.00390625f), 0.0f), (Globals_976), int2(0, 0)))).x);
  _644 = saturate(((float4)(t4.SampleBias(s0, float2((saturate(((float4)(t2.SampleBias(s0, float2(((_605 * _610) + 0.00390625f), 0.0f), (Globals_976), int2(0, 0)))).x) + 0.00390625f), 0.0f), (Globals_976), int2(0, 0)))).x);
  _649 = saturate(((float4)(t5.SampleBias(s0, float2((saturate(((float4)(t2.SampleBias(s0, float2(((_606 * _610) + 0.00390625f), 0.0f), (Globals_976), int2(0, 0)))).x) + 0.00390625f), 0.0f), (Globals_976), int2(0, 0)))).x);

  _653 = 1.0f / (1.0f - max(max(_639, _644), _649));
  _685 = (_653 * _639) * (Globals_3040.x);
  _686 = (_653 * _644) * (Globals_3040.x);
  _687 = (_653 * _649) * (Globals_3040.x);
  if (!(_685 < (Globals_3040.y))) {
    if (!(_685 < (Globals_3040.z))) {
      _693 = (Globals_3120.x);
      _694 = (Globals_3120.y);
      _695 = (Globals_3120.z);
      _696 = (Globals_3120.w);
      _697 = (Globals_3136.x);
      _698 = (Globals_3136.y);
    } else {
      _693 = (Globals_3088.x);
      _694 = (Globals_3088.y);
      _695 = (Globals_3088.z);
      _696 = (Globals_3088.w);
      _697 = (Globals_3104.x);
      _698 = (Globals_3104.y);
    }
  } else {
    _693 = (Globals_3056.x);
    _694 = (Globals_3056.y);
    _695 = (Globals_3056.z);
    _696 = (Globals_3056.w);
    _697 = (Globals_3072.x);
    _698 = (Globals_3072.y);
  }
  _700 = _695 * (_685 - _693);
  _710 = (select((_700 > 0.0f), exp2((((_698 * 0.6931471824645996f) * log2(_700)) + _697) * 1.4426950216293335f), 0.0f) * _696) + _694;
  if (!(_686 < (Globals_3040.y))) {
    if (!(_686 < (Globals_3040.z))) {
      _716 = (Globals_3120.x);
      _717 = (Globals_3120.y);
      _718 = (Globals_3120.z);
      _719 = (Globals_3120.w);
      _720 = (Globals_3136.x);
      _721 = (Globals_3136.y);
    } else {
      _716 = (Globals_3088.x);
      _717 = (Globals_3088.y);
      _718 = (Globals_3088.z);
      _719 = (Globals_3088.w);
      _720 = (Globals_3104.x);
      _721 = (Globals_3104.y);
    }
  } else {
    _716 = (Globals_3056.x);
    _717 = (Globals_3056.y);
    _718 = (Globals_3056.z);
    _719 = (Globals_3056.w);
    _720 = (Globals_3072.x);
    _721 = (Globals_3072.y);
  }
  _723 = _718 * (_686 - _716);
  _733 = (select((_723 > 0.0f), exp2((((_721 * 0.6931471824645996f) * log2(_723)) + _720) * 1.4426950216293335f), 0.0f) * _719) + _717;
  if (!(_687 < (Globals_3040.y))) {
    if (!(_687 < (Globals_3040.z))) {
      _739 = (Globals_3120.x);
      _740 = (Globals_3120.y);
      _741 = (Globals_3120.z);
      _742 = (Globals_3120.w);
      _743 = (Globals_3136.x);
      _744 = (Globals_3136.y);
    } else {
      _739 = (Globals_3088.x);
      _740 = (Globals_3088.y);
      _741 = (Globals_3088.z);
      _742 = (Globals_3088.w);
      _743 = (Globals_3104.x);
      _744 = (Globals_3104.y);
    }
  } else {
    _739 = (Globals_3056.x);
    _740 = (Globals_3056.y);
    _741 = (Globals_3056.z);
    _742 = (Globals_3056.w);
    _743 = (Globals_3072.x);
    _744 = (Globals_3072.y);
  }
  _746 = _741 * (_687 - _739);
  _756 = (select((_746 > 0.0f), exp2((((_744 * 0.6931471824645996f) * log2(_746)) + _743) * 1.4426950216293335f), 0.0f) * _742) + _740;

  float3 untonemapped = float3(_710, _733, _756);

  if ((Globals_2736.w) > 0.0f) {
    _761 = saturate(_710);
    _762 = saturate(_733);
    _763 = saturate(_756);
    _788 = select((_761 <= 0.0031308000907301903f), (_761 * 12.920000076293945f), ((exp2(log2(abs(_761)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
    _789 = select((_762 <= 0.0031308000907301903f), (_762 * 12.920000076293945f), ((exp2(log2(abs(_762)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
    _790 = select((_763 <= 0.0031308000907301903f), (_763 * 12.920000076293945f), ((exp2(log2(abs(_763)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
    _794 = _790 * (Globals_2736.z);
    _795 = floor(_794);
    _801 = ((_789 * (Globals_2736.z)) + 0.5f) * (Globals_2736.y);
    _803 = ((((Globals_2736.z) * _788) + 0.5f) * (Globals_2736.x)) + (_795 * (Globals_2736.y));
    _804 = _794 - _795;
    _806 = t1.SampleLevel(s2, float2((_803 + (Globals_2736.y)), _801), 0.0f);
    _810 = t1.SampleLevel(s2, float2(_803, _801), 0.0f);
    _829 = (((_810.x - _788) + ((_806.x - _810.x) * _804)) * (Globals_2736.w)) + _788;
    _830 = (((_810.y - _789) + ((_806.y - _810.y) * _804)) * (Globals_2736.w)) + _789;
    _831 = (((_810.z - _790) + ((_806.z - _810.z) * _804)) * (Globals_2736.w)) + _790;
    _860 = select((_829 <= 0.040449999272823334f), (_829 * 0.07739938050508499f), exp2(log2(abs((_829 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _861 = select((_830 <= 0.040449999272823334f), (_830 * 0.07739938050508499f), exp2(log2(abs((_830 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _862 = select((_831 <= 0.040449999272823334f), (_831 * 0.07739938050508499f), exp2(log2(abs((_831 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  } else {
    _860 = _710;
    _861 = _733;
    _862 = _756;
  }
  _866 = ((_861 + _860) + _862) * 0.3333333432674408f;
  SV_Target.x = saturate(((_860 - _866) * (Globals_3144)) + _866);
  SV_Target.y = saturate(((_861 - _866) * (Globals_3144)) + _866);
  SV_Target.z = saturate(((_862 - _866) * (Globals_3144)) + _866);
  SV_Target.w = 1.0f;
  return SV_Target;
}
