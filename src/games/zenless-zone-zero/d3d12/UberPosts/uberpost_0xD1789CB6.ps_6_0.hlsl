#include "../../tonemap.hlsl"

// H0 Complete Screen/StageClear

Texture2D<float4> _BlitTex : register(t0);

Texture2D<float4> _Grain_Texture : register(t1);

Texture2D<float4> _InternalLut : register(t2);

Texture2D<float4> _FXMaskForScene : register(t3);

Texture2D<float4> _CameraDistortionTextureOverlay : register(t4);

Texture2D<float4> _NoiseTexture : register(t5);

Texture2D<float4> _GlitchTex : register(t6);

Texture2D<float4> _NapBloomTex : register(t7);

Texture2D<float4> _DirtTex : register(t8);

Texture2D<float4> _OldCRTPattern : register(t9);

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

cbuffer UberPostFXColorCorrectionCBuffer : register(b2) {
  float4 UberPostColorCorrectionPacked0 : packoffset(c000.x);
  float4 UberPostColorCorrectionPacked1 : packoffset(c001.x);
  float4 UberPostColorCorrectionPacked2 : packoffset(c002.x);
  float4 UberPostColorCorrectionPacked3 : packoffset(c003.x);
};

SamplerState s_linear_clamp_sampler : register(s0);

SamplerState s_linear_repeat_sampler : register(s1);

SamplerState sampler_CameraDistortionTextureOverlay : register(s2);

SamplerState sampler_NoiseTexture : register(s3);

SamplerState sampler_GlitchTex : register(s4);

SamplerState sampler_NapBloomTex : register(s5);

float4 main(
    noperspective float4 SV_Position: SV_Position,
    linear float2 TEXCOORD: TEXCOORD,
    linear float4 TEXCOORD_1: TEXCOORD1) : SV_Target {
  float4 SV_Target;
  float _65;
  float _72;
  float _73;
  float _106;
  float _107;
  float _108;
  float _109;
  float _110;
  float _111;
  float _112;
  float _113;
  float _207;
  float _208;
  float _209;
  float _238;
  float _239;
  float _240;
  float _325;
  float _332;
  float _333;
  float _382;
  float _389;
  float _390;
  float _439;
  float _446;
  float _447;
  float _659;
  float _660;
  float _661;
  float _671;
  float _672;
  float _673;
  float _674;
  float _713;
  float _714;
  float _715;
  float _802;
  float _803;
  float _804;
  float _944;
  float _945;
  float _946;
  if (!(_Distortion_Params2.w == 0.0f)) {
    float _33 = _Distortion_Params2.z * (TEXCOORD.x + -0.5f);
    float _34 = _Distortion_Params2.z * (TEXCOORD.y + -0.5f);
    float _44 = (_33 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _45 = (_34 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _49 = sqrt((_44 * _44) + (_45 * _45));
    float _53 = _Distortion_Params2.y * _49;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _65 = ((1.0f / _53) * tan(_Distortion_Params2.x * _49));
      } else {
        _65 = ((_Distortion_Params2.x * (1.0f / _49)) * atan(_53));
      }
      float _66 = _65 + -1.0f;
      _72 = ((_33 + 0.5f) + (_66 * _44));
      _73 = ((_34 + 0.5f) + (_66 * _45));
    } while (false);
  } else {
    _72 = TEXCOORD.x;
    _73 = TEXCOORD.y;
  }
  if (_DistortionRgbShift.w > 0.0f) {
    float4 _78 = _CameraDistortionTextureOverlay.Sample(sampler_CameraDistortionTextureOverlay, float2(TEXCOORD.x, TEXCOORD.y));
    float _82 = _78.x * 0.10000000149011612f;
    float _83 = _78.y * 0.10000000149011612f;
    float _88 = (_82 * _78.z) * _DistortionRgbShift.w;
    float _89 = (_83 * _78.z) * _DistortionRgbShift.w;
    _106 = (_82 + _72);
    _107 = (_83 + _73);
    _108 = ((_88 * _DistortionRgbShift.x) + _82);
    _109 = ((_89 * _DistortionRgbShift.x) + _83);
    _110 = ((_88 * _DistortionRgbShift.y) + _82);
    _111 = ((_89 * _DistortionRgbShift.y) + _83);
    _112 = ((_DistortionRgbShift.z * _88) + _82);
    _113 = ((_DistortionRgbShift.z * _89) + _83);
  } else {
    _106 = _72;
    _107 = _73;
    _108 = 0.0f;
    _109 = 0.0f;
    _110 = 0.0f;
    _111 = 0.0f;
    _112 = 0.0f;
    _113 = 0.0f;
  }
  float _116 = frac(_GlobalTimeParamsA[1].x);
  float4 _121 = _NoiseTexture.Sample(sampler_NoiseTexture, float2((_116 + (TEXCOORD.x * 5.0f)), (_116 + (TEXCOORD.y * 5.0f))));
  float _123 = _121.x + -0.5f;
  float _133 = ((_123 * 0.019999999552965164f) * _NoiseParams.y) * select((abs(_123 * 2.0f) < _NoiseParams.z), 0.0f, 1.0f);
  float _136 = cos(_RgbShiftParams.w);
  float _137 = sin(_RgbShiftParams.w);
  float _144 = (_RgbShiftParams.x * 0.10000000149011612f) + _133;
  float _145 = (_RgbShiftParams.y * 0.10000000149011612f) + _133;
  float _146 = (_RgbShiftParams.z * 0.10000000149011612f) + _133;
  float _148 = _144 * _137;
  float _150 = _145 * _137;
  float _152 = _146 * _137;
  float _160 = _NoiseParams.x * (frac(frac(_GlobalTimeParamsA[1].x) * 88.0f) + TEXCOORD.y);
  float4 _164 = _NoiseTexture.Sample(sampler_NoiseTexture, float2(0.5f, (_160 + _148)));
  float4 _166 = _NoiseTexture.Sample(sampler_NoiseTexture, float2(0.5f, (_160 + _150)));
  float4 _168 = _NoiseTexture.Sample(sampler_NoiseTexture, float2(0.5f, (_160 + _152)));
  float _171 = frac(_116 * 1234.0f);
  float _178 = (((_171 * _171) * (select((_LineParams.y < _LineParams.x), _LineParams.x, _LineParams.y) - _LineParams.x)) * _171) + _LineParams.x;
  float _185 = select((_178 < _164.x), 0.0f, 1.0f) * _LineParams.z;
  float _186 = select((_178 < _166.x), 0.0f, 1.0f) * _LineParams.z;
  float _187 = select((_178 < _168.x), 0.0f, 1.0f) * _LineParams.z;
  [branch]
  if (UberPostBasePacked2.z > 0.5f) {
    float4 _201 = _GlitchTex.Sample(sampler_GlitchTex, float2(((_GlitchMask_ST.x * TEXCOORD.x) + _GlitchMask_ST.z), ((_GlitchMask_ST.y * TEXCOORD.y) + _GlitchMask_ST.w)));
    _207 = (_201.x * _185);
    _208 = (_201.x * _186);
    _209 = (_201.x * _187);
  } else {
    _207 = _185;
    _208 = _186;
    _209 = _187;
  }
  [branch]
  if (UberPostBasePacked2.w > 0.5f) {
    float4 _232 = _GlitchTex.Sample(sampler_GlitchTex, float2((((_RandomOpacity_ST.x * TEXCOORD.x) + _RandomOpacity_ST.z) + frac(UberPostBasePacked2.x * (_GlobalTimeParamsA[1].x))), (((_RandomOpacity_ST.y * TEXCOORD.y) + _RandomOpacity_ST.w) + frac(UberPostBasePacked2.y * (_GlobalTimeParamsA[1].x)))));
    _238 = (_232.y * _207);
    _239 = (_232.y * _208);
    _240 = (_232.y * _209);
  } else {
    _238 = _207;
    _239 = _208;
    _240 = _209;
  }
  float _247 = ((TEXCOORD.x * 2.0f) - _ChromaCenter.x) + -0.5f;
  float _249 = ((TEXCOORD.y * 2.0f) - _ChromaCenter.y) + -0.5f;
  float _253 = dot(float2(_247, _249), float2(_247, _249)) * -0.3333333432674408f;
  float _255 = (_253 * _247) * UberPostBasePacked0.z;
  float _257 = (_253 * _249) * UberPostBasePacked0.z;
  float _259 = rsqrt(dot(float3(_255, _257, 9.999999747378752e-05f), float3(_255, _257, 9.999999747378752e-05f)));
  float _266 = UberPostBasePacked0.z * 0.9428090453147888f;
  float _271 = exp2(log2(sqrt((_255 * _255) + (_257 * _257)) / _266) * _ChromaCenter.z);
  float _273 = ((_255 * _259) * _266) * _271;
  float _275 = ((_257 * _259) * _266) * _271;
  float _284 = ((_108 + TEXCOORD.x) + (_144 * _136)) + (_273 * _ChromaticColorR.w);
  float _285 = ((_109 + TEXCOORD.y) + _148) + (_275 * _ChromaticColorR.w);
  bool _288 = !(_Distortion_Params2.w == 0.0f);
  if (_288) {
    float _293 = _Distortion_Params2.z * (_284 + -0.5f);
    float _294 = _Distortion_Params2.z * (_285 + -0.5f);
    float _304 = (_293 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _305 = (_294 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _309 = sqrt((_304 * _304) + (_305 * _305));
    float _313 = _Distortion_Params2.y * _309;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _325 = ((1.0f / _313) * tan(_Distortion_Params2.x * _309));
      } else {
        _325 = ((_Distortion_Params2.x * (1.0f / _309)) * atan(_313));
      }
      float _326 = _325 + -1.0f;
      _332 = ((_293 + 0.5f) + (_326 * _304));
      _333 = ((_294 + 0.5f) + (_326 * _305));
    } while (false);
  } else {
    _332 = _284;
    _333 = _285;
  }
  float4 _334 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_332, _333));
  float _344 = ((_110 + TEXCOORD.x) + (_145 * _136)) + (_ChromaticColorG.w * _273);
  float _345 = ((_111 + TEXCOORD.y) + _150) + (_ChromaticColorG.w * _275);
  if (_288) {
    float _350 = _Distortion_Params2.z * (_344 + -0.5f);
    float _351 = _Distortion_Params2.z * (_345 + -0.5f);
    float _361 = (_350 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _362 = (_351 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _366 = sqrt((_361 * _361) + (_362 * _362));
    float _370 = _Distortion_Params2.y * _366;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _382 = ((1.0f / _370) * tan(_Distortion_Params2.x * _366));
      } else {
        _382 = ((_Distortion_Params2.x * (1.0f / _366)) * atan(_370));
      }
      float _383 = _382 + -1.0f;
      _389 = ((_350 + 0.5f) + (_383 * _361));
      _390 = ((_351 + 0.5f) + (_383 * _362));
    } while (false);
  } else {
    _389 = _344;
    _390 = _345;
  }
  float4 _391 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_389, _390));
  float _401 = ((_112 + TEXCOORD.x) + (_146 * _136)) + (_ChromaticColorB.w * _273);
  float _402 = ((_113 + TEXCOORD.y) + _152) + (_ChromaticColorB.w * _275);
  if (_288) {
    float _407 = _Distortion_Params2.z * (_401 + -0.5f);
    float _408 = _Distortion_Params2.z * (_402 + -0.5f);
    float _418 = (_407 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _419 = (_408 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _423 = sqrt((_418 * _418) + (_419 * _419));
    float _427 = _Distortion_Params2.y * _423;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _439 = ((1.0f / _427) * tan(_Distortion_Params2.x * _423));
      } else {
        _439 = ((_Distortion_Params2.x * (1.0f / _423)) * atan(_427));
      }
      float _440 = _439 + -1.0f;
      _446 = ((_407 + 0.5f) + (_440 * _418));
      _447 = ((_408 + 0.5f) + (_440 * _419));
    } while (false);
  } else {
    _446 = _401;
    _447 = _402;
  }
  float4 _448 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_446, _447));
  float4 _474 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_106, _107));
  float4 _486 = _OldCRTPattern.Sample(s_linear_repeat_sampler, float2(((UberPostOldCRTPacked.x * TEXCOORD.x) * _OldCRTPattern_TexelSize.x), ((UberPostOldCRTPacked.y * TEXCOORD.y) * _OldCRTPattern_TexelSize.y)));
  float _498 = frac((_GlobalTimeParamsA[1].x) * 25.0f) - (1.0f - TEXCOORD.y);
  float _499 = 0.4000000059604645f - _498;
  float _512 = (UberPostOldCRTPacked.w * max(((select((_499 < 0.4000000059604645f), 0.0f, 1.0f) * ((saturate(_498 + 0.05000000074505806f) * 10.0f) - _499)) + _499), 0.0f)) + 1.0f;
  float _517 = 1.0f - UberPostOldCRTPacked.z;
  float _527 = (((((_486.x * 12.0f) * _512) * _517) + UberPostOldCRTPacked.z) * (((_ChromaticColorG.x * _391.y) + (_ChromaticColorR.x * _334.x)) + (_ChromaticColorB.x * _448.z))) + _238;
  float _528 = (((((_486.y * 12.0f) * _512) * _517) + UberPostOldCRTPacked.z) * (((_ChromaticColorG.y * _391.y) + (_ChromaticColorR.y * _334.x)) + (_ChromaticColorB.y * _448.z))) + _239;
  float _529 = (((((_486.z * 12.0f) * _512) * _517) + UberPostOldCRTPacked.z) * (((_ChromaticColorG.z * _391.y) + (_ChromaticColorR.z * _334.x)) + (_ChromaticColorB.z * _448.z))) + _240;
  bool _536 = (UberPostBasePacked3.y > 0.0f);
  if ((bool)(UberPostBasePacked3.z < 0.5f) && ((bool)((bool)(UberPostBasePacked3.x > 0.0f) || _536))) {
    float _546 = fmod(((_ScreenSize.y * _107) * _VREffectsScanlineParams.x), 2.0f);
    float _554 = (((select((_546 > 1.0f), (2.0f - _546), _546) * 2.0f) + -1.0f) * _VREffectsScanlineParams.z) + _106;
    float _557 = _ScreenSize.w * _ScreenSize.x;
    float4 _576 = _NapBloomTex.Sample(sampler_NapBloomTex, float2(_554, ((select(((frac((((_554 + abs(_VREffectsSliceParams.y)) * _557) - (_VREffectsSliceParams.y * _107)) / ((_557 * 2.0f) * _VREffectsSliceParams.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * _VREffectsSliceParams.z) + _107)));
    float _613 = ((((-0.699999988079071f - _576.x) + (exp2(log2(abs(_576.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_576.x < 0.30000001192092896f), 0.0f, 1.0f)) + _576.x) * UberPostBasePacked3.x;
    float _614 = ((((-0.699999988079071f - _576.y) + (exp2(log2(abs(_576.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_576.y < 0.30000001192092896f), 0.0f, 1.0f)) + _576.y) * UberPostBasePacked3.x;
    float _615 = ((((-0.699999988079071f - _576.z) + (exp2(log2(abs(_576.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_576.z < 0.30000001192092896f), 0.0f, 1.0f)) + _576.z) * UberPostBasePacked3.x;
    float _616 = dot(float3(_527, _528, _529), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    bool _619 = (UberPostBasePacked4.x > 0.5f);
    float _632 = select(_619, ((((_613 * _616) - _613) * _474.w) + _613), _613);
    float _633 = select(_619, ((((_614 * _616) - _614) * _474.w) + _614), _614);
    float _634 = select(_619, ((((_615 * _616) - _615) * _474.w) + _615), _615);
    do {
      if (_536) {
        float4 _645 = _DirtTex.Sample(s_linear_clamp_sampler, float2(((_DirtTexTillingOffset.x * _106) + _DirtTexTillingOffset.z), ((_DirtTexTillingOffset.y * _107) + _DirtTexTillingOffset.w)));
        _659 = (((_645.x * _613) * UberPostBasePacked3.y) + _632);
        _660 = (((_645.y * _614) * UberPostBasePacked3.y) + _633);
        _661 = (((_645.z * _615) * UberPostBasePacked3.y) + _634);
      } else {
        _659 = _632;
        _660 = _633;
        _661 = _634;
      }
      _671 = (_659 + _527);
      _672 = (_660 + _528);
      _673 = (_661 + _529);
      _674 = saturate((((_660 + _659) + _661) * 0.33329999446868896f) + _474.w);
    } while (false);
  } else {
    _671 = _527;
    _672 = _528;
    _673 = _529;
    _674 = _474.w;
  }
  [branch]
  if (_Vignette_Params2.z > 0.0f) {
    float _691 = abs(_107 - _Vignette_Params2.y) * _Vignette_Params2.z;
    float _693 = (_Vignette_Params2.z * _Vignette_Params1.w) * abs(_106 - _Vignette_Params2.x);
    float _699 = exp2(log2(saturate(1.0f - dot(float2(_693, _691), float2(_693, _691)))) * _Vignette_Params2.w);
    _713 = (((_699 * (1.0f - _Vignette_Params1.x)) + _Vignette_Params1.x) * _671);
    _714 = (((_699 * (1.0f - _Vignette_Params1.y)) + _Vignette_Params1.y) * _672);
    _715 = (((_699 * (1.0f - _Vignette_Params1.z)) + _Vignette_Params1.z) * _673);
  } else {
    _713 = _671;
    _714 = _672;
    _715 = _673;
  }
  
  float3 untonemapped = (float3(_713, _714, _715));

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
  float _764 = tonemapped.x;
  float _765 = tonemapped.y;
  float _766 = tonemapped.z;
  /*
  float _738 = saturate((log2((_715 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z;
  float _739 = floor(_738);
  float _745 = ((saturate((log2((_714 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z) + 0.5f) * _Lut_Params.y;
  float _747 = (_739 * _Lut_Params.y) + (((saturate((log2((_713 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z) + 0.5f) * _Lut_Params.x);
  float _748 = _738 - _739;
  float4 _750 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2((_747 + _Lut_Params.y), _745), 0.0f);
  float4 _754 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2(_747, _745), 0.0f);
  float _764 = ((_750.x - _754.x) * _748) + _754.x;
  float _765 = ((_750.y - _754.y) * _748) + _754.y;
  float _766 = ((_750.z - _754.z) * _748) + _754.z;
  */
  if (UberPostBasePacked1.x > 0.0f) {
    float4 _781 = _Grain_Texture.Sample(s_linear_repeat_sampler, float2(((_Grain_TilingParams.x * TEXCOORD.x) + _Grain_TilingParams.z), ((_Grain_TilingParams.y * TEXCOORD.y) + _Grain_TilingParams.w)));
    float _784 = (_781.w + -0.5f) * 2.0f;
    float _788 = 1.0f - (sqrt(dot(float3(_764, _765, _766), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBasePacked1.y);
    _802 = ((((UberPostBasePacked1.x * _764) * _784) * _788) + _764);
    _803 = ((((UberPostBasePacked1.x * _765) * _784) * _788) + _765);
    _804 = ((((UberPostBasePacked1.x * _766) * _784) * _788) + _766);
  } else {
    _802 = _764;
    _803 = _765;
    _804 = _766;
  }
  float _809 = ((_803 + _802) + _804) * 0.3333333432674408f;
  float _816 = ((_802 - _809) * UberPostColorCorrectionPacked0.w) + _809;
  float _817 = ((_803 - _809) * UberPostColorCorrectionPacked0.w) + _809;
  float _818 = ((_804 - _809) * UberPostColorCorrectionPacked0.w) + _809;
  float _833 = (((1.0f - saturate(_816)) - _816) * UberPostColorCorrectionPacked1.w) + _816;
  float _834 = (((1.0f - saturate(_817)) - _817) * UberPostColorCorrectionPacked1.w) + _817;
  float _835 = (((1.0f - saturate(_818)) - _818) * UberPostColorCorrectionPacked1.w) + _818;
  float _843 = saturate((saturate(dot(float3(_833, _834, _835), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostColorCorrectionPacked2.y) * UberPostColorCorrectionPacked2.z);
  float _869 = saturate((((UberPostColorCorrectionPacked0.x - _833) + ((UberPostColorCorrectionPacked1.x - UberPostColorCorrectionPacked0.x) * _843)) * UberPostColorCorrectionPacked2.x) + _833);
  float _870 = saturate((((UberPostColorCorrectionPacked0.y - _834) + ((UberPostColorCorrectionPacked1.y - UberPostColorCorrectionPacked0.y) * _843)) * UberPostColorCorrectionPacked2.x) + _834);
  float _871 = saturate((((UberPostColorCorrectionPacked0.z - _835) + ((UberPostColorCorrectionPacked1.z - UberPostColorCorrectionPacked0.z) * _843)) * UberPostColorCorrectionPacked2.x) + _835);
  if (UberPostColorCorrectionPacked2.w > 0.5f) {
    float4 _875 = _FXMaskForScene.Sample(s_linear_clamp_sampler, float2(TEXCOORD.x, TEXCOORD.y));
    if (UberPostColorCorrectionPacked3.w < 0.5f) {
      _944 = min((_875.x + _869), 1.0f);
      _945 = min((_875.x + _870), 1.0f);
      _946 = min((_875.x + _871), 1.0f);
    } else {
      float _912 = select((_869 > 0.5f), 0.0f, 1.0f);
      float _913 = select((_870 > 0.5f), 0.0f, 1.0f);
      float _914 = select((_871 > 0.5f), 0.0f, 1.0f);
      float _933 = 1.0f - _875.x;
      _944 = (((((1.0f - (((1.0f - _869) * 2.0f) * (1.0f - UberPostColorCorrectionPacked3.x))) * saturate(1.0f - _912)) + (((_869 * 2.0f) * _912) * UberPostColorCorrectionPacked3.x)) * _875.x) + (_933 * _869));
      _945 = (((((1.0f - (((1.0f - _870) * 2.0f) * (1.0f - UberPostColorCorrectionPacked3.y))) * saturate(1.0f - _913)) + (((_870 * 2.0f) * _913) * UberPostColorCorrectionPacked3.y)) * _875.x) + (_933 * _870));
      _946 = (((((1.0f - (((1.0f - _871) * 2.0f) * (1.0f - UberPostColorCorrectionPacked3.z))) * saturate(1.0f - _914)) + (((_871 * 2.0f) * _914) * UberPostColorCorrectionPacked3.z)) * _875.x) + (_933 * _871));
    }
  } else {
    _944 = _869;
    _945 = _870;
    _946 = _871;
  }
  SV_Target.x = _944;
  SV_Target.y = _945;
  SV_Target.z = _946;
  SV_Target.w = _674;

  if (injectedData.fxFilmGrainAmount > 0.0f) {
    SV_Target.xyz = applyFilmGrain(SV_Target.xyz, TEXCOORD);
  }

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
