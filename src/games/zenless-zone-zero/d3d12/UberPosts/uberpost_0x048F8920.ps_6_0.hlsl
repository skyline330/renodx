#include "../../tonemap.hlsl"

// YSG 2nd Ult 

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
    noperspective float4 SV_Position: SV_Position,
    linear float2 TEXCOORD: TEXCOORD,
    linear float4 TEXCOORD_1: TEXCOORD1) : SV_Target {
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
  float _142;
  float _149;
  float _150;
  float _191;
  float _198;
  float _199;
  float _240;
  float _247;
  float _248;
  float _257;
  float _258;
  float _259;
  float _391;
  float _392;
  float _393;
  float _403;
  float _404;
  float _405;
  float _406;
  float _445;
  float _446;
  float _447;
  float _534;
  float _535;
  float _536;
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
  bool _65 = (_DistortionRgbShift.w > 0.0f);
  if (_65) {
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
  if (_65) {
    float _104 = _97 + TEXCOORD.x;
    float _105 = _98 + TEXCOORD.y;
    do {
      if (_17) {
        float _110 = _Distortion_Params2.z * (_104 + -0.5f);
        float _111 = _Distortion_Params2.z * (_105 + -0.5f);
        float _121 = (_110 - _Distortion_Params1.x) * _Distortion_Params1.z;
        float _122 = (_111 - _Distortion_Params1.y) * _Distortion_Params1.w;
        float _126 = sqrt((_121 * _121) + (_122 * _122));
        float _130 = _Distortion_Params2.y * _126;
        do {
          [branch]
          if (_Distortion_Params2.w > 0.0f) {
            _142 = ((1.0f / _130) * tan(_Distortion_Params2.x * _126));
          } else {
            _142 = ((_Distortion_Params2.x * (1.0f / _126)) * atan(_130));
          }
          float _143 = _142 + -1.0f;
          _149 = ((_110 + 0.5f) + (_143 * _121));
          _150 = ((_111 + 0.5f) + (_143 * _122));
        } while (false);
      } else {
        _149 = _104;
        _150 = _105;
      }
      float4 _151 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_149, _150));
      float _153 = _99 + TEXCOORD.x;
      float _154 = _100 + TEXCOORD.y;
      do {
        if (_17) {
          float _159 = _Distortion_Params2.z * (_153 + -0.5f);
          float _160 = _Distortion_Params2.z * (_154 + -0.5f);
          float _170 = (_159 - _Distortion_Params1.x) * _Distortion_Params1.z;
          float _171 = (_160 - _Distortion_Params1.y) * _Distortion_Params1.w;
          float _175 = sqrt((_170 * _170) + (_171 * _171));
          float _179 = _Distortion_Params2.y * _175;
          do {
            [branch]
            if (_Distortion_Params2.w > 0.0f) {
              _191 = ((1.0f / _179) * tan(_Distortion_Params2.x * _175));
            } else {
              _191 = ((_Distortion_Params2.x * (1.0f / _175)) * atan(_179));
            }
            float _192 = _191 + -1.0f;
            _198 = ((_159 + 0.5f) + (_192 * _170));
            _199 = ((_160 + 0.5f) + (_192 * _171));
          } while (false);
        } else {
          _198 = _153;
          _199 = _154;
        }
        float4 _200 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_198, _199));
        float _202 = _101 + TEXCOORD.x;
        float _203 = _102 + TEXCOORD.y;
        do {
          if (_17) {
            float _208 = _Distortion_Params2.z * (_202 + -0.5f);
            float _209 = _Distortion_Params2.z * (_203 + -0.5f);
            float _219 = (_208 - _Distortion_Params1.x) * _Distortion_Params1.z;
            float _220 = (_209 - _Distortion_Params1.y) * _Distortion_Params1.w;
            float _224 = sqrt((_219 * _219) + (_220 * _220));
            float _228 = _Distortion_Params2.y * _224;
            do {
              [branch]
              if (_Distortion_Params2.w > 0.0f) {
                _240 = ((1.0f / _228) * tan(_Distortion_Params2.x * _224));
              } else {
                _240 = ((_Distortion_Params2.x * (1.0f / _224)) * atan(_228));
              }
              float _241 = _240 + -1.0f;
              _247 = ((_208 + 0.5f) + (_241 * _219));
              _248 = ((_209 + 0.5f) + (_241 * _220));
            } while (false);
          } else {
            _247 = _202;
            _248 = _203;
          }
          float4 _249 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_247, _248));
          _257 = _151.x;
          _258 = _200.y;
          _259 = _249.z;
        } while (false);
      } while (false);
    } while (false);
  } else {
    float4 _252 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_95, _96));
    _257 = _252.x;
    _258 = _252.y;
    _259 = _252.z;
  }
  float4 _260 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_95, _96));
  bool _268 = (UberPostBasePacked3.y > 0.0f);
  if ((bool)(UberPostBasePacked3.z < 0.5f) && ((bool)((bool)(UberPostBasePacked3.x > 0.0f) || _268))) {
    float _278 = fmod(((_ScreenSize.y * _96) * _VREffectsScanlineParams.x), 2.0f);
    float _286 = (((select((_278 > 1.0f), (2.0f - _278), _278) * 2.0f) + -1.0f) * _VREffectsScanlineParams.z) + _95;
    float _289 = _ScreenSize.w * _ScreenSize.x;
    float4 _308 = _NapBloomTex.Sample(sampler_NapBloomTex, float2(_286, ((select(((frac((((_286 + abs(_VREffectsSliceParams.y)) * _289) - (_VREffectsSliceParams.y * _96)) / ((_289 * 2.0f) * _VREffectsSliceParams.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * _VREffectsSliceParams.z) + _96)));
    float _345 = ((((-0.699999988079071f - _308.x) + (exp2(log2(abs(_308.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_308.x < 0.30000001192092896f), 0.0f, 1.0f)) + _308.x) * UberPostBasePacked3.x;
    float _346 = ((((-0.699999988079071f - _308.y) + (exp2(log2(abs(_308.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_308.y < 0.30000001192092896f), 0.0f, 1.0f)) + _308.y) * UberPostBasePacked3.x;
    float _347 = ((((-0.699999988079071f - _308.z) + (exp2(log2(abs(_308.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_308.z < 0.30000001192092896f), 0.0f, 1.0f)) + _308.z) * UberPostBasePacked3.x;
    float _348 = dot(float3(_257, _258, _259), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    bool _351 = (UberPostBasePacked4.x > 0.5f);
    float _364 = select(_351, ((((_345 * _348) - _345) * _260.w) + _345), _345);
    float _365 = select(_351, ((((_346 * _348) - _346) * _260.w) + _346), _346);
    float _366 = select(_351, ((((_347 * _348) - _347) * _260.w) + _347), _347);
    do {
      if (_268) {
        float4 _377 = _DirtTex.Sample(s_linear_clamp_sampler, float2(((_DirtTexTillingOffset.x * _95) + _DirtTexTillingOffset.z), ((_DirtTexTillingOffset.y * _96) + _DirtTexTillingOffset.w)));
        _391 = (((_377.x * _345) * UberPostBasePacked3.y) + _364);
        _392 = (((_377.y * _346) * UberPostBasePacked3.y) + _365);
        _393 = (((_377.z * _347) * UberPostBasePacked3.y) + _366);
      } else {
        _391 = _364;
        _392 = _365;
        _393 = _366;
      }
      _403 = (_391 + _257);
      _404 = (_392 + _258);
      _405 = (_393 + _259);
      _406 = saturate((((_392 + _391) + _393) * 0.33329999446868896f) + _260.w);
    } while (false);
  } else {
    _403 = _257;
    _404 = _258;
    _405 = _259;
    _406 = _260.w;
  }
  [branch]
  if (_Vignette_Params2.z > 0.0f) {
    float _423 = abs(_96 - _Vignette_Params2.y) * _Vignette_Params2.z;
    float _425 = (_Vignette_Params2.z * _Vignette_Params1.w) * abs(_95 - _Vignette_Params2.x);
    float _431 = exp2(log2(saturate(1.0f - dot(float2(_425, _423), float2(_425, _423)))) * _Vignette_Params2.w);
    _445 = (((_431 * (1.0f - _Vignette_Params1.x)) + _Vignette_Params1.x) * _403);
    _446 = (((_431 * (1.0f - _Vignette_Params1.y)) + _Vignette_Params1.y) * _404);
    _447 = (((_431 * (1.0f - _Vignette_Params1.z)) + _Vignette_Params1.z) * _405);
  } else {
    _445 = _403;
    _446 = _404;
    _447 = _405;
  }
  
  float3 untonemapped = (float3(_445, _446, _447));

  if (injectedData.fxRCASAmount > 0.0f) {
    untonemapped = ApplyRCAS(untonemapped, TEXCOORD, _BlitTex, s_linear_clamp_sampler);
  }

  renodx::lut::Config lut_config = renodx::lut::config::Create(
      s_linear_clamp_sampler,
      1.f,
      0.f,
      renodx::lut::config::type::ARRI_C1000_NO_CUT,
      renodx::lut::config::type::LINEAR,
      _Lut_Params.xyz);

  float3 tonemapped = renodx::lut::Sample(_InternalLut, lut_config, untonemapped);
  float _496 = tonemapped.x;
  float _497 = tonemapped.y;
  float _498 = tonemapped.z;
  /*
  float _470 = saturate((log2((_447 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z;
  float _471 = floor(_470);
  float _477 = ((saturate((log2((_446 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z) + 0.5f) * _Lut_Params.y;
  float _479 = (_471 * _Lut_Params.y) + (((saturate((log2((_445 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z) + 0.5f) * _Lut_Params.x);
  float _480 = _470 - _471;
  float4 _482 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2((_479 + _Lut_Params.y), _477), 0.0f);
  float4 _486 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2(_479, _477), 0.0f);
  float _496 = ((_482.x - _486.x) * _480) + _486.x;
  float _497 = ((_482.y - _486.y) * _480) + _486.y;
  float _498 = ((_482.z - _486.z) * _480) + _486.z;
  */
  if (UberPostBasePacked1.x > 0.0f) {
    float4 _513 = _Grain_Texture.Sample(s_linear_repeat_sampler, float2(((_Grain_TilingParams.x * TEXCOORD.x) + _Grain_TilingParams.z), ((_Grain_TilingParams.y * TEXCOORD.y) + _Grain_TilingParams.w)));
    float _516 = (_513.w + -0.5f) * 2.0f;
    float _520 = 1.0f - (sqrt(dot(float3(_496, _497, _498), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBasePacked1.y);
    _534 = ((((UberPostBasePacked1.x * _496) * _516) * _520) + _496);
    _535 = ((((UberPostBasePacked1.x * _497) * _516) * _520) + _497);
    _536 = ((((UberPostBasePacked1.x * _498) * _516) * _520) + _498);
  } else {
    _534 = _496;
    _535 = _497;
    _536 = _498;
  }
  SV_Target.x = (_534);
  SV_Target.y = (_535);
  SV_Target.z = (_536);
  SV_Target.w = _406;

  if (injectedData.fxFilmGrainAmount > 0.0f) {
    SV_Target.xyz = applyFilmGrain(SV_Target.xyz, TEXCOORD);
  }

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
