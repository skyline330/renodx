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
  float cb0_061x : packoffset(c061.x);
  float cb0_171x : packoffset(c171.x);
  float cb0_171y : packoffset(c171.y);
  float cb0_171z : packoffset(c171.z);
  float cb0_171w : packoffset(c171.w);
  float cb0_173x : packoffset(c173.x);
  float cb0_173y : packoffset(c173.y);
  float cb0_173z : packoffset(c173.z);
  float cb0_173w : packoffset(c173.w);
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

SamplerState s2 : register(s2);

float4 main(
    noperspective float4 SV_Position: SV_Position,
    linear float2 TEXCOORD: TEXCOORD,
    linear float4 TEXCOORD_1: TEXCOORD1) : SV_Target {
  float4 SV_Target;

  float _22 = TEXCOORD.x - cb0_174y;
  float _25 = frac(_22 * cb0_174x);
  float _40 = exp2(((_25 * cb0_174w) + -0.3860360085964203f) * 13.60548210144043f) + -0.047995999455451965f;
  float _43 = (exp2((((TEXCOORD.y - cb0_174z) * cb0_174w) + -0.3860360085964203f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f;
  float _44 = (exp2((((_22 - (_25 / cb0_174x)) * cb0_174w) + -0.3860360085964203f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f;

  float _58 = cb0_175x * mad(0.008926319889724255f, _44, mad(0.5499410033226013f, _43, (_40 * 0.07027290016412735f)));
  float _59 = cb0_175y * mad(0.0013577500358223915f, _44, mad(0.9631720185279846f, _43, (_40 * 0.012751488015055656f)));
  float _60 = cb0_175z * mad(0.9362450242042542f, _44, mad(0.1280210018157959f, _43, (_40 * 0.004159475676715374f)));

  float _126 = exp2(log2(abs(max(0.0f, (((exp2(((cb0_180z * ((log2((mad(-0.024891000241041183f, _60, mad(-1.628790020942688f, _59, (_58 * 2.8584699630737305f))) * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + -0.027552396059036255f)) + 0.027552396059036255f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) * cb0_176x)))) * 0.4545454680919647f);
  float _127 = exp2(log2(abs(max(0.0f, (((exp2(((cb0_180z * ((log2((mad(0.00032428099075332284f, _60, mad(1.1582000255584717f, _59, (_58 * -0.21018199622631073f))) * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + -0.027552396059036255f)) + 0.027552396059036255f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) * cb0_176y)))) * 0.4545454680919647f);
  float _128 = exp2(log2(abs(max(0.0f, (((exp2(((((log2((mad(1.0686700344085693f, _60, mad(-0.11816900223493576f, _59, (_58 * -0.041811998933553696f))) * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + -0.027552396059036255f) * cb0_180z) + 0.027552396059036255f) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) * cb0_176z)))) * 0.4545454680919647f);

  float _134 = saturate(dot(float3(saturate(_126), saturate(_127), saturate(_128)), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)) + cb0_188w);
  float _135 = 1.0f - _134;
  float _142 = (cb0_188x + -0.5f) * _135;
  float _143 = (cb0_188y + -0.5f) * _135;
  float _144 = (cb0_188z + -0.5f) * _135;
  float _145 = _142 + 0.5f;
  float _146 = _143 + 0.5f;
  float _147 = _144 + 0.5f;
  float _155 = (cb0_189x + -0.5f) * _134;
  float _156 = (cb0_189y + -0.5f) * _134;
  float _157 = (cb0_189z + -0.5f) * _134;
  float _158 = _155 + 0.5f;
  float _159 = _156 + 0.5f;
  float _160 = _157 + 0.5f;
  float _161 = _145 * 2.0f;
  float _162 = _146 * 2.0f;
  float _163 = _147 * 2.0f;
  float _197 = select((_145 < 0.5f), 0.0f, 1.0f);
  float _198 = select((_146 < 0.5f), 0.0f, 1.0f);
  float _199 = select((_147 < 0.5f), 0.0f, 1.0f);
  float _212 = ((_126 * (1.0f - _197)) * (lerp(_161, 1.0f, _126))) + ((((_161 + -1.0f) * sqrt(_126)) + ((_126 * 2.0f) * (0.5f - _142))) * _197);
  float _213 = ((_127 * (1.0f - _198)) * (lerp(_162, 1.0f, _127))) + ((((_162 + -1.0f) * sqrt(_127)) + ((_127 * 2.0f) * (0.5f - _143))) * _198);
  float _214 = ((_128 * (1.0f - _199)) * (lerp(_163, 1.0f, _128))) + ((((_163 + -1.0f) * sqrt(_128)) + ((_128 * 2.0f) * (0.5f - _144))) * _199);
  float _215 = _158 * 2.0f;
  float _216 = _159 * 2.0f;
  float _217 = _160 * 2.0f;
  float _251 = select((_158 < 0.5f), 0.0f, 1.0f);
  float _252 = select((_159 < 0.5f), 0.0f, 1.0f);
  float _253 = select((_160 < 0.5f), 0.0f, 1.0f);
  float _278 = exp2(log2(abs((((1.0f - _251) * _212) * (_215 + (_212 * (1.0f - _215)))) + (((((0.5f - _155) * 2.0f) * _212) + ((_215 + -1.0f) * sqrt(_212))) * _251))) * 2.200000047683716f);
  float _279 = exp2(log2(abs((((1.0f - _252) * _213) * (_216 + (_213 * (1.0f - _216)))) + (((((0.5f - _156) * 2.0f) * _213) + ((_216 + -1.0f) * sqrt(_213))) * _252))) * 2.200000047683716f);
  float _280 = exp2(log2(abs((((1.0f - _253) * _214) * (_217 + (_214 * (1.0f - _217)))) + (((((0.5f - _157) * 2.0f) * _214) + (sqrt(_214) * (_217 + -1.0f))) * _253))) * 2.200000047683716f);
  float _285 = dot(float3(_278, _279, _280), float3(cb0_177x, cb0_177y, cb0_177z));
  float _290 = dot(float3(_278, _279, _280), float3(cb0_178x, cb0_178y, cb0_178z));
  float _295 = dot(float3(_278, _279, _280), float3(cb0_179x, cb0_179y, cb0_179z));
  float _296 = dot(float3(_285, _290, _295), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f));
  float _303 = saturate((_296 - cb0_187x) / (cb0_187y - cb0_187x));
  float _307 = (_303 * _303) * (3.0f - (_303 * 2.0f));
  float _308 = 1.0f - _307;
  float _314 = saturate((_296 - cb0_187z) / (cb0_187w - cb0_187z));
  float _318 = (_314 * _314) * (3.0f - (_314 * 2.0f));
  float _319 = _307 - _318;
  float _361 = ((_285 * cb0_183x) * (((_319 * cb0_185x) + (cb0_184x * _308)) + (cb0_186x * _318))) + cb0_181x;
  float _362 = ((_290 * cb0_183y) * (((_319 * cb0_185y) + (cb0_184y * _308)) + (cb0_186y * _318))) + cb0_181y;
  float _363 = ((_295 * cb0_183z) * (((_319 * cb0_185z) + (cb0_184z * _308)) + (cb0_186z * _318))) + cb0_181z;
  float _398 = float(((int)(uint)((bool)(_361 > 0.0f))) - ((int)(uint)((bool)(_361 < 0.0f)))) * exp2(log2(abs(_361)) * cb0_182x);
  float _399 = float(((int)(uint)((bool)(_362 > 0.0f))) - ((int)(uint)((bool)(_362 < 0.0f)))) * exp2(log2(abs(_362)) * cb0_182y);
  float _400 = float(((int)(uint)((bool)(_363 > 0.0f))) - ((int)(uint)((bool)(_363 < 0.0f)))) * exp2(log2(abs(_363)) * cb0_182z);
  float _402 = select((_399 < _400), 0.0f, 1.0f);
  float _407 = (_402 * (_399 - _400)) + _400;
  float _408 = (_402 * (_400 - _399)) + _399;
  float _410 = 0.6666666865348816f - _402;
  float _412 = select((_398 < _407), 0.0f, 1.0f);
  float _419 = (_412 * (_398 - _407)) + _407;
  float _420 = (_412 * (_407 - _398)) + _398;
  float _422 = _419 - min(_420, _408);
  float _429 = abs((_410 + ((_420 - _408) / ((_422 * 6.0f) + 9.999999747378752e-05f))) + (_412 * ((_402 + -1.0f) - _410)));
  float _431 = _422 / (_419 + 9.999999747378752e-05f);
  float4 _434 = t7.SampleBias(s0, float2(_429, 0.0f), cb0_061x, int2(0, 0));
  float4 _439 = t8.SampleBias(s0, float2(_431, 0.0f), cb0_061x, int2(0, 0));
  float4 _445 = t9.SampleBias(s0, float2(dot(float3(_398, _399, _400), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.0f), cb0_061x, int2(0, 0));
  float _450 = ((saturate(_434.x) * 8.0f) * saturate(_439.x)) * saturate(_445.x);
  float _453 = cb0_180x + _429;
  float4 _456 = t6.SampleBias(s0, float2(_453, 0.0f), cb0_061x, int2(0, 0));
  float _460 = (_453 + -0.5f) + saturate(_456.x);
  float _466 = select((_460 < 0.0f), (_460 + 1.0f), select((_460 > 1.0f), (_460 + -1.0f), _460));
  float _497 = (((saturate(abs((frac(_466 + 1.0f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _431) + 1.0f) * _419;
  float _498 = (((saturate(abs((frac(_466 + 0.6666666865348816f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _431) + 1.0f) * _419;
  float _499 = (((saturate(abs((frac(_466 + 0.3333333432674408f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _431) + 1.0f) * _419;

  float _500 = dot(float3(_497, _498, _499), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f));
  float _513;
  float _760;
  float _761;
  float _762;
  if (cb0_196w > 0.5f) {
    _513 = exp2(log2(saturate(1.0f - saturate(_500)) * 0.699999988079071f) * 2.200000047683716f);
  } else {
    _513 = _500;
  }
  float _528 = max(0.0f, ((((_497 - _513) * _450) * cb0_180y) + _513));
  float _529 = max(0.0f, ((((_498 - _513) * _450) * cb0_180y) + _513));
  float _530 = max(0.0f, ((((_499 - _513) * _450) * cb0_180y) + _513));

  float _553 = cb0_173z * saturate((log2((_530 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f);
  float _554 = floor(_553);
  float _560 = ((cb0_173z * saturate((log2((_529 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f)) + 0.5f) * cb0_173y;
  float _562 = (((cb0_173z * saturate((log2((_528 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f)) + 0.5f) * cb0_173x) + (_554 * cb0_173y);
  float _563 = _553 - _554;
  float4 _565 = t0.SampleLevel(s1, float2((_562 + cb0_173y), _560), 0.0f);
  float4 _569 = t0.SampleLevel(s1, float2(_562, _560), 0.0f);
  float _604 = (cb0_173w * (((exp2(((_569.x + -0.3860360085964203f) + ((_565.x - _569.x) * _563)) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) - _528)) + _528;
  float _605 = (cb0_173w * (((exp2(((_569.y + -0.3860360085964203f) + ((_565.y - _569.y) * _563)) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) - _529)) + _529;
  float _606 = ((((exp2(((_569.z + -0.3860360085964203f) + ((_565.z - _569.z) * _563)) * 13.60548210144043f) + -0.047995999455451965f) * 0.17999999225139618f) - _530) * cb0_173w) + _530;

  float _610 = 1.0f / (max(max(_604, _605), _606) + 1.0f);
  float4 _619 = t2.SampleBias(s0, float2(((_604 * _610) + 0.00390625f), 0.0f), cb0_061x, int2(0, 0));
  float4 _624 = t2.SampleBias(s0, float2(((_605 * _610) + 0.00390625f), 0.0f), cb0_061x, int2(0, 0));
  float4 _629 = t2.SampleBias(s0, float2(((_606 * _610) + 0.00390625f), 0.0f), cb0_061x, int2(0, 0));
  float4 _637 = t3.SampleBias(s0, float2((saturate(_619.x) + 0.00390625f), 0.0f), cb0_061x, int2(0, 0));
  float _639 = saturate(_637.x);
  float4 _642 = t4.SampleBias(s0, float2((saturate(_624.x) + 0.00390625f), 0.0f), cb0_061x, int2(0, 0));
  float _644 = saturate(_642.x);
  float4 _647 = t5.SampleBias(s0, float2((saturate(_629.x) + 0.00390625f), 0.0f), cb0_061x, int2(0, 0));
  float _649 = saturate(_647.x);

  float _653 = 1.0f / (1.0f - max(max(_639, _644), _649));
  float _654 = _653 * _639;
  float _655 = _653 * _644;
  float _656 = _653 * _649;

  bool useSDRLut = (cb0_171w > 0.0f);

  renodx::lut::Config lut_config = renodx::lut::config::Create();
  lut_config.lut_sampler = s2;
  lut_config.strength = useSDRLut ? cb0_171w * RENODX_COLOR_GRADE_LUT_STRENGTH : 0;
  lut_config.scaling = RENODX_COLOR_GRADE_LUT_SCALING;
  lut_config.type_input = renodx::lut::config::type::SRGB;
  lut_config.type_output = renodx::lut::config::type::SRGB;
  lut_config.recolor = 0.f;
  lut_config.max_channel = 1.f;
  lut_config.gamut_compress = 1.f;
  lut_config.precompute = float3(cb0_171x, cb0_171y, cb0_171z);

  float3 color_lut_input = float3(_654, _655, _656);

  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 color_output = renodx::lut::Sample(t1, lut_config, color_lut_input);
    SV_Target.xyz = color_output;
    SV_Target.xyz = ApplyOutputToneMap(SV_Target.xyz, TEXCOORD.xy);
    SV_Target.w = 1.0f;
    return SV_Target;
  }

  if (cb0_171w > 0.0f) {
    float _661 = saturate(_654);
    float _662 = saturate(_655);
    float _663 = saturate(_656);
    float _688 = select((_661 <= 0.0031308000907301903f), (_661 * 12.920000076293945f), ((exp2(log2(abs(_661)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
    float _689 = select((_662 <= 0.0031308000907301903f), (_662 * 12.920000076293945f), ((exp2(log2(abs(_662)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
    float _690 = select((_663 <= 0.0031308000907301903f), (_663 * 12.920000076293945f), ((exp2(log2(abs(_663)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
    float _694 = _690 * cb0_171z;
    float _695 = floor(_694);
    float _701 = ((_689 * cb0_171z) + 0.5f) * cb0_171y;
    float _703 = (((cb0_171z * _688) + 0.5f) * cb0_171x) + (_695 * cb0_171y);
    float _704 = _694 - _695;
    float4 _706 = t1.SampleLevel(s2, float2((_703 + cb0_171y), _701), 0.0f);
    float4 _710 = t1.SampleLevel(s2, float2(_703, _701), 0.0f);
    float _729 = (((_710.x - _688) + ((_706.x - _710.x) * _704)) * cb0_171w) + _688;
    float _730 = (((_710.y - _689) + ((_706.y - _710.y) * _704)) * cb0_171w) + _689;
    float _731 = (((_710.z - _690) + ((_706.z - _710.z) * _704)) * cb0_171w) + _690;
    _760 = select((_729 <= 0.040449999272823334f), (_729 * 0.07739938050508499f), exp2(log2(abs((_729 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _761 = select((_730 <= 0.040449999272823334f), (_730 * 0.07739938050508499f), exp2(log2(abs((_730 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
    _762 = select((_731 <= 0.040449999272823334f), (_731 * 0.07739938050508499f), exp2(log2(abs((_731 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  } else {
    _760 = _654;
    _761 = _655;
    _762 = _656;
  }
  float _767 = ((_761 + _760) + _762) * 0.3333333432674408f;
  SV_Target.x = saturate(lerp(_767, _760, cb0_196z));
  SV_Target.y = saturate(lerp(_767, _761, cb0_196z));
  SV_Target.z = saturate(lerp(_767, _762, cb0_196z));
  SV_Target.w = 1.0f;
  return SV_Target;
}
