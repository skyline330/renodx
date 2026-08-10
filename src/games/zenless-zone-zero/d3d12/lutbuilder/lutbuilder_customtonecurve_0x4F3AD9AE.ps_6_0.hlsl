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

  float _20;
  float _23;
  float _38;
  float _41;
  float _42;
  float _56;
  float _57;
  float _58;
  float _124;
  float _125;
  float _126;
  float _132;
  float _133;
  float _140;
  float _141;
  float _142;
  float _143;
  float _144;
  float _145;
  float _153;
  float _154;
  float _155;
  float _156;
  float _157;
  float _158;
  float _159;
  float _160;
  float _161;
  float _195;
  float _196;
  float _197;
  float _210;
  float _211;
  float _212;
  float _213;
  float _214;
  float _215;
  float _249;
  float _250;
  float _251;
  float _276;
  float _277;
  float _278;
  float _283;
  float _288;
  float _293;
  float _294;
  float _301;
  float _305;
  float _306;
  float _312;
  float _316;
  float _317;
  float _359;
  float _360;
  float _361;
  float _396;
  float _397;
  float _398;
  float _400;
  float _405;
  float _406;
  float _408;
  float _410;
  float _417;
  float _418;
  float _420;
  float _427;
  float _429;
  float _448;
  float _451;
  float _458;
  float _464;
  float _495;
  float _496;
  float _497;
  float _498;
  float _511;
  float _615;
  float _616;
  float _617;
  float _618;
  float _619;
  float _620;
  float _638;
  float _639;
  float _640;
  float _641;
  float _642;
  float _643;
  float _661;
  float _662;
  float _663;
  float _664;
  float _665;
  float _666;
  float _782;
  float _783;
  float _784;
  float _526;
  float _527;
  float _528;
  float _532;
  float _561;
  float _566;
  float _571;
  float _575;
  float _607;
  float _608;
  float _609;
  float _622;
  float _632;
  float _645;
  float _655;
  float _668;
  float _678;
  float _683;
  float _684;
  float _685;
  float _710;
  float _711;
  float _712;
  float _716;
  float _717;
  float _723;
  float _725;
  float _726;
  float4 _728;
  float4 _732;
  float _751;
  float _752;
  float _753;
  float _788;
  _20 = TEXCOORD.x - (Globals_2784.y);
  _23 = frac(_20 * (Globals_2784.x));
  _38 = exp2(((_23 * (Globals_2784.w)) + -0.3860360085964203f) * 13.60548210144043f) + -0.047995999455451965f;
  _41 = (exp2((((TEXCOORD.y - (Globals_2784.z)) * (Globals_2784.w)) + -0.3860360085964203f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f;
  _42 = (exp2((((_20 - (_23 / (Globals_2784.x))) * (Globals_2784.w)) + -0.3860360085964203f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f;

  _56 = (Globals_2800.x) * mad(0.008926319889724255f, _42, mad(0.5499410033226013f, _41, (_38 * 0.07027290016412735f)));
  _57 = (Globals_2800.y) * mad(0.0013577500358223915f, _42, mad(0.9631720185279846f, _41, (_38 * 0.012751488015055656f)));
  _58 = (Globals_2800.z) * mad(0.9362450242042542f, _42, mad(0.1280210018157959f, _41, (_38 * 0.004159475676715374f)));

  _124 = exp2(log2(abs(max(0.0f, (((exp2((((Globals_2880.z) * ((log2((mad(-0.024891000241041183f, _58, mad(-1.628790020942688f, _57, (_56 * 2.8584699630737305f))) * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + -0.027552396059036255f)) + 0.027552396059036255f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) * (Globals_2816.x))))) * 0.4545454680919647f);
  _125 = exp2(log2(abs(max(0.0f, (((exp2((((Globals_2880.z) * ((log2((mad(0.00032428099075332284f, _58, mad(1.1582000255584717f, _57, (_56 * -0.21018199622631073f))) * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + -0.027552396059036255f)) + 0.027552396059036255f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) * (Globals_2816.y))))) * 0.4545454680919647f);
  _126 = exp2(log2(abs(max(0.0f, (((exp2(((((log2((mad(1.0686700344085693f, _58, mad(-0.11816900223493576f, _57, (_56 * -0.041811998933553696f))) * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + -0.027552396059036255f) * (Globals_2880.z)) + 0.027552396059036255f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) * (Globals_2816.z))))) * 0.4545454680919647f);

  _132 = saturate(dot(float3(saturate(_124), saturate(_125), saturate(_126)), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)) + (Globals_3008.w));
  _133 = 1.0f - _132;
  _140 = ((Globals_3008.x) + -0.5f) * _133;
  _141 = ((Globals_3008.y) + -0.5f) * _133;
  _142 = ((Globals_3008.z) + -0.5f) * _133;
  _143 = _140 + 0.5f;
  _144 = _141 + 0.5f;
  _145 = _142 + 0.5f;
  _153 = ((Globals_3024.x) + -0.5f) * _132;
  _154 = ((Globals_3024.y) + -0.5f) * _132;
  _155 = ((Globals_3024.z) + -0.5f) * _132;
  _156 = _153 + 0.5f;
  _157 = _154 + 0.5f;
  _158 = _155 + 0.5f;
  _159 = _143 * 2.0f;
  _160 = _144 * 2.0f;
  _161 = _145 * 2.0f;
  _195 = select((_143 < 0.5f), 0.0f, 1.0f);
  _196 = select((_144 < 0.5f), 0.0f, 1.0f);
  _197 = select((_145 < 0.5f), 0.0f, 1.0f);
  _210 = ((_124 * (1.0f - _195)) * (lerp(_159, 1.0f, _124))) + ((((_159 + -1.0f) * sqrt(_124)) + ((_124 * 2.0f) * (0.5f - _140))) * _195);
  _211 = ((_125 * (1.0f - _196)) * (lerp(_160, 1.0f, _125))) + ((((_160 + -1.0f) * sqrt(_125)) + ((_125 * 2.0f) * (0.5f - _141))) * _196);
  _212 = ((_126 * (1.0f - _197)) * (lerp(_161, 1.0f, _126))) + ((((_161 + -1.0f) * sqrt(_126)) + ((_126 * 2.0f) * (0.5f - _142))) * _197);
  _213 = _156 * 2.0f;
  _214 = _157 * 2.0f;
  _215 = _158 * 2.0f;
  _249 = select((_156 < 0.5f), 0.0f, 1.0f);
  _250 = select((_157 < 0.5f), 0.0f, 1.0f);
  _251 = select((_158 < 0.5f), 0.0f, 1.0f);
  _276 = exp2(log2(abs((((1.0f - _249) * _210) * (_213 + (_210 * (1.0f - _213)))) + (((((0.5f - _153) * 2.0f) * _210) + ((_213 + -1.0f) * sqrt(_210))) * _249))) * 2.200000047683716f);
  _277 = exp2(log2(abs((((1.0f - _250) * _211) * (_214 + (_211 * (1.0f - _214)))) + (((((0.5f - _154) * 2.0f) * _211) + ((_214 + -1.0f) * sqrt(_211))) * _250))) * 2.200000047683716f);
  _278 = exp2(log2(abs((((1.0f - _251) * _212) * (_215 + (_212 * (1.0f - _215)))) + (((((0.5f - _155) * 2.0f) * _212) + (sqrt(_212) * (_215 + -1.0f))) * _251))) * 2.200000047683716f);
  _283 = dot(float3(_276, _277, _278), float3((Globals_2832.x), (Globals_2832.y), (Globals_2832.z)));
  _288 = dot(float3(_276, _277, _278), float3((Globals_2848.x), (Globals_2848.y), (Globals_2848.z)));
  _293 = dot(float3(_276, _277, _278), float3((Globals_2864.x), (Globals_2864.y), (Globals_2864.z)));
  _294 = dot(float3(_283, _288, _293), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f));
  _301 = saturate((_294 - (Globals_2992.x)) / ((Globals_2992.y) - (Globals_2992.x)));
  _305 = (_301 * _301) * (3.0f - (_301 * 2.0f));
  _306 = 1.0f - _305;
  _312 = saturate((_294 - (Globals_2992.z)) / ((Globals_2992.w) - (Globals_2992.z)));
  _316 = (_312 * _312) * (3.0f - (_312 * 2.0f));
  _317 = _305 - _316;
  _359 = ((_283 * (Globals_2928.x)) * (((_317 * (Globals_2960.x)) + ((Globals_2944.x) * _306)) + ((Globals_2976.x) * _316))) + (Globals_2896.x);
  _360 = ((_288 * (Globals_2928.y)) * (((_317 * (Globals_2960.y)) + ((Globals_2944.y) * _306)) + ((Globals_2976.y) * _316))) + (Globals_2896.y);
  _361 = ((_293 * (Globals_2928.z)) * (((_317 * (Globals_2960.z)) + ((Globals_2944.z) * _306)) + ((Globals_2976.z) * _316))) + (Globals_2896.z);
  _396 = float((int)(((int)(uint)((int)(_359 > 0.0f))) - ((int)(uint)((int)(_359 < 0.0f))))) * exp2(log2(abs(_359)) * (Globals_2912.x));
  _397 = float((int)(((int)(uint)((int)(_360 > 0.0f))) - ((int)(uint)((int)(_360 < 0.0f))))) * exp2(log2(abs(_360)) * (Globals_2912.y));
  _398 = float((int)(((int)(uint)((int)(_361 > 0.0f))) - ((int)(uint)((int)(_361 < 0.0f))))) * exp2(log2(abs(_361)) * (Globals_2912.z));
  _400 = select((_397 < _398), 0.0f, 1.0f);
  _405 = (_400 * (_397 - _398)) + _398;
  _406 = (_400 * (_398 - _397)) + _397;
  _408 = 0.6666666865348816f - _400;
  _410 = select((_396 < _405), 0.0f, 1.0f);
  _417 = (_410 * (_396 - _405)) + _405;
  _418 = (_410 * (_405 - _396)) + _396;
  _420 = _417 - min(_418, _406);
  _427 = abs((_408 + ((_418 - _406) / ((_420 * 6.0f) + 9.999999747378752e-05f))) + (_410 * ((_400 + -1.0f) - _408)));
  _429 = _420 / (_417 + 9.999999747378752e-05f);
  _448 = ((saturate(((float4)(t6.SampleBias(s0, float2(_427, 0.0f), (Globals_976), int2(0, 0)))).x) * 8.0f) * saturate(((float4)(t7.SampleBias(s0, float2(_429, 0.0f), (Globals_976), int2(0, 0)))).x)) * saturate(((float4)(t8.SampleBias(s0, float2(dot(float3(_396, _397, _398), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.0f), (Globals_976), int2(0, 0)))).x);
  _451 = (Globals_2880.x) + _427;
  _458 = (_451 + -0.5f) + saturate(((float4)(t5.SampleBias(s0, float2(_451, 0.0f), (Globals_976), int2(0, 0)))).x);
  _464 = select((_458 < 0.0f), (_458 + 1.0f), select((_458 > 1.0f), (_458 + -1.0f), _458));
  _495 = (((saturate(abs((frac(_464 + 1.0f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _429) + 1.0f) * _417;
  _496 = (((saturate(abs((frac(_464 + 0.6666666865348816f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _429) + 1.0f) * _417;
  _497 = (((saturate(abs((frac(_464 + 0.3333333432674408f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _429) + 1.0f) * _417;

  _498 = dot(float3(_495, _496, _497), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f));
  if ((Globals_3148) > 0.5f) {
    _511 = exp2(log2(saturate(1.0f - saturate(_498)) * 0.699999988079071f) * 2.200000047683716f);
  } else {
    _511 = _498;
  }
  _526 = max(0.0f, ((((_495 - _511) * _448) * (Globals_2880.y)) + _511));
  _527 = max(0.0f, ((((_496 - _511) * _448) * (Globals_2880.y)) + _511));
  _528 = max(0.0f, ((((_497 - _511) * _448) * (Globals_2880.y)) + _511));

  _532 = 1.0f / (max(max(_526, _527), _528) + 1.0f);
  _561 = saturate(((float4)(t2.SampleBias(s0, float2((saturate(((float4)(t1.SampleBias(s0, float2(((_532 * _526) + 0.00390625f), 0.0f), (Globals_976), int2(0, 0)))).x) + 0.00390625f), 0.0f), (Globals_976), int2(0, 0)))).x);
  _566 = saturate(((float4)(t3.SampleBias(s0, float2((saturate(((float4)(t1.SampleBias(s0, float2(((_532 * _527) + 0.00390625f), 0.0f), (Globals_976), int2(0, 0)))).x) + 0.00390625f), 0.0f), (Globals_976), int2(0, 0)))).x);
  _571 = saturate(((float4)(t4.SampleBias(s0, float2((saturate(((float4)(t1.SampleBias(s0, float2(((_532 * _528) + 0.00390625f), 0.0f), (Globals_976), int2(0, 0)))).x) + 0.00390625f), 0.0f), (Globals_976), int2(0, 0)))).x);

  _575 = 1.0f / (1.0f - max(max(_561, _566), _571));
  _607 = (_575 * _561) * (Globals_3040.x);
  _608 = (_575 * _566) * (Globals_3040.x);
  _609 = (_575 * _571) * (Globals_3040.x);
  if (!(_607 < (Globals_3040.y))) {
    if (!(_607 < (Globals_3040.z))) {
      _615 = (Globals_3120.x);
      _616 = (Globals_3120.y);
      _617 = (Globals_3120.z);
      _618 = (Globals_3120.w);
      _619 = (Globals_3136.x);
      _620 = (Globals_3136.y);
    } else {
      _615 = (Globals_3088.x);
      _616 = (Globals_3088.y);
      _617 = (Globals_3088.z);
      _618 = (Globals_3088.w);
      _619 = (Globals_3104.x);
      _620 = (Globals_3104.y);
    }
  } else {
    _615 = (Globals_3056.x);
    _616 = (Globals_3056.y);
    _617 = (Globals_3056.z);
    _618 = (Globals_3056.w);
    _619 = (Globals_3072.x);
    _620 = (Globals_3072.y);
  }
  _622 = _617 * (_607 - _615);
  _632 = (select((_622 > 0.0f), exp2((((_620 * 0.6931471824645996f) * log2(_622)) + _619) * 1.4426950216293335f), 0.0f) * _618) + _616;
  if (!(_608 < (Globals_3040.y))) {
    if (!(_608 < (Globals_3040.z))) {
      _638 = (Globals_3120.x);
      _639 = (Globals_3120.y);
      _640 = (Globals_3120.z);
      _641 = (Globals_3120.w);
      _642 = (Globals_3136.x);
      _643 = (Globals_3136.y);
    } else {
      _638 = (Globals_3088.x);
      _639 = (Globals_3088.y);
      _640 = (Globals_3088.z);
      _641 = (Globals_3088.w);
      _642 = (Globals_3104.x);
      _643 = (Globals_3104.y);
    }
  } else {
    _638 = (Globals_3056.x);
    _639 = (Globals_3056.y);
    _640 = (Globals_3056.z);
    _641 = (Globals_3056.w);
    _642 = (Globals_3072.x);
    _643 = (Globals_3072.y);
  }
  _645 = _640 * (_608 - _638);
  _655 = (select((_645 > 0.0f), exp2((((_643 * 0.6931471824645996f) * log2(_645)) + _642) * 1.4426950216293335f), 0.0f) * _641) + _639;
  if (!(_609 < (Globals_3040.y))) {
    if (!(_609 < (Globals_3040.z))) {
      _661 = (Globals_3120.x);
      _662 = (Globals_3120.y);
      _663 = (Globals_3120.z);
      _664 = (Globals_3120.w);
      _665 = (Globals_3136.x);
      _666 = (Globals_3136.y);
    } else {
      _661 = (Globals_3088.x);
      _662 = (Globals_3088.y);
      _663 = (Globals_3088.z);
      _664 = (Globals_3088.w);
      _665 = (Globals_3104.x);
      _666 = (Globals_3104.y);
    }
  } else {
    _661 = (Globals_3056.x);
    _662 = (Globals_3056.y);
    _663 = (Globals_3056.z);
    _664 = (Globals_3056.w);
    _665 = (Globals_3072.x);
    _666 = (Globals_3072.y);
  }
  _668 = _663 * (_609 - _661);
  _678 = (select((_668 > 0.0f), exp2((((_666 * 0.6931471824645996f) * log2(_668)) + _665) * 1.4426950216293335f), 0.0f) * _664) + _662;

  float3 untonemapped = float3(_632, _655, _678);

  if ((Globals_2736.w) > 0.0f) {
    _683 = saturate(_632);
    _684 = saturate(_655);
    _685 = saturate(_678);
    _710 = select((_683 <= 0.0031308000907301903f), (_683 * 12.920000076293945f), ((exp2(log2(abs(_683)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
    _711 = select((_684 <= 0.0031308000907301903f), (_684 * 12.920000076293945f), ((exp2(log2(abs(_684)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
    _712 = select((_685 <= 0.0031308000907301903f), (_685 * 12.920000076293945f), ((exp2(log2(abs(_685)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
    _716 = _712 * (Globals_2736.z);
    _717 = floor(_716);
    _723 = ((_711 * (Globals_2736.z)) + 0.5f) * (Globals_2736.y);
    _725 = ((((Globals_2736.z) * _710) + 0.5f) * (Globals_2736.x)) + (_717 * (Globals_2736.y));
    _726 = _716 - _717;
    _728 = t0.SampleLevel(s1, float2((_725 + (Globals_2736.y)), _723), 0.0f);
    _732 = t0.SampleLevel(s1, float2(_725, _723), 0.0f);
    _751 = (((_732.x - _710) + ((_728.x - _732.x) * _726)) * (Globals_2736.w)) + _710;
    _752 = (((_732.y - _711) + ((_728.y - _732.y) * _726)) * (Globals_2736.w)) + _711;
    _753 = (((_732.z - _712) + ((_728.z - _732.z) * _726)) * (Globals_2736.w)) + _712;
    _782 = select((_751 <= 0.040449999272823334f), (_751 * 0.07739938050508499f), exp2(log2(abs((_751 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _783 = select((_752 <= 0.040449999272823334f), (_752 * 0.07739938050508499f), exp2(log2(abs((_752 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _784 = select((_753 <= 0.040449999272823334f), (_753 * 0.07739938050508499f), exp2(log2(abs((_753 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  } else {
    _782 = _632;
    _783 = _655;
    _784 = _678;
  }
  _788 = ((_783 + _782) + _784) * 0.3333333432674408f;
  SV_Target.x = saturate(((_782 - _788) * (Globals_3144)) + _788);
  SV_Target.y = saturate(((_783 - _788) * (Globals_3144)) + _788);
  SV_Target.z = saturate(((_784 - _788) * (Globals_3144)) + _788);
  SV_Target.w = 1.0f;
  return SV_Target;
}
