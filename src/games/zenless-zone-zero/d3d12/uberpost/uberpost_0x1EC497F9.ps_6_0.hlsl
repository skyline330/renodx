#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t8 : register(t8);

cbuffer cb0 : register(b0) {
  float cb0_054w : packoffset(c054.w);
  float cb0_061x : packoffset(c061.x);
  float cb0_138x : packoffset(c138.x);
  float cb0_138y : packoffset(c138.y);
  float cb0_138w : packoffset(c138.w);
};

cbuffer cb1 : register(b1) {
  float4 UberPostBaseCBuffer_000 : packoffset(c000.x);
  float4 UberPostBaseCBuffer_016 : packoffset(c001.x);
  float4 UberPostBaseCBuffer_032 : packoffset(c002.x);
  float4 UberPostBaseCBuffer_048 : packoffset(c003.x);
  float4 UberPostBaseCBuffer_064 : packoffset(c004.x);
  float4 UberPostBaseCBuffer_080 : packoffset(c005.x);
  float4 UberPostBaseCBuffer_096 : packoffset(c006.x);
  float4 UberPostBaseCBuffer_112 : packoffset(c007.x);
  float4 UberPostBaseCBuffer_128 : packoffset(c008.x);
  float4 UberPostBaseCBuffer_144 : packoffset(c009.x);
  float4 UberPostBaseCBuffer_160 : packoffset(c010.x);
  float4 UberPostBaseCBuffer_176 : packoffset(c011.x);
  float4 UberPostBaseCBuffer_192 : packoffset(c012.x);
  float4 UberPostBaseCBuffer_208 : packoffset(c013.x);
  float4 UberPostBaseCBuffer_224 : packoffset(c014.x);
  float4 UberPostBaseCBuffer_240 : packoffset(c015.x);
  float4 UberPostBaseCBuffer_256 : packoffset(c016.x);
  float4 UberPostBaseCBuffer_272 : packoffset(c017.x);
  float4 UberPostBaseCBuffer_288 : packoffset(c018.x);
  float4 UberPostBaseCBuffer_304 : packoffset(c019.x);
  float4 UberPostBaseCBuffer_320 : packoffset(c020.x);
  float4 UberPostBaseCBuffer_336 : packoffset(c021.x);
  float4 UberPostBaseCBuffer_352 : packoffset(c022.x);
  float4 UberPostBaseCBuffer_368 : packoffset(c023.x);
  float4 UberPostBaseCBuffer_384 : packoffset(c024.x);
  float4 UberPostBaseCBuffer_400 : packoffset(c025.x);
  float4 UberPostBaseCBuffer_416 : packoffset(c026.x);
  float4 UberPostBaseCBuffer_432 : packoffset(c027.x);
  float4 UberPostBaseCBuffer_448 : packoffset(c028.x);
  float4 UberPostBaseCBuffer_464 : packoffset(c029.x);
  float4 UberPostBaseCBuffer_480 : packoffset(c030.x);
  float4 UberPostBaseCBuffer_496 : packoffset(c031.x);
  float4 UberPostBaseCBuffer_512 : packoffset(c032.x);
  float4 UberPostBaseCBuffer_528 : packoffset(c033.x);
  float4 UberPostBaseCBuffer_544 : packoffset(c034.x);
  float4 UberPostBaseCBuffer_560 : packoffset(c035.x);
  float4 UberPostBaseCBuffer_576 : packoffset(c036.x);
  float4 UberPostBaseCBuffer_592 : packoffset(c037.x);
};

cbuffer cb2 : register(b2) {
  float4 UberPostFXColorCorrectionCBuffer_000 : packoffset(c000.x);
  float4 UberPostFXColorCorrectionCBuffer_016 : packoffset(c001.x);
  float4 UberPostFXColorCorrectionCBuffer_032 : packoffset(c002.x);
  float4 UberPostFXColorCorrectionCBuffer_048 : packoffset(c003.x);
  float4 UberPostFXColorCorrectionCBuffer_064 : packoffset(c004.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

SamplerState s4 : register(s4);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  bool _22 = (UberPostBaseCBuffer_176.w > 0.0f);
  float _54;
  float _55;
  float _56;
  float _57;
  float _58;
  float _59;
  float _60;
  float _61;
  float _178;
  float _179;
  float _180;
  float _186;
  float _187;
  float _188;
  float _189;
  float _321;
  float _322;
  float _323;
  float _333;
  float _334;
  float _335;
  float _336;
  float _375;
  float _376;
  float _377;
  float _466;
  float _467;
  float _468;
  float _527;
  float _528;
  float _529;
  float _658;
  float _659;
  float _660;
  if (_22) {
    float4 _26 = t6.SampleBias(s3, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
    float _30 = _26.x * 0.10000000149011612f;
    float _31 = _26.y * 0.10000000149011612f;
    float _36 = (_30 * _26.z) * UberPostBaseCBuffer_176.w;
    float _37 = (_31 * _26.z) * UberPostBaseCBuffer_176.w;
    _54 = (_30 + TEXCOORD.x);
    _55 = (_31 + TEXCOORD.y);
    _56 = ((_36 * UberPostBaseCBuffer_176.x) + _30);
    _57 = ((_37 * UberPostBaseCBuffer_176.x) + _31);
    _58 = ((_36 * UberPostBaseCBuffer_176.y) + _30);
    _59 = ((_37 * UberPostBaseCBuffer_176.y) + _31);
    _60 = ((UberPostBaseCBuffer_176.z * _36) + _30);
    _61 = ((UberPostBaseCBuffer_176.z * _37) + _31);
  } else {
    _54 = TEXCOORD.x;
    _55 = TEXCOORD.y;
    _56 = 0.0f;
    _57 = 0.0f;
    _58 = 0.0f;
    _59 = 0.0f;
    _60 = 0.0f;
    _61 = 0.0f;
  }
  if (UberPostBaseCBuffer_384.w > 0.5f) {
    float _73 = ((TEXCOORD.x * 2.0f) - UberPostBaseCBuffer_384.x) + -0.5f;
    float _75 = ((TEXCOORD.y * 2.0f) - UberPostBaseCBuffer_384.y) + -0.5f;
    float _79 = dot(float2(_73, _75), float2(_73, _75)) * -0.3333333432674408f;
    float _81 = (_79 * _73) * UberPostBaseCBuffer_192.z;
    float _83 = (_79 * _75) * UberPostBaseCBuffer_192.z;
    float _85 = rsqrt(dot(float3(_81, _83, 9.999999747378752e-05f), float3(_81, _83, 9.999999747378752e-05f)));
    float _92 = UberPostBaseCBuffer_192.z * 0.9428090453147888f;
    float _97 = exp2(log2(sqrt((_81 * _81) + (_83 * _83)) / _92) * UberPostBaseCBuffer_384.z);
    float _99 = ((_81 * _85) * _92) * _97;
    float _101 = ((_83 * _85) * _92) * _97;
    float4 _110 = t2.SampleBias(s0, float2(((_56 + TEXCOORD.x) + (_99 * UberPostBaseCBuffer_400.w)), ((_57 + TEXCOORD.y) + (_101 * UberPostBaseCBuffer_400.w))), cb0_061x, int2(0, 0));
    float4 _120 = t2.SampleBias(s0, float2(((_58 + TEXCOORD.x) + (UberPostBaseCBuffer_416.w * _99)), ((_59 + TEXCOORD.y) + (UberPostBaseCBuffer_416.w * _101))), cb0_061x, int2(0, 0));
    float4 _130 = t2.SampleBias(s0, float2(((_60 + TEXCOORD.x) + (UberPostBaseCBuffer_432.w * _99)), ((_61 + TEXCOORD.y) + (UberPostBaseCBuffer_432.w * _101))), cb0_061x, int2(0, 0));
    float4 _156 = t2.SampleBias(s0, float2(_54, _55), cb0_061x, int2(0, 0));
    _186 = _156.w;
    _187 = (((UberPostBaseCBuffer_416.x * _120.y) + (UberPostBaseCBuffer_400.x * _110.x)) + (UberPostBaseCBuffer_432.x * _130.z));
    _188 = (((UberPostBaseCBuffer_416.y * _120.y) + (UberPostBaseCBuffer_400.y * _110.x)) + (UberPostBaseCBuffer_432.y * _130.z));
    _189 = (((UberPostBaseCBuffer_416.z * _120.y) + (UberPostBaseCBuffer_400.z * _110.x)) + (UberPostBaseCBuffer_432.z * _130.z));
  } else {
    if (_22) {
      float4 _162 = t2.SampleBias(s0, float2((_56 + TEXCOORD.x), (_57 + TEXCOORD.y)), cb0_061x, int2(0, 0));
      float4 _166 = t2.SampleBias(s0, float2((_58 + TEXCOORD.x), (_59 + TEXCOORD.y)), cb0_061x, int2(0, 0));
      float4 _170 = t2.SampleBias(s0, float2((_60 + TEXCOORD.x), (_61 + TEXCOORD.y)), cb0_061x, int2(0, 0));
      _178 = _162.x;
      _179 = _166.y;
      _180 = _170.z;
    } else {
      float4 _173 = t2.SampleBias(s0, float2(_54, _55), cb0_061x, int2(0, 0));
      _178 = _173.x;
      _179 = _173.y;
      _180 = _173.z;
    }
    float4 _183 = t2.SampleBias(s0, float2(_54, _55), cb0_061x, int2(0, 0));
    _186 = _183.w;
    _187 = _178;
    _188 = _179;
    _189 = _180;
  }
  bool _196 = (UberPostBaseCBuffer_336.y > 0.0f);
  if ((bool)(UberPostBaseCBuffer_336.z < 0.5f) && ((bool)((bool)(UberPostBaseCBuffer_336.x > 0.0f) || _196))) {
    float _206 = fmod(((cb0_138y * _55) * UberPostBaseCBuffer_448.x), 2.0f);
    float _214 = (((select((_206 > 1.0f), (2.0f - _206), _206) * 2.0f) + -1.0f) * UberPostBaseCBuffer_448.z) + _54;
    float _217 = cb0_138w * cb0_138x;
    float4 _238 = t7.SampleBias(s4, float2(_214, ((select(((frac((((_214 + abs(UberPostBaseCBuffer_464.y)) * _217) - (UberPostBaseCBuffer_464.y * _55)) / ((_217 * 2.0f) * UberPostBaseCBuffer_464.x)) * 2.0f) <= 1.0f), 0.9999899864196777f, -1.0f) * UberPostBaseCBuffer_464.z) + _55)), cb0_061x, int2(0, 0));
    float _275 = ((((-0.699999988079071f - _238.x) + (exp2(log2(abs(_238.x)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_238.x < 0.30000001192092896f), 0.0f, 1.0f)) + _238.x) * UberPostBaseCBuffer_336.x;
    float _276 = ((((-0.699999988079071f - _238.y) + (exp2(log2(abs(_238.y)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_238.y < 0.30000001192092896f), 0.0f, 1.0f)) + _238.y) * UberPostBaseCBuffer_336.x;
    float _277 = ((((-0.699999988079071f - _238.z) + (exp2(log2(abs(_238.z)) * 0.3333333432674408f) * 1.4938015937805176f)) * select((_238.z < 0.30000001192092896f), 0.0f, 1.0f)) + _238.z) * UberPostBaseCBuffer_336.x;
    float _278 = dot(float3(_187, _188, _189), float3(0.29899999499320984f, 0.5870000123977661f, 0.11400000005960464f));
    bool _281 = (UberPostBaseCBuffer_352.x > 0.5f);
    float _294 = select(_281, ((((_275 * _278) - _275) * _186) + _275), _275);
    float _295 = select(_281, ((((_276 * _278) - _276) * _186) + _276), _276);
    float _296 = select(_281, ((((_277 * _278) - _277) * _186) + _277), _277);
    if (_196) {
      float4 _307 = t8.SampleBias(s0, float2(((UberPostBaseCBuffer_320.x * _54) + UberPostBaseCBuffer_320.z), ((UberPostBaseCBuffer_320.y * _55) + UberPostBaseCBuffer_320.w)), cb0_061x, int2(0, 0));
      _321 = (((_307.x * _275) * UberPostBaseCBuffer_336.y) + _294);
      _322 = (((_307.y * _276) * UberPostBaseCBuffer_336.y) + _295);
      _323 = (((_307.z * _277) * UberPostBaseCBuffer_336.y) + _296);
    } else {
      _321 = _294;
      _322 = _295;
      _323 = _296;
    }
    _333 = (_321 + _187);
    _334 = (_322 + _188);
    _335 = (_323 + _189);
    _336 = saturate((((_322 + _321) + _323) * 0.33329999446868896f) + _186);
  } else {
    _333 = _187;
    _334 = _188;
    _335 = _189;
    _336 = _186;
  }
  [branch]
  if (UberPostBaseCBuffer_112.z > 0.0f) {
    float _353 = abs(_55 - UberPostBaseCBuffer_112.y) * UberPostBaseCBuffer_112.z * min(1.f, CUSTOM_VIGNETTE);
    float _355 = (UberPostBaseCBuffer_112.z * UberPostBaseCBuffer_096.w) * abs(_54 - UberPostBaseCBuffer_112.x);
    float _361 = exp2(log2(saturate(1.0f - dot(float2(_355, _353), float2(_355, _353)))) * UberPostBaseCBuffer_112.w * max(1.f, CUSTOM_VIGNETTE));
    _375 = (((_361 * (1.0f - UberPostBaseCBuffer_096.x)) + UberPostBaseCBuffer_096.x) * _333);
    _376 = (((_361 * (1.0f - UberPostBaseCBuffer_096.y)) + UberPostBaseCBuffer_096.y) * _334);
    _377 = (((_361 * (1.0f - UberPostBaseCBuffer_096.z)) + UberPostBaseCBuffer_096.z) * _335);
  } else {
    _375 = _333;
    _376 = _334;
    _377 = _335;
  }
  float _426;
  float _427;
  float _428;
  if (RENODX_TONE_MAP_TYPE > 0) {
    float3 untonemapped = float3(_375, _376, _377);
    float3 tonemapped = UberpostArriLutSampleDX12(untonemapped, t4, s0, UberPostBaseCBuffer_000.xyz);
    _426 = tonemapped.x;
    _427 = tonemapped.y;
    _428 = tonemapped.z;
  } else {
    float _400 = saturate((log2((_377 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z;
    float _401 = floor(_400);
    float _407 = ((saturate((log2((_376 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.y;
    float _409 = (_401 * UberPostBaseCBuffer_000.y) + (((saturate((log2((_375 * 5.555555820465088f) + 0.047995999455451965f) * 0.07349978387355804f) + 0.3860360085964203f) * UberPostBaseCBuffer_000.z) + 0.5f) * UberPostBaseCBuffer_000.x);
    float _410 = _400 - _401;
    float4 _412 = t4.SampleLevel(s0, float2((_409 + UberPostBaseCBuffer_000.y), _407), 0.0f);
    float4 _416 = t4.SampleLevel(s0, float2(_409, _407), 0.0f);
    _426 = ((_412.x - _416.x) * _410) + _416.x;
    _427 = ((_412.y - _416.y) * _410) + _416.y;
    _428 = ((_412.z - _416.z) * _410) + _416.z;
  }

  if (UberPostBaseCBuffer_208.x > 0.0f) {
    float4 _445 = t3.SampleBias(s1, float2(((UberPostBaseCBuffer_128.x * TEXCOORD.x) + UberPostBaseCBuffer_128.z), ((UberPostBaseCBuffer_128.y * TEXCOORD.y) + UberPostBaseCBuffer_128.w)), cb0_061x, int2(0, 0));
    float _448 = (_445.w + -0.5f) * 2.0f;
    float _452 = 1.0f - (sqrt(dot(float3(_426, _427, _428), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) * UberPostBaseCBuffer_208.y);
    _466 = ((((UberPostBaseCBuffer_208.x * _426) * _448) * _452) + _426);
    _467 = ((((UberPostBaseCBuffer_208.x * _427) * _448) * _452) + _427);
    _468 = ((((UberPostBaseCBuffer_208.x * _428) * _448) * _452) + _428);
  } else {
    _466 = _426;
    _467 = _427;
    _468 = _428;
  }
  float _473 = ((_467 + _466) + _468) * 0.3333333432674408f;
  float _480 = ((_466 - _473) * UberPostFXColorCorrectionCBuffer_000.w) + _473;
  float _481 = ((_467 - _473) * UberPostFXColorCorrectionCBuffer_000.w) + _473;
  float _482 = ((_468 - _473) * UberPostFXColorCorrectionCBuffer_000.w) + _473;
  if (cb0_054w > 0.5f) {
    float4 _490 = t0.SampleBias(s0, float2(dot(float3(_480, _481, _482), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f)), 0.5f), cb0_061x, int2(0, 0));
    float4 _494 = t1.SampleBias(s2, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
    float _500 = select(select((_494.w > 0.6499999761581421f), (_494.w > 0.9900000095367432f), (_494.w > 0.3199999928474426f)), 1.0f, 0.0f);
    if (!(UberPostFXColorCorrectionCBuffer_064.x < 0.5f)) {
      if (UberPostFXColorCorrectionCBuffer_064.x < 1.5f) {
        _527 = ((_500 * (_466 - _490.x)) + _490.x);
        _528 = ((_500 * (_467 - _490.y)) + _490.y);
        _529 = ((_500 * (_468 - _490.z)) + _490.z);
      } else {
        _527 = ((_500 * (_490.x - _466)) + _466);
        _528 = ((_500 * (_490.y - _467)) + _467);
        _529 = ((_500 * (_490.z - _468)) + _468);
      }
    } else {
      _527 = _490.x;
      _528 = _490.y;
      _529 = _490.z;
    }
  } else {
    _527 = _480;
    _528 = _481;
    _529 = _482;
  }
  float _544 = (((1.0f - _527) - saturate(_527)) * UberPostFXColorCorrectionCBuffer_016.w) + _527;
  float _545 = (((1.0f - _528) - saturate(_528)) * UberPostFXColorCorrectionCBuffer_016.w) + _528;
  float _546 = (((1.0f - _529) - saturate(_529)) * UberPostFXColorCorrectionCBuffer_016.w) + _529;
  float _554 = saturate((saturate(dot(float3(_544, _545, _546), float3(0.2126729041337967f, 0.7151522040367126f, 0.07217500358819962f))) - UberPostFXColorCorrectionCBuffer_032.y) * UberPostFXColorCorrectionCBuffer_032.z);
  // float _581 = saturate((((UberPostFXColorCorrectionCBuffer_000.x - _544) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _554)) * UberPostFXColorCorrectionCBuffer_032.x) + _544);
  float _581 = ((((UberPostFXColorCorrectionCBuffer_000.x - _544) + ((UberPostFXColorCorrectionCBuffer_016.x - UberPostFXColorCorrectionCBuffer_000.x) * _554)) * UberPostFXColorCorrectionCBuffer_032.x) + _544);
  // float _582 = saturate((((UberPostFXColorCorrectionCBuffer_000.y - _545) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _554)) * UberPostFXColorCorrectionCBuffer_032.x) + _545);
  float _582 = ((((UberPostFXColorCorrectionCBuffer_000.y - _545) + ((UberPostFXColorCorrectionCBuffer_016.y - UberPostFXColorCorrectionCBuffer_000.y) * _554)) * UberPostFXColorCorrectionCBuffer_032.x) + _545);
  // float _583 = saturate((((UberPostFXColorCorrectionCBuffer_000.z - _546) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _554)) * UberPostFXColorCorrectionCBuffer_032.x) + _546);
  float _583 = ((((UberPostFXColorCorrectionCBuffer_000.z - _546) + ((UberPostFXColorCorrectionCBuffer_016.z - UberPostFXColorCorrectionCBuffer_000.z) * _554)) * UberPostFXColorCorrectionCBuffer_032.x) + _546);
  // HDR FX Mask Blend
  float3 result = float3(_581, _582, _583);
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    float m = smoothstep(0.0f, 1.0f, t5.Sample(s0, TEXCOORD).x);

    if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
      // Simple lighten
      float3 blend_factor = pow(m, 2.2f);
      result = result * (1.0f + blend_factor * 0.5f);
    } else {
      // Overlay
      float3 blend = UberPostFXColorCorrectionCBuffer_048.xyz;
      result = result * lerp(1.0f, blend * 2.0f, m);
    }
  }
  _658 = result.x;
  _659 = result.y;
  _660 = result.z;

  /*
  if (UberPostFXColorCorrectionCBuffer_032.w > 0.5f) {
    float4 _589 = t5.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), cb0_061x, int2(0, 0));
    if (UberPostFXColorCorrectionCBuffer_048.w < 0.5f) {
      _658 = min((_589.x + _581), 1.0f);
      _659 = min((_589.x + _582), 1.0f);
      _660 = min((_589.x + _583), 1.0f);
    } else {
      float _626 = select((_581 > 0.5f), 0.0f, 1.0f);
      float _627 = select((_582 > 0.5f), 0.0f, 1.0f);
      float _628 = select((_583 > 0.5f), 0.0f, 1.0f);
      float _647 = 1.0f - _589.x;
      _658 = (((((1.0f - (((1.0f - _581) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.x))) * saturate(1.0f - _626)) + (((_581 * 2.0f) * _626) * UberPostFXColorCorrectionCBuffer_048.x)) * _589.x) + (_647 * _581));
      _659 = (((((1.0f - (((1.0f - _582) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.y))) * saturate(1.0f - _627)) + (((_582 * 2.0f) * _627) * UberPostFXColorCorrectionCBuffer_048.y)) * _589.x) + (_647 * _582));
      _660 = (((((1.0f - (((1.0f - _583) * 2.0f) * (1.0f - UberPostFXColorCorrectionCBuffer_048.z))) * saturate(1.0f - _628)) + (((_583 * 2.0f) * _628) * UberPostFXColorCorrectionCBuffer_048.z)) * _589.x) + (_647 * _583));
    }
  } else {
    _658 = _581;
    _659 = _582;
    _660 = _583;
  }
  */

  SV_Target.x = _658;
  SV_Target.y = _659;
  SV_Target.z = _660;
  SV_Target.w = _336;

  SV_Target.xyz = renodx::draw::RenderIntermediatePass(SV_Target.xyz);

  return SV_Target;
}
