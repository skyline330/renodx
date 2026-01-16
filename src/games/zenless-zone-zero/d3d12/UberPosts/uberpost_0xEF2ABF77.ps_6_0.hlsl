#include "../../tonemap.hlsl"

// Trigger quick assist - VR Training

Texture2D<float4> _BlitTex : register(t0);

Texture2D<float4> _Grain_Texture : register(t1);

Texture2D<float4> _InternalLut : register(t2);

Texture2D<float4> _CameraDistortionTextureOverlay : register(t3);

Texture2D<float4> _NoiseTexture : register(t4);

Texture2D<float4> _GlitchTex : register(t5);

Texture2D<float4> _NapBloomTex : register(t6);

Texture2D<float4> _DirtTex : register(t7);

Texture2D<float4> _OldCRTPattern : register(t8);

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
  float4 _OldCRTPattern_TexelSize : packoffset(c200.x);
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

SamplerState sampler_NoiseTexture : register(s3);

SamplerState sampler_GlitchTex : register(s4);

SamplerState sampler_NapBloomTex : register(s5);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float _56;
  float _57;
  float _58;
  float _59;
  float _60;
  float _61;
  float _62;
  float _63;
  float _157;
  float _158;
  float _159;
  float _188;
  float _189;
  float _190;
  float _474;
  float _475;
  float _476;
  float _486;
  float _487;
  float _488;
  float _489;
  float _528;
  float _529;
  float _530;
  float _656;
  float _657;
  float _658;
  if (_DistortionRgbShift.w > 0.0f) {
    float4 _28 = _CameraDistortionTextureOverlay.Sample(sampler_CameraDistortionTextureOverlay, float2(TEXCOORD.x, TEXCOORD.y));
    float _32 = _28.x * 0.10000000149011612f;
    float _33 = _28.y * 0.10000000149011612f;
    float _38 = (_32 * _28.z) * _DistortionRgbShift.w;
    float _39 = (_33 * _28.z) * _DistortionRgbShift.w;
    _56 = (_32 + TEXCOORD.x);
    _57 = (_33 + TEXCOORD.y);
    _58 = ((_38 * _DistortionRgbShift.x) + _32);
    _59 = ((_39 * _DistortionRgbShift.x) + _33);
    _60 = ((_38 * _DistortionRgbShift.y) + _32);
    _61 = ((_39 * _DistortionRgbShift.y) + _33);
    _62 = ((_DistortionRgbShift.z * _38) + _32);
    _63 = ((_DistortionRgbShift.z * _39) + _33);
  } else {
    _56 = TEXCOORD.x;
    _57 = TEXCOORD.y;
    _58 = 0.0f;
    _59 = 0.0f;
    _60 = 0.0f;
    _61 = 0.0f;
    _62 = 0.0f;
    _63 = 0.0f;
  }
  float _66 = frac(_GlobalTimeParamsA[1].x);
  float4 _71 = _NoiseTexture.Sample(sampler_NoiseTexture, float2((_66 + (TEXCOORD.x * 5.0f)), (_66 + (TEXCOORD.y * 5.0f))));
  float _73 = _71.x + -0.5f;
  float _83 = ((_73 * 0.019999999552965164f) * _NoiseParams.y) * select((abs(_73 * 2.0f) < _NoiseParams.z), 0.0f, 1.0f);
  float _86 = cos(_RgbShiftParams.w);
  float _87 = sin(_RgbShiftParams.w);
  float _94 = (_RgbShiftParams.x * 0.10000000149011612f) + _83;
  float _95 = (_RgbShiftParams.y * 0.10000000149011612f) + _83;
  float _96 = (_RgbShiftParams.z * 0.10000000149011612f) + _83;
  float _98 = _94 * _87;
  float _100 = _95 * _87;
  float _102 = _96 * _87;
  float _110 = _NoiseParams.x * (frac(frac(_GlobalTimeParamsA[1].x) * 88.0f) + TEXCOORD.y);
  float4 _114 = _NoiseTexture.Sample(sampler_NoiseTexture, float2(0.5f, (_110 + _98)));
  float4 _116 = _NoiseTexture.Sample(sampler_NoiseTexture, float2(0.5f, (_110 + _100)));
  float4 _118 = _NoiseTexture.Sample(sampler_NoiseTexture, float2(0.5f, (_110 + _102)));
  float _121 = frac(_66 * 1234.0f);
  float _128 = (((_121 * _121) * (select((_LineParams.y < _LineParams.x), _LineParams.x, _LineParams.y) - _LineParams.x)) * _121) + _LineParams.x;
  float _135 = select((_128 < _114.x), 0.0f, 1.0f) * _LineParams.z;
  float _136 = select((_128 < _116.x), 0.0f, 1.0f) * _LineParams.z;
  float _137 = select((_128 < _118.x), 0.0f, 1.0f) * _LineParams.z;
  [branch]
  if (UberPostBasePacked2.z > 0.5f) {
    float4 _151 = _GlitchTex.Sample(sampler_GlitchTex, float2(((_GlitchMask_ST.x * TEXCOORD.x) + _GlitchMask_ST.z), ((_GlitchMask_ST.y * TEXCOORD.y) + _GlitchMask_ST.w)));
    _157 = (_151.x * _135);
    _158 = (_151.x * _136);
    _159 = (_151.x * _137);
  } else {
    _157 = _135;
    _158 = _136;
    _159 = _137;
  }
  [branch]
  if (UberPostBasePacked2.w > 0.5f) {
    float4 _182 = _GlitchTex.Sample(sampler_GlitchTex, float2((((_RandomOpacity_ST.x * TEXCOORD.x) + _RandomOpacity_ST.z) + frac(UberPostBasePacked2.x * (_GlobalTimeParamsA[1].x))), (((_RandomOpacity_ST.y * TEXCOORD.y) + _RandomOpacity_ST.w) + frac(UberPostBasePacked2.y * (_GlobalTimeParamsA[1].x)))));
    _188 = (_182.y * _157);
    _189 = (_182.y * _158);
    _190 = (_182.y * _159);
  } else {
    _188 = _157;
    _189 = _158;
    _190 = _159;
  }
  float _197 = ((TEXCOORD.x * 2.0f) - _ChromaCenter.x) + -0.5f;
  float _199 = ((TEXCOORD.y * 2.0f) - _ChromaCenter.y) + -0.5f;
  float _203 = dot(float2(_197, _199), float2(_197, _199)) * -0.3333333432674408f;
  float _205 = (_203 * _197) * UberPostBasePacked0.z;
  float _207 = (_203 * _199) * UberPostBasePacked0.z;
  float _209 = rsqrt(dot(float3(_205, _207, 9.999999747378752e-05f), float3(_205, _207, 9.999999747378752e-05f)));
  float _216 = UberPostBasePacked0.z * 0.9428090453147888f;
  float _221 = exp2(log2(sqrt((_205 * _205) + (_207 * _207)) / _216) * _ChromaCenter.z);
  float _223 = ((_205 * _209) * _216) * _221;
  float _225 = ((_207 * _209) * _216) * _221;
  float4 _236 = _BlitTex.Sample(s_linear_clamp_sampler, float2((((_58 + TEXCOORD.x) + (_94 * _86)) + (_223 * _ChromaticColorR.w)), (((_59 + TEXCOORD.y) + _98) + (_225 * _ChromaticColorR.w))));
  float4 _248 = _BlitTex.Sample(s_linear_clamp_sampler, float2((((_60 + TEXCOORD.x) + (_95 * _86)) + (_ChromaticColorG.w * _223)), (((_61 + TEXCOORD.y) + _100) + (_ChromaticColorG.w * _225))));
  float4 _260 = _BlitTex.Sample(s_linear_clamp_sampler, float2((((_62 + TEXCOORD.x) + (_96 * _86)) + (_ChromaticColorB.w * _223)), (((_63 + TEXCOORD.y) + _102) + (_ChromaticColorB.w * _225))));
  float4 _289 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_56, _57));
  float4 _301 = _OldCRTPattern.Sample(s_linear_repeat_sampler, float2(((UberPostOldCRTPacked.x * TEXCOORD.x) * _OldCRTPattern_TexelSize.x), ((UberPostOldCRTPacked.y * TEXCOORD.y) * _OldCRTPattern_TexelSize.y)));
  float _313 = frac((_GlobalTimeParamsA[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  float _314 = 0.4000000059604645f - _313;
  float _327 = (UberPostOldCRTPacked.w * max(((select((_314 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_313 + 0.05000000074505806f) * 10.0f) - _314)) + _314), 0.0f)) + 1.0f;
  float _332 = 1.0f - UberPostOldCRTPacked.z;
  float _342 = (((((_301.x * 12.0f) * _327) * _332) + UberPostOldCRTPacked.z) * (((_ChromaticColorG.x * _248.y) + (_ChromaticColorR.x * _236.x)) + (_ChromaticColorB.x * _260.z))) + _188;
  float _343 = (((((_301.y * 12.0f) * _327) * _332) + UberPostOldCRTPacked.z) * (((_ChromaticColorG.y * _248.y) + (_ChromaticColorR.y * _236.x)) + (_ChromaticColorB.y * _260.z))) + _189;
  float _344 = (((((_301.z * 12.0f) * _327) * _332) + UberPostOldCRTPacked.z) * (((_ChromaticColorG.z * _248.y) + (_ChromaticColorR.z * _236.x)) + (_ChromaticColorB.z * _260.z))) + _190;
  bool _351 = (UberPostBasePacked3.y > 0.0f);
  if ((bool)(UberPostBasePacked3.z < 0.5f) && ((bool)((bool)(UberPostBasePacked3.x > 0.0f) || _351))) {
    float _361 = fmod(((_ScreenSize.y * _57) * _VREffectsScanlineParams.x), 2.0f);
    float _369 = (((select((_361 > 1.0f), (2.0f - _361), _361) * 2.0f) + -1.0f) * _VREffectsScanlineParams.z) + _56;
    float _372 = _ScreenSize.w * _ScreenSize.x;
    float4 _391 = _NapBloomTex.Sample(sampler_NapBloomTex, float2(_369, ((select(((frac((((_369 + abs(_VREffectsSliceParams.y)) * _372) - (_VREffectsSliceParams.y * _57)) / ((_372 * 2.0f) * _VREffectsSliceParams.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * _VREffectsSliceParams.z) + _57)));
    float _428 = ((((-0.699999988079071f - _391.x) + (exp2(log2(abs(_391.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_391.x < 0.30000001192092896f), 0.0f, 1.0f)) + _391.x) * UberPostBasePacked3.x;
    float _429 = ((((-0.699999988079071f - _391.y) + (exp2(log2(abs(_391.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_391.y < 0.30000001192092896f), 0.0f, 1.0f)) + _391.y) * UberPostBasePacked3.x;
    float _430 = ((((-0.699999988079071f - _391.z) + (exp2(log2(abs(_391.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_391.z < 0.30000001192092896f), 0.0f, 1.0f)) + _391.z) * UberPostBasePacked3.x;
    float _431 = dot(float3(_342, _343, _344), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    bool _434 = (UberPostBasePacked4.x > 0.5f);
    float _447 = select(_434, ((((_428 * _431) - _428) * _289.w) + _428), _428);
    float _448 = select(_434, ((((_429 * _431) - _429) * _289.w) + _429), _429);
    float _449 = select(_434, ((((_430 * _431) - _430) * _289.w) + _430), _430);
    do {
      if (_351) {
        float4 _460 = _DirtTex.Sample(s_linear_clamp_sampler, float2(((_DirtTexTillingOffset.x * _56) + _DirtTexTillingOffset.z), ((_DirtTexTillingOffset.y * _57) + _DirtTexTillingOffset.w)));
        _474 = (((_460.x * _428) * UberPostBasePacked3.y) + _447);
        _475 = (((_460.y * _429) * UberPostBasePacked3.y) + _448);
        _476 = (((_460.z * _430) * UberPostBasePacked3.y) + _449);
      } else {
        _474 = _447;
        _475 = _448;
        _476 = _449;
      }
      _486 = (_474 + _342);
      _487 = (_475 + _343);
      _488 = (_476 + _344);
      _489 = saturate((((_475 + _474) + _476) * 0.33329999446868896f) + _289.w);
    } while (false);
  } else {
    _486 = _342;
    _487 = _343;
    _488 = _344;
    _489 = _289.w;
  }
  [branch]
  if (_Vignette_Params2.z > 0.0f) {
    float _506 = abs(_57 - _Vignette_Params2.y) * _Vignette_Params2.z;
    float _508 = (_Vignette_Params2.z * _Vignette_Params1.w) * abs(_56 - _Vignette_Params2.x);
    float _514 = exp2(log2(saturate(1.0f - dot(float2(_508, _506), float2(_508, _506)))) * _Vignette_Params2.w);
    _528 = (((_514 * (1.0f - _Vignette_Params1.x)) + _Vignette_Params1.x) * _486);
    _529 = (((_514 * (1.0f - _Vignette_Params1.y)) + _Vignette_Params1.y) * _487);
    _530 = (((_514 * (1.0f - _Vignette_Params1.z)) + _Vignette_Params1.z) * _488);
  } else {
    _528 = _486;
    _529 = _487;
    _530 = _488;
  }

  float3 untonemapped = (float3(_528, _529, _530));

  if (injectedData.fxRCASAmount > 0.0f) {
    untonemapped = ApplyRCAS(untonemapped, TEXCOORD, _BlitTex, s_linear_clamp_sampler);
  }

  float3 tonemapped = applyUserToneMap(untonemapped, _Lut_Params, _InternalLut, s_linear_clamp_sampler);

  float _618 = tonemapped.x;
  float _619 = tonemapped.y;
  float _620 = tonemapped.z;
  
  /*
  float _535 = saturate(_528);
  float _536 = saturate(_529);
  float _537 = saturate(_530);
  float _565 = select((_537 <= 0.0031308000907301903f), (_537 * 12.920000076293945f), ((exp2(log2(abs(_537)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * _Lut_Params.z;
  float _566 = floor(_565);
  float _572 = ((select((_536 <= 0.0031308000907301903f), (_536 * 12.920000076293945f), ((exp2(log2(abs(_536)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * _Lut_Params.z) + 0.5f) * _Lut_Params.y;
  float _574 = (((select((_535 <= 0.0031308000907301903f), (_535 * 12.920000076293945f), ((exp2(log2(abs(_535)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) * _Lut_Params.z) + 0.5f) * _Lut_Params.x) + (_566 * _Lut_Params.y);
  float _575 = _565 - _566;
  float4 _577 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2((_574 + _Lut_Params.y), _572), 0.0f);
  float4 _581 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2(_574, _572), 0.0f);
  float _591 = ((_577.x - _581.x) * _575) + _581.x;
  float _592 = ((_577.y - _581.y) * _575) + _581.y;
  float _593 = ((_577.z - _581.z) * _575) + _581.z;
  float _618 = select((_591 <= 0.040449999272823334f), (_591 * 0.07739938050508499f), exp2(log2(abs((_591 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  float _619 = select((_592 <= 0.040449999272823334f), (_592 * 0.07739938050508499f), exp2(log2(abs((_592 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  float _620 = select((_593 <= 0.040449999272823334f), (_593 * 0.07739938050508499f), exp2(log2(abs((_593 + 0.054999999701976776f) * 0.9478673338890076f)) * 2.4000000953674316f));
  */
  if (UberPostBasePacked1.x > 0.0f) {
    float4 _635 = _Grain_Texture.Sample(s_linear_repeat_sampler, float2(((_Grain_TilingParams.x * TEXCOORD.x) + _Grain_TilingParams.z), ((_Grain_TilingParams.y * TEXCOORD.y) + _Grain_TilingParams.w)));
    float _638 = (_635.w + -0.5f) * 2.0f;
    float _642 = 1.0f - (sqrt(dot(float3(_618, _619, _620), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBasePacked1.y);
    _656 = ((((UberPostBasePacked1.x * _618) * _638) * _642) + _618);
    _657 = ((((UberPostBasePacked1.x * _619) * _638) * _642) + _619);
    _658 = ((((UberPostBasePacked1.x * _620) * _638) * _642) + _620);
  } else {
    _656 = _618;
    _657 = _619;
    _658 = _620;
  }
  SV_Target.x = (_656);
  SV_Target.y = (_657);
  SV_Target.z = (_658);
  SV_Target.w = _489;

  if (injectedData.fxFilmGrainAmount > 0.0f) {
    SV_Target.xyz = applyFilmGrain(SV_Target.xyz, TEXCOORD);
  }

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
