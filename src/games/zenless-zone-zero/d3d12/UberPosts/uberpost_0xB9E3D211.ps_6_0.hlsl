#include "../../tonemap.hlsl"

// Trigger aftershock (FIRE) - Shiyu

Texture2D<float4> _BlitTex : register(t0);

Texture2D<float4> _Grain_Texture : register(t1);

Texture2D<float4> _InternalLut : register(t2);

Texture2D<float4> _CameraDistortionTextureOverlay : register(t3);

Texture2D<float4> _NapBloomTex : register(t4);

Texture2D<float4> _DirtTex : register(t5);

cbuffer $Globals : register(b0) {
  uint _DebugFeature : packoffset(c000.x);
  float4 _InvCameraViewProj[4] : packoffset(c001.x);
  float4 _ScaledScreenParams : packoffset(c005.x);
  float4 _MainLightPosition : packoffset(c006.x);
  float4 _MainLightColor : packoffset(c007.x);
  float4 _DrawObjectPassData : packoffset(c008.x);
  float4 _ParticleLightParams : packoffset(c009.x);
  float4 _SceneParticleFogColorMultiply : packoffset(c010.x);
  float4 _KodamaGIParams : packoffset(c011.x);
  float _SampleLightmapAreaDirect : packoffset(c012.x);
  float4 _GlobalTimeParamsA[4] : packoffset(c013.x);
  float4 _GlobalTimeParamsB[4] : packoffset(c017.x);
  float4 _GlobalSceneEffectParams : packoffset(c021.x);
  float4 _AvatarPosition0 : packoffset(c022.x);
  float4 _FXCC_LutToneParams[4] : packoffset(c023.x);
  float _ShadowPancaking : packoffset(c027.x);
  float4 _GlobalLightParams : packoffset(c028.x);
  float4 _GlobalLightParams2 : packoffset(c029.x);
  float3 _WorldSpaceCameraPos : packoffset(c030.x);
  float4 _SceneWeatherParamsPart1[4] : packoffset(c031.x);
  float4 _SceneWeatherParamsPart2[4] : packoffset(c035.x);
  float4 _SceneWeatherParamsPart3[4] : packoffset(c039.x);
  float4 _SceneWeatherParamsPart4[4] : packoffset(c043.x);
  float4 _SceneWeatherParamsPart5[4] : packoffset(c047.x);
  float4 _SceneWeatherParamsPart6[4] : packoffset(c051.x);
  float4 _SceneWeatherParamsPart7[4] : packoffset(c055.x);
  float4 _ProjectionParams : packoffset(c059.x);
  float4 _ScreenParams : packoffset(c060.x);
  float4 _ZBufferParams : packoffset(c061.x);
  float4 unity_OrthoParams : packoffset(c062.x);
  float4 unity_CameraWorldClipPlanes[6] : packoffset(c063.x);
  float4 unity_CameraProjection[4] : packoffset(c069.x);
  float4 unity_CameraInvProjection[4] : packoffset(c073.x);
  float4 unity_WorldToCamera[4] : packoffset(c077.x);
  float4 unity_CameraToWorld[4] : packoffset(c081.x);
  float4 glstate_matrix_transpose_modelview0[4] : packoffset(c085.x);
  float4 glstate_matrix_projection[4] : packoffset(c089.x);
  float4 unity_MatrixV[4] : packoffset(c093.x);
  float4 unity_MatrixInvV[4] : packoffset(c097.x);
  float4 unity_MatrixVP[4] : packoffset(c101.x);
  float4 unity_MatrixInvVP[4] : packoffset(c105.x);
  float4 _PrevViewProjMatrix[4] : packoffset(c109.x);
  float4 _PrevInvViewProjMatrix[4] : packoffset(c113.x);
  float4 _NonJitteredViewProjMatrix[4] : packoffset(c117.x);
  float4 _NonJitteredProjMatrix[4] : packoffset(c121.x);
  float4 _PrevViewMatrix[4] : packoffset(c125.x);
  float4 _PrevProjMatrix[4] : packoffset(c129.x);
  float4 _InvViewProjMatrix[4] : packoffset(c133.x);
  float4 _ScreenSize : packoffset(c137.x);
  float4 _TaaFrameInfo : packoffset(c138.x);
  float4 _TaaJitterStrength : packoffset(c139.x);
  float4 _FxFogParamsPartA[4] : packoffset(c140.x);
  float4 _FxCustomFogColorNear : packoffset(c144.x);
  float4 _FxCustomFogColorFar : packoffset(c145.x);
  float4 _FxCustomFogColorFinal : packoffset(c146.x);
  float4 _SceneFogParamsPart1[4] : packoffset(c147.x);
  float4 _SceneFogParamsPart2[4] : packoffset(c151.x);
  float4 _SceneFogParamsPart3[4] : packoffset(c155.x);
  float4 _SkyHorizontalParam : packoffset(c159.x);
  float4 _AlphaBlendAlphaParams : packoffset(c160.x);
  float4 _FullscreenProjMat[4] : packoffset(c161.x);
  float4 _HDRParams : packoffset(c165.x);
  float4 _PixelCoordToViewDirWS[4] : packoffset(c166.x);
  float4 _DaySkyParamsPartA[4] : packoffset(c170.x);
  float4 _NightSkyParamsPartA[4] : packoffset(c174.x);
  float4 _MoonAndGalaxyDir[4] : packoffset(c178.x);
  float4 _MoonGlow2Params : packoffset(c182.x);
  float3 _HighCloudColor : packoffset(c183.x);
  float _CloudSwitch : packoffset(c183.w);
  float4 _CloudParams0 : packoffset(c184.x);
  float4 _CloudParams1 : packoffset(c185.x);
  float4 _CloudParams2 : packoffset(c186.x);
  float4 _CloudParams3 : packoffset(c187.x);
  float4 _CloudPhaseColorG : packoffset(c188.x);
  float4 _CloudShadowMoveSpeed : packoffset(c189.x);
  float4 _CloudLightParams1 : packoffset(c190.x);
  float4 _CloudLightParams2 : packoffset(c191.x);
  float4 _SkyGridParam : packoffset(c192.x);
  float3 _SkyGridColor : packoffset(c193.x);
  float4 _GlobalWindDirection : packoffset(c194.x);
  float _OverrideSkyWeight : packoffset(c195.x);
  float4 _OverrideSkyBtnColor : packoffset(c196.x);
  float4 _OverrideSkyTopColor : packoffset(c197.x);
  float4 _OverrideLowCloudLightColor : packoffset(c198.x);
  float4 _OverrideLowCloudDarkColor : packoffset(c199.x);
};

cbuffer UberPostBaseCBuffer : register(b1) {
  float4 _Lut_Params : packoffset(c000.x);
  float4 _UserLut_Params : packoffset(c001.x);
  float4 _Bloom_Params : packoffset(c002.x);
  float4 _LensDirt_Params : packoffset(c003.x);
  float4 _Distortion_Params1 : packoffset(c004.x);
  float4 _Distortion_Params2 : packoffset(c005.x);
  float4 _Vignette_Params1 : packoffset(c006.x);
  float4 _Vignette_Params2 : packoffset(c007.x);
  float4 _Grain_TilingParams : packoffset(c008.x);
  float4 _Bloom_Texture_TexelSize : packoffset(c009.x);
  float4 _Dithering_Params : packoffset(c010.x);
  float4 _DistortionRgbShift : packoffset(c011.x);
  float4 UberPostBasePacked0 : packoffset(c012.x);
  float4 UberPostBasePacked1 : packoffset(c013.x);
  float4 _RgbShiftParams : packoffset(c014.x);
  float4 _NoiseParams : packoffset(c015.x);
  float4 _LineParams : packoffset(c016.x);
  float4 _GlitchMask_ST : packoffset(c017.x);
  float4 _RandomOpacity_ST : packoffset(c018.x);
  float4 UberPostBasePacked2 : packoffset(c019.x);
  float4 _DirtTexTillingOffset : packoffset(c020.x);
  float4 UberPostBasePacked3 : packoffset(c021.x);
  float4 UberPostBasePacked4 : packoffset(c022.x);
  float4 UberPostOldCRTPacked : packoffset(c023.x);
  float4 _ChromaCenter : packoffset(c024.x);
  float4 _ChromaticColorR : packoffset(c025.x);
  float4 _ChromaticColorG : packoffset(c026.x);
  float4 _ChromaticColorB : packoffset(c027.x);
  float4 _VREffectsScanlineParams : packoffset(c028.x);
  float4 _VREffectsSliceParams : packoffset(c029.x);
  float4 UberPostGlitchParkedParams1 : packoffset(c030.x);
  float4 UberPostGlitchParkedParams2 : packoffset(c031.x);
  float4 GlitchTex1And2Scale : packoffset(c032.x);
  float4 _CharacterGhostParams : packoffset(c033.x);
  float4 _SceneWeatherSandstormParams01 : packoffset(c034.x);
  float4 _SceneWeatherSandstormParams02 : packoffset(c035.x);
  float4 _SceneWeatherSandstormParams03 : packoffset(c036.x);
  float4 _SceneWeatherSandstormParams04 : packoffset(c037.x);
};

SamplerState s_linear_clamp_sampler : register(s0);

SamplerState s_linear_repeat_sampler : register(s1);

SamplerState sampler_CameraDistortionTextureOverlay : register(s2);

SamplerState sampler_NapBloomTex : register(s3);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  bool _17 = !(_Distortion_Params2.w == 0.0f);
  float _54;
  float _61;
  float _62;
  float _95;
  float _96;
  float _97;
  float _98;
  float _99;
  float _100;
  float _101;
  float _102;
  float _182;
  float _189;
  float _190;
  float _237;
  float _244;
  float _245;
  float _292;
  float _299;
  float _300;
  float _458;
  float _459;
  float _460;
  float _470;
  float _471;
  float _472;
  float _473;
  float _512;
  float _513;
  float _514;
  float _601;
  float _602;
  float _603;
  if (_17) {
    float _22 = _Distortion_Params2.z * (TEXCOORD.x + -0.5f);
    float _23 = _Distortion_Params2.z * (TEXCOORD.y + -0.5f);
    float _33 = (_22 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _34 = (_23 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _38 = sqrt((_33 * _33) + (_34 * _34));
    float _42 = _Distortion_Params2.y * _38;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _54 = ((1.0f / _42) * tan(_Distortion_Params2.x * _38));
      } else {
        _54 = ((_Distortion_Params2.x * (1.0f / _38)) * atan(_42));
      }
      float _55 = _54 + -1.0f;
      _61 = ((_22 + 0.5f) + (_55 * _33));
      _62 = ((_23 + 0.5f) + (_55 * _34));
    } while (false);
  } else {
    _61 = TEXCOORD.x;
    _62 = TEXCOORD.y;
  }
  if (_DistortionRgbShift.w > 0.0f) {
    float4 _67 = _CameraDistortionTextureOverlay.Sample(sampler_CameraDistortionTextureOverlay, float2(TEXCOORD.x, TEXCOORD.y));
    float _71 = _67.x * 0.10000000149011612f;
    float _72 = _67.y * 0.10000000149011612f;
    float _77 = (_71 * _67.z) * _DistortionRgbShift.w;
    float _78 = (_72 * _67.z) * _DistortionRgbShift.w;
    _95 = (_71 + _61);
    _96 = (_72 + _62);
    _97 = ((_77 * _DistortionRgbShift.x) + _71);
    _98 = ((_78 * _DistortionRgbShift.x) + _72);
    _99 = ((_77 * _DistortionRgbShift.y) + _71);
    _100 = ((_78 * _DistortionRgbShift.y) + _72);
    _101 = ((_DistortionRgbShift.z * _77) + _71);
    _102 = ((_DistortionRgbShift.z * _78) + _72);
  } else {
    _95 = _61;
    _96 = _62;
    _97 = 0.0f;
    _98 = 0.0f;
    _99 = 0.0f;
    _100 = 0.0f;
    _101 = 0.0f;
    _102 = 0.0f;
  }
  float _109 = ((TEXCOORD.x * 2.0f) - _ChromaCenter.x) + -0.5f;
  float _111 = ((TEXCOORD.y * 2.0f) - _ChromaCenter.y) + -0.5f;
  float _115 = dot(float2(_109, _111), float2(_109, _111)) * -0.3333333432674408f;
  float _117 = (_115 * _109) * UberPostBasePacked0.z;
  float _119 = (_115 * _111) * UberPostBasePacked0.z;
  float _121 = rsqrt(dot(float3(_117, _119, 9.999999747378752e-05f), float3(_117, _119, 9.999999747378752e-05f)));
  float _128 = UberPostBasePacked0.z * 0.9428090453147888f;
  float _133 = exp2(log2(sqrt((_117 * _117) + (_119 * _119)) / _128) * _ChromaCenter.z);
  float _135 = ((_117 * _121) * _128) * _133;
  float _137 = ((_119 * _121) * _128) * _133;
  float _144 = (_97 + TEXCOORD.x) + (_135 * _ChromaticColorR.w);
  float _145 = (_98 + TEXCOORD.y) + (_137 * _ChromaticColorR.w);
  if (_17) {
    float _150 = _Distortion_Params2.z * (_144 + -0.5f);
    float _151 = _Distortion_Params2.z * (_145 + -0.5f);
    float _161 = (_150 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _162 = (_151 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _166 = sqrt((_161 * _161) + (_162 * _162));
    float _170 = _Distortion_Params2.y * _166;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _182 = ((1.0f / _170) * tan(_Distortion_Params2.x * _166));
      } else {
        _182 = ((_Distortion_Params2.x * (1.0f / _166)) * atan(_170));
      }
      float _183 = _182 + -1.0f;
      _189 = ((_150 + 0.5f) + (_183 * _161));
      _190 = ((_151 + 0.5f) + (_183 * _162));
    } while (false);
  } else {
    _189 = _144;
    _190 = _145;
  }
  float4 _191 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_189, _190));
  float _199 = (_99 + TEXCOORD.x) + (_ChromaticColorG.w * _135);
  float _200 = (_100 + TEXCOORD.y) + (_ChromaticColorG.w * _137);
  if (_17) {
    float _205 = _Distortion_Params2.z * (_199 + -0.5f);
    float _206 = _Distortion_Params2.z * (_200 + -0.5f);
    float _216 = (_205 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _217 = (_206 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _221 = sqrt((_216 * _216) + (_217 * _217));
    float _225 = _Distortion_Params2.y * _221;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _237 = ((1.0f / _225) * tan(_Distortion_Params2.x * _221));
      } else {
        _237 = ((_Distortion_Params2.x * (1.0f / _221)) * atan(_225));
      }
      float _238 = _237 + -1.0f;
      _244 = ((_205 + 0.5f) + (_238 * _216));
      _245 = ((_206 + 0.5f) + (_238 * _217));
    } while (false);
  } else {
    _244 = _199;
    _245 = _200;
  }
  float4 _246 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_244, _245));
  float _254 = (_101 + TEXCOORD.x) + (_ChromaticColorB.w * _135);
  float _255 = (_102 + TEXCOORD.y) + (_ChromaticColorB.w * _137);
  if (_17) {
    float _260 = _Distortion_Params2.z * (_254 + -0.5f);
    float _261 = _Distortion_Params2.z * (_255 + -0.5f);
    float _271 = (_260 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _272 = (_261 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _276 = sqrt((_271 * _271) + (_272 * _272));
    float _280 = _Distortion_Params2.y * _276;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _292 = ((1.0f / _280) * tan(_Distortion_Params2.x * _276));
      } else {
        _292 = ((_Distortion_Params2.x * (1.0f / _276)) * atan(_280));
      }
      float _293 = _292 + -1.0f;
      _299 = ((_260 + 0.5f) + (_293 * _271));
      _300 = ((_261 + 0.5f) + (_293 * _272));
    } while (false);
  } else {
    _299 = _254;
    _300 = _255;
  }
  float4 _301 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_299, _300));
  float _324 = ((_ChromaticColorG.x * _246.y) + (_ChromaticColorR.x * _191.x)) + (_ChromaticColorB.x * _301.z);
  float _325 = ((_ChromaticColorG.y * _246.y) + (_ChromaticColorR.y * _191.x)) + (_ChromaticColorB.y * _301.z);
  float _326 = ((_ChromaticColorG.z * _246.y) + (_ChromaticColorR.z * _191.x)) + (_ChromaticColorB.z * _301.z);
  float4 _327 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_95, _96));
  bool _335 = (UberPostBasePacked3.y > 0.0f);
  if ((bool)(UberPostBasePacked3.z < 0.5f) && ((bool)((bool)(UberPostBasePacked3.x > 0.0f) || _335))) {
    float _345 = fmod(((_ScreenSize.y * _96) * _VREffectsScanlineParams.x), 2.0f);
    float _353 = (((select((_345 > 1.0f), (2.0f - _345), _345) * 2.0f) + -1.0f) * _VREffectsScanlineParams.z) + _95;
    float _356 = _ScreenSize.w * _ScreenSize.x;
    float4 _375 = _NapBloomTex.Sample(sampler_NapBloomTex, float2(_353, ((select(((frac((((_353 + abs(_VREffectsSliceParams.y)) * _356) - (_VREffectsSliceParams.y * _96)) / ((_356 * 2.0f) * _VREffectsSliceParams.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * _VREffectsSliceParams.z) + _96)));
    float _412 = ((((-0.699999988079071f - _375.x) + (exp2(log2(abs(_375.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_375.x < 0.30000001192092896f), 0.0f, 1.0f)) + _375.x) * UberPostBasePacked3.x;
    float _413 = ((((-0.699999988079071f - _375.y) + (exp2(log2(abs(_375.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_375.y < 0.30000001192092896f), 0.0f, 1.0f)) + _375.y) * UberPostBasePacked3.x;
    float _414 = ((((-0.699999988079071f - _375.z) + (exp2(log2(abs(_375.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_375.z < 0.30000001192092896f), 0.0f, 1.0f)) + _375.z) * UberPostBasePacked3.x;
    float _415 = dot(float3(_324, _325, _326), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    bool _418 = (UberPostBasePacked4.x > 0.5f);
    float _431 = select(_418, ((((_412 * _415) - _412) * _327.w) + _412), _412);
    float _432 = select(_418, ((((_413 * _415) - _413) * _327.w) + _413), _413);
    float _433 = select(_418, ((((_414 * _415) - _414) * _327.w) + _414), _414);
    do {
      if (_335) {
        float4 _444 = _DirtTex.Sample(s_linear_clamp_sampler, float2(((_DirtTexTillingOffset.x * _95) + _DirtTexTillingOffset.z), ((_DirtTexTillingOffset.y * _96) + _DirtTexTillingOffset.w)));
        _458 = (((_444.x * _412) * UberPostBasePacked3.y) + _431);
        _459 = (((_444.y * _413) * UberPostBasePacked3.y) + _432);
        _460 = (((_444.z * _414) * UberPostBasePacked3.y) + _433);
      } else {
        _458 = _431;
        _459 = _432;
        _460 = _433;
      }
      _470 = (_458 + _324);
      _471 = (_459 + _325);
      _472 = (_460 + _326);
      _473 = saturate((((_459 + _458) + _460) * 0.33329999446868896f) + _327.w);
    } while (false);
  } else {
    _470 = _324;
    _471 = _325;
    _472 = _326;
    _473 = _327.w;
  }
  [branch]
  if (_Vignette_Params2.z > 0.0f) {
    float _490 = abs(_96 - _Vignette_Params2.y) * _Vignette_Params2.z;
    float _492 = (_Vignette_Params2.z * _Vignette_Params1.w) * abs(_95 - _Vignette_Params2.x);
    float _498 = exp2(log2(saturate(1.0f - dot(float2(_492, _490), float2(_492, _490)))) * _Vignette_Params2.w);
    _512 = (((_498 * (1.0f - _Vignette_Params1.x)) + _Vignette_Params1.x) * _470);
    _513 = (((_498 * (1.0f - _Vignette_Params1.y)) + _Vignette_Params1.y) * _471);
    _514 = (((_498 * (1.0f - _Vignette_Params1.z)) + _Vignette_Params1.z) * _472);
  } else {
    _512 = _470;
    _513 = _471;
    _514 = _472;
  }

  float3 untonemapped = (float3(_512, _513, _514));
  renodx::lut::Config lut_config = renodx::lut::config::Create(
      s_linear_clamp_sampler,
      1.f,
      0.f,
      renodx::lut::config::type::ARRI_C1000_NO_CUT,
      renodx::lut::config::type::LINEAR,
      _Lut_Params.xyz);

  float3 tonemapped = renodx::lut::Sample(_InternalLut, lut_config, untonemapped);
  float _563 = tonemapped.x;
  float _564 = tonemapped.y;
  float _565 = tonemapped.z;

  /*
  float _537 = saturate((log2((_514 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z;
  float _538 = floor(_537);
  float _544 = ((saturate((log2((_513 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z) + 0.5f) * _Lut_Params.y;
  float _546 = (_538 * _Lut_Params.y) + (((saturate((log2((_512 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z) + 0.5f) * _Lut_Params.x);
  float _547 = _537 - _538;
  float4 _549 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2((_546 + _Lut_Params.y), _544), 0.0f);
  float4 _553 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2(_546, _544), 0.0f);
  float _563 = ((_549.x - _553.x) * _547) + _553.x;
  float _564 = ((_549.y - _553.y) * _547) + _553.y;
  float _565 = ((_549.z - _553.z) * _547) + _553.z;
  */
  if (UberPostBasePacked1.x > 0.0f) {
    float4 _580 = _Grain_Texture.Sample(s_linear_repeat_sampler, float2(((_Grain_TilingParams.x * TEXCOORD.x) + _Grain_TilingParams.z), ((_Grain_TilingParams.y * TEXCOORD.y) + _Grain_TilingParams.w)));
    float _583 = (_580.w + -0.5f) * 2.0f;
    float _587 = 1.0f - (sqrt(dot(float3(_563, _564, _565), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBasePacked1.y);
    _601 = ((((UberPostBasePacked1.x * _563) * _583) * _587) + _563);
    _602 = ((((UberPostBasePacked1.x * _564) * _583) * _587) + _564);
    _603 = ((((UberPostBasePacked1.x * _565) * _583) * _587) + _565);
  } else {
    _601 = _563;
    _602 = _564;
    _603 = _565;
  }
  SV_Target.x = _601;
  SV_Target.y = _602;
  SV_Target.z = _603;
  SV_Target.w = _473;

  if (injectedData.fxFilmGrainAmount > 0.0f) {
    SV_Target.xyz = applyFilmGrain(SV_Target.xyz, TEXCOORD);
  }

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
