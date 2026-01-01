#include "../../tonemap.hlsl"

// Zhao, YiXuan Sprint 

Texture2D<float4> _CameraDepthTexture : register(t0);

Texture2D<float4> _BlitTex : register(t1);

Texture2D<float4> _Grain_Texture : register(t2);

Texture2D<float4> _InternalLut : register(t3);

Texture2D<float4> _CameraDistortionTextureOverlay : register(t4);

Texture2D<float4> _NapBloomTex : register(t5);

Texture2D<float4> _DirtTex : register(t6);

Texture2D<float4> _ScrFxMainTex : register(t7);

Texture2D<float4> _ScrFxMaskTex : register(t8);

Texture2D<float4> _ScrFxDissolveTex : register(t9);

Texture2D<float4> _ScrFxDistortionTex : register(t10);

Texture2D<float4> _ScrFxScrDistTex : register(t11);

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
    noperspective float4 SV_Position: SV_Position,
    linear float2 TEXCOORD: TEXCOORD,
    linear float4 TEXCOORD_1: TEXCOORD1) : SV_Target {
  float4 SV_Target;
  float _28[3];
  float _29[3];
  float _30[4];
  float _31[4];
  float _32[4];
  float _33[4];
  float _34[4];
  float4 _42 = _CameraDepthTexture.Load(int3((uint)(uint(_ScreenSize.x * TEXCOORD.x)), (uint)(uint(_ScreenSize.y * TEXCOORD.y)), 0));
  float _66 = (TEXCOORD.x * 2.0f) + -1.0f;
  float _68 = -0.0f - ((TEXCOORD.y * 2.0f) + -1.0f);
  float _84 = mad((_InvViewProjMatrix[2].w), _42.x, mad((_InvViewProjMatrix[1].w), _68, ((_InvViewProjMatrix[0].w) * _66))) + (_InvViewProjMatrix[3].w);
  float _85 = (mad((_InvViewProjMatrix[2].x), _42.x, mad((_InvViewProjMatrix[1].x), _68, ((_InvViewProjMatrix[0].x) * _66))) + (_InvViewProjMatrix[3].x)) / _84;
  float _86 = (mad((_InvViewProjMatrix[2].y), _42.x, mad((_InvViewProjMatrix[1].y), _68, ((_InvViewProjMatrix[0].y) * _66))) + (_InvViewProjMatrix[3].y)) / _84;
  float _87 = (mad((_InvViewProjMatrix[2].z), _42.x, mad((_InvViewProjMatrix[1].z), _68, ((_InvViewProjMatrix[0].z) * _66))) + (_InvViewProjMatrix[3].z)) / _84;
  float _88 = ddy_coarse(_85);
  float _89 = ddy_coarse(_86);
  float _90 = ddy_coarse(_87);
  float _91 = ddx_coarse(_85);
  float _92 = ddx_coarse(_86);
  float _93 = ddx_coarse(_87);
  float _96 = (_92 * _90) - (_93 * _89);
  float _99 = (_93 * _88) - (_91 * _90);
  float _102 = (_91 * _89) - (_92 * _88);
  float _104 = rsqrt(dot(float3(_96, _99, _102), float3(_96, _99, _102)));
  float _119 = saturate((_SceneWeatherSandstormParams01.z * (1.0f / ((_ZBufferParams.z * _42.x) + _ZBufferParams.w))) - _SceneWeatherSandstormParams01.y);
  float _133 = _SceneWeatherSandstormParams01.w * _86;
  float _139 = max(abs(_96 * _104), 9.999999747378752e-06f);
  float _140 = max(abs(_99 * _104), 9.999999747378752e-06f);
  float _141 = max(abs(_104 * _102), 9.999999747378752e-06f);
  float _143 = rsqrt(dot(float3(_139, _140, _141), float3(_139, _140, _141)));
  float _148 = _143 * ((_140 + _139) + _141);
  float _156 = _SceneWeatherSandstormParams02.x * (_GlobalTimeParamsA[1].x);
  float _157 = _SceneWeatherSandstormParams02.y * (_GlobalTimeParamsA[1].x);
  float _162 = (_133 * _SceneWeatherSandstormParams02.z) + _156;
  float _163 = ((_SceneWeatherSandstormParams01.w * _87) * _SceneWeatherSandstormParams02.w) + _157;
  float _164 = dot(float2(_162, _163), float2(0.3660254180431366f, 0.3660254180431366f));
  float _167 = floor(_162 + _164);
  float _168 = floor(_163 + _164);
  float _171 = dot(float2(_167, _168), float2(0.21132487058639526f, 0.21132487058639526f));
  float _172 = (_162 - _167) + _171;
  float _173 = (_163 - _168) + _171;
  bool _174 = (_172 > _173);
  float _175 = select(_174, 1.0f, 0.0f);
  float _176 = select(_174, 0.0f, 1.0f);
  float _179 = _172 + -0.5773502588272095f;
  float _180 = _173 + -0.5773502588272095f;
  float _181 = (_172 + 0.21132487058639526f) - _175;
  float _182 = (_173 + 0.21132487058639526f) - _176;
  float _189 = _167 - (floor(_167 * 0.0034602077212184668f) * 289.0f);
  float _190 = _168 - (floor(_168 * 0.0034602077212184668f) * 289.0f);
  float _191 = _190 + _176;
  float _192 = _190 + 1.0f;
  float _199 = ((_190 * 34.0f) + 1.0f) * _190;
  float _200 = ((_191 * 34.0f) + 1.0f) * _191;
  float _201 = ((_192 * 34.0f) + 1.0f) * _192;
  float _212 = (_199 - (floor(_199 * 0.0034602077212184668f) * 289.0f)) + _189;
  float _215 = ((_175 + _189) - (floor(_200 * 0.0034602077212184668f) * 289.0f)) + _200;
  float _218 = ((_189 + 1.0f) - (floor(_201 * 0.0034602077212184668f) * 289.0f)) + _201;
  float _225 = ((_212 * 34.0f) + 1.0f) * _212;
  float _226 = ((_215 * 34.0f) + 1.0f) * _215;
  float _227 = ((_218 * 34.0f) + 1.0f) * _218;
  float _246 = max((0.5f - dot(float2(_172, _173), float2(_172, _173))), 0.0f);
  float _247 = max((0.5f - dot(float2(_181, _182), float2(_181, _182))), 0.0f);
  float _248 = max((0.5f - dot(float2(_179, _180), float2(_179, _180))), 0.0f);
  float _249 = _246 * _246;
  float _250 = _247 * _247;
  float _251 = _248 * _248;
  float _261 = frac((_225 - (floor(_225 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  float _262 = frac((_226 - (floor(_226 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  float _263 = frac((_227 - (floor(_227 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  float _264 = _261 + -1.0f;
  float _265 = _262 + -1.0f;
  float _266 = _263 + -1.0f;
  float _270 = abs(_264) + -0.5f;
  float _271 = abs(_265) + -0.5f;
  float _272 = abs(_266) + -0.5f;
  float _279 = _264 - floor(_261 + -0.5f);
  float _280 = _265 - floor(_262 + -0.5f);
  float _281 = _266 - floor(_263 + -0.5f);
  float _315 = ((_SceneWeatherSandstormParams01.w * _85) * _SceneWeatherSandstormParams04.x) + _156;
  float _316 = (_133 * _SceneWeatherSandstormParams04.y) + _157;
  float _317 = dot(float2(_315, _316), float2(0.3660254180431366f, 0.3660254180431366f));
  float _320 = floor(_315 + _317);
  float _321 = floor(_316 + _317);
  float _324 = dot(float2(_320, _321), float2(0.21132487058639526f, 0.21132487058639526f));
  float _325 = (_315 - _320) + _324;
  float _326 = (_316 - _321) + _324;
  bool _327 = (_325 > _326);
  float _328 = select(_327, 1.0f, 0.0f);
  float _329 = select(_327, 0.0f, 1.0f);
  float _332 = _325 + -0.5773502588272095f;
  float _333 = _326 + -0.5773502588272095f;
  float _334 = (_325 + 0.21132487058639526f) - _328;
  float _335 = (_326 + 0.21132487058639526f) - _329;
  float _342 = _320 - (floor(_320 * 0.0034602077212184668f) * 289.0f);
  float _343 = _321 - (floor(_321 * 0.0034602077212184668f) * 289.0f);
  float _344 = _343 + _329;
  float _345 = _343 + 1.0f;
  float _352 = ((_343 * 34.0f) + 1.0f) * _343;
  float _353 = ((_344 * 34.0f) + 1.0f) * _344;
  float _354 = ((_345 * 34.0f) + 1.0f) * _345;
  float _365 = (_352 - (floor(_352 * 0.0034602077212184668f) * 289.0f)) + _342;
  float _368 = ((_328 + _342) - (floor(_353 * 0.0034602077212184668f) * 289.0f)) + _353;
  float _371 = ((_342 + 1.0f) - (floor(_354 * 0.0034602077212184668f) * 289.0f)) + _354;
  float _378 = ((_365 * 34.0f) + 1.0f) * _365;
  float _379 = ((_368 * 34.0f) + 1.0f) * _368;
  float _380 = ((_371 * 34.0f) + 1.0f) * _371;
  float _399 = max((0.5f - dot(float2(_325, _326), float2(_325, _326))), 0.0f);
  float _400 = max((0.5f - dot(float2(_334, _335), float2(_334, _335))), 0.0f);
  float _401 = max((0.5f - dot(float2(_332, _333), float2(_332, _333))), 0.0f);
  float _402 = _399 * _399;
  float _403 = _400 * _400;
  float _404 = _401 * _401;
  float _414 = frac((_378 - (floor(_378 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  float _415 = frac((_379 - (floor(_379 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  float _416 = frac((_380 - (floor(_380 * 0.0034602077212184668f) * 289.0f)) * 0.024390242993831635f) * 2.0f;
  float _417 = _414 + -1.0f;
  float _418 = _415 + -1.0f;
  float _419 = _416 + -1.0f;
  float _423 = abs(_417) + -0.5f;
  float _424 = abs(_418) + -0.5f;
  float _425 = abs(_419) + -0.5f;
  float _432 = _417 - floor(_414 + -0.5f);
  float _433 = _418 - floor(_415 + -0.5f);
  float _434 = _419 - floor(_416 + -0.5f);
  float _471 = ((((_119 * _119) * 130.0f) * exp2(log2(1.0f - saturate(abs(_86 - _SceneWeatherSandstormParams03.y) / _SceneWeatherSandstormParams03.x)) * _SceneWeatherSandstormParams03.z)) * _SceneWeatherSandstormParams01.x) * ((dot(float3(((_402 * _402) * (1.7928428649902344f - (((_432 * _432) + (_423 * _423)) * 0.8537347316741943f))), ((_403 * _403) * (1.7928428649902344f - (((_433 * _433) + (_424 * _424)) * 0.8537347316741943f))), ((_404 * _404) * (1.7928428649902344f - (((_434 * _434) + (_425 * _425)) * 0.8537347316741943f)))), float3(((_432 * _325) + (_423 * _326)), ((_433 * _334) + (_424 * _335)), ((_434 * _332) + (_425 * _333)))) * ((_143 * _141) / _148)) + (dot(float3(((_249 * _249) * (1.7928428649902344f - (((_279 * _279) + (_270 * _270)) * 0.8537347316741943f))), ((_250 * _250) * (1.7928428649902344f - (((_280 * _280) + (_271 * _271)) * 0.8537347316741943f))), ((_251 * _251) * (1.7928428649902344f - (((_281 * _281) + (_272 * _272)) * 0.8537347316741943f)))), float3(((_279 * _172) + (_270 * _173)), ((_280 * _181) + (_271 * _182)), ((_281 * _179) + (_272 * _180)))) * ((_143 * _139) / _148)));
  float4 _481 = _CameraDepthTexture.Load(int3((uint)(uint((_471 + TEXCOORD.x) * _ScreenSize.x)), (uint)(uint((_471 + TEXCOORD.y) * _ScreenSize.y)), 0));
  float _489 = saturate((_SceneWeatherSandstormParams01.z * (1.0f / ((_481.x * _ZBufferParams.z) + _ZBufferParams.w))) - _SceneWeatherSandstormParams01.y) * _471;
  float _490 = _489 + TEXCOORD.x;
  float _491 = _489 + TEXCOORD.y;
  float _499 = select((UberPostScreenEffectsBasePacked16.w > 0.5f), (_GlobalTimeParamsA[1].x), (_GlobalTimeParamsB[0].y));
  float _500 = _490 * 2.0f;
  float _501 = _491 * 2.0f;
  float _502 = _500 + -1.0f;
  float _503 = _501 + -1.0f;
  float _513 = _ScaledScreenParams.z + -1.0f;
  float _515 = (_513 * _ScaledScreenParams.y) + -1.0f;
  float _517 = (_515 * UberPostScreenEffectsBasePacked1.x) + 1.0f;
  float _518 = _517 * _503;
  float _519 = _502 * _502;
  float _530 = select((UberPostScreenEffectsBasePacked0.z < 0.5f), min((1.0f - abs(_502)), (_517 * (1.0f - abs(_503)))), (1.0f - (sqrt((_518 * _518) + _519) * 0.7070000171661377f)));
  float _540 = saturate((_530 - UberPostScreenEffectsBasePacked0.w) / (((1.0f - UberPostScreenEffectsBasePacked1.y) * UberPostScreenEffectsBasePacked0.w) - UberPostScreenEffectsBasePacked0.w));
  float _546 = select((UberPostScreenEffectsBasePacked1.y > 9.999999747378752e-05f), ((_540 * _540) * (3.0f - (_540 * 2.0f))), select((UberPostScreenEffectsBasePacked0.w < _530), 0.0f, 1.0f));
  float _552 = select((UberPostScreenEffectsBasePacked1.w > 0.5f), (1.0f - _546), _546) * UberPostScreenEffectsBasePacked1.z;
  float _555 = select((UberPostScreenEffectsBasePacked0.w > 9.999999747378752e-05f), _552, 0.0f) * _552;
  float _622;
  float _623;
  float _657;
  float _658;
  float _659;
  float _660;
  float _661;
  float _662;
  float _663;
  float _664;
  float _886;
  float _887;
  float _888;
  float _898;
  float _899;
  float _900;
  float _901;
  float _940;
  float _941;
  float _942;
  float _1029;
  float _1030;
  float _1031;
  float _1349;
  float _1431;
  float _1432;
  float _1433;
  if (UberPostScreenEffectsBasePacked14.z > 0.5f) {
    float _563 = ((_515 * UberPostScreenEffectsBasePacked0.y) + 1.0f) * _503;
    float _565 = atan(_563 / _502);
    bool _568 = (_502 < 0.0f);
    bool _569 = (_502 == 0.0f);
    bool _570 = (_563 >= 0.0f);
    bool _571 = (_563 < 0.0f);
    bool _595 = (UberPostScreenEffectsBasePacked14.w > 0.5f);
    float4 _609 = _ScrFxScrDistTex.Sample(sampler_ScrFxScrDistTex, float2(((UberPostScreenEffectsBasePacked15.z + (UberPostScreenEffectsBasePacked16.y * _499)) + (select(_595, select((_569 && _570), 2.0f, select((_569 && _571), -2.0f, (select((_568 && _571), (_565 + -3.1415927410125732f), select((_568 && _570), (_565 + 3.1415927410125732f), _565)) * 1.2732394933700562f))), _490) * UberPostScreenEffectsBasePacked15.x)), ((UberPostScreenEffectsBasePacked15.w + (UberPostScreenEffectsBasePacked16.z * _499)) + (select(_595, (sqrt((_563 * _563) + _519) * 0.6366197466850281f), (((_ScaledScreenParams.y * (_491 + -0.5f)) * _513) + 0.5f)) * UberPostScreenEffectsBasePacked15.y))));
    float _618 = (_555 * 0.10000000149011612f) * UberPostScreenEffectsBasePacked16.x;
    _622 = (_618 * ((_609.x * 2.0f) + -1.0f));
    _623 = (_618 * ((_609.y * 2.0f) + -1.0f));
  } else {
    _622 = 0.0f;
    _623 = 0.0f;
  }
  if (_DistortionRgbShift.w > 0.0f) {
    float4 _628 = _CameraDistortionTextureOverlay.Sample(sampler_CameraDistortionTextureOverlay, float2(_490, _491));
    float _634 = (_628.x * 0.10000000149011612f) + _622;
    float _635 = (_628.y * 0.10000000149011612f) + _623;
    float _638 = _DistortionRgbShift.w * _628.z;
    float _639 = _638 * _634;
    float _640 = _638 * _635;
    _657 = (_634 + TEXCOORD.x);
    _658 = (_635 + TEXCOORD.y);
    _659 = ((_639 * _DistortionRgbShift.x) + _634);
    _660 = ((_640 * _DistortionRgbShift.x) + _635);
    _661 = ((_639 * _DistortionRgbShift.y) + _634);
    _662 = ((_640 * _DistortionRgbShift.y) + _635);
    _663 = ((_639 * _DistortionRgbShift.z) + _634);
    _664 = ((_640 * _DistortionRgbShift.z) + _635);
  } else {
    _657 = TEXCOORD.x;
    _658 = TEXCOORD.y;
    _659 = 0.0f;
    _660 = 0.0f;
    _661 = 0.0f;
    _662 = 0.0f;
    _663 = 0.0f;
    _664 = 0.0f;
  }
  float _669 = (_500 - _ChromaCenter.x) + -0.5f;
  float _671 = (_501 - _ChromaCenter.y) + -0.5f;
  float _675 = dot(float2(_669, _671), float2(_669, _671)) * -0.3333333432674408f;
  float _677 = (_675 * _669) * UberPostBasePacked0.z;
  float _679 = (_675 * _671) * UberPostBasePacked0.z;
  float _681 = rsqrt(dot(float3(_677, _679, 9.999999747378752e-05f), float3(_677, _679, 9.999999747378752e-05f)));
  float _688 = UberPostBasePacked0.z * 0.9428090453147888f;
  float _693 = exp2(log2(sqrt((_677 * _677) + (_679 * _679)) / _688) * _ChromaCenter.z);
  float _695 = ((_677 * _681) * _688) * _693;
  float _697 = ((_679 * _681) * _688) * _693;
  float4 _706 = _BlitTex.Sample(s_linear_clamp_sampler, float2(((_659 + _490) + (_695 * _ChromaticColorR.w)), ((_660 + _491) + (_697 * _ChromaticColorR.w))));
  float4 _716 = _BlitTex.Sample(s_linear_clamp_sampler, float2(((_661 + _490) + (_ChromaticColorG.w * _695)), ((_662 + _491) + (_ChromaticColorG.w * _697))));
  float4 _726 = _BlitTex.Sample(s_linear_clamp_sampler, float2(((_663 + _490) + (_ChromaticColorB.w * _695)), ((_664 + _491) + (_ChromaticColorB.w * _697))));
  float _752 = ((_ChromaticColorG.x * _716.y) + (_ChromaticColorR.x * _706.x)) + (_ChromaticColorB.x * _726.z);
  float _753 = ((_ChromaticColorG.y * _716.y) + (_ChromaticColorR.y * _706.x)) + (_ChromaticColorB.y * _726.z);
  float _754 = ((_ChromaticColorG.z * _716.y) + (_ChromaticColorR.z * _706.x)) + (_ChromaticColorB.z * _726.z);
  float4 _755 = _BlitTex.Sample(s_linear_clamp_sampler, float2(_657, _658));
  bool _763 = (UberPostBasePacked3.y > 0.0f);
  if ((bool)(UberPostBasePacked3.z < 0.5f) && ((bool)((bool)(UberPostBasePacked3.x > 0.0f) || _763))) {
    float _773 = fmod(((_ScreenSize.y * _658) * _VREffectsScanlineParams.x), 2.0f);
    float _781 = (((select((_773 > 1.0f), (2.0f - _773), _773) * 2.0f) + -1.0f) * _VREffectsScanlineParams.z) + _657;
    float _784 = _ScreenSize.w * _ScreenSize.x;
    float4 _803 = _NapBloomTex.Sample(sampler_NapBloomTex, float2(_781, ((select(((frac((((_781 + abs(_VREffectsSliceParams.y)) * _784) - (_VREffectsSliceParams.y * _658)) / ((_784 * 2.0f) * _VREffectsSliceParams.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * _VREffectsSliceParams.z) + _658)));
    float _840 = ((((-0.699999988079071f - _803.x) + (exp2(log2(abs(_803.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_803.x < 0.30000001192092896f), 0.0f, 1.0f)) + _803.x) * UberPostBasePacked3.x;
    float _841 = ((((-0.699999988079071f - _803.y) + (exp2(log2(abs(_803.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_803.y < 0.30000001192092896f), 0.0f, 1.0f)) + _803.y) * UberPostBasePacked3.x;
    float _842 = ((((-0.699999988079071f - _803.z) + (exp2(log2(abs(_803.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_803.z < 0.30000001192092896f), 0.0f, 1.0f)) + _803.z) * UberPostBasePacked3.x;
    float _843 = dot(float3(_752, _753, _754), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    bool _846 = (UberPostBasePacked4.x > 0.5f);
    float _859 = select(_846, ((((_840 * _843) - _840) * _755.w) + _840), _840);
    float _860 = select(_846, ((((_841 * _843) - _841) * _755.w) + _841), _841);
    float _861 = select(_846, ((((_842 * _843) - _842) * _755.w) + _842), _842);
    do {
      if (_763) {
        float4 _872 = _DirtTex.Sample(s_linear_clamp_sampler, float2(((_DirtTexTillingOffset.x * _657) + _DirtTexTillingOffset.z), ((_DirtTexTillingOffset.y * _658) + _DirtTexTillingOffset.w)));
        _886 = (((_872.x * _840) * UberPostBasePacked3.y) + _859);
        _887 = (((_872.y * _841) * UberPostBasePacked3.y) + _860);
        _888 = (((_872.z * _842) * UberPostBasePacked3.y) + _861);
      } else {
        _886 = _859;
        _887 = _860;
        _888 = _861;
      }
      _898 = (_886 + _752);
      _899 = (_887 + _753);
      _900 = (_888 + _754);
      _901 = saturate((((_887 + _886) + _888) * 0.33329999446868896f) + _755.w);
    } while (false);
  } else {
    _898 = _752;
    _899 = _753;
    _900 = _754;
    _901 = _755.w;
  }
  [branch]
  if (_Vignette_Params2.z > 0.0f) {
    float _918 = abs(_658 - _Vignette_Params2.y) * _Vignette_Params2.z;
    float _920 = (_Vignette_Params2.z * _Vignette_Params1.w) * abs(_657 - _Vignette_Params2.x);
    float _926 = exp2(log2(saturate(1.0f - dot(float2(_920, _918), float2(_920, _918)))) * _Vignette_Params2.w);
    _940 = (((_926 * (1.0f - _Vignette_Params1.x)) + _Vignette_Params1.x) * _898);
    _941 = (((_926 * (1.0f - _Vignette_Params1.y)) + _Vignette_Params1.y) * _899);
    _942 = (((_926 * (1.0f - _Vignette_Params1.z)) + _Vignette_Params1.z) * _900);
  } else {
    _940 = _898;
    _941 = _899;
    _942 = _900;
  }
  float3 untonemapped = (float3(_940, _941, _942));
  renodx::lut::Config lut_config = renodx::lut::config::Create(
      s_linear_clamp_sampler,
      1.f,
      0.f,
      renodx::lut::config::type::ARRI_C1000_NO_CUT,
      renodx::lut::config::type::LINEAR,
      _Lut_Params.xyz);

  float3 tonemapped = renodx::lut::Sample(_InternalLut, lut_config, untonemapped);
  float _991 = tonemapped.x;
  float _992 = tonemapped.y;
  float _993 = tonemapped.z;
  /*
  float _965 = saturate((log2((_942 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z;
  float _966 = floor(_965);
  float _972 = ((saturate((log2((_941 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z) + 0.5f) * _Lut_Params.y;
  float _974 = (_966 * _Lut_Params.y) + (((saturate((log2((_940 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * _Lut_Params.z) + 0.5f) * _Lut_Params.x);
  float _975 = _965 - _966;
  float4 _977 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2((_974 + _Lut_Params.y), _972), 0.0f);
  float4 _981 = _InternalLut.SampleLevel(s_linear_clamp_sampler, float2(_974, _972), 0.0f);
  float _991 = ((_977.x - _981.x) * _975) + _981.x;
  float _992 = ((_977.y - _981.y) * _975) + _981.y;
  float _993 = ((_977.z - _981.z) * _975) + _981.z;
  */
  if (UberPostBasePacked1.x > 0.0f) {
    float4 _1008 = _Grain_Texture.Sample(s_linear_repeat_sampler, float2(((_Grain_TilingParams.x * _490) + _Grain_TilingParams.z), ((_Grain_TilingParams.y * _491) + _Grain_TilingParams.w)));
    float _1011 = (_1008.w + -0.5f) * 2.0f;
    float _1015 = 1.0f - (sqrt(dot(float3(_991, _992, _993), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBasePacked1.y);
    _1029 = ((((UberPostBasePacked1.x * _991) * _1011) * _1015) + _991);
    _1030 = ((((UberPostBasePacked1.x * _992) * _1011) * _1015) + _992);
    _1031 = ((((UberPostBasePacked1.x * _993) * _1011) * _1015) + _993);
  } else {
    _1029 = _991;
    _1030 = _992;
    _1031 = _993;
  }
  float _1042 = (((((_ScaledScreenParams.z + -1.0f) * _ScaledScreenParams.y) + -1.0f) * UberPostScreenEffectsBasePacked0.y) + 1.0f) * _503;
  float _1044 = atan(_1042 / _502);
  bool _1047 = (_502 < 0.0f);
  bool _1048 = (_502 == 0.0f);
  bool _1049 = (_1042 >= 0.0f);
  bool _1050 = (_1042 < 0.0f);
  _28[0] = (((_ScreenSize.x * (_490 + -0.5f)) * _ScreenSize.w) + 0.5f);
  _29[0] = _491;
  _28[1] = select((_1048 && _1049), 2.0f, select((_1048 && _1050), -2.0f, (select((_1047 && _1050), (_1044 + -3.1415927410125732f), select((_1047 && _1049), (_1044 + 3.1415927410125732f), _1044)) * 1.2732394933700562f)));
  _29[1] = (sqrt((_1042 * _1042) + (_502 * _502)) * 0.5f);
  _28[2] = _490;
  _29[2] = _491;
  int _1107 = min(max(int(round(UberPostScreenEffectsBasePacked6.z)), 0), 2);
  int _1130 = min(max(int(round(UberPostScreenEffectsBasePacked11.w)), 0), 2);
  float4 _1153 = _ScrFxDistortionTex.Sample(sampler_ScrFxDistortionTex, float2(((((_ScrFxDistortionRandomUV.x + _622) + (UberPostScreenEffectsBasePacked11.x * _499)) + UberPostScreenEffectsBasePacked12.z) + (UberPostScreenEffectsBasePacked12.x * (_28[_1130]))), ((((_ScrFxDistortionRandomUV.y + _623) + (UberPostScreenEffectsBasePacked11.y * _499)) + UberPostScreenEffectsBasePacked12.w) + (UberPostScreenEffectsBasePacked12.y * (_29[_1130])))));
  _34[0] = _1153.x;
  _34[1] = _1153.y;
  _34[2] = _1153.z;
  _34[3] = _1153.w;
  float _1166 = ((_34[min((uint)(uint(UberPostScreenEffectsBasePacked13.x)), 3)]) + -0.49803921580314636f) * 2.0f;
  float _1174 = select((UberPostScreenEffectsBasePacked3.x < 9.999999747378752e-06f), max(1.0f, (_ScreenSize.y * 0.0009259259095415473f)), 1.0f);
  int _1178 = min(max(int(round(UberPostScreenEffectsBasePacked3.x)), 0), 2);
  float _1193 = UberPostScreenEffectsBasePacked13.y * _1166;
  int _1207 = min(max(int(round(UberPostScreenEffectsBasePacked8.w)), 0), 2);
  float _1221 = UberPostScreenEffectsBasePacked13.z * _1166;
  float4 _1235 = _ScrFxDissolveTex.Sample(sampler_ScrFxDissolveTex, float2((((((_ScrFxDissolveRandomUV.x + _622) + (UberPostScreenEffectsBasePacked10.z * _499)) + UberPostScreenEffectsBasePacked9.z) + (UberPostScreenEffectsBasePacked9.x * (_28[_1207]))) + _1221), (((((_ScrFxDissolveRandomUV.y + _623) + (UberPostScreenEffectsBasePacked10.w * _499)) + UberPostScreenEffectsBasePacked9.w) + (UberPostScreenEffectsBasePacked9.y * (_29[_1207]))) + _1221)));
  _33[0] = _1235.x;
  _33[1] = _1235.y;
  _33[2] = _1235.z;
  _33[3] = _1235.w;
  float _1246 = _33[min((uint)(uint(UberPostScreenEffectsBasePacked10.y)), 3)];
  float4 _1247 = _ScrFxMainTex.Sample(sampler_ScrFxMainTex, float2((((((UberPostScreenEffectsBasePacked6.x * _499) + _622) + UberPostScreenEffectsBasePacked2.z) + (((_28[_1178]) * _1174) * UberPostScreenEffectsBasePacked2.x)) + _1193), (((((UberPostScreenEffectsBasePacked6.y * _499) + _623) + UberPostScreenEffectsBasePacked2.w) + (((_29[_1178]) * _1174) * UberPostScreenEffectsBasePacked2.y)) + _1193)));
  float _1255 = select((UberPostScreenEffectsBasePacked11.z > 0.5f), _1246, 1.0f);
  _32[0] = _1247.x;
  _32[1] = _1247.y;
  _32[2] = _1247.z;
  _32[3] = _1247.w;
  bool _1266 = (UberPostScreenEffectsBasePacked3.y > 3.5f);
  float _1269 = saturate(UberPostScreenEffectsBasePacked3.w * _1255);
  float _1278 = UberPostScreenEffectsBasePacked5.x - UberPostScreenEffectsBasePacked4.x;
  float _1279 = UberPostScreenEffectsBasePacked5.y - UberPostScreenEffectsBasePacked4.y;
  float _1280 = UberPostScreenEffectsBasePacked5.z - UberPostScreenEffectsBasePacked4.z;
  float _1292 = saturate((_1255 * (_32[min((uint)(uint(UberPostScreenEffectsBasePacked3.y)), 3)])) * UberPostScreenEffectsBasePacked3.w);
  float _1299 = select(_1266, (((_1278 * _1269) + UberPostScreenEffectsBasePacked4.x) * _1247.x), ((_1278 * _1292) + UberPostScreenEffectsBasePacked4.x));
  float _1300 = select(_1266, (((_1279 * _1269) + UberPostScreenEffectsBasePacked4.y) * _1247.y), ((_1279 * _1292) + UberPostScreenEffectsBasePacked4.y));
  float _1301 = select(_1266, (((_1280 * _1269) + UberPostScreenEffectsBasePacked4.z) * _1247.z), ((_1280 * _1292) + UberPostScreenEffectsBasePacked4.z));
  _31[0] = _1247.x;
  _31[1] = _1247.y;
  _31[2] = _1247.z;
  _31[3] = _1247.w;
  float _1310 = _31[min((uint)(uint(UberPostScreenEffectsBasePacked3.z)), 3)];
  float _1311 = _1310 * _1246;
  float4 _1327 = _ScrFxMaskTex.Sample(sampler_ScrFxMaskTex, float2(((((UberPostScreenEffectsBasePacked8.x * _499) + _622) + UberPostScreenEffectsBasePacked7.z) + (UberPostScreenEffectsBasePacked7.x * (_28[_1107]))), ((((UberPostScreenEffectsBasePacked8.y * _499) + _623) + UberPostScreenEffectsBasePacked7.w) + (UberPostScreenEffectsBasePacked7.y * (_29[_1107])))));
  _30[0] = _1327.x;
  _30[1] = _1327.y;
  _30[2] = _1327.z;
  _30[3] = _1327.w;
  if (UberPostScreenEffectsBasePacked8.z < 0.5f) {
    _1349 = (lerp(UberPostScreenEffectsBasePacked4.w, UberPostScreenEffectsBasePacked5.w, _1310));
  } else {
    _1349 = select((UberPostScreenEffectsBasePacked13.w > 0.5f), saturate((_1311 - UberPostScreenEffectsBasePacked10.x) * UberPostScreenEffectsBasePacked14.x), select((_1311 < UberPostScreenEffectsBasePacked10.x), 0.0f, 1.0f));
  }
  float _1351 = ((_30[min((uint)(uint(UberPostScreenEffectsBasePacked6.w)), 3)]) * _1349) * _555;
  float _1355 = select((_1351 < UberPostScreenEffectsBasePacked14.y), 0.0f, 1.0f) * _1351;
  if (UberPostScreenEffectsBasePacked0.x < 0.5f) {
    _1431 = ((_1355 * (_1299 - _1029)) + _1029);
    _1432 = ((_1355 * (_1300 - _1030)) + _1030);
    _1433 = ((_1355 * (_1301 - _1031)) + _1031);
  } else {
    if (UberPostScreenEffectsBasePacked0.x < 1.5f) {
      _1431 = ((_1355 * _1299) + _1029);
      _1432 = ((_1355 * _1300) + _1030);
      _1433 = ((_1355 * _1301) + _1031);
    } else {
      if (UberPostScreenEffectsBasePacked0.x < 2.5f) {
        _1431 = (((_1355 * (_1299 + -1.0f)) + 1.0f) * _1029);
        _1432 = (((_1355 * (_1300 + -1.0f)) + 1.0f) * _1030);
        _1433 = (((_1355 * (_1301 + -1.0f)) + 1.0f) * _1031);
      } else {
        float _1397 = _1355 * (_1299 + -0.5f);
        float _1398 = _1355 * (_1300 + -0.5f);
        float _1399 = _1355 * (_1301 + -0.5f);
        _1431 = select((_1029 < 0.5f), ((_1029 * 2.0f) * (_1397 + 0.5f)), (1.0f - (((1.0f - _1029) * 2.0f) * (0.5f - _1397))));
        _1432 = select((_1030 < 0.5f), ((_1030 * 2.0f) * (_1398 + 0.5f)), (1.0f - (((1.0f - _1030) * 2.0f) * (0.5f - _1398))));
        _1433 = select((_1031 < 0.5f), ((_1031 * 2.0f) * (_1399 + 0.5f)), (1.0f - (((1.0f - _1031) * 2.0f) * (0.5f - _1399))));
      }
    }
  }
  SV_Target.x = (_1431);
  SV_Target.y = (_1432);
  SV_Target.z = (_1433);
  SV_Target.w = _901;
  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);
  return SV_Target;
}
