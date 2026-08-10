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
  float cb0_061x : packoffset(c061.x);
  float cb0_171x : packoffset(c171.x);
  float cb0_171y : packoffset(c171.y);
  float cb0_171z : packoffset(c171.z);
  float cb0_171w : packoffset(c171.w);
  float cb0_174x : packoffset(c174.x);
  float cb0_174y : packoffset(c174.y);
  float cb0_174z : packoffset(c174.z);
  float cb0_174w : packoffset(c174.w);
  float cb0_175x : packoffset(c175.x);
  float cb0_175y : packoffset(c175.y);
  float cb0_175z : packoffset(c175.z);
  float cb0_176x : packoffset(c176.x);
  float cb0_176y : packoffset(c176.y);
  float cb0_176z : packoffset(c176.z);
  float cb0_177x : packoffset(c177.x);
  float cb0_177y : packoffset(c177.y);
  float cb0_177z : packoffset(c177.z);
  float cb0_178x : packoffset(c178.x);
  float cb0_178y : packoffset(c178.y);
  float cb0_178z : packoffset(c178.z);
  float cb0_179x : packoffset(c179.x);
  float cb0_179y : packoffset(c179.y);
  float cb0_179z : packoffset(c179.z);
  float cb0_180x : packoffset(c180.x);
  float cb0_180y : packoffset(c180.y);
  float cb0_180z : packoffset(c180.z);
  float cb0_181x : packoffset(c181.x);
  float cb0_181y : packoffset(c181.y);
  float cb0_181z : packoffset(c181.z);
  float cb0_182x : packoffset(c182.x);
  float cb0_182y : packoffset(c182.y);
  float cb0_182z : packoffset(c182.z);
  float cb0_183x : packoffset(c183.x);
  float cb0_183y : packoffset(c183.y);
  float cb0_183z : packoffset(c183.z);
  float cb0_184x : packoffset(c184.x);
  float cb0_184y : packoffset(c184.y);
  float cb0_184z : packoffset(c184.z);
  float cb0_185x : packoffset(c185.x);
  float cb0_185y : packoffset(c185.y);
  float cb0_185z : packoffset(c185.z);
  float cb0_186x : packoffset(c186.x);
  float cb0_186y : packoffset(c186.y);
  float cb0_186z : packoffset(c186.z);
  float cb0_187x : packoffset(c187.x);
  float cb0_187y : packoffset(c187.y);
  float cb0_187z : packoffset(c187.z);
  float cb0_187w : packoffset(c187.w);
  float cb0_188x : packoffset(c188.x);
  float cb0_188y : packoffset(c188.y);
  float cb0_188z : packoffset(c188.z);
  float cb0_188w : packoffset(c188.w);
  float cb0_189x : packoffset(c189.x);
  float cb0_189y : packoffset(c189.y);
  float cb0_189z : packoffset(c189.z);
  float cb0_196z : packoffset(c196.z);
  float cb0_196w : packoffset(c196.w);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

float4 main(
    noperspective float4 SV_Position: SV_Position,
    linear float2 TEXCOORD: TEXCOORD,
    linear float4 TEXCOORD_1: TEXCOORD1) : SV_Target {
  float4 SV_Target;

  // https://github.com/Unity-Technologies/Graphics/blob/v7.7.1/com.unity.render-pipelines.universal/Shaders/PostProcessing/LutBuilderHdr.shader

  float _20 = TEXCOORD.x - cb0_174y;
  float _23 = frac(_20 * cb0_174x);
  float _38 = exp2(((_23 * cb0_174w) + -0.3860360085964203f) * 13.60548210144043f) + -0.047995999455451965f;
  float _41 = (exp2((((TEXCOORD.y - cb0_174z) * cb0_174w) + -0.3860360085964203f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f;
  float _42 = (exp2((((_20 - (_23 / cb0_174x)) * cb0_174w) + -0.3860360085964203f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f;

  float _56 = cb0_175x * mad(0.008926319889724255f, _42, mad(0.5499410033226013f, _41, (_38 * 0.07027290016412735f)));
  float _57 = cb0_175y * mad(0.0013577500358223915f, _42, mad(0.9631720185279846f, _41, (_38 * 0.012751488015055656f)));
  float _58 = cb0_175z * mad(0.9362450242042542f, _42, mad(0.1280210018157959f, _41, (_38 * 0.004159475676715374f)));

  float _124 = exp2(log2(abs(max(0.0f, (((exp2(((cb0_180z * ((log2((mad(-0.024891000241041183f, _58, mad(-1.628790020942688f, _57, (_56 * 2.8584699630737305f))) * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + -0.027552396059036255f)) + 0.027552396059036255f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) * cb0_176x)))) * 0.4545454680919647f);
  float _125 = exp2(log2(abs(max(0.0f, (((exp2(((cb0_180z * ((log2((mad(0.00032428099075332284f, _58, mad(1.1582000255584717f, _57, (_56 * -0.21018199622631073f))) * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + -0.027552396059036255f)) + 0.027552396059036255f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) * cb0_176y)))) * 0.4545454680919647f);
  float _126 = exp2(log2(abs(max(0.0f, (((exp2(((((log2((mad(1.0686700344085693f, _58, mad(-0.11816900223493576f, _57, (_56 * -0.041811998933553696f))) * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + -0.027552396059036255f) * cb0_180z) + 0.027552396059036255f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) * cb0_176z)))) * 0.4545454680919647f);

  float _132 = saturate(dot(float3(saturate(_124), saturate(_125), saturate(_126)), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)) + cb0_188w);
  float _133 = 1.0f - _132;
  float _140 = (cb0_188x + -0.5f) * _133;
  float _141 = (cb0_188y + -0.5f) * _133;
  float _142 = (cb0_188z + -0.5f) * _133;
  float _143 = _140 + 0.5f;
  float _144 = _141 + 0.5f;
  float _145 = _142 + 0.5f;
  float _153 = (cb0_189x + -0.5f) * _132;
  float _154 = (cb0_189y + -0.5f) * _132;
  float _155 = (cb0_189z + -0.5f) * _132;
  float _156 = _153 + 0.5f;
  float _157 = _154 + 0.5f;
  float _158 = _155 + 0.5f;
  float _159 = _143 * 2.0f;
  float _160 = _144 * 2.0f;
  float _161 = _145 * 2.0f;
  float _195 = select((_143 < 0.5f), 0.0f, 1.0f);
  float _196 = select((_144 < 0.5f), 0.0f, 1.0f);
  float _197 = select((_145 < 0.5f), 0.0f, 1.0f);
  float _210 = ((_124 * (1.0f - _195)) * (lerp(_159, 1.0f, _124))) + ((((_159 + -1.0f) * sqrt(_124)) + ((_124 * 2.0f) * (0.5f - _140))) * _195);
  float _211 = ((_125 * (1.0f - _196)) * (lerp(_160, 1.0f, _125))) + ((((_160 + -1.0f) * sqrt(_125)) + ((_125 * 2.0f) * (0.5f - _141))) * _196);
  float _212 = ((_126 * (1.0f - _197)) * (lerp(_161, 1.0f, _126))) + ((((_161 + -1.0f) * sqrt(_126)) + ((_126 * 2.0f) * (0.5f - _142))) * _197);
  float _213 = _156 * 2.0f;
  float _214 = _157 * 2.0f;
  float _215 = _158 * 2.0f;
  float _249 = select((_156 < 0.5f), 0.0f, 1.0f);
  float _250 = select((_157 < 0.5f), 0.0f, 1.0f);
  float _251 = select((_158 < 0.5f), 0.0f, 1.0f);
  float _276 = exp2(log2(abs((((1.0f - _249) * _210) * (_213 + (_210 * (1.0f - _213)))) + (((((0.5f - _153) * 2.0f) * _210) + ((_213 + -1.0f) * sqrt(_210))) * _249))) * 2.200000047683716f);
  float _277 = exp2(log2(abs((((1.0f - _250) * _211) * (_214 + (_211 * (1.0f - _214)))) + (((((0.5f - _154) * 2.0f) * _211) + ((_214 + -1.0f) * sqrt(_211))) * _250))) * 2.200000047683716f);
  float _278 = exp2(log2(abs((((1.0f - _251) * _212) * (_215 + (_212 * (1.0f - _215)))) + (((((0.5f - _155) * 2.0f) * _212) + (sqrt(_212) * (_215 + -1.0f))) * _251))) * 2.200000047683716f);
  float _283 = dot(float3(_276, _277, _278), float3(cb0_177x, cb0_177y, cb0_177z));
  float _288 = dot(float3(_276, _277, _278), float3(cb0_178x, cb0_178y, cb0_178z));
  float _293 = dot(float3(_276, _277, _278), float3(cb0_179x, cb0_179y, cb0_179z));
  float _294 = dot(float3(_283, _288, _293), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f));
  float _301 = saturate((_294 - cb0_187x) / (cb0_187y - cb0_187x));
  float _305 = (_301 * _301) * (3.0f - (_301 * 2.0f));
  float _306 = 1.0f - _305;
  float _312 = saturate((_294 - cb0_187z) / (cb0_187w - cb0_187z));
  float _316 = (_312 * _312) * (3.0f - (_312 * 2.0f));
  float _317 = _305 - _316;
  float _359 = ((_283 * cb0_183x) * (((_317 * cb0_185x) + (cb0_184x * _306)) + (cb0_186x * _316))) + cb0_181x;
  float _360 = ((_288 * cb0_183y) * (((_317 * cb0_185y) + (cb0_184y * _306)) + (cb0_186y * _316))) + cb0_181y;
  float _361 = ((_293 * cb0_183z) * (((_317 * cb0_185z) + (cb0_184z * _306)) + (cb0_186z * _316))) + cb0_181z;
  float _396 = float(((int)(uint)((bool)(_359 > 0.0f))) - ((int)(uint)((bool)(_359 < 0.0f)))) * exp2(log2(abs(_359)) * cb0_182x);
  float _397 = float(((int)(uint)((bool)(_360 > 0.0f))) - ((int)(uint)((bool)(_360 < 0.0f)))) * exp2(log2(abs(_360)) * cb0_182y);
  float _398 = float(((int)(uint)((bool)(_361 > 0.0f))) - ((int)(uint)((bool)(_361 < 0.0f)))) * exp2(log2(abs(_361)) * cb0_182z);
  float _400 = select((_397 < _398), 0.0f, 1.0f);
  float _405 = (_400 * (_397 - _398)) + _398;
  float _406 = (_400 * (_398 - _397)) + _397;
  float _408 = 0.6666666865348816f - _400;
  float _410 = select((_396 < _405), 0.0f, 1.0f);
  float _417 = (_410 * (_396 - _405)) + _405;
  float _418 = (_410 * (_405 - _396)) + _396;
  float _420 = _417 - min(_418, _406);
  float _427 = abs((_408 + ((_418 - _406) / ((_420 * 6.0f) + 9.999999747378752e-05f))) + (_410 * ((_400 + -1.0f) - _408)));
  float _429 = _420 / (_417 + 9.999999747378752e-05f);
  float4 _432 = t6.SampleBias(s0, float2(_427, 0.0f), cb0_061x, int2(0, 0));
  float4 _437 = t7.SampleBias(s0, float2(_429, 0.0f), cb0_061x, int2(0, 0));
  float4 _443 = t8.SampleBias(s0, float2(dot(float3(_396, _397, _398), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.0f), cb0_061x, int2(0, 0));
  float _448 = ((saturate(_432.x) * 8.0f) * saturate(_437.x)) * saturate(_443.x);
  float _451 = cb0_180x + _427;
  float4 _454 = t5.SampleBias(s0, float2(_451, 0.0f), cb0_061x, int2(0, 0));
  float _458 = (_451 + -0.5f) + saturate(_454.x);
  float _464 = select((_458 < 0.0f), (_458 + 1.0f), select((_458 > 1.0f), (_458 + -1.0f), _458));
  float _495 = (((saturate(abs((frac(_464 + 1.0f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _429) + 1.0f) * _417;
  float _496 = (((saturate(abs((frac(_464 + 0.6666666865348816f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _429) + 1.0f) * _417;
  float _497 = (((saturate(abs((frac(_464 + 0.3333333432674408f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _429) + 1.0f) * _417;

  float _498 = dot(float3(_495, _496, _497), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f));
  float _511;
  float _682;
  float _683;
  float _684;
  if (cb0_196w > 0.5f) {
    _511 = exp2(log2(saturate(1.0f - saturate(_498)) * 0.699999988079071f) * 2.200000047683716f);
  } else {
    _511 = _498;
  }
  float _526 = max(0.0f, ((((_495 - _511) * _448) * cb0_180y) + _511));
  float _527 = max(0.0f, ((((_496 - _511) * _448) * cb0_180y) + _511));
  float _528 = max(0.0f, ((((_497 - _511) * _448) * cb0_180y) + _511));

  float _532 = 1.0f / (max(max(_526, _527), _528) + 1.0f);
  float4 _541 = t1.SampleBias(s0, float2(((_532 * _526) + 0.00390625f), 0.0f), cb0_061x, int2(0, 0));
  float4 _546 = t1.SampleBias(s0, float2(((_532 * _527) + 0.00390625f), 0.0f), cb0_061x, int2(0, 0));
  float4 _551 = t1.SampleBias(s0, float2(((_532 * _528) + 0.00390625f), 0.0f), cb0_061x, int2(0, 0));
  float4 _559 = t2.SampleBias(s0, float2((saturate(_541.x) + 0.00390625f), 0.0f), cb0_061x, int2(0, 0));
  float _561 = saturate(_559.x);
  float4 _564 = t3.SampleBias(s0, float2((saturate(_546.x) + 0.00390625f), 0.0f), cb0_061x, int2(0, 0));
  float _566 = saturate(_564.x);
  float4 _569 = t4.SampleBias(s0, float2((saturate(_551.x) + 0.00390625f), 0.0f), cb0_061x, int2(0, 0));
  float _571 = saturate(_569.x);

  float _575 = 1.0f / (1.0f - max(max(_561, _566), _571));
  float _576 = _575 * _561;
  float _577 = _575 * _566;
  float _578 = _575 * _571;

  bool useSDRLut = (cb0_171w > 0.0f);

  renodx::lut::Config lut_config = renodx::lut::config::Create();
  lut_config.lut_sampler = s1;
  lut_config.strength = useSDRLut ? cb0_171w * RENODX_COLOR_GRADE_LUT_STRENGTH : 0;
  lut_config.scaling = RENODX_COLOR_GRADE_LUT_SCALING;
  lut_config.type_input = renodx::lut::config::type::SRGB;
  lut_config.type_output = renodx::lut::config::type::SRGB;
  lut_config.recolor = 0.f;
  lut_config.max_channel = 1.f;
  lut_config.gamut_compress = 1.f;
  lut_config.precompute = float3(cb0_171x, cb0_171y, cb0_171z);

  float3 color_lut_input = float3(_576, _577, _578);

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 color_output = renodx::lut::Sample(t0, lut_config, color_lut_input);
    SV_Target.xyz = color_output;
    SV_Target.xyz = ApplyOutputToneMap(SV_Target.xyz, TEXCOORD.xy);
    SV_Target.w = 1.0f;
    return SV_Target;
  }

  if (cb0_171w > 0.0f) {
    float _583 = saturate(_576);
    float _584 = saturate(_577);
    float _585 = saturate(_578);
    float _610 = select((_583 <= 0.0031308000907301903f), (_583 * 12.920000076293945f), ((exp2(log2(abs(_583)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
    float _611 = select((_584 <= 0.0031308000907301903f), (_584 * 12.920000076293945f), ((exp2(log2(abs(_584)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
    float _612 = select((_585 <= 0.0031308000907301903f), (_585 * 12.920000076293945f), ((exp2(log2(abs(_585)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
    float _616 = _612 * cb0_171z;
    float _617 = floor(_616);
    float _623 = ((_611 * cb0_171z) + 0.5f) * cb0_171y;
    float _625 = (((cb0_171z * _610) + 0.5f) * cb0_171x) + (_617 * cb0_171y);
    float _626 = _616 - _617;
    float4 _628 = t0.SampleLevel(s1, float2((_625 + cb0_171y), _623), 0.0f);
    float4 _632 = t0.SampleLevel(s1, float2(_625, _623), 0.0f);
    float _651 = (((_632.x - _610) + ((_628.x - _632.x) * _626)) * cb0_171w) + _610;
    float _652 = (((_632.y - _611) + ((_628.y - _632.y) * _626)) * cb0_171w) + _611;
    float _653 = (((_632.z - _612) + ((_628.z - _632.z) * _626)) * cb0_171w) + _612;
    _682 = select((_651 <= 0.040449999272823334f), (_651 * 0.07739938050508499f), exp2(log2(abs((_651 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _683 = select((_652 <= 0.040449999272823334f), (_652 * 0.07739938050508499f), exp2(log2(abs((_652 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _684 = select((_653 <= 0.040449999272823334f), (_653 * 0.07739938050508499f), exp2(log2(abs((_653 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  } else {
    _682 = _576;
    _683 = _577;
    _684 = _578;
  }
  float _689 = ((_683 + _682) + _684) * 0.3333333432674408f;
  SV_Target.x = saturate(lerp(_689, _682, cb0_196z));
  SV_Target.y = saturate(lerp(_689, _683, cb0_196z));
  SV_Target.z = saturate(lerp(_689, _684, cb0_196z));
  SV_Target.w = 1.0f;
  return SV_Target;
}
