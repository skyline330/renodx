#include "../../tonemap.hlsl"

Texture2D<float4> _BlitTex : register(t0);

Texture2D<float4> _Grain_Texture : register(t1);

Texture2D<float4> _InternalLut : register(t2);

Texture2D<float4> _FXMaskForScene : register(t3);

Texture2D<float4> _CameraDistortionTextureOverlay : register(t4);

Texture2D<float4> _NapBloomTex : register(t5);

Texture2D<float4> _DirtTex : register(t6);

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

cbuffer UberPostFXColorCorrectionCBuffer : register(b2) {
  float4 UberPostColorCorrectionPacked0 : packoffset(c000.x);
  float4 UberPostColorCorrectionPacked1 : packoffset(c001.x);
  float4 UberPostColorCorrectionPacked2 : packoffset(c002.x);
  float4 UberPostColorCorrectionPacked3 : packoffset(c003.x);
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
  float _49;
  float _50;
  float _51;
  float _52;
  float _53;
  float _54;
  float _55;
  float _56;
  float _280;
  float _281;
  float _282;
  float _292;
  float _293;
  float _294;
  float _295;
  float _334;
  float _335;
  float _336;
  float _462;
  float _463;
  float _464;
  float _604;
  float _605;
  float _606;
  if (_DistortionRgbShift.w > 0.0f) {
    float4 _21 = _CameraDistortionTextureOverlay.Sample(sampler_CameraDistortionTextureOverlay, float2(TEXCOORD.x, TEXCOORD.y));
    float _25 = _21.x * 0.10000000149011612f;
    float _26 = _21.y * 0.10000000149011612f;
    float _31 = (_25 * _21.z) * _DistortionRgbShift.w;
    float _32 = (_26 * _21.z) * _DistortionRgbShift.w;
    _49 = (_25 + TEXCOORD.x);
    _50 = (_26 + TEXCOORD.y);
    _51 = ((_31 * _DistortionRgbShift.x) + _25);
    _52 = ((_32 * _DistortionRgbShift.x) + _26);
    _53 = ((_31 * _DistortionRgbShift.y) + _25);
    _54 = ((_32 * _DistortionRgbShift.y) + _26);
    _55 = ((_DistortionRgbShift.z * _31) + _25);
    _56 = ((_DistortionRgbShift.z * _32) + _26);
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
  float _63 = ((TEXCOORD.x * 2.0f) - _ChromaCenter.x) + -0.5f;
  float _65 = ((TEXCOORD.y * 2.0f) - _ChromaCenter.y) + -0.5f;
  float _69 = dot(float2(_63, _65), float2(_63, _65)) * -0.3333333432674408f;
  float _71 = (_69 * _63) * UberPostBasePacked0.z;
  float _73 = (_69 * _65) * UberPostBasePacked0.z;
  float _75 = rsqrt(dot(float3(_71, _73, 9.999999747378752e-05f), float3(_71, _73, 9.999999747378752e-05f)));
  float _82 = UberPostBasePacked0.z * 0.9428090453147888f;
  float _87 = exp2(log2(sqrt((_71 * _71) + (_73 * _73)) / _82) * _ChromaCenter.z);
  float _89 = ((_71 * _75) * _82) * _87;
  float _91 = ((_73 * _75) * _82) * _87;
  float4 _100 = _BlitTex.Sample(s_linear_clamp_sampler, float2(((_51 + TEXCOORD.x) + (_89 * _ChromaticColorR.w)), ((_52 + TEXCOORD.y) + (_91 * _ChromaticColorR.w))));
  float4 _110 = _BlitTex.Sample(s_linear_clamp_sampler, float2(((_53 + TEXCOORD.x) + (_ChromaticColorG.w * _89)), ((_54 + TEXCOORD.y) + (_ChromaticColorG.w * _91))));
  float4 _120 = _BlitTex.Sample(s_linear_clamp_sampler, float2(((_55 + TEXCOORD.x) + (_ChromaticColorB.w * _89)), ((_56 + TEXCOORD.y) + (_ChromaticColorB.w * _91))));
  float _146 = ((_ChromaticColorG.x * _110.y) + (_ChromaticColorR.x * _100.x)) + (_ChromaticColorB.x * _120.z);
  float _147 = ((_ChromaticColorG.y * _110.y) + (_ChromaticColorR.y * _100.x)) + (_ChromaticColorB.y * _120.z);
  float _148 = ((_ChromaticColorG.z * _110.y) + (_ChromaticColorR.z * _100.x)) + (_ChromaticColorB.z * _120.z);
  float4 _149 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_49, _50));
  bool _157 = (UberPostBasePacked3.y > 0.0f);
  if ((bool)(UberPostBasePacked3.z < 0.5f) && ((bool)((bool)(UberPostBasePacked3.x > 0.0f) || _157))) {
    float _167 = fmod(((_ScreenSize.y * _50) * _VREffectsScanlineParams.x), 2.0f);
    float _175 = (((select((_167 > 1.0f), (2.0f - _167), _167) * 2.0f) + -1.0f) * _VREffectsScanlineParams.z) + _49;
    float _178 = _ScreenSize.w * _ScreenSize.x;
    float4 _197 = _NapBloomTex.Sample(sampler_NapBloomTex, float2(_175, ((select(((frac((((_175 + abs(_VREffectsSliceParams.y)) * _178) - (_VREffectsSliceParams.y * _50)) / ((_178 * 2.0f) * _VREffectsSliceParams.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * _VREffectsSliceParams.z) + _50)));
    float _234 = ((((-0.699999988079071f - _197.x) + (exp2(log2(abs(_197.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_197.x < 0.30000001192092896f), 0.0f, 1.0f)) + _197.x) * UberPostBasePacked3.x;
    float _235 = ((((-0.699999988079071f - _197.y) + (exp2(log2(abs(_197.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_197.y < 0.30000001192092896f), 0.0f, 1.0f)) + _197.y) * UberPostBasePacked3.x;
    float _236 = ((((-0.699999988079071f - _197.z) + (exp2(log2(abs(_197.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_197.z < 0.30000001192092896f), 0.0f, 1.0f)) + _197.z) * UberPostBasePacked3.x;
    float _237 = dot(float3(_146, _147, _148), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    bool _240 = (UberPostBasePacked4.x > 0.5f);
    float _253 = select(_240, ((((_234 * _237) - _234) * _149.w) + _234), _234);
    float _254 = select(_240, ((((_235 * _237) - _235) * _149.w) + _235), _235);
    float _255 = select(_240, ((((_236 * _237) - _236) * _149.w) + _236), _236);
    do {
      if (_157) {
        float4 _266 = _DirtTex.Sample(s_linear_clamp_sampler, float2(((_DirtTexTillingOffset.x * _49) + _DirtTexTillingOffset.z), ((_DirtTexTillingOffset.y * _50) + _DirtTexTillingOffset.w)));
        _280 = (((_266.x * _234) * UberPostBasePacked3.y) + _253);
        _281 = (((_266.y * _235) * UberPostBasePacked3.y) + _254);
        _282 = (((_266.z * _236) * UberPostBasePacked3.y) + _255);
      } else {
        _280 = _253;
        _281 = _254;
        _282 = _255;
      }
      _292 = (_280 + _146);
      _293 = (_281 + _147);
      _294 = (_282 + _148);
      _295 = saturate((((_281 + _280) + _282) * 0.33329999446868896f) + _149.w);
    } while (false);
  } else {
    _292 = _146;
    _293 = _147;
    _294 = _148;
    _295 = _149.w;
  }
  [branch]
  if (_Vignette_Params2.z > 0.0f) {
    float _312 = abs(_50 - _Vignette_Params2.y) * _Vignette_Params2.z;
    float _314 = (_Vignette_Params2.z * _Vignette_Params1.w) * abs(_49 - _Vignette_Params2.x);
    float _320 = exp2(log2(saturate(1.0f - dot(float2(_314, _312), float2(_314, _312)))) * _Vignette_Params2.w);
    _334 = (((_320 * (1.0f - _Vignette_Params1.x)) + _Vignette_Params1.x) * _292);
    _335 = (((_320 * (1.0f - _Vignette_Params1.y)) + _Vignette_Params1.y) * _293);
    _336 = (((_320 * (1.0f - _Vignette_Params1.z)) + _Vignette_Params1.z) * _294);
  } else {
    _334 = _292;
    _335 = _293;
    _336 = _294;
  }
  float3 untonemapped = (float3(_334, _335, _336));

  float3 tonemapped = applyUserToneMap(untonemapped, _Lut_Params, _InternalLut, s_linear_clamp_sampler);

  float _424 = tonemapped.x;
  float _425 = tonemapped.y;
  float _426 = tonemapped.z;
  // Internal LUT
  /*
  float _341 = saturate(_334);
  float _342 = saturate(_335);
  float _343 = saturate(_336);
  float _371 = select((_343 <= 0.0031308000907301903f), (_343 * 12.920000076293945f), ((exp2(log2(abs(_343)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * _Lut_Params.z;
  float _372 = floor(_371);
  float _378 = ((select((_342 <= 0.0031308000907301903f), (_342 * 12.920000076293945f), ((exp2(log2(abs(_342)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * _Lut_Params.z) + 0.5f) * _Lut_Params.y;
  float _380 = (((select((_341 <= 0.0031308000907301903f), (_341 * 12.920000076293945f), ((exp2(log2(abs(_341)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * _Lut_Params.z) + 0.5f) * _Lut_Params.x) + (_372 * _Lut_Params.y);
  float _381 = _371 - _372;
  float4 _383 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2((_380 + _Lut_Params.y), _378), 0.0f);
  float4 _387 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2(_380, _378), 0.0f);
  float _397 = ((_383.x - _387.x) * _381) + _387.x;
  float _398 = ((_383.y - _387.y) * _381) + _387.y;
  float _399 = ((_383.z - _387.z) * _381) + _387.z;
  float _424 = select((_397 <= 0.040449999272823334f), (_397 * 0.07739938050508499f), exp2(log2(abs((_397 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  float _425 = select((_398 <= 0.040449999272823334f), (_398 * 0.07739938050508499f), exp2(log2(abs((_398 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  float _426 = select((_399 <= 0.040449999272823334f), (_399 * 0.07739938050508499f), exp2(log2(abs((_399 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  */
  if (UberPostBasePacked1.x > 0.0f) {
    float4 _441 = _Grain_Texture.Sample(s_linear_repeat_sampler, float2(((_Grain_TilingParams.x * TEXCOORD.x) + _Grain_TilingParams.z), ((_Grain_TilingParams.y * TEXCOORD.y) + _Grain_TilingParams.w)));
    float _444 = (_441.w + -0.5f) * 2.0f;
    float _448 = 1.0f - (sqrt(dot(float3(_424, _425, _426), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBasePacked1.y);
    _462 = ((((UberPostBasePacked1.x * _424) * _444) * _448) + _424);
    _463 = ((((UberPostBasePacked1.x * _425) * _444) * _448) + _425);
    _464 = ((((UberPostBasePacked1.x * _426) * _444) * _448) + _426);
  } else {
    _462 = _424;
    _463 = _425;
    _464 = _426;
  }
  float _469 = ((_463 + _462) + _464) * 0.3333333432674408f;
  float _476 = ((_462 - _469) * UberPostColorCorrectionPacked0.w) + _469;
  float _477 = ((_463 - _469) * UberPostColorCorrectionPacked0.w) + _469;
  float _478 = ((_464 - _469) * UberPostColorCorrectionPacked0.w) + _469;
  float _493 = (((1.0f - saturate(_476)) - _476) * UberPostColorCorrectionPacked1.w) + _476;
  float _494 = (((1.0f - saturate(_477)) - _477) * UberPostColorCorrectionPacked1.w) + _477;
  float _495 = (((1.0f - saturate(_478)) - _478) * UberPostColorCorrectionPacked1.w) + _478;
  float _503 = saturate((saturate(dot(float3(_493, _494, _495), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostColorCorrectionPacked2.y) * UberPostColorCorrectionPacked2.z);
  float _529 = saturate((((UberPostColorCorrectionPacked0.x - _493) + ((UberPostColorCorrectionPacked1.x - UberPostColorCorrectionPacked0.x) * _503)) * UberPostColorCorrectionPacked2.x) + _493);
  float _530 = (((UberPostColorCorrectionPacked0.y - _494) + ((UberPostColorCorrectionPacked1.y - UberPostColorCorrectionPacked0.y) * _503)) * UberPostColorCorrectionPacked2.x) + _494;
  float _531 = (((UberPostColorCorrectionPacked0.z - _495) + ((UberPostColorCorrectionPacked1.z - UberPostColorCorrectionPacked0.z) * _503)) * UberPostColorCorrectionPacked2.x) + _495;
  // HDR FX Mask Blend 
  /*
  if (UberPostColorCorrectionPacked2.w > 0.5f) {
    float4 _535 = _FXMaskForScene.Sample(s_linear_clamp_sampler, float2(TEXCOORD.x, TEXCOORD.y));
    if (UberPostColorCorrectionPacked3.w < 0.5f) {
      _604 = min((_535.x + _529), 1.0f);
      _605 = min((_535.x + _530), 1.0f);
      _606 = min((_535.x + _531), 1.0f);
    } else {
      float _572 = select((_529 > 0.5f), 0.0f, 1.0f);
      float _573 = select((_530 > 0.5f), 0.0f, 1.0f);
      float _574 = select((_531 > 0.5f), 0.0f, 1.0f);
      float _593 = 1.0f - _535.x;
      _604 = (((((1.0f - (((1.0f - _529) * 2.0f) * (1.0f - UberPostColorCorrectionPacked3.x))) * saturate(1.0f - _572)) + (((_529 * 2.0f) * _572) * UberPostColorCorrectionPacked3.x)) * _535.x) + (_593 * _529));
      _605 = (((((1.0f - (((1.0f - _530) * 2.0f) * (1.0f - UberPostColorCorrectionPacked3.y))) * saturate(1.0f - _573)) + (((_530 * 2.0f) * _573) * UberPostColorCorrectionPacked3.y)) * _535.x) + (_593 * _530));
      _606 = (((((1.0f - (((1.0f - _531) * 2.0f) * (1.0f - UberPostColorCorrectionPacked3.z))) * saturate(1.0f - _574)) + (((_531 * 2.0f) * _574) * UberPostColorCorrectionPacked3.z)) * _535.x) + (_593 * _531));
    }
  } else {
    _604 = _529;
    _605 = _530;
    _606 = _531;
  }
  */
  float3 result = float3(_529, _530, _531);
  if (UberPostColorCorrectionPacked2.w > 0.5f) {
    float m = smoothstep(0.0f, 1.0f, _FXMaskForScene.Sample(s_linear_clamp_sampler, TEXCOORD).x);

    if (UberPostColorCorrectionPacked3.w < 0.5f) {
      // Simple lighten
      float3 blend_factor = pow(m, 2.2f);
      result = result * (1.0f + blend_factor * 0.5f);
    } else {
      // Overlay
      float3 blend = UberPostColorCorrectionPacked3.xyz;
      result = result * lerp(1.0f, blend * 2.0f, m);
    }
  }
  _604 = result.x;
  _605 = result.y;
  _606 = result.z;
  SV_Target.x = _604;
  SV_Target.y = _605;
  SV_Target.z = _606;
  SV_Target.w = _295;
  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);
  return SV_Target;
}
