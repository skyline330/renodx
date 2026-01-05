#include "../../tonemap.hlsl"

// Trigger aftershock 

Texture2D<float4> _CameraDepthTexture : register(t0);

Texture2D<float4> _BlitTex : register(t1);

Texture2D<float4> _Grain_Texture : register(t2);

Texture2D<float4> _InternalLut : register(t3);

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
  float _55;
  float _62;
  float _63;
  float _553;
  float _554;
  float _555;
  float _556;
  float _557;
  float _558;
  float _559;
  float _560;
  float _643;
  float _650;
  float _651;
  float _698;
  float _705;
  float _706;
  float _753;
  float _760;
  float _761;
  float _919;
  float _920;
  float _921;
  float _931;
  float _932;
  float _933;
  float _934;
  float _973;
  float _974;
  float _975;
  float _1062;
  float _1063;
  float _1064;
  if (!(_Distortion_Params2.w == 0.0f)) {
    float _23 = _Distortion_Params2.z * (TEXCOORD.x + -0.5f);
    float _24 = _Distortion_Params2.z * (TEXCOORD.y + -0.5f);
    float _34 = (_23 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _35 = (_24 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _39 = sqrt((_34 * _34) + (_35 * _35));
    float _43 = _Distortion_Params2.y * _39;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _55 = ((1.0f / _43) * tan(_Distortion_Params2.x * _39));
      } else {
        _55 = ((_Distortion_Params2.x * (1.0f / _39)) * atan(_43));
      }
      float _56 = _55 + -1.0f;
      _62 = ((_23 + 0.5f) + (_56 * _34));
      _63 = ((_24 + 0.5f) + (_56 * _35));
    } while (false);
  } else {
    _62 = TEXCOORD.x;
    _63 = TEXCOORD.y;
  }
  float4 _71 = _CameraDepthTexture.Load(int3((uint)(uint(_ScreenSize.x * TEXCOORD.x)), (uint)(uint(_ScreenSize.y * TEXCOORD.y)), 0));
  float _95 = (TEXCOORD.x * 2.0f) + -1.0f;
  float _97 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  float _113 = mad((_InvViewProjMatrix[2].w), _71.x, mad((_InvViewProjMatrix[1].w), _97, ((_InvViewProjMatrix[0].w) * _95))) + (_InvViewProjMatrix[3].w);
  float _114 = (mad((_InvViewProjMatrix[2].x), _71.x, mad((_InvViewProjMatrix[1].x), _97, ((_InvViewProjMatrix[0].x) * _95))) + (_InvViewProjMatrix[3].x)) / _113;
  float _115 = (mad((_InvViewProjMatrix[2].y), _71.x, mad((_InvViewProjMatrix[1].y), _97, ((_InvViewProjMatrix[0].y) * _95))) + (_InvViewProjMatrix[3].y)) / _113;
  float _116 = (mad((_InvViewProjMatrix[2].z), _71.x, mad((_InvViewProjMatrix[1].z), _97, ((_InvViewProjMatrix[0].z) * _95))) + (_InvViewProjMatrix[3].z)) / _113;
  float _117 = ddy_coarse(_114);
  float _118 = ddy_coarse(_115);
  float _119 = ddy_coarse(_116);
  float _120 = ddx_coarse(_114);
  float _121 = ddx_coarse(_115);
  float _122 = ddx_coarse(_116);
  float _125 = (_121 * _119) - (_122 * _118);
  float _128 = (_122 * _117) - (_120 * _119);
  float _131 = (_120 * _118) - (_121 * _117);
  float _133 = rsqrt(dot(float3(_125, _128, _131), float3(_125, _128, _131)));
  float _148 = saturate((_SceneWeatherSandstormParams01.z * (1.0f / ((_ZBufferParams.z * _71.x) + _ZBufferParams.w))) - _SceneWeatherSandstormParams01.y);
  float _162 = _SceneWeatherSandstormParams01.w * _115;
  float _168 = max(abs(_125 * _133), 9.999999747378752e-06f);
  float _169 = max(abs(_128 * _133), 9.999999747378752e-06f);
  float _170 = max(abs(_133 * _131), 9.999999747378752e-06f);
  float _172 = rsqrt(dot(float3(_168, _169, _170), float3(_168, _169, _170)));
  float _177 = _172 * ((_169 + _168) + _170);
  float _185 = _SceneWeatherSandstormParams02.x * (_GlobalTimeParamsA[1].x);
  float _186 = _SceneWeatherSandstormParams02.y * (_GlobalTimeParamsA[1].x);
  float _191 = (_162 * _SceneWeatherSandstormParams02.z) + _185;
  float _192 = ((_SceneWeatherSandstormParams01.w * _116) * _SceneWeatherSandstormParams02.w) + _186;
  float _193 = dot(float2(_191, _192), float2(0.3660254180431366f, 0.3660254180431366f));
  float _196 = floor(_191 + _193);
  float _197 = floor(_192 + _193);
  float _200 = dot(float2(_196, _197), float2(0.21132487058639526f, 0.21132487058639526f));
  float _201 = (_191 - _196) + _200;
  float _202 = (_192 - _197) + _200;
  bool _203 = (_201 > _202);
  float _204 = select(_203, 1.0f, 0.0f);
  float _205 = select(_203, 0.0f, 1.0f);
  float _208 = _201 + -0.5773502588272095f;
  float _209 = _202 + -0.5773502588272095f;
  float _210 = (_201 + 0.21132487058639526f) - _204;
  float _211 = (_202 + 0.21132487058639526f) - _205;
  float _218 = _196 - (floor(_196 * 0.0034602077212184668f) * 289.0f);
  float _219 = _197 - (floor(_197 * 0.0034602077212184668f) * 289.0f);
  float _220 = _219 + _205;
  float _221 = _219 + 1.0f;
  float _228 = ((_219 * 34.0f) + 1.0f) * _219;
  float _229 = ((_220 * 34.0f) + 1.0f) * _220;
  float _230 = ((_221 * 34.0f) + 1.0f) * _221;
  float _241 = (_228 - (floor(_228 * 0.0034602077212184668f) * 289.0f)) + _218;
  float _244 = ((_204 + _218) - (floor(_229 * 0.0034602077212184668f) * 289.0f)) + _229;
  float _247 = ((_218 + 1.0f) - (floor(_230 * 0.0034602077212184668f) * 289.0f)) + _230;
  float _254 = ((_241 * 34.0f) + 1.0f) * _241;
  float _255 = ((_244 * 34.0f) + 1.0f) * _244;
  float _256 = ((_247 * 34.0f) + 1.0f) * _247;
  float _275 = max((0.5f - dot(float2(_201, _202), float2(_201, _202))), 0.0f);
  float _276 = max((0.5f - dot(float2(_210, _211), float2(_210, _211))), 0.0f);
  float _277 = max((0.5f - dot(float2(_208, _209), float2(_208, _209))), 0.0f);
  float _278 = _275 * _275;
  float _279 = _276 * _276;
  float _280 = _277 * _277;
  float _290 = frac((_254 - (floor(_254 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  float _291 = frac((_255 - (floor(_255 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  float _292 = frac((_256 - (floor(_256 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  float _293 = _290 + -1.0f;
  float _294 = _291 + -1.0f;
  float _295 = _292 + -1.0f;
  float _299 = abs(_293) + -0.5f;
  float _300 = abs(_294) + -0.5f;
  float _301 = abs(_295) + -0.5f;
  float _308 = _293 - floor(_290 + -0.5f);
  float _309 = _294 - floor(_291 + -0.5f);
  float _310 = _295 - floor(_292 + -0.5f);
  float _344 = ((_SceneWeatherSandstormParams01.w * _114) * _SceneWeatherSandstormParams04.x) + _185;
  float _345 = (_162 * _SceneWeatherSandstormParams04.y) + _186;
  float _346 = dot(float2(_344, _345), float2(0.3660254180431366f, 0.3660254180431366f));
  float _349 = floor(_344 + _346);
  float _350 = floor(_345 + _346);
  float _353 = dot(float2(_349, _350), float2(0.21132487058639526f, 0.21132487058639526f));
  float _354 = (_344 - _349) + _353;
  float _355 = (_345 - _350) + _353;
  bool _356 = (_354 > _355);
  float _357 = select(_356, 1.0f, 0.0f);
  float _358 = select(_356, 0.0f, 1.0f);
  float _361 = _354 + -0.5773502588272095f;
  float _362 = _355 + -0.5773502588272095f;
  float _363 = (_354 + 0.21132487058639526f) - _357;
  float _364 = (_355 + 0.21132487058639526f) - _358;
  float _371 = _349 - (floor(_349 * 0.0034602077212184668f) * 289.0f);
  float _372 = _350 - (floor(_350 * 0.0034602077212184668f) * 289.0f);
  float _373 = _372 + _358;
  float _374 = _372 + 1.0f;
  float _381 = ((_372 * 34.0f) + 1.0f) * _372;
  float _382 = ((_373 * 34.0f) + 1.0f) * _373;
  float _383 = ((_374 * 34.0f) + 1.0f) * _374;
  float _394 = (_381 - (floor(_381 * 0.0034602077212184668f) * 289.0f)) + _371;
  float _397 = ((_357 + _371) - (floor(_382 * 0.0034602077212184668f) * 289.0f)) + _382;
  float _400 = ((_371 + 1.0f) - (floor(_383 * 0.0034602077212184668f) * 289.0f)) + _383;
  float _407 = ((_394 * 34.0f) + 1.0f) * _394;
  float _408 = ((_397 * 34.0f) + 1.0f) * _397;
  float _409 = ((_400 * 34.0f) + 1.0f) * _400;
  float _428 = max((0.5f - dot(float2(_354, _355), float2(_354, _355))), 0.0f);
  float _429 = max((0.5f - dot(float2(_363, _364), float2(_363, _364))), 0.0f);
  float _430 = max((0.5f - dot(float2(_361, _362), float2(_361, _362))), 0.0f);
  float _431 = _428 * _428;
  float _432 = _429 * _429;
  float _433 = _430 * _430;
  float _443 = frac((_407 - (floor(_407 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  float _444 = frac((_408 - (floor(_408 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  float _445 = frac((_409 - (floor(_409 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  float _446 = _443 + -1.0f;
  float _447 = _444 + -1.0f;
  float _448 = _445 + -1.0f;
  float _452 = abs(_446) + -0.5f;
  float _453 = abs(_447) + -0.5f;
  float _454 = abs(_448) + -0.5f;
  float _461 = _446 - floor(_443 + -0.5f);
  float _462 = _447 - floor(_444 + -0.5f);
  float _463 = _448 - floor(_445 + -0.5f);
  float _500 = ((((_148 * _148) * 130.0f) * exp2(log2(1.0f - saturate(abs(_115 - _SceneWeatherSandstormParams03.y) / _SceneWeatherSandstormParams03.x)) * _SceneWeatherSandstormParams03.z)) * _SceneWeatherSandstormParams01.x) * ((dot(float3(((_431 * _431) * (1.7928428649902344f - (((_461 * _461) + (_452 * _452)) * 0.8537347316741943f))), ((_432 * _432) * (1.7928428649902344f - (((_462 * _462) + (_453 * _453)) * 0.8537347316741943f))), ((_433 * _433) * (1.7928428649902344f - (((_463 * _463) + (_454 * _454)) * 0.8537347316741943f)))), float3(((_461 * _354) + (_452 * _355)), ((_462 * _363) + (_453 * _364)), ((_463 * _361) + (_454 * _362)))) * ((_172 * _170) / _177)) + (dot(float3(((_278 * _278) * (1.7928428649902344f - (((_308 * _308) + (_299 * _299)) * 0.8537347316741943f))), ((_279 * _279) * (1.7928428649902344f - (((_309 * _309) + (_300 * _300)) * 0.8537347316741943f))), ((_280 * _280) * (1.7928428649902344f - (((_310 * _310) + (_301 * _301)) * 0.8537347316741943f)))), float3(((_308 * _201) + (_299 * _202)), ((_309 * _210) + (_300 * _211)), ((_310 * _208) + (_301 * _209)))) * ((_172 * _168) / _177)));
  float4 _510 = _CameraDepthTexture.Load(int3((uint)(uint((_500 + TEXCOORD.x) * _ScreenSize.x)), (uint)(uint((_500 + TEXCOORD.y) * _ScreenSize.y)), 0));
  float _518 = saturate((_SceneWeatherSandstormParams01.z * (1.0f / ((_510.x * _ZBufferParams.z) + _ZBufferParams.w))) - _SceneWeatherSandstormParams01.y) * _500;
  float _519 = _518 + TEXCOORD.x;
  float _520 = _518 + TEXCOORD.y;
  if (_DistortionRgbShift.w > 0.0f) {
    float4 _525 = _CameraDistortionTextureOverlay.Sample(sampler_CameraDistortionTextureOverlay, float2(_519, _520));
    float _529 = _525.x * 0.10000000149011612f;
    float _530 = _525.y * 0.10000000149011612f;
    float _535 = (_529 * _525.z) * _DistortionRgbShift.w;
    float _536 = (_530 * _525.z) * _DistortionRgbShift.w;
    _553 = (_529 + _62);
    _554 = (_530 + _63);
    _555 = ((_535 * _DistortionRgbShift.x) + _529);
    _556 = ((_536 * _DistortionRgbShift.x) + _530);
    _557 = ((_535 * _DistortionRgbShift.y) + _529);
    _558 = ((_536 * _DistortionRgbShift.y) + _530);
    _559 = ((_DistortionRgbShift.z * _535) + _529);
    _560 = ((_DistortionRgbShift.z * _536) + _530);
  } else {
    _553 = _62;
    _554 = _63;
    _555 = 0.0f;
    _556 = 0.0f;
    _557 = 0.0f;
    _558 = 0.0f;
    _559 = 0.0f;
    _560 = 0.0f;
  }
  float _567 = ((_519 * 2.0f) - _ChromaCenter.x) + -0.5f;
  float _569 = ((_520 * 2.0f) - _ChromaCenter.y) + -0.5f;
  float _573 = dot(float2(_567, _569), float2(_567, _569)) * -0.3333333432674408f;
  float _575 = (_573 * _567) * UberPostBasePacked0.z;
  float _577 = (_573 * _569) * UberPostBasePacked0.z;
  float _579 = rsqrt(dot(float3(_575, _577, 9.999999747378752e-05f), float3(_575, _577, 9.999999747378752e-05f)));
  float _586 = UberPostBasePacked0.z * 0.9428090453147888f;
  float _591 = exp2(log2(sqrt((_575 * _575) + (_577 * _577)) / _586) * _ChromaCenter.z);
  float _593 = ((_575 * _579) * _586) * _591;
  float _595 = ((_577 * _579) * _586) * _591;
  float _602 = (_555 + _519) + (_593 * _ChromaticColorR.w);
  float _603 = (_556 + _520) + (_595 * _ChromaticColorR.w);
  bool _606 = !(_Distortion_Params2.w == 0.0f);
  if (_606) {
    float _611 = _Distortion_Params2.z * (_602 + -0.5f);
    float _612 = _Distortion_Params2.z * (_603 + -0.5f);
    float _622 = (_611 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _623 = (_612 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _627 = sqrt((_622 * _622) + (_623 * _623));
    float _631 = _Distortion_Params2.y * _627;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _643 = ((1.0f / _631) * tan(_Distortion_Params2.x * _627));
      } else {
        _643 = ((_Distortion_Params2.x * (1.0f / _627)) * atan(_631));
      }
      float _644 = _643 + -1.0f;
      _650 = ((_611 + 0.5f) + (_644 * _622));
      _651 = ((_612 + 0.5f) + (_644 * _623));
    } while (false);
  } else {
    _650 = _602;
    _651 = _603;
  }
  float4 _652 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_650, _651));
  float _660 = (_557 + _519) + (_ChromaticColorG.w * _593);
  float _661 = (_558 + _520) + (_ChromaticColorG.w * _595);
  if (_606) {
    float _666 = _Distortion_Params2.z * (_660 + -0.5f);
    float _667 = _Distortion_Params2.z * (_661 + -0.5f);
    float _677 = (_666 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _678 = (_667 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _682 = sqrt((_677 * _677) + (_678 * _678));
    float _686 = _Distortion_Params2.y * _682;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _698 = ((1.0f / _686) * tan(_Distortion_Params2.x * _682));
      } else {
        _698 = ((_Distortion_Params2.x * (1.0f / _682)) * atan(_686));
      }
      float _699 = _698 + -1.0f;
      _705 = ((_666 + 0.5f) + (_699 * _677));
      _706 = ((_667 + 0.5f) + (_699 * _678));
    } while (false);
  } else {
    _705 = _660;
    _706 = _661;
  }
  float4 _707 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_705, _706));
  float _715 = (_559 + _519) + (_ChromaticColorB.w * _593);
  float _716 = (_560 + _520) + (_ChromaticColorB.w * _595);
  if (_606) {
    float _721 = _Distortion_Params2.z * (_715 + -0.5f);
    float _722 = _Distortion_Params2.z * (_716 + -0.5f);
    float _732 = (_721 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _733 = (_722 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _737 = sqrt((_732 * _732) + (_733 * _733));
    float _741 = _Distortion_Params2.y * _737;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _753 = ((1.0f / _741) * tan(_Distortion_Params2.x * _737));
      } else {
        _753 = ((_Distortion_Params2.x * (1.0f / _737)) * atan(_741));
      }
      float _754 = _753 + -1.0f;
      _760 = ((_721 + 0.5f) + (_754 * _732));
      _761 = ((_722 + 0.5f) + (_754 * _733));
    } while (false);
  } else {
    _760 = _715;
    _761 = _716;
  }
  float4 _762 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_760, _761));
  float _785 = ((_ChromaticColorG.x * _707.y) + (_ChromaticColorR.x * _652.x)) + (_ChromaticColorB.x * _762.z);
  float _786 = ((_ChromaticColorG.y * _707.y) + (_ChromaticColorR.y * _652.x)) + (_ChromaticColorB.y * _762.z);
  float _787 = ((_ChromaticColorG.z * _707.y) + (_ChromaticColorR.z * _652.x)) + (_ChromaticColorB.z * _762.z);
  float4 _788 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_553, _554));
  bool _796 = (UberPostBasePacked3.y > 0.0f);
  if ((bool)(UberPostBasePacked3.z < 0.5f) && ((bool)((bool)(UberPostBasePacked3.x > 0.0f) || _796))) {
    float _806 = fmod(((_ScreenSize.y * _554) * _VREffectsScanlineParams.x), 2.0f);
    float _814 = (((select((_806 > 1.0f), (2.0f - _806), _806) * 2.0f) + -1.0f) * _VREffectsScanlineParams.z) + _553;
    float _817 = _ScreenSize.w * _ScreenSize.x;
    float4 _836 = _NapBloomTex.Sample(sampler_NapBloomTex, float2(_814, ((select(((frac((((_814 + abs(_VREffectsSliceParams.y)) * _817) - (_VREffectsSliceParams.y * _554)) / ((_817 * 2.0f) * _VREffectsSliceParams.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * _VREffectsSliceParams.z) + _554)));
    float _873 = ((((-0.699999988079071f - _836.x) + (exp2(log2(abs(_836.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_836.x < 0.30000001192092896f), 0.0f, 1.0f)) + _836.x) * UberPostBasePacked3.x;
    float _874 = ((((-0.699999988079071f - _836.y) + (exp2(log2(abs(_836.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_836.y < 0.30000001192092896f), 0.0f, 1.0f)) + _836.y) * UberPostBasePacked3.x;
    float _875 = ((((-0.699999988079071f - _836.z) + (exp2(log2(abs(_836.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_836.z < 0.30000001192092896f), 0.0f, 1.0f)) + _836.z) * UberPostBasePacked3.x;
    float _876 = dot(float3(_785, _786, _787), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    bool _879 = (UberPostBasePacked4.x > 0.5f);
    float _892 = select(_879, ((((_873 * _876) - _873) * _788.w) + _873), _873);
    float _893 = select(_879, ((((_874 * _876) - _874) * _788.w) + _874), _874);
    float _894 = select(_879, ((((_875 * _876) - _875) * _788.w) + _875), _875);
    do {
      if (_796) {
        float4 _905 = _DirtTex.Sample(s_linear_clamp_sampler, float2(((_DirtTexTillingOffset.x * _553) + _DirtTexTillingOffset.z), ((_DirtTexTillingOffset.y * _554) + _DirtTexTillingOffset.w)));
        _919 = (((_905.x * _873) * UberPostBasePacked3.y) + _892);
        _920 = (((_905.y * _874) * UberPostBasePacked3.y) + _893);
        _921 = (((_905.z * _875) * UberPostBasePacked3.y) + _894);
      } else {
        _919 = _892;
        _920 = _893;
        _921 = _894;
      }
      _931 = (_919 + _785);
      _932 = (_920 + _786);
      _933 = (_921 + _787);
      _934 = saturate((((_920 + _919) + _921) * 0.33329999446868896f) + _788.w);
    } while (false);
  } else {
    _931 = _785;
    _932 = _786;
    _933 = _787;
    _934 = _788.w;
  }
  [branch]
  if (_Vignette_Params2.z > 0.0f) {
    float _951 = abs(_554 - _Vignette_Params2.y) * _Vignette_Params2.z;
    float _953 = (_Vignette_Params2.z * _Vignette_Params1.w) * abs(_553 - _Vignette_Params2.x);
    float _959 = exp2(log2(saturate(1.0f - dot(float2(_953, _951), float2(_953, _951)))) * _Vignette_Params2.w);
    _973 = (((_959 * (1.0f - _Vignette_Params1.x)) + _Vignette_Params1.x) * _931);
    _974 = (((_959 * (1.0f - _Vignette_Params1.y)) + _Vignette_Params1.y) * _932);
    _975 = (((_959 * (1.0f - _Vignette_Params1.z)) + _Vignette_Params1.z) * _933);
  } else {
    _973 = _931;
    _974 = _932;
    _975 = _933;
  }
  float3 untonemapped = (float3(_973, _974, _975));
  renodx::lut::Config lut_config = renodx::lut::config::Create(
      s_linear_clamp_sampler,
      1.f,
      0.f,
      renodx::lut::config::type::ARRI_C1000_NO_CUT,
      renodx::lut::config::type::LINEAR,
      _Lut_Params.xyz);

  float3 tonemapped = renodx::lut::Sample(_InternalLut, lut_config, untonemapped);
  float _1024 = tonemapped.x;
  float _1025 = tonemapped.y;
  float _1026 = tonemapped.z;
  /*
  float _998 = saturate((log2((_975 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z;
  float _999 = floor(_998);
  float _1005 = ((saturate((log2((_974 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z) + 0.5f) * _Lut_Params.y;
  float _1007 = (_999 * _Lut_Params.y) + (((saturate((log2((_973 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z) + 0.5f) * _Lut_Params.x);
  float _1008 = _998 - _999;
  float4 _1010 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2((_1007 + _Lut_Params.y), _1005), 0.0f);
  float4 _1014 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2(_1007, _1005), 0.0f);
  float _1024 = ((_1010.x - _1014.x) * _1008) + _1014.x;
  float _1025 = ((_1010.y - _1014.y) * _1008) + _1014.y;
  float _1026 = ((_1010.z - _1014.z) * _1008) + _1014.z;
  */
  if (UberPostBasePacked1.x > 0.0f) {
    float4 _1041 = _Grain_Texture.Sample(s_linear_repeat_sampler, float2(((_Grain_TilingParams.x * _519) + _Grain_TilingParams.z), ((_Grain_TilingParams.y * _520) + _Grain_TilingParams.w)));
    float _1044 = (_1041.w + -0.5f) * 2.0f;
    float _1048 = 1.0f - (sqrt(dot(float3(_1024, _1025, _1026), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBasePacked1.y);
    _1062 = ((((UberPostBasePacked1.x * _1024) * _1044) * _1048) + _1024);
    _1063 = ((((UberPostBasePacked1.x * _1025) * _1044) * _1048) + _1025);
    _1064 = ((((UberPostBasePacked1.x * _1026) * _1044) * _1048) + _1026);
  } else {
    _1062 = _1024;
    _1063 = _1025;
    _1064 = _1026;
  }
  SV_Target.x = (_1062);
  SV_Target.y = (_1063);
  SV_Target.z = (_1064);
  SV_Target.w = _934;
  return SV_Target;
}
