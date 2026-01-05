#include "../../tonemap.hlsl"

Texture2D<float4> _BlitTex : register(t0);

Texture2D<float4> _Grain_Texture : register(t1);

Texture2D<float4> _CameraDistortionTextureOverlay : register(t2);

Texture2D<float4> _NapBloomTex : register(t3);

Texture2D<float4> _DirtTex : register(t4);

Texture2D<float4> _ScrFxMainTex : register(t5);

Texture2D<float4> _ScrFxMaskTex : register(t6);

Texture2D<float4> _ScrFxDissolveTex : register(t7);

Texture2D<float4> _ScrFxDistortionTex : register(t8);

Texture2D<float4> _ScrFxScrDistTex : register(t9);

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

cbuffer UberPostScreenEffectsBaseCBuffer : register(b2) {
  float4 UberPostScreenEffectsBasePacked0 : packoffset(c000.x);
  float4 UberPostScreenEffectsBasePacked1 : packoffset(c001.x);
  float4 UberPostScreenEffectsBasePacked2 : packoffset(c002.x);
  float4 UberPostScreenEffectsBasePacked3 : packoffset(c003.x);
  float4 UberPostScreenEffectsBasePacked4 : packoffset(c004.x);
  float4 UberPostScreenEffectsBasePacked5 : packoffset(c005.x);
  float4 UberPostScreenEffectsBasePacked6 : packoffset(c006.x);
  float4 UberPostScreenEffectsBasePacked7 : packoffset(c007.x);
  float4 UberPostScreenEffectsBasePacked8 : packoffset(c008.x);
  float4 UberPostScreenEffectsBasePacked9 : packoffset(c009.x);
  float4 UberPostScreenEffectsBasePacked10 : packoffset(c010.x);
  float4 UberPostScreenEffectsBasePacked11 : packoffset(c011.x);
  float4 UberPostScreenEffectsBasePacked12 : packoffset(c012.x);
  float4 UberPostScreenEffectsBasePacked13 : packoffset(c013.x);
  float4 UberPostScreenEffectsBasePacked14 : packoffset(c014.x);
  float4 UberPostScreenEffectsBasePacked15 : packoffset(c015.x);
  float4 UberPostScreenEffectsBasePacked16 : packoffset(c016.x);
};

cbuffer UberPostScreenEffectsRandomCBuffer : register(b3) {
  float2 _ScrFxDissolveRandomUV : packoffset(c000.x);
  float2 _ScrFxDistortionRandomUV : packoffset(c000.z);
};

SamplerState s_linear_clamp_sampler : register(s0);

SamplerState s_linear_repeat_sampler : register(s1);

SamplerState sampler_CameraDistortionTextureOverlay : register(s2);

SamplerState sampler_NapBloomTex : register(s3);

SamplerState sampler_ScrFxMainTex : register(s4);

SamplerState sampler_ScrFxMaskTex : register(s5);

SamplerState sampler_ScrFxDissolveTex : register(s6);

SamplerState sampler_ScrFxDistortionTex : register(s7);

SamplerState sampler_ScrFxScrDistTex : register(s8);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float _26[3];
  float _27[3];
  float _28[4];
  float _29[4];
  float _30[4];
  float _31[4];
  float _32[4];
  float _72;
  float _79;
  float _80;
  float _211;
  float _212;
  float _246;
  float _247;
  float _248;
  float _249;
  float _250;
  float _251;
  float _252;
  float _253;
  float _334;
  float _341;
  float _342;
  float _389;
  float _396;
  float _397;
  float _444;
  float _451;
  float _452;
  float _610;
  float _611;
  float _612;
  float _622;
  float _623;
  float _624;
  float _625;
  float _664;
  float _665;
  float _666;
  float _702;
  float _703;
  float _704;
  float _1015;
  float _1097;
  float _1098;
  float _1099;
  if (!(_Distortion_Params2.w == 0.0f)) {
    float _40 = _Distortion_Params2.z * (TEXCOORD.x + -0.5f);
    float _41 = _Distortion_Params2.z * (TEXCOORD.y + -0.5f);
    float _51 = (_40 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _52 = (_41 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _56 = sqrt((_51 * _51) + (_52 * _52));
    float _60 = _Distortion_Params2.y * _56;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _72 = ((1.0f / _60) * tan(_Distortion_Params2.x * _56));
      } else {
        _72 = ((_Distortion_Params2.x * (1.0f / _56)) * atan(_60));
      }
      float _73 = _72 + -1.0f;
      _79 = ((_40 + 0.5f) + (_73 * _51));
      _80 = ((_41 + 0.5f) + (_73 * _52));
    } while (false);
  } else {
    _79 = TEXCOORD.x;
    _80 = TEXCOORD.y;
  }
  float _88 = select((UberPostScreenEffectsBasePacked16.w > 0.5f), (_GlobalTimeParamsA[1].x), (_GlobalTimeParamsB[0].y));
  float _89 = TEXCOORD.x * 2.0f;
  float _90 = TEXCOORD.y * 2.0f;
  float _91 = _89 + -1.0f;
  float _92 = _90 + -1.0f;
  float _102 = _ScaledScreenParams.z + -1.0f;
  float _104 = (_102 * _ScaledScreenParams.y) + -1.0f;
  float _106 = (_104 * UberPostScreenEffectsBasePacked1.x) + 1.0f;
  float _107 = _106 * _92;
  float _108 = _91 * _91;
  float _119 = select((UberPostScreenEffectsBasePacked0.z < 0.5f), min((1.0f - abs(_91)), (_106 * (1.0f - abs(_92)))), (1.0f - (sqrt((_107 * _107) + _108) * 0.7070000171661377f)));
  float _129 = saturate((_119 - UberPostScreenEffectsBasePacked0.w) / (((1.0f - UberPostScreenEffectsBasePacked1.y) * UberPostScreenEffectsBasePacked0.w) - UberPostScreenEffectsBasePacked0.w));
  float _135 = select((UberPostScreenEffectsBasePacked1.y > 9.999999747378752e-05f), ((_129 * _129) * (3.0f - (_129 * 2.0f))), select((UberPostScreenEffectsBasePacked0.w < _119), 0.0f, 1.0f));
  float _141 = select((UberPostScreenEffectsBasePacked1.w > 0.5f), (1.0f - _135), _135) * UberPostScreenEffectsBasePacked1.z;
  float _144 = select((UberPostScreenEffectsBasePacked0.w > 9.999999747378752e-05f), _141, 0.0f) * _141;
  if (UberPostScreenEffectsBasePacked14.z > 0.5f) {
    float _152 = ((_104 * UberPostScreenEffectsBasePacked0.y) + 1.0f) * _92;
    float _154 = atan(_152 / _91);
    bool _157 = (_91 < 0.0f);
    bool _158 = (_91 == 0.0f);
    bool _159 = (_152 >= 0.0f);
    bool _160 = (_152 < 0.0f);
    bool _184 = (UberPostScreenEffectsBasePacked14.w > 0.5f);
    float4 _198 = _ScrFxScrDistTex.Sample(sampler_ScrFxScrDistTex, float2(((UberPostScreenEffectsBasePacked15.z + (UberPostScreenEffectsBasePacked16.y * _88)) + (select(_184, select((_158 && _159), 2.0f, select((_158 && _160), -2.0f, (select((_157 && _160), (_154 + -3.1415927410125732f), select((_157 && _159), (_154 + 3.1415927410125732f), _154)) * 1.2732394933700562f))), TEXCOORD.x) * UberPostScreenEffectsBasePacked15.x)), ((UberPostScreenEffectsBasePacked15.w + (UberPostScreenEffectsBasePacked16.z * _88)) + (select(_184, (sqrt((_152 * _152) + _108) * 0.6366197466850281f), (((_ScaledScreenParams.y * (TEXCOORD.y + -0.5f)) * _102) + 0.5f)) * UberPostScreenEffectsBasePacked15.y))));
    float _207 = (_144 * 0.10000000149011612f) * UberPostScreenEffectsBasePacked16.x;
    _211 = (_207 * ((_198.x * 2.0f) + -1.0f));
    _212 = (_207 * ((_198.y * 2.0f) + -1.0f));
  } else {
    _211 = 0.0f;
    _212 = 0.0f;
  }
  if (_DistortionRgbShift.w > 0.0f) {
    float4 _217 = _CameraDistortionTextureOverlay.Sample(sampler_CameraDistortionTextureOverlay, float2(TEXCOORD.x, TEXCOORD.y));
    float _223 = (_217.x * 0.10000000149011612f) + _211;
    float _224 = (_217.y * 0.10000000149011612f) + _212;
    float _227 = _DistortionRgbShift.w * _217.z;
    float _228 = _227 * _223;
    float _229 = _227 * _224;
    _246 = (_223 + _79);
    _247 = (_224 + _80);
    _248 = ((_228 * _DistortionRgbShift.x) + _223);
    _249 = ((_229 * _DistortionRgbShift.x) + _224);
    _250 = ((_228 * _DistortionRgbShift.y) + _223);
    _251 = ((_229 * _DistortionRgbShift.y) + _224);
    _252 = ((_228 * _DistortionRgbShift.z) + _223);
    _253 = ((_229 * _DistortionRgbShift.z) + _224);
  } else {
    _246 = _79;
    _247 = _80;
    _248 = 0.0f;
    _249 = 0.0f;
    _250 = 0.0f;
    _251 = 0.0f;
    _252 = 0.0f;
    _253 = 0.0f;
  }
  float _258 = (_89 - _ChromaCenter.x) + -0.5f;
  float _260 = (_90 - _ChromaCenter.y) + -0.5f;
  float _264 = dot(float2(_258, _260), float2(_258, _260)) * -0.3333333432674408f;
  float _266 = (_264 * _258) * UberPostBasePacked0.z;
  float _268 = (_264 * _260) * UberPostBasePacked0.z;
  float _270 = rsqrt(dot(float3(_266, _268, 9.999999747378752e-05f), float3(_266, _268, 9.999999747378752e-05f)));
  float _277 = UberPostBasePacked0.z * 0.9428090453147888f;
  float _282 = exp2(log2(sqrt((_266 * _266) + (_268 * _268)) / _277) * _ChromaCenter.z);
  float _284 = ((_266 * _270) * _277) * _282;
  float _286 = ((_268 * _270) * _277) * _282;
  float _293 = (_248 + TEXCOORD.x) + (_284 * _ChromaticColorR.w);
  float _294 = (_249 + TEXCOORD.y) + (_286 * _ChromaticColorR.w);
  bool _297 = !(_Distortion_Params2.w == 0.0f);
  if (_297) {
    float _302 = _Distortion_Params2.z * (_293 + -0.5f);
    float _303 = _Distortion_Params2.z * (_294 + -0.5f);
    float _313 = (_302 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _314 = (_303 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _318 = sqrt((_313 * _313) + (_314 * _314));
    float _322 = _Distortion_Params2.y * _318;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _334 = ((1.0f / _322) * tan(_Distortion_Params2.x * _318));
      } else {
        _334 = ((_Distortion_Params2.x * (1.0f / _318)) * atan(_322));
      }
      float _335 = _334 + -1.0f;
      _341 = ((_302 + 0.5f) + (_335 * _313));
      _342 = ((_303 + 0.5f) + (_335 * _314));
    } while (false);
  } else {
    _341 = _293;
    _342 = _294;
  }
  float4 _343 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_341, _342));
  float _351 = (_250 + TEXCOORD.x) + (_ChromaticColorG.w * _284);
  float _352 = (_251 + TEXCOORD.y) + (_ChromaticColorG.w * _286);
  if (_297) {
    float _357 = _Distortion_Params2.z * (_351 + -0.5f);
    float _358 = _Distortion_Params2.z * (_352 + -0.5f);
    float _368 = (_357 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _369 = (_358 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _373 = sqrt((_368 * _368) + (_369 * _369));
    float _377 = _Distortion_Params2.y * _373;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _389 = ((1.0f / _377) * tan(_Distortion_Params2.x * _373));
      } else {
        _389 = ((_Distortion_Params2.x * (1.0f / _373)) * atan(_377));
      }
      float _390 = _389 + -1.0f;
      _396 = ((_357 + 0.5f) + (_390 * _368));
      _397 = ((_358 + 0.5f) + (_390 * _369));
    } while (false);
  } else {
    _396 = _351;
    _397 = _352;
  }
  float4 _398 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_396, _397));
  float _406 = (_252 + TEXCOORD.x) + (_ChromaticColorB.w * _284);
  float _407 = (_253 + TEXCOORD.y) + (_ChromaticColorB.w * _286);
  if (_297) {
    float _412 = _Distortion_Params2.z * (_406 + -0.5f);
    float _413 = _Distortion_Params2.z * (_407 + -0.5f);
    float _423 = (_412 - _Distortion_Params1.x) * _Distortion_Params1.z;
    float _424 = (_413 - _Distortion_Params1.y) * _Distortion_Params1.w;
    float _428 = sqrt((_423 * _423) + (_424 * _424));
    float _432 = _Distortion_Params2.y * _428;
    do {
      [branch]
      if (_Distortion_Params2.w > 0.0f) {
        _444 = ((1.0f / _432) * tan(_Distortion_Params2.x * _428));
      } else {
        _444 = ((_Distortion_Params2.x * (1.0f / _428)) * atan(_432));
      }
      float _445 = _444 + -1.0f;
      _451 = ((_412 + 0.5f) + (_445 * _423));
      _452 = ((_413 + 0.5f) + (_445 * _424));
    } while (false);
  } else {
    _451 = _406;
    _452 = _407;
  }
  float4 _453 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_451, _452));
  float _476 = ((_ChromaticColorG.x * _398.y) + (_ChromaticColorR.x * _343.x)) + (_ChromaticColorB.x * _453.z);
  float _477 = ((_ChromaticColorG.y * _398.y) + (_ChromaticColorR.y * _343.x)) + (_ChromaticColorB.y * _453.z);
  float _478 = ((_ChromaticColorG.z * _398.y) + (_ChromaticColorR.z * _343.x)) + (_ChromaticColorB.z * _453.z);
  float4 _479 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_246, _247));
  bool _487 = (UberPostBasePacked3.y > 0.0f);
  if ((bool)(UberPostBasePacked3.z < 0.5f) && ((bool)((bool)(UberPostBasePacked3.x > 0.0f) || _487))) {
    float _497 = fmod(((_ScreenSize.y * _247) * _VREffectsScanlineParams.x), 2.0f);
    float _505 = (((select((_497 > 1.0f), (2.0f - _497), _497) * 2.0f) + -1.0f) * _VREffectsScanlineParams.z) + _246;
    float _508 = _ScreenSize.w * _ScreenSize.x;
    float4 _527 = _NapBloomTex.Sample(sampler_NapBloomTex, float2(_505, ((select(((frac((((_505 + abs(_VREffectsSliceParams.y)) * _508) - (_VREffectsSliceParams.y * _247)) / ((_508 * 2.0f) * _VREffectsSliceParams.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * _VREffectsSliceParams.z) + _247)));
    float _564 = ((((-0.699999988079071f - _527.x) + (exp2(log2(abs(_527.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_527.x < 0.30000001192092896f), 0.0f, 1.0f)) + _527.x) * UberPostBasePacked3.x;
    float _565 = ((((-0.699999988079071f - _527.y) + (exp2(log2(abs(_527.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_527.y < 0.30000001192092896f), 0.0f, 1.0f)) + _527.y) * UberPostBasePacked3.x;
    float _566 = ((((-0.699999988079071f - _527.z) + (exp2(log2(abs(_527.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_527.z < 0.30000001192092896f), 0.0f, 1.0f)) + _527.z) * UberPostBasePacked3.x;
    float _567 = dot(float3(_476, _477, _478), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    bool _570 = (UberPostBasePacked4.x > 0.5f);
    float _583 = select(_570, ((((_564 * _567) - _564) * _479.w) + _564), _564);
    float _584 = select(_570, ((((_565 * _567) - _565) * _479.w) + _565), _565);
    float _585 = select(_570, ((((_566 * _567) - _566) * _479.w) + _566), _566);
    do {
      if (_487) {
        float4 _596 = _DirtTex.Sample(s_linear_clamp_sampler, float2(((_DirtTexTillingOffset.x * _246) + _DirtTexTillingOffset.z), ((_DirtTexTillingOffset.y * _247) + _DirtTexTillingOffset.w)));
        _610 = (((_596.x * _564) * UberPostBasePacked3.y) + _583);
        _611 = (((_596.y * _565) * UberPostBasePacked3.y) + _584);
        _612 = (((_596.z * _566) * UberPostBasePacked3.y) + _585);
      } else {
        _610 = _583;
        _611 = _584;
        _612 = _585;
      }
      _622 = (_610 + _476);
      _623 = (_611 + _477);
      _624 = (_612 + _478);
      _625 = saturate((((_611 + _610) + _612) * 0.33329999446868896f) + _479.w);
    } while (false);
  } else {
    _622 = _476;
    _623 = _477;
    _624 = _478;
    _625 = _479.w;
  }
  [branch]
  if (_Vignette_Params2.z > 0.0f) {
    float _642 = abs(_247 - _Vignette_Params2.y) * _Vignette_Params2.z;
    float _644 = (_Vignette_Params2.z * _Vignette_Params1.w) * abs(_246 - _Vignette_Params2.x);
    float _650 = exp2(log2(saturate(1.0f - dot(float2(_644, _642), float2(_644, _642)))) * _Vignette_Params2.w);
    _664 = (((_650 * (1.0f - _Vignette_Params1.x)) + _Vignette_Params1.x) * _622);
    _665 = (((_650 * (1.0f - _Vignette_Params1.y)) + _Vignette_Params1.y) * _623);
    _666 = (((_650 * (1.0f - _Vignette_Params1.z)) + _Vignette_Params1.z) * _624);
  } else {
    _664 = _622;
    _665 = _623;
    _666 = _624;
  }
  float3 untonemapped = (float3(_664, _665, _666));

  float3 tonemapped = renodx::draw::ToneMapPass(untonemapped);

  _664 = tonemapped.x;
  _665 = tonemapped.y;
  _666 = tonemapped.z;
  if (UberPostBasePacked1.x > 0.0f) {
    float4 _681 = _Grain_Texture.Sample(s_linear_repeat_sampler, float2(((_Grain_TilingParams.x * TEXCOORD.x) + _Grain_TilingParams.z), ((_Grain_TilingParams.y * TEXCOORD.y) + _Grain_TilingParams.w)));
    float _684 = (_681.w + -0.5f) * 2.0f;
    float _688 = 1.0f - (sqrt(dot(float3(_664, _665, _666), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBasePacked1.y);
    _702 = ((((UberPostBasePacked1.x * _664) * _684) * _688) + _664);
    _703 = ((((UberPostBasePacked1.x * _665) * _684) * _688) + _665);
    _704 = ((((UberPostBasePacked1.x * _666) * _684) * _688) + _666);
  } else {
    _702 = _664;
    _703 = _665;
    _704 = _666;
  }
  float _708 = ((_104 * UberPostScreenEffectsBasePacked0.y) + 1.0f) * _92;
  float _710 = atan(_708 / _91);
  bool _713 = (_91 < 0.0f);
  bool _714 = (_91 == 0.0f);
  bool _715 = (_708 >= 0.0f);
  bool _716 = (_708 < 0.0f);
  _26[0] = (((_ScreenSize.x * (TEXCOORD.x + -0.5f)) * _ScreenSize.w) + 0.5f);
  _27[0] = TEXCOORD.y;
  _26[1] = select((_714 && _715), 2.0f, select((_714 && _716), -2.0f, (select((_713 && _716), (_710 + -3.1415927410125732f), select((_713 && _715), (_710 + 3.1415927410125732f), _710)) * 1.2732394933700562f)));
  _27[1] = (sqrt((_708 * _708) + (_91 * _91)) * 0.5f);
  _26[2] = TEXCOORD.x;
  _27[2] = TEXCOORD.y;
  int _773 = min(max(int(round(UberPostScreenEffectsBasePacked6.z)), 0), 2);
  int _796 = min(max(int(round(UberPostScreenEffectsBasePacked11.w)), 0), 2);
  float4 _819 = _ScrFxDistortionTex.Sample(sampler_ScrFxDistortionTex, float2(((((_ScrFxDistortionRandomUV.x + _211) + (UberPostScreenEffectsBasePacked11.x * _88)) + UberPostScreenEffectsBasePacked12.z) + (UberPostScreenEffectsBasePacked12.x * (_26[_796]))), ((((_ScrFxDistortionRandomUV.y + _212) + (UberPostScreenEffectsBasePacked11.y * _88)) + UberPostScreenEffectsBasePacked12.w) + (UberPostScreenEffectsBasePacked12.y * (_27[_796])))));
  _32[0] = _819.x;
  _32[1] = _819.y;
  _32[2] = _819.z;
  _32[3] = _819.w;
  float _832 = ((_32[min((uint)(uint(UberPostScreenEffectsBasePacked13.x)), 3)]) + -0.49803921580314636f) * 2.0f;
  float _840 = select((UberPostScreenEffectsBasePacked3.x < 9.999999747378752e-06f), max(1.0f, (_ScreenSize.y * 0.0009259259095415473f)), 1.0f);
  int _844 = min(max(int(round(UberPostScreenEffectsBasePacked3.x)), 0), 2);
  float _859 = UberPostScreenEffectsBasePacked13.y * _832;
  int _873 = min(max(int(round(UberPostScreenEffectsBasePacked8.w)), 0), 2);
  float _887 = UberPostScreenEffectsBasePacked13.z * _832;
  float4 _901 = _ScrFxDissolveTex.Sample(sampler_ScrFxDissolveTex, float2((((((_ScrFxDissolveRandomUV.x + _211) + (UberPostScreenEffectsBasePacked10.z * _88)) + UberPostScreenEffectsBasePacked9.z) + (UberPostScreenEffectsBasePacked9.x * (_26[_873]))) + _887), (((((_ScrFxDissolveRandomUV.y + _212) + (UberPostScreenEffectsBasePacked10.w * _88)) + UberPostScreenEffectsBasePacked9.w) + (UberPostScreenEffectsBasePacked9.y * (_27[_873]))) + _887)));
  _31[0] = _901.x;
  _31[1] = _901.y;
  _31[2] = _901.z;
  _31[3] = _901.w;
  float _912 = _31[min((uint)(uint(UberPostScreenEffectsBasePacked10.y)), 3)];
  float4 _913 = _ScrFxMainTex.Sample(sampler_ScrFxMainTex, float2((((((UberPostScreenEffectsBasePacked6.x * _88) + _211) + UberPostScreenEffectsBasePacked2.z) + (((_26[_844]) * _840) * UberPostScreenEffectsBasePacked2.x)) + _859), (((((UberPostScreenEffectsBasePacked6.y * _88) + _212) + UberPostScreenEffectsBasePacked2.w) + (((_27[_844]) * _840) * UberPostScreenEffectsBasePacked2.y)) + _859)));
  float _921 = select((UberPostScreenEffectsBasePacked11.z > 0.5f), _912, 1.0f);
  _30[0] = _913.x;
  _30[1] = _913.y;
  _30[2] = _913.z;
  _30[3] = _913.w;
  bool _932 = (UberPostScreenEffectsBasePacked3.y > 3.5f);
  float _935 = saturate(UberPostScreenEffectsBasePacked3.w * _921);
  float _944 = UberPostScreenEffectsBasePacked5.x - UberPostScreenEffectsBasePacked4.x;
  float _945 = UberPostScreenEffectsBasePacked5.y - UberPostScreenEffectsBasePacked4.y;
  float _946 = UberPostScreenEffectsBasePacked5.z - UberPostScreenEffectsBasePacked4.z;
  float _958 = saturate((_921 * (_30[min((uint)(uint(UberPostScreenEffectsBasePacked3.y)), 3)])) * UberPostScreenEffectsBasePacked3.w);
  float _965 = select(_932, (((_944 * _935) + UberPostScreenEffectsBasePacked4.x) * _913.x), ((_944 * _958) + UberPostScreenEffectsBasePacked4.x));
  float _966 = select(_932, (((_945 * _935) + UberPostScreenEffectsBasePacked4.y) * _913.y), ((_945 * _958) + UberPostScreenEffectsBasePacked4.y));
  float _967 = select(_932, (((_946 * _935) + UberPostScreenEffectsBasePacked4.z) * _913.z), ((_946 * _958) + UberPostScreenEffectsBasePacked4.z));
  _29[0] = _913.x;
  _29[1] = _913.y;
  _29[2] = _913.z;
  _29[3] = _913.w;
  float _976 = _29[min((uint)(uint(UberPostScreenEffectsBasePacked3.z)), 3)];
  float _977 = _976 * _912;
  float4 _993 = _ScrFxMaskTex.Sample(sampler_ScrFxMaskTex, float2(((((UberPostScreenEffectsBasePacked8.x * _88) + _211) + UberPostScreenEffectsBasePacked7.z) + (UberPostScreenEffectsBasePacked7.x * (_26[_773]))), ((((UberPostScreenEffectsBasePacked8.y * _88) + _212) + UberPostScreenEffectsBasePacked7.w) + (UberPostScreenEffectsBasePacked7.y * (_27[_773])))));
  _28[0] = _993.x;
  _28[1] = _993.y;
  _28[2] = _993.z;
  _28[3] = _993.w;
  if (UberPostScreenEffectsBasePacked8.z < 0.5f) {
    _1015 = (lerp(UberPostScreenEffectsBasePacked4.w, UberPostScreenEffectsBasePacked5.w, _976));
  } else {
    _1015 = select((UberPostScreenEffectsBasePacked13.w > 0.5f), saturate((_977 - UberPostScreenEffectsBasePacked10.x) * UberPostScreenEffectsBasePacked14.x), select((_977 < UberPostScreenEffectsBasePacked10.x), 0.0f, 1.0f));
  }
  float _1017 = ((_28[min((uint)(uint(UberPostScreenEffectsBasePacked6.w)), 3)]) * _1015) * _144;
  float _1021 = select((_1017 < UberPostScreenEffectsBasePacked14.y), 0.0f, 1.0f) * _1017;
  if (UberPostScreenEffectsBasePacked0.x < 0.5f) {
    _1097 = ((_1021 * (_965 - _702)) + _702);
    _1098 = ((_1021 * (_966 - _703)) + _703);
    _1099 = ((_1021 * (_967 - _704)) + _704);
  } else {
    if (UberPostScreenEffectsBasePacked0.x < 1.5f) {
      _1097 = ((_1021 * _965) + _702);
      _1098 = ((_1021 * _966) + _703);
      _1099 = ((_1021 * _967) + _704);
    } else {
      if (UberPostScreenEffectsBasePacked0.x < 2.5f) {
        _1097 = (((_1021 * (_965 + -1.0f)) + 1.0f) * _702);
        _1098 = (((_1021 * (_966 + -1.0f)) + 1.0f) * _703);
        _1099 = (((_1021 * (_967 + -1.0f)) + 1.0f) * _704);
      } else {
        float _1063 = _1021 * (_965 + -0.5f);
        float _1064 = _1021 * (_966 + -0.5f);
        float _1065 = _1021 * (_967 + -0.5f);
        _1097 = select((_702 < 0.5f), ((_702 * 2.0f) * (_1063 + 0.5f)), (1.0f - (((1.0f - _702) * 2.0f) * (0.5f - _1063))));
        _1098 = select((_703 < 0.5f), ((_703 * 2.0f) * (_1064 + 0.5f)), (1.0f - (((1.0f - _703) * 2.0f) * (0.5f - _1064))));
        _1099 = select((_704 < 0.5f), ((_704 * 2.0f) * (_1065 + 0.5f)), (1.0f - (((1.0f - _704) * 2.0f) * (0.5f - _1065))));
      }
    }
  }
  
  
  
  SV_Target.x = _1097;
  SV_Target.y = _1098;
  SV_Target.z = _1099;
  SV_Target.w = _625;
  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);
  return SV_Target;
}
