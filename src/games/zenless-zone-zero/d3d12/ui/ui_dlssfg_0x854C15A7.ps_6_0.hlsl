#include "../../common.hlsli"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

cbuffer cb0 : register(b0) {
  float cb0_171x : packoffset(c171.x);
  float cb0_171y : packoffset(c171.y);
};

SamplerState s0 : register(s0);

float4 main(
    noperspective float4 SV_Position: SV_Position,
    linear float2 TEXCOORD: TEXCOORD) : SV_Target {
  float4 SV_Target;

  float _10 = 1.0f - TEXCOORD.y;
  float4 _15 = t0.SampleLevel(s0, float2(TEXCOORD.x, select((cb0_171x > 0.5f), _10, TEXCOORD.y)), 0.0f);
  float4 _20 = t1.SampleLevel(s0, float2(TEXCOORD.x, select((cb0_171y > 0.5f), _10, TEXCOORD.y)), 0.0f);
  float _25 = 1.0f - _15.w;

  SV_Target.x = ((_20.x * _25) + _15.x);
  SV_Target.y = ((_20.y * _25) + _15.y);
  SV_Target.z = ((_20.z * _25) + _15.z);

  SV_Target.w = _20.w;

  if (CUSTOM_HIDE_UI > 0.f) {
    SV_Target.xyz = float3(_20.xyz);
  }

  return SV_Target;
}
