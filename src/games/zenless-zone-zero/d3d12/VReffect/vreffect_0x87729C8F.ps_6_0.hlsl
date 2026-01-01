#include "../../tonemap.hlsl"

// VR Effects - ye shunguang

Texture2D<float4> _CameraDepthTexture : register(t0);

Texture2D<float4> _VR_SourceImage : register(t1);

Texture2D<float4> _VRTextureSheetTex : register(t2);

Texture2D<float4> _CameraDistortionTextureOverlay : register(t3);

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
};

cbuffer VREffectsCBuffer : register(b1) {
  float4 _HSVParams : packoffset(c000.x);
  float4 _ContrastParams : packoffset(c001.x);
  float4 _ColorTintNear : packoffset(c002.x);
  float4 _ColorTintFar : packoffset(c003.x);
  float4 _ScanlineParams : packoffset(c004.x);
  float4 _SliceParams : packoffset(c005.x);
  float4 _SliceColorA : packoffset(c006.x);
  float4 _SliceColorB : packoffset(c007.x);
  float4 _SliceBlendModes : packoffset(c008.x);
  float4 _ScanStart : packoffset(c009.x);
  float4 _ScanEnd : packoffset(c010.x);
  float4 _ScanStartInvSoftness : packoffset(c011.x);
  float4 _ScanEndInvSoftness : packoffset(c012.x);
  float4 _ScanBlendModes : packoffset(c013.x);
  float4 _ScanColor0 : packoffset(c014.x);
  float4 _ScanColor0End : packoffset(c015.x);
  float4 _ScanColor1 : packoffset(c016.x);
  float4 _ScanColor1End : packoffset(c017.x);
  float4 _ScanColor2 : packoffset(c018.x);
  float4 _ScanColor2End : packoffset(c019.x);
  float4 _ScanColor3 : packoffset(c020.x);
  float4 _ScanColor3End : packoffset(c021.x);
  float4 _RGBSeparateParams0 : packoffset(c022.x);
  float4 _RGBSeparateParams1 : packoffset(c023.x);
  float4 _ColorR : packoffset(c024.x);
  float4 _ColorG : packoffset(c025.x);
  float4 _ColorB : packoffset(c026.x);
  float4 _GridParams : packoffset(c027.x);
  float4 _GridColor : packoffset(c028.x);
  float4 _TextureSheetParams : packoffset(c029.x);
  float4 _TextureSheetColor : packoffset(c030.x);
  float4 _CustomScanCenter : packoffset(c031.x);
  float4 _CustomScanParams : packoffset(c032.x);
  float4 _LocalInvViewProjMatrix[4] : packoffset(c033.x);
  float4 _Distortion_Params1 : packoffset(c037.x);
  float4 _Distortion_Params2 : packoffset(c038.x);
  float4 _DistortionRgbShift : packoffset(c039.x);
  float4 _ScanMaskTexChannel : packoffset(c040.x);
  float4 _ScanMaskTexTilingOffset : packoffset(c041.x);
  float4 _ScanMaskIntensities : packoffset(c042.x);
  float4 _ScanMaskUVSpeedAndYFade : packoffset(c043.x);
  float4 _DistanceDistortionColorizationParams0 : packoffset(c044.x);
  float4 _DistanceDistortionColorizationParams1 : packoffset(c045.x);
  float4 _DistanceDistortionColorizationParams2 : packoffset(c046.x);
  float4 _DistanceDistortionColorizationParams3 : packoffset(c047.x);
  float4 _DistanceDistortionColorizationParams4 : packoffset(c048.x);
};

SamplerState s_point_clamp_sampler : register(s0);

SamplerState s_linear_repeat_sampler : register(s1);

SamplerState sampler_CameraDistortionTextureOverlay : register(s2);

float4 main(
    noperspective float4 SV_Position: SV_Position,
    linear float2 TEXCOORD: TEXCOORD,
    linear float4 TEXCOORD_1: TEXCOORD1) : SV_Target {
  float4 SV_Target;
  float _18 = fmod(((_ScreenSize.y * TEXCOORD.y) * _ScanlineParams.x), 2.0f);
  float _21 = select((_18 > 1.0f), (2.0f - _18), _18);
  float _26 = (((_21 * 2.0f) + -1.0f) * _ScanlineParams.z) + TEXCOORD.x;
  float _29 = _ScreenSize.w * _ScreenSize.x;
  bool _44 = ((frac((((_26 + abs(_SliceParams.y)) * _29) - (_SliceParams.y * TEXCOORD.y)) / ((_29 * 2.0f) * _SliceParams.x)) * 2.0f) <= 1.0f);
  float _47 = (select(_44, 0.9999899864196777f, -1.0f) * _SliceParams.z) + TEXCOORD.y;
  float _52 = select(_44, select((_47 < 1.0f), 0.0f, 1.0f), select((_47 > 0.0f), 0.0f, 1.0f));
  float4 _53 = renodx::draw::InvertIntermediatePass(_VR_SourceImage.Sample(s_linear_repeat_sampler, float2(_26, _47)));
  float4 untonemapped = _53;
  _53.xyz = renodx::tonemap::dice::BT709(_53.xyz, 1.0f, 0.5f);
  float _73;
  float _74;
  float _567;
  float _568;
  float _569;
  float _861;
  float _862;
  float _863;
  float _1293;
  float _1294;
  float _1295;
  float _1580;
  float _1581;
  float _1582;
  float _1867;
  float _1868;
  float _1869;
  float _2154;
  float _2155;
  float _2156;
  float _2278;
  float _2279;
  float _2280;
  if (_DistortionRgbShift.w > 0.0f) {
    float4 _65 = _CameraDistortionTextureOverlay.Sample(sampler_CameraDistortionTextureOverlay, float2(_26, _47));
    _73 = ((_65.x * 0.10000000149011612f) + _26);
    _74 = ((_65.y * 0.10000000149011612f) + _47);
  } else {
    _73 = _26;
    _74 = _47;
  }
  float _75 = _73 - _TaaJitterStrength.z;
  float _76 = _74 - _TaaJitterStrength.w;
  float4 _77 = _CameraDepthTexture.SampleLevel(s_point_clamp_sampler, float2(_75, _76), 0.0f);
  float _101 = (_75 * 2.0f) + -1.0f;
  float _103 = -0.0f - ((_76 * 2.0f) + -1.0f);
  float _119 = mad((_InvViewProjMatrix[2].w), _77.x, mad((_InvViewProjMatrix[1].w), _103, ((_InvViewProjMatrix[0].w) * _101))) + (_InvViewProjMatrix[3].w);
  float _139 = (((mad((_InvViewProjMatrix[2].x), _77.x, mad((_InvViewProjMatrix[1].x), _103, ((_InvViewProjMatrix[0].x) * _101))) + (_InvViewProjMatrix[3].x)) / _119) - _AvatarPosition0.x) - ((_CustomScanCenter.x - _AvatarPosition0.x) * _CustomScanCenter.w);
  float _141 = (((mad((_InvViewProjMatrix[2].y), _77.x, mad((_InvViewProjMatrix[1].y), _103, ((_InvViewProjMatrix[0].y) * _101))) + (_InvViewProjMatrix[3].y)) / _119) - _AvatarPosition0.y) - ((_CustomScanCenter.y - _AvatarPosition0.y) * _CustomScanCenter.w);
  float _143 = (((mad((_InvViewProjMatrix[2].z), _77.x, mad((_InvViewProjMatrix[1].z), _103, ((_InvViewProjMatrix[0].z) * _101))) + (_InvViewProjMatrix[3].z)) / _119) - _AvatarPosition0.z) - ((_CustomScanCenter.z - _AvatarPosition0.z) * _CustomScanCenter.w);
  float _149 = sqrt(((_139 * _139) + (_141 * _141)) + (_143 * _143));
  float _155 = saturate((_149 - _ContrastParams.z) * _ContrastParams.w);
  float _177 = ((_ColorTintFar.w - _ColorTintNear.w) * _155) + _ColorTintNear.w;
  float _179 = select((_53.y < _53.z), 0.0f, 1.0f);
  float _184 = (_179 * (_53.y - _53.z)) + _53.z;
  float _185 = (_179 * (_53.z - _53.y)) + _53.y;
  float _187 = 0.6666666865348816f - _179;
  float _189 = select((_53.x < _184), 0.0f, 1.0f);
  float _196 = (_189 * (_53.x - _184)) + _184;
  float _198 = (_189 * (_184 - _53.x)) + _53.x;
  float _200 = _196 - min(_198, _185);
  float _213 = _HSVParams.x + abs(((_189 * ((_179 + -1.0f) - _187)) + _187) + ((_198 - _185) / ((_200 * 6.0f) + 9.999999747378752e-05f)));
  float _218 = saturate((_HSVParams.y + (_200 / (_196 + 9.999999747378752e-05f))) * (1.0f - _177));
  float _219 = saturate(_HSVParams.z + _196);
  float _261 = ((((((saturate(abs((frac(_213 + 1.0f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _218) + 1.0f) * _219) - _ContrastParams.y) * _ContrastParams.x) + _ContrastParams.y;
  float _262 = ((((((saturate(abs((frac(_213 + 0.6666666865348816f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _218) + 1.0f) * _219) - _ContrastParams.y) * _ContrastParams.x) + _ContrastParams.y;
  float _263 = ((((((saturate(abs((frac(_213 + 0.3333333432674408f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _218) + 1.0f) * _219) - _ContrastParams.y) * _ContrastParams.x) + _ContrastParams.y;
  float _273 = (((_261 * (lerp(_ColorTintNear.x, _ColorTintFar.x, _155))) - _261) * _177) + _261;
  float _274 = (((_262 * (lerp(_ColorTintNear.y, _ColorTintFar.y, _155))) - _262) * _177) + _262;
  float _275 = (((_263 * (lerp(_ColorTintNear.z, _ColorTintFar.z, _155))) - _263) * _177) + _263;
  float _283 = _SliceColorA.w * _52;
  [branch]
  if (_SliceBlendModes.x < 0.5f) {
    _567 = (lerp(_273, _SliceColorA.x, _283));
    _568 = (lerp(_274, _SliceColorA.y, _283));
    _569 = (lerp(_275, _SliceColorA.z, _283));
  } else {
    if (_SliceBlendModes.x < 1.5f) {
      _567 = (_273 + (_283 * _SliceColorA.x));
      _568 = (_274 + (_283 * _SliceColorA.y));
      _569 = (_275 + (_283 * _SliceColorA.z));
    } else {
      if (_SliceBlendModes.x < 2.5f) {
        float _331 = select((_273 > 1.0f), _273, saturate((exp2(log2(abs(_273)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _332 = select((_274 > 1.0f), _274, saturate((exp2(log2(abs(_274)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _333 = select((_275 > 1.0f), _275, saturate((exp2(log2(abs(_275)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _364 = (select((_SliceColorA.x > 1.0f), _SliceColorA.x, saturate((exp2(log2(abs(_SliceColorA.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _283;
        float _365 = (select((_SliceColorA.y > 1.0f), _SliceColorA.y, saturate((exp2(log2(abs(_SliceColorA.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _283;
        float _366 = (select((_SliceColorA.z > 1.0f), _SliceColorA.z, saturate((exp2(log2(abs(_SliceColorA.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _283;
        float _370 = (_364 + 0.5f) * 2.0f;
        float _371 = (_365 + 0.5f) * 2.0f;
        float _372 = (_366 + 0.5f) * 2.0f;
        float _380 = (lerp(_370, 1.0f, _331)) * _331;
        float _382 = (lerp(_371, 1.0f, _332)) * _332;
        float _384 = (lerp(_372, 1.0f, _333)) * _333;
        float _418 = (((((_370 + -1.0f) * sqrt(_331)) + ((_331 * 2.0f) * (0.5f - _364))) - _380) * select((_331 < 0.5f), 0.0f, 1.0f)) + _380;
        float _419 = (((((_371 + -1.0f) * sqrt(_332)) + ((_332 * 2.0f) * (0.5f - _365))) - _382) * select((_332 < 0.5f), 0.0f, 1.0f)) + _382;
        float _420 = (((((_372 + -1.0f) * sqrt(_333)) + ((_333 * 2.0f) * (0.5f - _366))) - _384) * select((_333 < 0.5f), 0.0f, 1.0f)) + _384;
        _567 = (((((_418 * 0.30530601739883423f) + 0.682171106338501f) * _418) + 0.012522878125309944f) * _418);
        _568 = (((((_419 * 0.30530601739883423f) + 0.682171106338501f) * _419) + 0.012522878125309944f) * _419);
        _569 = (((((_420 * 0.30530601739883423f) + 0.682171106338501f) * _420) + 0.012522878125309944f) * _420);
      } else {
        if (_SliceBlendModes.x < 3.5f) {
          float _463 = select((_273 > 1.0f), _273, saturate((exp2(log2(abs(_273)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _464 = select((_274 > 1.0f), _274, saturate((exp2(log2(abs(_274)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _465 = select((_275 > 1.0f), _275, saturate((exp2(log2(abs(_275)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _496 = (select((_SliceColorA.x > 1.0f), _SliceColorA.x, saturate((exp2(log2(abs(_SliceColorA.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _283;
          float _497 = (select((_SliceColorA.y > 1.0f), _SliceColorA.y, saturate((exp2(log2(abs(_SliceColorA.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _283;
          float _498 = (select((_SliceColorA.z > 1.0f), _SliceColorA.z, saturate((exp2(log2(abs(_SliceColorA.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _283;
          float _505 = (_463 * 2.0f) * (_496 + 0.5f);
          float _506 = (_464 * 2.0f) * (_497 + 0.5f);
          float _507 = (_465 * 2.0f) * (_498 + 0.5f);
          float _535 = (((1.0f - (((1.0f - _463) * 2.0f) * (0.5f - _496))) - _505) * select((_463 < 0.5f), 0.0f, 1.0f)) + _505;
          float _536 = (((1.0f - (((1.0f - _464) * 2.0f) * (0.5f - _497))) - _506) * select((_464 < 0.5f), 0.0f, 1.0f)) + _506;
          float _537 = (((1.0f - (((1.0f - _465) * 2.0f) * (0.5f - _498))) - _507) * select((_465 < 0.5f), 0.0f, 1.0f)) + _507;
          _567 = (((((_535 * 0.30530601739883423f) + 0.682171106338501f) * _535) + 0.012522878125309944f) * _535);
          _568 = (((((_536 * 0.30530601739883423f) + 0.682171106338501f) * _536) + 0.012522878125309944f) * _536);
          _569 = (((((_537 * 0.30530601739883423f) + 0.682171106338501f) * _537) + 0.012522878125309944f) * _537);
        } else {
          _567 = (_273 * ((_283 * (_SliceColorA.x + -1.0f)) + 1.0f));
          _568 = (_274 * ((_283 * (_SliceColorA.y + -1.0f)) + 1.0f));
          _569 = (_275 * ((_283 * (_SliceColorA.z + -1.0f)) + 1.0f));
        }
      }
    }
  }
  float _577 = _SliceColorB.w * (1.0f - _52);
  [branch]
  if (_SliceBlendModes.y < 0.5f) {
    _861 = ((_577 * (_SliceColorB.x - _567)) + _567);
    _862 = ((_577 * (_SliceColorB.y - _568)) + _568);
    _863 = ((_577 * (_SliceColorB.z - _569)) + _569);
  } else {
    if (_SliceBlendModes.y < 1.5f) {
      _861 = ((_577 * _SliceColorB.x) + _567);
      _862 = ((_577 * _SliceColorB.y) + _568);
      _863 = ((_577 * _SliceColorB.z) + _569);
    } else {
      if (_SliceBlendModes.y < 2.5f) {
        float _625 = select((_567 > 1.0f), _567, saturate((exp2(log2(abs(_567)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _626 = select((_568 > 1.0f), _568, saturate((exp2(log2(abs(_568)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _627 = select((_569 > 1.0f), _569, saturate((exp2(log2(abs(_569)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _658 = (select((_SliceColorB.x > 1.0f), _SliceColorB.x, saturate((exp2(log2(abs(_SliceColorB.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _577;
        float _659 = (select((_SliceColorB.y > 1.0f), _SliceColorB.y, saturate((exp2(log2(abs(_SliceColorB.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _577;
        float _660 = (select((_SliceColorB.z > 1.0f), _SliceColorB.z, saturate((exp2(log2(abs(_SliceColorB.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _577;
        float _664 = (_658 + 0.5f) * 2.0f;
        float _665 = (_659 + 0.5f) * 2.0f;
        float _666 = (_660 + 0.5f) * 2.0f;
        float _674 = (lerp(_664, 1.0f, _625)) * _625;
        float _676 = (lerp(_665, 1.0f, _626)) * _626;
        float _678 = (lerp(_666, 1.0f, _627)) * _627;
        float _712 = (((((_664 + -1.0f) * sqrt(_625)) + ((_625 * 2.0f) * (0.5f - _658))) - _674) * select((_625 < 0.5f), 0.0f, 1.0f)) + _674;
        float _713 = (((((_665 + -1.0f) * sqrt(_626)) + ((_626 * 2.0f) * (0.5f - _659))) - _676) * select((_626 < 0.5f), 0.0f, 1.0f)) + _676;
        float _714 = (((((_666 + -1.0f) * sqrt(_627)) + ((_627 * 2.0f) * (0.5f - _660))) - _678) * select((_627 < 0.5f), 0.0f, 1.0f)) + _678;
        _861 = (((((_712 * 0.30530601739883423f) + 0.682171106338501f) * _712) + 0.012522878125309944f) * _712);
        _862 = (((((_713 * 0.30530601739883423f) + 0.682171106338501f) * _713) + 0.012522878125309944f) * _713);
        _863 = (((((_714 * 0.30530601739883423f) + 0.682171106338501f) * _714) + 0.012522878125309944f) * _714);
      } else {
        if (_SliceBlendModes.y < 3.5f) {
          float _757 = select((_567 > 1.0f), _567, saturate((exp2(log2(abs(_567)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _758 = select((_568 > 1.0f), _568, saturate((exp2(log2(abs(_568)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _759 = select((_569 > 1.0f), _569, saturate((exp2(log2(abs(_569)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _790 = (select((_SliceColorB.x > 1.0f), _SliceColorB.x, saturate((exp2(log2(abs(_SliceColorB.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _577;
          float _791 = (select((_SliceColorB.y > 1.0f), _SliceColorB.y, saturate((exp2(log2(abs(_SliceColorB.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _577;
          float _792 = (select((_SliceColorB.z > 1.0f), _SliceColorB.z, saturate((exp2(log2(abs(_SliceColorB.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _577;
          float _799 = (_757 * 2.0f) * (_790 + 0.5f);
          float _800 = (_758 * 2.0f) * (_791 + 0.5f);
          float _801 = (_759 * 2.0f) * (_792 + 0.5f);
          float _829 = (((1.0f - (((1.0f - _757) * 2.0f) * (0.5f - _790))) - _799) * select((_757 < 0.5f), 0.0f, 1.0f)) + _799;
          float _830 = (((1.0f - (((1.0f - _758) * 2.0f) * (0.5f - _791))) - _800) * select((_758 < 0.5f), 0.0f, 1.0f)) + _800;
          float _831 = (((1.0f - (((1.0f - _759) * 2.0f) * (0.5f - _792))) - _801) * select((_759 < 0.5f), 0.0f, 1.0f)) + _801;
          _861 = (((((_829 * 0.30530601739883423f) + 0.682171106338501f) * _829) + 0.012522878125309944f) * _829);
          _862 = (((((_830 * 0.30530601739883423f) + 0.682171106338501f) * _830) + 0.012522878125309944f) * _830);
          _863 = (((((_831 * 0.30530601739883423f) + 0.682171106338501f) * _831) + 0.012522878125309944f) * _831);
        } else {
          _861 = (((_577 * (_SliceColorB.x + -1.0f)) + 1.0f) * _567);
          _862 = (((_577 * (_SliceColorB.y + -1.0f)) + 1.0f) * _568);
          _863 = (((_577 * (_SliceColorB.z + -1.0f)) + 1.0f) * _569);
        }
      }
    }
  }
  float _891 = _149 - _ScanStart.x;
  float _892 = _149 - _ScanStart.y;
  float _893 = _149 - _ScanStart.z;
  float _894 = _149 - _ScanStart.w;
  float _926 = _ScanColor0End.w * saturate(_891 / (_ScanEnd.x - _ScanStart.x));
  float _940 = ((_ScanColor0End.x - _ScanColor0.x) * _926) + _ScanColor0.x;
  float _941 = ((_ScanColor0End.y - _ScanColor0.y) * _926) + _ScanColor0.y;
  float _942 = ((_ScanColor0End.z - _ScanColor0.z) * _926) + _ScanColor0.z;
  float _944 = _ScanColor0.w * min(saturate(_891 * _ScanStartInvSoftness.x), saturate((_ScanEnd.x - _149) * _ScanEndInvSoftness.x));
  float _947 = _ScanColor1End.w * saturate(_892 / (_ScanEnd.y - _ScanStart.y));
  float _961 = ((_ScanColor1End.x - _ScanColor1.x) * _947) + _ScanColor1.x;
  float _962 = ((_ScanColor1End.y - _ScanColor1.y) * _947) + _ScanColor1.y;
  float _963 = ((_ScanColor1End.z - _ScanColor1.z) * _947) + _ScanColor1.z;
  float _965 = _ScanColor1.w * min(saturate(_892 * _ScanStartInvSoftness.y), saturate((_ScanEnd.y - _149) * _ScanEndInvSoftness.y));
  float _968 = _ScanColor2End.w * saturate(_893 / (_ScanEnd.z - _ScanStart.z));
  float _982 = ((_ScanColor2End.x - _ScanColor2.x) * _968) + _ScanColor2.x;
  float _983 = ((_ScanColor2End.y - _ScanColor2.y) * _968) + _ScanColor2.y;
  float _984 = ((_ScanColor2End.z - _ScanColor2.z) * _968) + _ScanColor2.z;
  float _986 = _ScanColor2.w * min(saturate(_893 * _ScanStartInvSoftness.z), saturate((_ScanEnd.z - _149) * _ScanEndInvSoftness.z));
  float _989 = _ScanColor3End.w * saturate(_894 / (_ScanEnd.w - _ScanStart.w));
  float _1003 = ((_ScanColor3End.x - _ScanColor3.x) * _989) + _ScanColor3.x;
  float _1004 = ((_ScanColor3End.y - _ScanColor3.y) * _989) + _ScanColor3.y;
  float _1005 = ((_ScanColor3End.z - _ScanColor3.z) * _989) + _ScanColor3.z;
  float _1007 = _ScanColor3.w * min(saturate(_894 * _ScanStartInvSoftness.w), saturate((_ScanEnd.w - _149) * _ScanEndInvSoftness.w));
  [branch]
  if (_ScanBlendModes.x < 0.5f) {
    _1293 = (lerp(_861, _940, _944));
    _1294 = (lerp(_862, _941, _944));
    _1295 = (lerp(_863, _942, _944));
  } else {
    if (_ScanBlendModes.x < 1.5f) {
      _1293 = ((_940 * _944) + _861);
      _1294 = ((_941 * _944) + _862);
      _1295 = ((_942 * _944) + _863);
    } else {
      if (_ScanBlendModes.x < 2.5f) {
        float _1057 = select((_861 > 1.0f), _861, saturate((exp2(log2(abs(_861)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1058 = select((_862 > 1.0f), _862, saturate((exp2(log2(abs(_862)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1059 = select((_863 > 1.0f), _863, saturate((exp2(log2(abs(_863)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1090 = (select((_940 > 1.0f), _940, saturate((exp2(log2(abs(_940)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _944;
        float _1091 = (select((_941 > 1.0f), _941, saturate((exp2(log2(abs(_941)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _944;
        float _1092 = (select((_942 > 1.0f), _942, saturate((exp2(log2(abs(_942)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _944;
        float _1096 = (_1090 + 0.5f) * 2.0f;
        float _1097 = (_1091 + 0.5f) * 2.0f;
        float _1098 = (_1092 + 0.5f) * 2.0f;
        float _1106 = (lerp(_1096, 1.0f, _1057)) * _1057;
        float _1108 = (lerp(_1097, 1.0f, _1058)) * _1058;
        float _1110 = (lerp(_1098, 1.0f, _1059)) * _1059;
        float _1144 = (((((_1096 + -1.0f) * sqrt(_1057)) + ((_1057 * 2.0f) * (0.5f - _1090))) - _1106) * select((_1057 < 0.5f), 0.0f, 1.0f)) + _1106;
        float _1145 = (((((_1097 + -1.0f) * sqrt(_1058)) + ((_1058 * 2.0f) * (0.5f - _1091))) - _1108) * select((_1058 < 0.5f), 0.0f, 1.0f)) + _1108;
        float _1146 = (((((_1098 + -1.0f) * sqrt(_1059)) + ((_1059 * 2.0f) * (0.5f - _1092))) - _1110) * select((_1059 < 0.5f), 0.0f, 1.0f)) + _1110;
        _1293 = (((((_1144 * 0.30530601739883423f) + 0.682171106338501f) * _1144) + 0.012522878125309944f) * _1144);
        _1294 = (((((_1145 * 0.30530601739883423f) + 0.682171106338501f) * _1145) + 0.012522878125309944f) * _1145);
        _1295 = (((((_1146 * 0.30530601739883423f) + 0.682171106338501f) * _1146) + 0.012522878125309944f) * _1146);
      } else {
        if (_ScanBlendModes.x < 3.5f) {
          float _1189 = select((_861 > 1.0f), _861, saturate((exp2(log2(abs(_861)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1190 = select((_862 > 1.0f), _862, saturate((exp2(log2(abs(_862)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1191 = select((_863 > 1.0f), _863, saturate((exp2(log2(abs(_863)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1222 = (select((_940 > 1.0f), _940, saturate((exp2(log2(abs(_940)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _944;
          float _1223 = (select((_941 > 1.0f), _941, saturate((exp2(log2(abs(_941)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _944;
          float _1224 = (select((_942 > 1.0f), _942, saturate((exp2(log2(abs(_942)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _944;
          float _1231 = (_1189 * 2.0f) * (_1222 + 0.5f);
          float _1232 = (_1190 * 2.0f) * (_1223 + 0.5f);
          float _1233 = (_1191 * 2.0f) * (_1224 + 0.5f);
          float _1261 = (((1.0f - (((1.0f - _1189) * 2.0f) * (0.5f - _1222))) - _1231) * select((_1189 < 0.5f), 0.0f, 1.0f)) + _1231;
          float _1262 = (((1.0f - (((1.0f - _1190) * 2.0f) * (0.5f - _1223))) - _1232) * select((_1190 < 0.5f), 0.0f, 1.0f)) + _1232;
          float _1263 = (((1.0f - (((1.0f - _1191) * 2.0f) * (0.5f - _1224))) - _1233) * select((_1191 < 0.5f), 0.0f, 1.0f)) + _1233;
          _1293 = (((((_1261 * 0.30530601739883423f) + 0.682171106338501f) * _1261) + 0.012522878125309944f) * _1261);
          _1294 = (((((_1262 * 0.30530601739883423f) + 0.682171106338501f) * _1262) + 0.012522878125309944f) * _1262);
          _1295 = (((((_1263 * 0.30530601739883423f) + 0.682171106338501f) * _1263) + 0.012522878125309944f) * _1263);
        } else {
          _1293 = ((((_940 + -1.0f) * _944) + 1.0f) * _861);
          _1294 = ((((_941 + -1.0f) * _944) + 1.0f) * _862);
          _1295 = ((((_942 + -1.0f) * _944) + 1.0f) * _863);
        }
      }
    }
  }
  [branch]
  if (_ScanBlendModes.y < 0.5f) {
    _1580 = (lerp(_1293, _961, _965));
    _1581 = (lerp(_1294, _962, _965));
    _1582 = (lerp(_1295, _963, _965));
  } else {
    if (_ScanBlendModes.y < 1.5f) {
      _1580 = (_1293 + (_961 * _965));
      _1581 = (_1294 + (_962 * _965));
      _1582 = (_1295 + (_963 * _965));
    } else {
      if (_ScanBlendModes.y < 2.5f) {
        float _1344 = select((_1293 > 1.0f), _1293, saturate((exp2(log2(abs(_1293)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1345 = select((_1294 > 1.0f), _1294, saturate((exp2(log2(abs(_1294)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1346 = select((_1295 > 1.0f), _1295, saturate((exp2(log2(abs(_1295)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1377 = (select((_961 > 1.0f), _961, saturate((exp2(log2(abs(_961)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _965;
        float _1378 = (select((_962 > 1.0f), _962, saturate((exp2(log2(abs(_962)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _965;
        float _1379 = (select((_963 > 1.0f), _963, saturate((exp2(log2(abs(_963)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _965;
        float _1383 = (_1377 + 0.5f) * 2.0f;
        float _1384 = (_1378 + 0.5f) * 2.0f;
        float _1385 = (_1379 + 0.5f) * 2.0f;
        float _1393 = (lerp(_1383, 1.0f, _1344)) * _1344;
        float _1395 = (lerp(_1384, 1.0f, _1345)) * _1345;
        float _1397 = (lerp(_1385, 1.0f, _1346)) * _1346;
        float _1431 = (((((_1383 + -1.0f) * sqrt(_1344)) + ((_1344 * 2.0f) * (0.5f - _1377))) - _1393) * select((_1344 < 0.5f), 0.0f, 1.0f)) + _1393;
        float _1432 = (((((_1384 + -1.0f) * sqrt(_1345)) + ((_1345 * 2.0f) * (0.5f - _1378))) - _1395) * select((_1345 < 0.5f), 0.0f, 1.0f)) + _1395;
        float _1433 = (((((_1385 + -1.0f) * sqrt(_1346)) + ((_1346 * 2.0f) * (0.5f - _1379))) - _1397) * select((_1346 < 0.5f), 0.0f, 1.0f)) + _1397;
        _1580 = (((((_1431 * 0.30530601739883423f) + 0.682171106338501f) * _1431) + 0.012522878125309944f) * _1431);
        _1581 = (((((_1432 * 0.30530601739883423f) + 0.682171106338501f) * _1432) + 0.012522878125309944f) * _1432);
        _1582 = (((((_1433 * 0.30530601739883423f) + 0.682171106338501f) * _1433) + 0.012522878125309944f) * _1433);
      } else {
        if (_ScanBlendModes.y < 3.5f) {
          float _1476 = select((_1293 > 1.0f), _1293, saturate((exp2(log2(abs(_1293)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1477 = select((_1294 > 1.0f), _1294, saturate((exp2(log2(abs(_1294)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1478 = select((_1295 > 1.0f), _1295, saturate((exp2(log2(abs(_1295)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1509 = (select((_961 > 1.0f), _961, saturate((exp2(log2(abs(_961)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _965;
          float _1510 = (select((_962 > 1.0f), _962, saturate((exp2(log2(abs(_962)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _965;
          float _1511 = (select((_963 > 1.0f), _963, saturate((exp2(log2(abs(_963)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _965;
          float _1518 = (_1476 * 2.0f) * (_1509 + 0.5f);
          float _1519 = (_1477 * 2.0f) * (_1510 + 0.5f);
          float _1520 = (_1478 * 2.0f) * (_1511 + 0.5f);
          float _1548 = (((1.0f - (((1.0f - _1476) * 2.0f) * (0.5f - _1509))) - _1518) * select((_1476 < 0.5f), 0.0f, 1.0f)) + _1518;
          float _1549 = (((1.0f - (((1.0f - _1477) * 2.0f) * (0.5f - _1510))) - _1519) * select((_1477 < 0.5f), 0.0f, 1.0f)) + _1519;
          float _1550 = (((1.0f - (((1.0f - _1478) * 2.0f) * (0.5f - _1511))) - _1520) * select((_1478 < 0.5f), 0.0f, 1.0f)) + _1520;
          _1580 = (((((_1548 * 0.30530601739883423f) + 0.682171106338501f) * _1548) + 0.012522878125309944f) * _1548);
          _1581 = (((((_1549 * 0.30530601739883423f) + 0.682171106338501f) * _1549) + 0.012522878125309944f) * _1549);
          _1582 = (((((_1550 * 0.30530601739883423f) + 0.682171106338501f) * _1550) + 0.012522878125309944f) * _1550);
        } else {
          _1580 = (_1293 * (((_961 + -1.0f) * _965) + 1.0f));
          _1581 = (_1294 * (((_962 + -1.0f) * _965) + 1.0f));
          _1582 = (_1295 * (((_963 + -1.0f) * _965) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (_ScanBlendModes.z < 0.5f) {
    _1867 = (lerp(_1580, _982, _986));
    _1868 = (lerp(_1581, _983, _986));
    _1869 = (lerp(_1582, _984, _986));
  } else {
    if (_ScanBlendModes.z < 1.5f) {
      _1867 = (_1580 + (_982 * _986));
      _1868 = (_1581 + (_983 * _986));
      _1869 = (_1582 + (_984 * _986));
    } else {
      if (_ScanBlendModes.z < 2.5f) {
        float _1631 = select((_1580 > 1.0f), _1580, saturate((exp2(log2(abs(_1580)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1632 = select((_1581 > 1.0f), _1581, saturate((exp2(log2(abs(_1581)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1633 = select((_1582 > 1.0f), _1582, saturate((exp2(log2(abs(_1582)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1664 = (select((_982 > 1.0f), _982, saturate((exp2(log2(abs(_982)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _986;
        float _1665 = (select((_983 > 1.0f), _983, saturate((exp2(log2(abs(_983)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _986;
        float _1666 = (select((_984 > 1.0f), _984, saturate((exp2(log2(abs(_984)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _986;
        float _1670 = (_1664 + 0.5f) * 2.0f;
        float _1671 = (_1665 + 0.5f) * 2.0f;
        float _1672 = (_1666 + 0.5f) * 2.0f;
        float _1680 = (lerp(_1670, 1.0f, _1631)) * _1631;
        float _1682 = (lerp(_1671, 1.0f, _1632)) * _1632;
        float _1684 = (lerp(_1672, 1.0f, _1633)) * _1633;
        float _1718 = (((((_1670 + -1.0f) * sqrt(_1631)) + ((_1631 * 2.0f) * (0.5f - _1664))) - _1680) * select((_1631 < 0.5f), 0.0f, 1.0f)) + _1680;
        float _1719 = (((((_1671 + -1.0f) * sqrt(_1632)) + ((_1632 * 2.0f) * (0.5f - _1665))) - _1682) * select((_1632 < 0.5f), 0.0f, 1.0f)) + _1682;
        float _1720 = (((((_1672 + -1.0f) * sqrt(_1633)) + ((_1633 * 2.0f) * (0.5f - _1666))) - _1684) * select((_1633 < 0.5f), 0.0f, 1.0f)) + _1684;
        _1867 = (((((_1718 * 0.30530601739883423f) + 0.682171106338501f) * _1718) + 0.012522878125309944f) * _1718);
        _1868 = (((((_1719 * 0.30530601739883423f) + 0.682171106338501f) * _1719) + 0.012522878125309944f) * _1719);
        _1869 = (((((_1720 * 0.30530601739883423f) + 0.682171106338501f) * _1720) + 0.012522878125309944f) * _1720);
      } else {
        if (_ScanBlendModes.z < 3.5f) {
          float _1763 = select((_1580 > 1.0f), _1580, saturate((exp2(log2(abs(_1580)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1764 = select((_1581 > 1.0f), _1581, saturate((exp2(log2(abs(_1581)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1765 = select((_1582 > 1.0f), _1582, saturate((exp2(log2(abs(_1582)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1796 = (select((_982 > 1.0f), _982, saturate((exp2(log2(abs(_982)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _986;
          float _1797 = (select((_983 > 1.0f), _983, saturate((exp2(log2(abs(_983)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _986;
          float _1798 = (select((_984 > 1.0f), _984, saturate((exp2(log2(abs(_984)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _986;
          float _1805 = (_1763 * 2.0f) * (_1796 + 0.5f);
          float _1806 = (_1764 * 2.0f) * (_1797 + 0.5f);
          float _1807 = (_1765 * 2.0f) * (_1798 + 0.5f);
          float _1835 = (((1.0f - (((1.0f - _1763) * 2.0f) * (0.5f - _1796))) - _1805) * select((_1763 < 0.5f), 0.0f, 1.0f)) + _1805;
          float _1836 = (((1.0f - (((1.0f - _1764) * 2.0f) * (0.5f - _1797))) - _1806) * select((_1764 < 0.5f), 0.0f, 1.0f)) + _1806;
          float _1837 = (((1.0f - (((1.0f - _1765) * 2.0f) * (0.5f - _1798))) - _1807) * select((_1765 < 0.5f), 0.0f, 1.0f)) + _1807;
          _1867 = (((((_1835 * 0.30530601739883423f) + 0.682171106338501f) * _1835) + 0.012522878125309944f) * _1835);
          _1868 = (((((_1836 * 0.30530601739883423f) + 0.682171106338501f) * _1836) + 0.012522878125309944f) * _1836);
          _1869 = (((((_1837 * 0.30530601739883423f) + 0.682171106338501f) * _1837) + 0.012522878125309944f) * _1837);
        } else {
          _1867 = (_1580 * (((_982 + -1.0f) * _986) + 1.0f));
          _1868 = (_1581 * (((_983 + -1.0f) * _986) + 1.0f));
          _1869 = (_1582 * (((_984 + -1.0f) * _986) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (_ScanBlendModes.w < 0.5f) {
    _2154 = (lerp(_1867, _1003, _1007));
    _2155 = (lerp(_1868, _1004, _1007));
    _2156 = (lerp(_1869, _1005, _1007));
  } else {
    if (_ScanBlendModes.w < 1.5f) {
      _2154 = (_1867 + (_1003 * _1007));
      _2155 = (_1868 + (_1004 * _1007));
      _2156 = (_1869 + (_1005 * _1007));
    } else {
      if (_ScanBlendModes.w < 2.5f) {
        float _1918 = select((_1867 > 1.0f), _1867, saturate((exp2(log2(abs(_1867)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1919 = select((_1868 > 1.0f), _1868, saturate((exp2(log2(abs(_1868)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1920 = select((_1869 > 1.0f), _1869, saturate((exp2(log2(abs(_1869)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1951 = (select((_1003 > 1.0f), _1003, saturate((exp2(log2(abs(_1003)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1007;
        float _1952 = (select((_1004 > 1.0f), _1004, saturate((exp2(log2(abs(_1004)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1007;
        float _1953 = (select((_1005 > 1.0f), _1005, saturate((exp2(log2(abs(_1005)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1007;
        float _1957 = (_1951 + 0.5f) * 2.0f;
        float _1958 = (_1952 + 0.5f) * 2.0f;
        float _1959 = (_1953 + 0.5f) * 2.0f;
        float _1967 = (lerp(_1957, 1.0f, _1918)) * _1918;
        float _1969 = (lerp(_1958, 1.0f, _1919)) * _1919;
        float _1971 = (lerp(_1959, 1.0f, _1920)) * _1920;
        float _2005 = (((((_1957 + -1.0f) * sqrt(_1918)) + ((_1918 * 2.0f) * (0.5f - _1951))) - _1967) * select((_1918 < 0.5f), 0.0f, 1.0f)) + _1967;
        float _2006 = (((((_1958 + -1.0f) * sqrt(_1919)) + ((_1919 * 2.0f) * (0.5f - _1952))) - _1969) * select((_1919 < 0.5f), 0.0f, 1.0f)) + _1969;
        float _2007 = (((((_1959 + -1.0f) * sqrt(_1920)) + ((_1920 * 2.0f) * (0.5f - _1953))) - _1971) * select((_1920 < 0.5f), 0.0f, 1.0f)) + _1971;
        _2154 = (((((_2005 * 0.30530601739883423f) + 0.682171106338501f) * _2005) + 0.012522878125309944f) * _2005);
        _2155 = (((((_2006 * 0.30530601739883423f) + 0.682171106338501f) * _2006) + 0.012522878125309944f) * _2006);
        _2156 = (((((_2007 * 0.30530601739883423f) + 0.682171106338501f) * _2007) + 0.012522878125309944f) * _2007);
      } else {
        if (_ScanBlendModes.w < 3.5f) {
          float _2050 = select((_1867 > 1.0f), _1867, saturate((exp2(log2(abs(_1867)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _2051 = select((_1868 > 1.0f), _1868, saturate((exp2(log2(abs(_1868)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _2052 = select((_1869 > 1.0f), _1869, saturate((exp2(log2(abs(_1869)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _2083 = (select((_1003 > 1.0f), _1003, saturate((exp2(log2(abs(_1003)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1007;
          float _2084 = (select((_1004 > 1.0f), _1004, saturate((exp2(log2(abs(_1004)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1007;
          float _2085 = (select((_1005 > 1.0f), _1005, saturate((exp2(log2(abs(_1005)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _1007;
          float _2092 = (_2050 * 2.0f) * (_2083 + 0.5f);
          float _2093 = (_2051 * 2.0f) * (_2084 + 0.5f);
          float _2094 = (_2052 * 2.0f) * (_2085 + 0.5f);
          float _2122 = (((1.0f - (((1.0f - _2050) * 2.0f) * (0.5f - _2083))) - _2092) * select((_2050 < 0.5f), 0.0f, 1.0f)) + _2092;
          float _2123 = (((1.0f - (((1.0f - _2051) * 2.0f) * (0.5f - _2084))) - _2093) * select((_2051 < 0.5f), 0.0f, 1.0f)) + _2093;
          float _2124 = (((1.0f - (((1.0f - _2052) * 2.0f) * (0.5f - _2085))) - _2094) * select((_2052 < 0.5f), 0.0f, 1.0f)) + _2094;
          _2154 = (((((_2122 * 0.30530601739883423f) + 0.682171106338501f) * _2122) + 0.012522878125309944f) * _2122);
          _2155 = (((((_2123 * 0.30530601739883423f) + 0.682171106338501f) * _2123) + 0.012522878125309944f) * _2123);
          _2156 = (((((_2124 * 0.30530601739883423f) + 0.682171106338501f) * _2124) + 0.012522878125309944f) * _2124);
        } else {
          _2154 = (_1867 * (((_1003 + -1.0f) * _1007) + 1.0f));
          _2155 = (_1868 * (((_1004 + -1.0f) * _1007) + 1.0f));
          _2156 = (_1869 * (((_1005 + -1.0f) * _1007) + 1.0f));
        }
      }
    }
  }
  float4 _2163 = _VR_SourceImage.Sample(s_linear_repeat_sampler, float2((_RGBSeparateParams0.x + _26), ((_RGBSeparateParams0.y * _29) + _47)));
  float4 _2178 = _VR_SourceImage.Sample(s_linear_repeat_sampler, float2((_RGBSeparateParams0.z + _26), ((_RGBSeparateParams0.w * _29) + _47)));
  float4 _2193 = _VR_SourceImage.Sample(s_linear_repeat_sampler, float2((_RGBSeparateParams1.x + _26), ((_RGBSeparateParams1.y * _29) + _47)));
  _2163.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2163.xyz), 1.0f, 0.5f);
  _2178.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2178.xyz), 1.0f, 0.5f);
  _2193.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2193.xyz), 1.0f, 0.5f);
  float _2224 = (((-0.0f - _ScanlineParams.y) - _ScanlineParams.y) * _21) + _ScanlineParams.y;
  float _2225 = ((((((_ColorR.x * _2163.x) - _2154) + (_ColorG.x * _2178.y)) + (_ColorB.x * _2193.z)) * _RGBSeparateParams1.z) + _2154) + _2224;
  float _2226 = ((((((_ColorR.y * _2163.x) - _2155) + (_ColorG.y * _2178.y)) + (_ColorB.y * _2193.z)) * _RGBSeparateParams1.z) + _2155) + _2224;
  float _2227 = ((((((_ColorR.z * _2163.x) - _2156) + (_ColorG.z * _2178.y)) + (_ColorB.z * _2193.z)) * _RGBSeparateParams1.z) + _2156) + _2224;
  if (_TextureSheetParams.w > 0.5f) {
    int _2234 = int(_TextureSheetParams.x);
    int _2242 = int(_TextureSheetParams.z);
    float4 _2253 = _VRTextureSheetTex.Sample(s_linear_repeat_sampler, float2(((float((int)(_2242 % _2234)) * (1.0f / float((int)(_2234)))) + (_26 / _TextureSheetParams.x)), ((float((int)(_2242 / _2234)) * (1.0f / float((int)(int(_TextureSheetParams.y))))) + (_47 / _TextureSheetParams.y))));
    float _2266 = _TextureSheetColor.w * _2253.w;
    float _2267 = 1.0f - _2266;
    _2278 = ((_2267 * _2225) + ((_TextureSheetColor.x * _2253.x) * _2266));
    _2279 = ((_2267 * _2226) + ((_TextureSheetColor.y * _2253.y) * _2266));
    _2280 = ((_2267 * _2227) + ((_TextureSheetColor.z * _2253.z) * _2266));
  } else {
    _2278 = _2225;
    _2279 = _2226;
    _2280 = _2227;
  }
  SV_Target.xyz = renodx::draw::RenderIntermediatePass(renodx::tonemap::UpgradeToneMap(untonemapped.xyz, _53.xyz, float3(_2278, _2279, _2280)));
  SV_Target.w = (_2224 + _53.w);
  return SV_Target;
}
