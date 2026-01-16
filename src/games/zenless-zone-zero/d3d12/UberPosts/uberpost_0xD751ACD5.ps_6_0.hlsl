#include "../../tonemap.hlsl"

// Main output shader

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
  float _47;
  float _48;
  float _49;
  float _50;
  float _51;
  float _52;
  float _53;
  float _54;
  float _278;
  float _279;
  float _280;
  float _290;
  float _291;
  float _292;
  float _293;
  float _332;
  float _333;
  float _334;
  float _421;
  float _422;
  float _423;
  if (_DistortionRgbShift.w > 0.0f) {
    float4 _19 = _CameraDistortionTextureOverlay.Sample(sampler_CameraDistortionTextureOverlay, float2(TEXCOORD.x, TEXCOORD.y));
    float _23 = _19.x * 0.10000000149011612f;
    float _24 = _19.y * 0.10000000149011612f;
    float _29 = (_23 * _19.z) * _DistortionRgbShift.w;
    float _30 = (_24 * _19.z) * _DistortionRgbShift.w;
    _47 = (_23 + TEXCOORD.x);
    _48 = (_24 + TEXCOORD.y);
    _49 = ((_29 * _DistortionRgbShift.x) + _23);
    _50 = ((_30 * _DistortionRgbShift.x) + _24);
    _51 = ((_29 * _DistortionRgbShift.y) + _23);
    _52 = ((_30 * _DistortionRgbShift.y) + _24);
    _53 = ((_DistortionRgbShift.z * _29) + _23);
    _54 = ((_DistortionRgbShift.z * _30) + _24);
  } else {
    _47 = TEXCOORD.x;
    _48 = TEXCOORD.y;
    _49 = 0.0f;
    _50 = 0.0f;
    _51 = 0.0f;
    _52 = 0.0f;
    _53 = 0.0f;
    _54 = 0.0f;
  }
  float _61 = ((TEXCOORD.x * 2.0f) - _ChromaCenter.x) + -0.5f;
  float _63 = ((TEXCOORD.y * 2.0f) - _ChromaCenter.y) + -0.5f;
  float _67 = dot(float2(_61, _63), float2(_61, _63)) * -0.3333333432674408f;
  float _69 = (_67 * _61) * UberPostBasePacked0.z;
  float _71 = (_67 * _63) * UberPostBasePacked0.z;
  float _73 = rsqrt(dot(float3(_69, _71, 9.999999747378752e-05f), float3(_69, _71, 9.999999747378752e-05f)));
  float _80 = UberPostBasePacked0.z * 0.9428090453147888f;
  float _85 = exp2(log2(sqrt((_69 * _69) + (_71 * _71)) / _80) * _ChromaCenter.z);
  float _87 = ((_69 * _73) * _80) * _85;
  float _89 = ((_71 * _73) * _80) * _85;
  float4 _98 = _BlitTex.Sample(s_linear_clamp_sampler, float2(((_49 + TEXCOORD.x) + (_87 * _ChromaticColorR.w)), ((_50 + TEXCOORD.y) + (_89 * _ChromaticColorR.w))));
  float4 _108 = _BlitTex.Sample(s_linear_clamp_sampler, float2(((_51 + TEXCOORD.x) + (_ChromaticColorG.w * _87)), ((_52 + TEXCOORD.y) + (_ChromaticColorG.w * _89))));
  float4 _118 = _BlitTex.Sample(s_linear_clamp_sampler, float2(((_53 + TEXCOORD.x) + (_ChromaticColorB.w * _87)), ((_54 + TEXCOORD.y) + (_ChromaticColorB.w * _89))));
  float _144 = ((_ChromaticColorG.x * _108.y) + (_ChromaticColorR.x * _98.x)) + (_ChromaticColorB.x * _118.z);
  float _145 = ((_ChromaticColorG.y * _108.y) + (_ChromaticColorR.y * _98.x)) + (_ChromaticColorB.y * _118.z);
  float _146 = ((_ChromaticColorG.z * _108.y) + (_ChromaticColorR.z * _98.x)) + (_ChromaticColorB.z * _118.z);
  float4 _147 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_47, _48));
  bool _155 = (UberPostBasePacked3.y > 0.0f);
  if ((bool)(UberPostBasePacked3.z < 0.5f) && ((bool)((bool)(UberPostBasePacked3.x > 0.0f) || _155))) {
    float _165 = fmod(((_ScreenSize.y * _48) * _VREffectsScanlineParams.x), 2.0f);
    float _173 = (((select((_165 > 1.0f), (2.0f - _165), _165) * 2.0f) + -1.0f) * _VREffectsScanlineParams.z) + _47;
    float _176 = _ScreenSize.w * _ScreenSize.x;
    float4 _195 = _NapBloomTex.Sample(sampler_NapBloomTex, float2(_173, ((select(((frac((((_173 + abs(_VREffectsSliceParams.y)) * _176) - (_VREffectsSliceParams.y * _48)) / ((_176 * 2.0f) * _VREffectsSliceParams.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * _VREffectsSliceParams.z) + _48)));
    float _232 = ((((-0.699999988079071f - _195.x) + (exp2(log2(abs(_195.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_195.x < 0.30000001192092896f), 0.0f, 1.0f)) + _195.x) * UberPostBasePacked3.x;
    float _233 = ((((-0.699999988079071f - _195.y) + (exp2(log2(abs(_195.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_195.y < 0.30000001192092896f), 0.0f, 1.0f)) + _195.y) * UberPostBasePacked3.x;
    float _234 = ((((-0.699999988079071f - _195.z) + (exp2(log2(abs(_195.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_195.z < 0.30000001192092896f), 0.0f, 1.0f)) + _195.z) * UberPostBasePacked3.x;
    float _235 = dot(float3(_144, _145, _146), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    bool _238 = (UberPostBasePacked4.x > 0.5f);
    float _251 = select(_238, ((((_232 * _235) - _232) * _147.w) + _232), _232);
    float _252 = select(_238, ((((_233 * _235) - _233) * _147.w) + _233), _233);
    float _253 = select(_238, ((((_234 * _235) - _234) * _147.w) + _234), _234);
    do {
      if (_155) {
        float4 _264 = _DirtTex.Sample(s_linear_clamp_sampler, float2(((_DirtTexTillingOffset.x * _47) + _DirtTexTillingOffset.z), ((_DirtTexTillingOffset.y * _48) + _DirtTexTillingOffset.w)));
        _278 = (((_264.x * _232) * UberPostBasePacked3.y) + _251);
        _279 = (((_264.y * _233) * UberPostBasePacked3.y) + _252);
        _280 = (((_264.z * _234) * UberPostBasePacked3.y) + _253);
      } else {
        _278 = _251;
        _279 = _252;
        _280 = _253;
      }
      _290 = (_278 + _144);
      _291 = (_279 + _145);
      _292 = (_280 + _146);
      _293 = saturate((((_279 + _278) + _280) * 0.33329999446868896f) + _147.w);
    } while (false);
  } else {
    _290 = _144;
    _291 = _145;
    _292 = _146;
    _293 = _147.w;
  }
  [branch]
  if (_Vignette_Params2.z > 0.0f) {
    float _310 = abs(_48 - _Vignette_Params2.y) * _Vignette_Params2.z;
    float _312 = (_Vignette_Params2.z * _Vignette_Params1.w) * abs(_47 - _Vignette_Params2.x);
    float _318 = exp2(log2(saturate(1.0f - dot(float2(_312, _310), float2(_312, _310)))) * _Vignette_Params2.w);
    _332 = (((_318 * (1.0f - _Vignette_Params1.x)) + _Vignette_Params1.x) * _290);
    _333 = (((_318 * (1.0f - _Vignette_Params1.y)) + _Vignette_Params1.y) * _291);
    _334 = (((_318 * (1.0f - _Vignette_Params1.z)) + _Vignette_Params1.z) * _292);
  } else {
    _332 = _290;
    _333 = _291;
    _334 = _292;
  }
  
  float3 untonemapped = (float3(_332, _333, _334));

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
  float _383 = tonemapped.x;
  float _384 = tonemapped.y;
  float _385 = tonemapped.z;

  /*
  float _357 = saturate((log2((_334 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z;
  float _358 = floor(_357);
  float _364 = ((saturate((log2((_333 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z) + 0.5f) * _Lut_Params.y;
  float _366 = (_358 * _Lut_Params.y) + (((saturate((log2((_332 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z) + 0.5f) * _Lut_Params.x);
  float _367 = _357 - _358;
  float4 _369 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2((_366 + _Lut_Params.y), _364), 0.0f);
  float4 _373 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2(_366, _364), 0.0f);
  float _383 = ((_369.x - _373.x) * _367) + _373.x;
  float _384 = ((_369.y - _373.y) * _367) + _373.y;
  float _385 = ((_369.z - _373.z) * _367) + _373.z;
  */
  if (UberPostBasePacked1.x > 0.0f) {
    float4 _400 = _Grain_Texture.Sample(s_linear_repeat_sampler, float2(((_Grain_TilingParams.x * TEXCOORD.x) + _Grain_TilingParams.z), ((_Grain_TilingParams.y * TEXCOORD.y) + _Grain_TilingParams.w)));
    float _403 = (_400.w + -0.5f) * 2.0f;
    float _407 = 1.0f - (sqrt(dot(float3(_383, _384, _385), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBasePacked1.y);
    _421 = ((((UberPostBasePacked1.x * _383) * _403) * _407) + _383);
    _422 = ((((UberPostBasePacked1.x * _384) * _403) * _407) + _384);
    _423 = ((((UberPostBasePacked1.x * _385) * _403) * _407) + _385);
  } else {
    _421 = _383;
    _422 = _384;
    _423 = _385;
  }
  SV_Target.x = (_421);
  SV_Target.y = (_422);
  SV_Target.z = (_423);
  SV_Target.w = _293;

  if (injectedData.fxFilmGrainAmount > 0.0f) {
    SV_Target.xyz = applyFilmGrain(SV_Target.xyz, TEXCOORD);
  }

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
