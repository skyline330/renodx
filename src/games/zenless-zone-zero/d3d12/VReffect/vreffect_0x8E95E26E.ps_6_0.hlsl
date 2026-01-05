#include "../../tonemap.hlsl"

// VR effects when using eagle vision

Texture2D<float4> _CameraDepthTexture : register(t0);

Texture2D<float4> _VR_SourceImage : register(t1);

Texture2D<float4> _VRTextureSheetTex : register(t2);

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

float4 main(
    noperspective float4 SV_Position: SV_Position,
    linear float2 TEXCOORD: TEXCOORD,
    linear float4 TEXCOORD_1: TEXCOORD1) : SV_Target {
  float4 SV_Target;
  float _16 = fmod(((_ScreenSize.y * TEXCOORD.y) * _ScanlineParams.x), 2.0f);
  float _19 = select((_16 > 1.0f), (2.0f - _16), _16);
  float _24 = (((_19 * 2.0f) + -1.0f) * _ScanlineParams.z) + TEXCOORD.x;
  float _27 = _ScreenSize.w * _ScreenSize.x;
  bool _42 = ((frac((((_24 + abs(_SliceParams.y)) * _27) - (_SliceParams.y * TEXCOORD.y)) / ((_27 * 2.0f) * _SliceParams.x)) * 2.0f) <= 1.0f);
  float _45 = (select(_42, 0.9999899864196777f, -1.0f) * _SliceParams.z) + TEXCOORD.y;
  float _50 = select(_42, select((_45 < 1.0f), 0.0f, 1.0f), select((_45 > 0.0f), 0.0f, 1.0f));
  // float4 _51 = _VR_SourceImage.Sample(s_linear_repeat_sampler, float2(_24, _45));
  float4 _51 = renodx::draw::InvertIntermediatePass(_VR_SourceImage.Sample(s_linear_repeat_sampler, float2(_24, _45)));
  float4 untonemapped = _51;
  float _59 = _24 - _TaaJitterStrength.z;
  float _60 = _45 - _TaaJitterStrength.w;
  float4 _61 = _CameraDepthTexture.SampleLevel(s_point_clamp_sampler, float2(_59, _60), 0.0f);
  float _85 = (_59 * 2.0f) + -1.0f;
  float _87 = -0.0f - ((_60 * 2.0f) + -1.0f);
  float _103 = mad((_InvViewProjMatrix[2].w), _61.x, mad((_InvViewProjMatrix[1].w), _87, ((_InvViewProjMatrix[0].w) * _85))) + (_InvViewProjMatrix[3].w);
  float _123 = (((mad((_InvViewProjMatrix[2].x), _61.x, mad((_InvViewProjMatrix[1].x), _87, ((_InvViewProjMatrix[0].x) * _85))) + (_InvViewProjMatrix[3].x)) / _103) - _AvatarPosition0.x) - ((_CustomScanCenter.x - _AvatarPosition0.x) * _CustomScanCenter.w);
  float _125 = (((mad((_InvViewProjMatrix[2].y), _61.x, mad((_InvViewProjMatrix[1].y), _87, ((_InvViewProjMatrix[0].y) * _85))) + (_InvViewProjMatrix[3].y)) / _103) - _AvatarPosition0.y) - ((_CustomScanCenter.y - _AvatarPosition0.y) * _CustomScanCenter.w);
  float _127 = (((mad((_InvViewProjMatrix[2].z), _61.x, mad((_InvViewProjMatrix[1].z), _87, ((_InvViewProjMatrix[0].z) * _85))) + (_InvViewProjMatrix[3].z)) / _103) - _AvatarPosition0.z) - ((_CustomScanCenter.z - _AvatarPosition0.z) * _CustomScanCenter.w);
  float _133 = sqrt(((_123 * _123) + (_125 * _125)) + (_127 * _127));
  float _139 = saturate((_133 - _ContrastParams.z) * _ContrastParams.w);
  float _161 = ((_ColorTintFar.w - _ColorTintNear.w) * _139) + _ColorTintNear.w;
  float _163 = select((_51.y < _51.z), 0.0f, 1.0f);
  float _168 = (_163 * (_51.y - _51.z)) + _51.z;
  float _169 = (_163 * (_51.z - _51.y)) + _51.y;
  float _171 = 0.6666666865348816f - _163;
  float _173 = select((_51.x < _168), 0.0f, 1.0f);
  float _180 = (_173 * (_51.x - _168)) + _168;
  float _182 = (_173 * (_168 - _51.x)) + _51.x;
  float _184 = _180 - min(_182, _169);
  float _197 = _HSVParams.x + abs(((_173 * ((_163 + -1.0f) - _171)) + _171) + ((_182 - _169) / ((_184 * 6.0f) + 9.999999747378752e-05f)));
  float _202 = saturate((_HSVParams.y + (_184 / (_180 + 9.999999747378752e-05f))) * (1.0f - _161));
  float _203 = saturate(_HSVParams.z + _180);
  float _245 = ((((((saturate(abs((frac(_197 + 1.0f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _202) + 1.0f) * _203) - _ContrastParams.y) * _ContrastParams.x) + _ContrastParams.y;
  float _246 = ((((((saturate(abs((frac(_197 + 0.6666666865348816f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _202) + 1.0f) * _203) - _ContrastParams.y) * _ContrastParams.x) + _ContrastParams.y;
  float _247 = ((((((saturate(abs((frac(_197 + 0.3333333432674408f) * 6.0f) + -3.0f) + -1.0f) + -1.0f) * _202) + 1.0f) * _203) - _ContrastParams.y) * _ContrastParams.x) + _ContrastParams.y;
  float _257 = (((_245 * (lerp(_ColorTintNear.x, _ColorTintFar.x, _139))) - _245) * _161) + _245;
  float _258 = (((_246 * (lerp(_ColorTintNear.y, _ColorTintFar.y, _139))) - _246) * _161) + _246;
  float _259 = (((_247 * (lerp(_ColorTintNear.z, _ColorTintFar.z, _139))) - _247) * _161) + _247;
  float _267 = _SliceColorA.w * _50;
  float _551;
  float _552;
  float _553;
  float _845;
  float _846;
  float _847;
  float _1277;
  float _1278;
  float _1279;
  float _1564;
  float _1565;
  float _1566;
  float _1851;
  float _1852;
  float _1853;
  float _2138;
  float _2139;
  float _2140;
  float _2262;
  float _2263;
  float _2264;
  [branch]
  if (_SliceBlendModes.x < 0.5f) {
    _551 = (lerp(_257, _SliceColorA.x, _267));
    _552 = (lerp(_258, _SliceColorA.y, _267));
    _553 = (lerp(_259, _SliceColorA.z, _267));
  } else {
    if (_SliceBlendModes.x < 1.5f) {
      _551 = (_257 + (_267 * _SliceColorA.x));
      _552 = (_258 + (_267 * _SliceColorA.y));
      _553 = (_259 + (_267 * _SliceColorA.z));
    } else {
      if (_SliceBlendModes.x < 2.5f) {
        float _315 = select((_257 > 1.0f), _257, saturate((exp2(log2(abs(_257)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _316 = select((_258 > 1.0f), _258, saturate((exp2(log2(abs(_258)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _317 = select((_259 > 1.0f), _259, saturate((exp2(log2(abs(_259)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _348 = (select((_SliceColorA.x > 1.0f), _SliceColorA.x, saturate((exp2(log2(abs(_SliceColorA.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _267;
        float _349 = (select((_SliceColorA.y > 1.0f), _SliceColorA.y, saturate((exp2(log2(abs(_SliceColorA.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _267;
        float _350 = (select((_SliceColorA.z > 1.0f), _SliceColorA.z, saturate((exp2(log2(abs(_SliceColorA.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _267;
        float _354 = (_348 + 0.5f) * 2.0f;
        float _355 = (_349 + 0.5f) * 2.0f;
        float _356 = (_350 + 0.5f) * 2.0f;
        float _364 = (lerp(_354, 1.0f, _315)) * _315;
        float _366 = (lerp(_355, 1.0f, _316)) * _316;
        float _368 = (lerp(_356, 1.0f, _317)) * _317;
        float _402 = (((((_354 + -1.0f) * sqrt(_315)) + ((_315 * 2.0f) * (0.5f - _348))) - _364) * select((_315 < 0.5f), 0.0f, 1.0f)) + _364;
        float _403 = (((((_355 + -1.0f) * sqrt(_316)) + ((_316 * 2.0f) * (0.5f - _349))) - _366) * select((_316 < 0.5f), 0.0f, 1.0f)) + _366;
        float _404 = (((((_356 + -1.0f) * sqrt(_317)) + ((_317 * 2.0f) * (0.5f - _350))) - _368) * select((_317 < 0.5f), 0.0f, 1.0f)) + _368;
        _551 = (((((_402 * 0.30530601739883423f) + 0.682171106338501f) * _402) + 0.012522878125309944f) * _402);
        _552 = (((((_403 * 0.30530601739883423f) + 0.682171106338501f) * _403) + 0.012522878125309944f) * _403);
        _553 = (((((_404 * 0.30530601739883423f) + 0.682171106338501f) * _404) + 0.012522878125309944f) * _404);
      } else {
        if (_SliceBlendModes.x < 3.5f) {
          float _447 = select((_257 > 1.0f), _257, saturate((exp2(log2(abs(_257)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _448 = select((_258 > 1.0f), _258, saturate((exp2(log2(abs(_258)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _449 = select((_259 > 1.0f), _259, saturate((exp2(log2(abs(_259)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _480 = (select((_SliceColorA.x > 1.0f), _SliceColorA.x, saturate((exp2(log2(abs(_SliceColorA.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _267;
          float _481 = (select((_SliceColorA.y > 1.0f), _SliceColorA.y, saturate((exp2(log2(abs(_SliceColorA.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _267;
          float _482 = (select((_SliceColorA.z > 1.0f), _SliceColorA.z, saturate((exp2(log2(abs(_SliceColorA.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _267;
          float _489 = (_447 * 2.0f) * (_480 + 0.5f);
          float _490 = (_448 * 2.0f) * (_481 + 0.5f);
          float _491 = (_449 * 2.0f) * (_482 + 0.5f);
          float _519 = (((1.0f - (((1.0f - _447) * 2.0f) * (0.5f - _480))) - _489) * select((_447 < 0.5f), 0.0f, 1.0f)) + _489;
          float _520 = (((1.0f - (((1.0f - _448) * 2.0f) * (0.5f - _481))) - _490) * select((_448 < 0.5f), 0.0f, 1.0f)) + _490;
          float _521 = (((1.0f - (((1.0f - _449) * 2.0f) * (0.5f - _482))) - _491) * select((_449 < 0.5f), 0.0f, 1.0f)) + _491;
          _551 = (((((_519 * 0.30530601739883423f) + 0.682171106338501f) * _519) + 0.012522878125309944f) * _519);
          _552 = (((((_520 * 0.30530601739883423f) + 0.682171106338501f) * _520) + 0.012522878125309944f) * _520);
          _553 = (((((_521 * 0.30530601739883423f) + 0.682171106338501f) * _521) + 0.012522878125309944f) * _521);
        } else {
          _551 = (_257 * ((_267 * (_SliceColorA.x + -1.0f)) + 1.0f));
          _552 = (_258 * ((_267 * (_SliceColorA.y + -1.0f)) + 1.0f));
          _553 = (_259 * ((_267 * (_SliceColorA.z + -1.0f)) + 1.0f));
        }
      }
    }
  }
  float _561 = _SliceColorB.w * (1.0f - _50);
  [branch]
  if (_SliceBlendModes.y < 0.5f) {
    _845 = ((_561 * (_SliceColorB.x - _551)) + _551);
    _846 = ((_561 * (_SliceColorB.y - _552)) + _552);
    _847 = ((_561 * (_SliceColorB.z - _553)) + _553);
  } else {
    if (_SliceBlendModes.y < 1.5f) {
      _845 = ((_561 * _SliceColorB.x) + _551);
      _846 = ((_561 * _SliceColorB.y) + _552);
      _847 = ((_561 * _SliceColorB.z) + _553);
    } else {
      if (_SliceBlendModes.y < 2.5f) {
        float _609 = select((_551 > 1.0f), _551, saturate((exp2(log2(abs(_551)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _610 = select((_552 > 1.0f), _552, saturate((exp2(log2(abs(_552)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _611 = select((_553 > 1.0f), _553, saturate((exp2(log2(abs(_553)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _642 = (select((_SliceColorB.x > 1.0f), _SliceColorB.x, saturate((exp2(log2(abs(_SliceColorB.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _561;
        float _643 = (select((_SliceColorB.y > 1.0f), _SliceColorB.y, saturate((exp2(log2(abs(_SliceColorB.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _561;
        float _644 = (select((_SliceColorB.z > 1.0f), _SliceColorB.z, saturate((exp2(log2(abs(_SliceColorB.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _561;
        float _648 = (_642 + 0.5f) * 2.0f;
        float _649 = (_643 + 0.5f) * 2.0f;
        float _650 = (_644 + 0.5f) * 2.0f;
        float _658 = (lerp(_648, 1.0f, _609)) * _609;
        float _660 = (lerp(_649, 1.0f, _610)) * _610;
        float _662 = (lerp(_650, 1.0f, _611)) * _611;
        float _696 = (((((_648 + -1.0f) * sqrt(_609)) + ((_609 * 2.0f) * (0.5f - _642))) - _658) * select((_609 < 0.5f), 0.0f, 1.0f)) + _658;
        float _697 = (((((_649 + -1.0f) * sqrt(_610)) + ((_610 * 2.0f) * (0.5f - _643))) - _660) * select((_610 < 0.5f), 0.0f, 1.0f)) + _660;
        float _698 = (((((_650 + -1.0f) * sqrt(_611)) + ((_611 * 2.0f) * (0.5f - _644))) - _662) * select((_611 < 0.5f), 0.0f, 1.0f)) + _662;
        _845 = (((((_696 * 0.30530601739883423f) + 0.682171106338501f) * _696) + 0.012522878125309944f) * _696);
        _846 = (((((_697 * 0.30530601739883423f) + 0.682171106338501f) * _697) + 0.012522878125309944f) * _697);
        _847 = (((((_698 * 0.30530601739883423f) + 0.682171106338501f) * _698) + 0.012522878125309944f) * _698);
      } else {
        if (_SliceBlendModes.y < 3.5f) {
          float _741 = select((_551 > 1.0f), _551, saturate((exp2(log2(abs(_551)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _742 = select((_552 > 1.0f), _552, saturate((exp2(log2(abs(_552)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _743 = select((_553 > 1.0f), _553, saturate((exp2(log2(abs(_553)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _774 = (select((_SliceColorB.x > 1.0f), _SliceColorB.x, saturate((exp2(log2(abs(_SliceColorB.x)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _561;
          float _775 = (select((_SliceColorB.y > 1.0f), _SliceColorB.y, saturate((exp2(log2(abs(_SliceColorB.y)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _561;
          float _776 = (select((_SliceColorB.z > 1.0f), _SliceColorB.z, saturate((exp2(log2(abs(_SliceColorB.z)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _561;
          float _783 = (_741 * 2.0f) * (_774 + 0.5f);
          float _784 = (_742 * 2.0f) * (_775 + 0.5f);
          float _785 = (_743 * 2.0f) * (_776 + 0.5f);
          float _813 = (((1.0f - (((1.0f - _741) * 2.0f) * (0.5f - _774))) - _783) * select((_741 < 0.5f), 0.0f, 1.0f)) + _783;
          float _814 = (((1.0f - (((1.0f - _742) * 2.0f) * (0.5f - _775))) - _784) * select((_742 < 0.5f), 0.0f, 1.0f)) + _784;
          float _815 = (((1.0f - (((1.0f - _743) * 2.0f) * (0.5f - _776))) - _785) * select((_743 < 0.5f), 0.0f, 1.0f)) + _785;
          _845 = (((((_813 * 0.30530601739883423f) + 0.682171106338501f) * _813) + 0.012522878125309944f) * _813);
          _846 = (((((_814 * 0.30530601739883423f) + 0.682171106338501f) * _814) + 0.012522878125309944f) * _814);
          _847 = (((((_815 * 0.30530601739883423f) + 0.682171106338501f) * _815) + 0.012522878125309944f) * _815);
        } else {
          _845 = (((_561 * (_SliceColorB.x + -1.0f)) + 1.0f) * _551);
          _846 = (((_561 * (_SliceColorB.y + -1.0f)) + 1.0f) * _552);
          _847 = (((_561 * (_SliceColorB.z + -1.0f)) + 1.0f) * _553);
        }
      }
    }
  }
  float _875 = _133 - _ScanStart.x;
  float _876 = _133 - _ScanStart.y;
  float _877 = _133 - _ScanStart.z;
  float _878 = _133 - _ScanStart.w;
  float _910 = _ScanColor0End.w * saturate(_875 / (_ScanEnd.x - _ScanStart.x));
  float _924 = ((_ScanColor0End.x - _ScanColor0.x) * _910) + _ScanColor0.x;
  float _925 = ((_ScanColor0End.y - _ScanColor0.y) * _910) + _ScanColor0.y;
  float _926 = ((_ScanColor0End.z - _ScanColor0.z) * _910) + _ScanColor0.z;
  float _928 = _ScanColor0.w * min(saturate(_875 * _ScanStartInvSoftness.x), saturate((_ScanEnd.x - _133) * _ScanEndInvSoftness.x));
  float _931 = _ScanColor1End.w * saturate(_876 / (_ScanEnd.y - _ScanStart.y));
  float _945 = ((_ScanColor1End.x - _ScanColor1.x) * _931) + _ScanColor1.x;
  float _946 = ((_ScanColor1End.y - _ScanColor1.y) * _931) + _ScanColor1.y;
  float _947 = ((_ScanColor1End.z - _ScanColor1.z) * _931) + _ScanColor1.z;
  float _949 = _ScanColor1.w * min(saturate(_876 * _ScanStartInvSoftness.y), saturate((_ScanEnd.y - _133) * _ScanEndInvSoftness.y));
  float _952 = _ScanColor2End.w * saturate(_877 / (_ScanEnd.z - _ScanStart.z));
  float _966 = ((_ScanColor2End.x - _ScanColor2.x) * _952) + _ScanColor2.x;
  float _967 = ((_ScanColor2End.y - _ScanColor2.y) * _952) + _ScanColor2.y;
  float _968 = ((_ScanColor2End.z - _ScanColor2.z) * _952) + _ScanColor2.z;
  float _970 = _ScanColor2.w * min(saturate(_877 * _ScanStartInvSoftness.z), saturate((_ScanEnd.z - _133) * _ScanEndInvSoftness.z));
  float _973 = _ScanColor3End.w * saturate(_878 / (_ScanEnd.w - _ScanStart.w));
  float _987 = ((_ScanColor3End.x - _ScanColor3.x) * _973) + _ScanColor3.x;
  float _988 = ((_ScanColor3End.y - _ScanColor3.y) * _973) + _ScanColor3.y;
  float _989 = ((_ScanColor3End.z - _ScanColor3.z) * _973) + _ScanColor3.z;
  float _991 = _ScanColor3.w * min(saturate(_878 * _ScanStartInvSoftness.w), saturate((_ScanEnd.w - _133) * _ScanEndInvSoftness.w));
  [branch]
  if (_ScanBlendModes.x < 0.5f) {
    _1277 = (lerp(_845, _924, _928));
    _1278 = (lerp(_846, _925, _928));
    _1279 = (lerp(_847, _926, _928));
  } else {
    if (_ScanBlendModes.x < 1.5f) {
      _1277 = ((_924 * _928) + _845);
      _1278 = ((_925 * _928) + _846);
      _1279 = ((_926 * _928) + _847);
    } else {
      if (_ScanBlendModes.x < 2.5f) {
        float _1041 = select((_845 > 1.0f), _845, saturate((exp2(log2(abs(_845)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1042 = select((_846 > 1.0f), _846, saturate((exp2(log2(abs(_846)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1043 = select((_847 > 1.0f), _847, saturate((exp2(log2(abs(_847)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1074 = (select((_924 > 1.0f), _924, saturate((exp2(log2(abs(_924)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _928;
        float _1075 = (select((_925 > 1.0f), _925, saturate((exp2(log2(abs(_925)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _928;
        float _1076 = (select((_926 > 1.0f), _926, saturate((exp2(log2(abs(_926)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _928;
        float _1080 = (_1074 + 0.5f) * 2.0f;
        float _1081 = (_1075 + 0.5f) * 2.0f;
        float _1082 = (_1076 + 0.5f) * 2.0f;
        float _1090 = (lerp(_1080, 1.0f, _1041)) * _1041;
        float _1092 = (lerp(_1081, 1.0f, _1042)) * _1042;
        float _1094 = (lerp(_1082, 1.0f, _1043)) * _1043;
        float _1128 = (((((_1080 + -1.0f) * sqrt(_1041)) + ((_1041 * 2.0f) * (0.5f - _1074))) - _1090) * select((_1041 < 0.5f), 0.0f, 1.0f)) + _1090;
        float _1129 = (((((_1081 + -1.0f) * sqrt(_1042)) + ((_1042 * 2.0f) * (0.5f - _1075))) - _1092) * select((_1042 < 0.5f), 0.0f, 1.0f)) + _1092;
        float _1130 = (((((_1082 + -1.0f) * sqrt(_1043)) + ((_1043 * 2.0f) * (0.5f - _1076))) - _1094) * select((_1043 < 0.5f), 0.0f, 1.0f)) + _1094;
        _1277 = (((((_1128 * 0.30530601739883423f) + 0.682171106338501f) * _1128) + 0.012522878125309944f) * _1128);
        _1278 = (((((_1129 * 0.30530601739883423f) + 0.682171106338501f) * _1129) + 0.012522878125309944f) * _1129);
        _1279 = (((((_1130 * 0.30530601739883423f) + 0.682171106338501f) * _1130) + 0.012522878125309944f) * _1130);
      } else {
        if (_ScanBlendModes.x < 3.5f) {
          float _1173 = select((_845 > 1.0f), _845, saturate((exp2(log2(abs(_845)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1174 = select((_846 > 1.0f), _846, saturate((exp2(log2(abs(_846)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1175 = select((_847 > 1.0f), _847, saturate((exp2(log2(abs(_847)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1206 = (select((_924 > 1.0f), _924, saturate((exp2(log2(abs(_924)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _928;
          float _1207 = (select((_925 > 1.0f), _925, saturate((exp2(log2(abs(_925)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _928;
          float _1208 = (select((_926 > 1.0f), _926, saturate((exp2(log2(abs(_926)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _928;
          float _1215 = (_1173 * 2.0f) * (_1206 + 0.5f);
          float _1216 = (_1174 * 2.0f) * (_1207 + 0.5f);
          float _1217 = (_1175 * 2.0f) * (_1208 + 0.5f);
          float _1245 = (((1.0f - (((1.0f - _1173) * 2.0f) * (0.5f - _1206))) - _1215) * select((_1173 < 0.5f), 0.0f, 1.0f)) + _1215;
          float _1246 = (((1.0f - (((1.0f - _1174) * 2.0f) * (0.5f - _1207))) - _1216) * select((_1174 < 0.5f), 0.0f, 1.0f)) + _1216;
          float _1247 = (((1.0f - (((1.0f - _1175) * 2.0f) * (0.5f - _1208))) - _1217) * select((_1175 < 0.5f), 0.0f, 1.0f)) + _1217;
          _1277 = (((((_1245 * 0.30530601739883423f) + 0.682171106338501f) * _1245) + 0.012522878125309944f) * _1245);
          _1278 = (((((_1246 * 0.30530601739883423f) + 0.682171106338501f) * _1246) + 0.012522878125309944f) * _1246);
          _1279 = (((((_1247 * 0.30530601739883423f) + 0.682171106338501f) * _1247) + 0.012522878125309944f) * _1247);
        } else {
          _1277 = ((((_924 + -1.0f) * _928) + 1.0f) * _845);
          _1278 = ((((_925 + -1.0f) * _928) + 1.0f) * _846);
          _1279 = ((((_926 + -1.0f) * _928) + 1.0f) * _847);
        }
      }
    }
  }
  [branch]
  if (_ScanBlendModes.y < 0.5f) {
    _1564 = (lerp(_1277, _945, _949));
    _1565 = (lerp(_1278, _946, _949));
    _1566 = (lerp(_1279, _947, _949));
  } else {
    if (_ScanBlendModes.y < 1.5f) {
      _1564 = (_1277 + (_945 * _949));
      _1565 = (_1278 + (_946 * _949));
      _1566 = (_1279 + (_947 * _949));
    } else {
      if (_ScanBlendModes.y < 2.5f) {
        float _1328 = select((_1277 > 1.0f), _1277, saturate((exp2(log2(abs(_1277)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1329 = select((_1278 > 1.0f), _1278, saturate((exp2(log2(abs(_1278)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1330 = select((_1279 > 1.0f), _1279, saturate((exp2(log2(abs(_1279)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1361 = (select((_945 > 1.0f), _945, saturate((exp2(log2(abs(_945)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _949;
        float _1362 = (select((_946 > 1.0f), _946, saturate((exp2(log2(abs(_946)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _949;
        float _1363 = (select((_947 > 1.0f), _947, saturate((exp2(log2(abs(_947)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _949;
        float _1367 = (_1361 + 0.5f) * 2.0f;
        float _1368 = (_1362 + 0.5f) * 2.0f;
        float _1369 = (_1363 + 0.5f) * 2.0f;
        float _1377 = (lerp(_1367, 1.0f, _1328)) * _1328;
        float _1379 = (lerp(_1368, 1.0f, _1329)) * _1329;
        float _1381 = (lerp(_1369, 1.0f, _1330)) * _1330;
        float _1415 = (((((_1367 + -1.0f) * sqrt(_1328)) + ((_1328 * 2.0f) * (0.5f - _1361))) - _1377) * select((_1328 < 0.5f), 0.0f, 1.0f)) + _1377;
        float _1416 = (((((_1368 + -1.0f) * sqrt(_1329)) + ((_1329 * 2.0f) * (0.5f - _1362))) - _1379) * select((_1329 < 0.5f), 0.0f, 1.0f)) + _1379;
        float _1417 = (((((_1369 + -1.0f) * sqrt(_1330)) + ((_1330 * 2.0f) * (0.5f - _1363))) - _1381) * select((_1330 < 0.5f), 0.0f, 1.0f)) + _1381;
        _1564 = (((((_1415 * 0.30530601739883423f) + 0.682171106338501f) * _1415) + 0.012522878125309944f) * _1415);
        _1565 = (((((_1416 * 0.30530601739883423f) + 0.682171106338501f) * _1416) + 0.012522878125309944f) * _1416);
        _1566 = (((((_1417 * 0.30530601739883423f) + 0.682171106338501f) * _1417) + 0.012522878125309944f) * _1417);
      } else {
        if (_ScanBlendModes.y < 3.5f) {
          float _1460 = select((_1277 > 1.0f), _1277, saturate((exp2(log2(abs(_1277)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1461 = select((_1278 > 1.0f), _1278, saturate((exp2(log2(abs(_1278)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1462 = select((_1279 > 1.0f), _1279, saturate((exp2(log2(abs(_1279)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1493 = (select((_945 > 1.0f), _945, saturate((exp2(log2(abs(_945)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _949;
          float _1494 = (select((_946 > 1.0f), _946, saturate((exp2(log2(abs(_946)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _949;
          float _1495 = (select((_947 > 1.0f), _947, saturate((exp2(log2(abs(_947)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _949;
          float _1502 = (_1460 * 2.0f) * (_1493 + 0.5f);
          float _1503 = (_1461 * 2.0f) * (_1494 + 0.5f);
          float _1504 = (_1462 * 2.0f) * (_1495 + 0.5f);
          float _1532 = (((1.0f - (((1.0f - _1460) * 2.0f) * (0.5f - _1493))) - _1502) * select((_1460 < 0.5f), 0.0f, 1.0f)) + _1502;
          float _1533 = (((1.0f - (((1.0f - _1461) * 2.0f) * (0.5f - _1494))) - _1503) * select((_1461 < 0.5f), 0.0f, 1.0f)) + _1503;
          float _1534 = (((1.0f - (((1.0f - _1462) * 2.0f) * (0.5f - _1495))) - _1504) * select((_1462 < 0.5f), 0.0f, 1.0f)) + _1504;
          _1564 = (((((_1532 * 0.30530601739883423f) + 0.682171106338501f) * _1532) + 0.012522878125309944f) * _1532);
          _1565 = (((((_1533 * 0.30530601739883423f) + 0.682171106338501f) * _1533) + 0.012522878125309944f) * _1533);
          _1566 = (((((_1534 * 0.30530601739883423f) + 0.682171106338501f) * _1534) + 0.012522878125309944f) * _1534);
        } else {
          _1564 = (_1277 * (((_945 + -1.0f) * _949) + 1.0f));
          _1565 = (_1278 * (((_946 + -1.0f) * _949) + 1.0f));
          _1566 = (_1279 * (((_947 + -1.0f) * _949) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (_ScanBlendModes.z < 0.5f) {
    _1851 = (lerp(_1564, _966, _970));
    _1852 = (lerp(_1565, _967, _970));
    _1853 = (lerp(_1566, _968, _970));
  } else {
    if (_ScanBlendModes.z < 1.5f) {
      _1851 = (_1564 + (_966 * _970));
      _1852 = (_1565 + (_967 * _970));
      _1853 = (_1566 + (_968 * _970));
    } else {
      if (_ScanBlendModes.z < 2.5f) {
        float _1615 = select((_1564 > 1.0f), _1564, saturate((exp2(log2(abs(_1564)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1616 = select((_1565 > 1.0f), _1565, saturate((exp2(log2(abs(_1565)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1617 = select((_1566 > 1.0f), _1566, saturate((exp2(log2(abs(_1566)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1648 = (select((_966 > 1.0f), _966, saturate((exp2(log2(abs(_966)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _970;
        float _1649 = (select((_967 > 1.0f), _967, saturate((exp2(log2(abs(_967)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _970;
        float _1650 = (select((_968 > 1.0f), _968, saturate((exp2(log2(abs(_968)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _970;
        float _1654 = (_1648 + 0.5f) * 2.0f;
        float _1655 = (_1649 + 0.5f) * 2.0f;
        float _1656 = (_1650 + 0.5f) * 2.0f;
        float _1664 = (lerp(_1654, 1.0f, _1615)) * _1615;
        float _1666 = (lerp(_1655, 1.0f, _1616)) * _1616;
        float _1668 = (lerp(_1656, 1.0f, _1617)) * _1617;
        float _1702 = (((((_1654 + -1.0f) * sqrt(_1615)) + ((_1615 * 2.0f) * (0.5f - _1648))) - _1664) * select((_1615 < 0.5f), 0.0f, 1.0f)) + _1664;
        float _1703 = (((((_1655 + -1.0f) * sqrt(_1616)) + ((_1616 * 2.0f) * (0.5f - _1649))) - _1666) * select((_1616 < 0.5f), 0.0f, 1.0f)) + _1666;
        float _1704 = (((((_1656 + -1.0f) * sqrt(_1617)) + ((_1617 * 2.0f) * (0.5f - _1650))) - _1668) * select((_1617 < 0.5f), 0.0f, 1.0f)) + _1668;
        _1851 = (((((_1702 * 0.30530601739883423f) + 0.682171106338501f) * _1702) + 0.012522878125309944f) * _1702);
        _1852 = (((((_1703 * 0.30530601739883423f) + 0.682171106338501f) * _1703) + 0.012522878125309944f) * _1703);
        _1853 = (((((_1704 * 0.30530601739883423f) + 0.682171106338501f) * _1704) + 0.012522878125309944f) * _1704);
      } else {
        if (_ScanBlendModes.z < 3.5f) {
          float _1747 = select((_1564 > 1.0f), _1564, saturate((exp2(log2(abs(_1564)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1748 = select((_1565 > 1.0f), _1565, saturate((exp2(log2(abs(_1565)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1749 = select((_1566 > 1.0f), _1566, saturate((exp2(log2(abs(_1566)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _1780 = (select((_966 > 1.0f), _966, saturate((exp2(log2(abs(_966)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _970;
          float _1781 = (select((_967 > 1.0f), _967, saturate((exp2(log2(abs(_967)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _970;
          float _1782 = (select((_968 > 1.0f), _968, saturate((exp2(log2(abs(_968)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _970;
          float _1789 = (_1747 * 2.0f) * (_1780 + 0.5f);
          float _1790 = (_1748 * 2.0f) * (_1781 + 0.5f);
          float _1791 = (_1749 * 2.0f) * (_1782 + 0.5f);
          float _1819 = (((1.0f - (((1.0f - _1747) * 2.0f) * (0.5f - _1780))) - _1789) * select((_1747 < 0.5f), 0.0f, 1.0f)) + _1789;
          float _1820 = (((1.0f - (((1.0f - _1748) * 2.0f) * (0.5f - _1781))) - _1790) * select((_1748 < 0.5f), 0.0f, 1.0f)) + _1790;
          float _1821 = (((1.0f - (((1.0f - _1749) * 2.0f) * (0.5f - _1782))) - _1791) * select((_1749 < 0.5f), 0.0f, 1.0f)) + _1791;
          _1851 = (((((_1819 * 0.30530601739883423f) + 0.682171106338501f) * _1819) + 0.012522878125309944f) * _1819);
          _1852 = (((((_1820 * 0.30530601739883423f) + 0.682171106338501f) * _1820) + 0.012522878125309944f) * _1820);
          _1853 = (((((_1821 * 0.30530601739883423f) + 0.682171106338501f) * _1821) + 0.012522878125309944f) * _1821);
        } else {
          _1851 = (_1564 * (((_966 + -1.0f) * _970) + 1.0f));
          _1852 = (_1565 * (((_967 + -1.0f) * _970) + 1.0f));
          _1853 = (_1566 * (((_968 + -1.0f) * _970) + 1.0f));
        }
      }
    }
  }
  [branch]
  if (_ScanBlendModes.w < 0.5f) {
    _2138 = (lerp(_1851, _987, _991));
    _2139 = (lerp(_1852, _988, _991));
    _2140 = (lerp(_1853, _989, _991));
  } else {
    if (_ScanBlendModes.w < 1.5f) {
      _2138 = (_1851 + (_987 * _991));
      _2139 = (_1852 + (_988 * _991));
      _2140 = (_1853 + (_989 * _991));
    } else {
      if (_ScanBlendModes.w < 2.5f) {
        float _1902 = select((_1851 > 1.0f), _1851, saturate((exp2(log2(abs(_1851)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1903 = select((_1852 > 1.0f), _1852, saturate((exp2(log2(abs(_1852)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1904 = select((_1853 > 1.0f), _1853, saturate((exp2(log2(abs(_1853)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
        float _1935 = (select((_987 > 1.0f), _987, saturate((exp2(log2(abs(_987)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _991;
        float _1936 = (select((_988 > 1.0f), _988, saturate((exp2(log2(abs(_988)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _991;
        float _1937 = (select((_989 > 1.0f), _989, saturate((exp2(log2(abs(_989)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _991;
        float _1941 = (_1935 + 0.5f) * 2.0f;
        float _1942 = (_1936 + 0.5f) * 2.0f;
        float _1943 = (_1937 + 0.5f) * 2.0f;
        float _1951 = (lerp(_1941, 1.0f, _1902)) * _1902;
        float _1953 = (lerp(_1942, 1.0f, _1903)) * _1903;
        float _1955 = (lerp(_1943, 1.0f, _1904)) * _1904;
        float _1989 = (((((_1941 + -1.0f) * sqrt(_1902)) + ((_1902 * 2.0f) * (0.5f - _1935))) - _1951) * select((_1902 < 0.5f), 0.0f, 1.0f)) + _1951;
        float _1990 = (((((_1942 + -1.0f) * sqrt(_1903)) + ((_1903 * 2.0f) * (0.5f - _1936))) - _1953) * select((_1903 < 0.5f), 0.0f, 1.0f)) + _1953;
        float _1991 = (((((_1943 + -1.0f) * sqrt(_1904)) + ((_1904 * 2.0f) * (0.5f - _1937))) - _1955) * select((_1904 < 0.5f), 0.0f, 1.0f)) + _1955;
        _2138 = (((((_1989 * 0.30530601739883423f) + 0.682171106338501f) * _1989) + 0.012522878125309944f) * _1989);
        _2139 = (((((_1990 * 0.30530601739883423f) + 0.682171106338501f) * _1990) + 0.012522878125309944f) * _1990);
        _2140 = (((((_1991 * 0.30530601739883423f) + 0.682171106338501f) * _1991) + 0.012522878125309944f) * _1991);
      } else {
        if (_ScanBlendModes.w < 3.5f) {
          float _2034 = select((_1851 > 1.0f), _1851, saturate((exp2(log2(abs(_1851)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _2035 = select((_1852 > 1.0f), _1852, saturate((exp2(log2(abs(_1852)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _2036 = select((_1853 > 1.0f), _1853, saturate((exp2(log2(abs(_1853)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f));
          float _2067 = (select((_987 > 1.0f), _987, saturate((exp2(log2(abs(_987)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _991;
          float _2068 = (select((_988 > 1.0f), _988, saturate((exp2(log2(abs(_988)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _991;
          float _2069 = (select((_989 > 1.0f), _989, saturate((exp2(log2(abs(_989)) * 0.4166666567325592f) * 1.0549999475479126f) + -0.054999999701976776f)) + -0.5f) * _991;
          float _2076 = (_2034 * 2.0f) * (_2067 + 0.5f);
          float _2077 = (_2035 * 2.0f) * (_2068 + 0.5f);
          float _2078 = (_2036 * 2.0f) * (_2069 + 0.5f);
          float _2106 = (((1.0f - (((1.0f - _2034) * 2.0f) * (0.5f - _2067))) - _2076) * select((_2034 < 0.5f), 0.0f, 1.0f)) + _2076;
          float _2107 = (((1.0f - (((1.0f - _2035) * 2.0f) * (0.5f - _2068))) - _2077) * select((_2035 < 0.5f), 0.0f, 1.0f)) + _2077;
          float _2108 = (((1.0f - (((1.0f - _2036) * 2.0f) * (0.5f - _2069))) - _2078) * select((_2036 < 0.5f), 0.0f, 1.0f)) + _2078;
          _2138 = (((((_2106 * 0.30530601739883423f) + 0.682171106338501f) * _2106) + 0.012522878125309944f) * _2106);
          _2139 = (((((_2107 * 0.30530601739883423f) + 0.682171106338501f) * _2107) + 0.012522878125309944f) * _2107);
          _2140 = (((((_2108 * 0.30530601739883423f) + 0.682171106338501f) * _2108) + 0.012522878125309944f) * _2108);
        } else {
          _2138 = (_1851 * (((_987 + -1.0f) * _991) + 1.0f));
          _2139 = (_1852 * (((_988 + -1.0f) * _991) + 1.0f));
          _2140 = (_1853 * (((_989 + -1.0f) * _991) + 1.0f));
        }
      }
    }
  }
  float4 _2147 = _VR_SourceImage.Sample(s_linear_repeat_sampler, float2((_RGBSeparateParams0.x + _24), ((_RGBSeparateParams0.y * _27) + _45)));
  float4 _2162 = _VR_SourceImage.Sample(s_linear_repeat_sampler, float2((_RGBSeparateParams0.z + _24), ((_RGBSeparateParams0.w * _27) + _45)));
  float4 _2177 = _VR_SourceImage.Sample(s_linear_repeat_sampler, float2((_RGBSeparateParams1.x + _24), ((_RGBSeparateParams1.y * _27) + _45)));
  _2147.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2147.xyz), 1.0f, 0.5f);
  _2162.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2162.xyz), 1.0f, 0.5f);
  _2177.xyz = renodx::tonemap::dice::BT709(renodx::draw::InvertIntermediatePass(_2177.xyz), 1.0f, 0.5f);
  float _2208 = (((-0.0f - _ScanlineParams.y) - _ScanlineParams.y) * _19) + _ScanlineParams.y;
  float _2209 = ((((((_ColorR.x * _2147.x) - _2138) + (_ColorG.x * _2162.y)) + (_ColorB.x * _2177.z)) * _RGBSeparateParams1.z) + _2138) + _2208;
  float _2210 = ((((((_ColorR.y * _2147.x) - _2139) + (_ColorG.y * _2162.y)) + (_ColorB.y * _2177.z)) * _RGBSeparateParams1.z) + _2139) + _2208;
  float _2211 = ((((((_ColorR.z * _2147.x) - _2140) + (_ColorG.z * _2162.y)) + (_ColorB.z * _2177.z)) * _RGBSeparateParams1.z) + _2140) + _2208;
  if (_TextureSheetParams.w > 0.5f) {
    int _2218 = int(_TextureSheetParams.x);
    int _2226 = int(_TextureSheetParams.z);
    float4 _2237 = _VRTextureSheetTex.Sample(s_linear_repeat_sampler, float2(((float((int)(_2226 % _2218)) * (1.0f / float((int)(_2218)))) + (_24 / _TextureSheetParams.x)), ((float((int)(_2226 / _2218)) * (1.0f / float((int)(int(_TextureSheetParams.y))))) + (_45 / _TextureSheetParams.y))));
    float _2250 = _TextureSheetColor.w * _2237.w;
    float _2251 = 1.0f - _2250;
    _2262 = ((_2251 * _2209) + ((_TextureSheetColor.x * _2237.x) * _2250));
    _2263 = ((_2251 * _2210) + ((_TextureSheetColor.y * _2237.y) * _2250));
    _2264 = ((_2251 * _2211) + ((_TextureSheetColor.z * _2237.z) * _2250));
  } else {
    _2262 = _2209;
    _2263 = _2210;
    _2264 = _2211;
  }
  SV_Target.x = _2262;
  SV_Target.y = _2263;
  SV_Target.z = _2264;
  SV_Target.w = (_2208 + _51.w);
  SV_Target.xyz = renodx::draw::RenderIntermediatePass(renodx::tonemap::UpgradeToneMap(untonemapped.xyz, _51.xyz, SV_Target.xyz));
  return SV_Target;
}
