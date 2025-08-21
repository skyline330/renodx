// Fountain found in episode 3, causes NaNs when ADSed over

// ---- Created with 3Dmigoto v1.4.1 on Mon Aug 11 23:55:54 2025

cbuffer functionConstants : register(b0)
{
  float4 lightProbeShR : packoffset(c0);
  float4 lightProbeShG : packoffset(c1);
  float4 lightProbeShB : packoffset(c2);
  float4 lightProbeShO : packoffset(c3);
}

cbuffer viewConstants : register(b2)
{
  float1 time : packoffset(c0);
  float3 vc_pad0_ : packoffset(c0.y);
  float4 screenSize : packoffset(c1);
  float3 debugNonFiniteColor : packoffset(c2);
  float1 vc_pad2_ : packoffset(c2.w);
  float4x4 viewMatrix : packoffset(c3);
  float4x4 projMatrix : packoffset(c7);
  float4x4 viewProjMatrix : packoffset(c11);
  float4x4 crViewProjMatrix : packoffset(c15);
  float4 projectionKxKyKzKw : packoffset(c19);
  float3 cameraPos : packoffset(c20);
  float1 vc_pad8_ : packoffset(c20.w);
  float3 transparentStartAndSlopeAndClamp : packoffset(c21);
  float1 vc_pad9_ : packoffset(c21.w);
  float4 transparentCurve : packoffset(c22);
}

cbuffer externalConstants : register(b1)
{
  float external_Overlay_Tiling : packoffset(c0);
  float3 vc_pad0 : packoffset(c0.y);
  float external_OverlayValue : packoffset(c1);
  float3 vc_pad1 : packoffset(c1.y);
  float external_OverlayWetValue : packoffset(c2);
  float3 vc_pad2 : packoffset(c2.y);
  float external_Puddle_Size : packoffset(c3);
  float3 vc_pad3 : packoffset(c3.y);
  float external_Puddle_Masking : packoffset(c4);
  float3 vc_pad4 : packoffset(c4.y);
  float external_Puddle__Wetness : packoffset(c5);
  float3 vc_pad5 : packoffset(c5.y);
  float3 external_Water_Colour : packoffset(c6);
  float1 vc_pad6 : packoffset(c6.w);
  float external_SpecularScale : packoffset(c7);
  float3 vc_pad7 : packoffset(c7.y);
  float external_SpecularSmoothnessScale : packoffset(c8);
  float3 vc_pad8 : packoffset(c8.y);
  float external_OverlaySmoothness : packoffset(c9);
  float3 vc_pad9 : packoffset(c9.y);
  float external_OverlayWetSmoothness : packoffset(c10);
  float3 vc_pad10 : packoffset(c10.y);
  float external_Puddle_WaveSize : packoffset(c11);
  float3 vc_pad11 : packoffset(c11.y);
  float2 external_Puddle_WaveSpeeds : packoffset(c12);
  float2 vc_pad12 : packoffset(c12.z);
  float external_Puddle_WaveStrength : packoffset(c13);
  float3 vc_pad13 : packoffset(c13.y);
}

SamplerState sampler0_s : register(s0);
SamplerState sampler1_s : register(s1);
Texture2D<float4> texture_bestFitNormalScaleTexture : register(t1);
Texture2D<float4> texture_Diffuse : register(t2);
Texture2D<float4> texture_Overlay_Mult : register(t3);
Texture2D<float4> texture_Texture : register(t4);
Texture2D<float4> texture_Specular : register(t5);
Texture2D<float4> texture_Normal : register(t6);
Texture2D<float4> texture_Texture3 : register(t7);


// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float4 v4 : TEXCOORD3,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = external_Puddle_WaveSize * v1.xz;
  r0.zw = external_Puddle_WaveSpeeds.xy * time;
  r1.xy = float2(-0.819999993,-1.03999996) * r0.zw;
  r0.zw = v1.xz * external_Puddle_WaveSize + r0.zw;
  r2.xyz = texture_Texture3.Sample(sampler1_s, r0.zw).xyw;
  r0.xy = r0.xy * float2(1.16545451,1.16545451) + r1.xy;
  r0.xyz = texture_Texture3.Sample(sampler1_s, r0.xy).xyw;
  r0.x = r0.x * r0.z;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.z = sqrt(r0.w);
  r2.x = r2.x * r2.z;
  r1.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r1.z = sqrt(r0.w);
  r0.xyz = r1.xyz + r0.xyz;
  r0.xyz = float3(-0,-0,-1) + r0.xyz;
  r0.w = external_Puddle_WaveStrength * external_Puddle__Wetness;
  r0.xyz = r0.www * r0.xyz + float3(0,0,1);
  r1.x = v1.w;
  r1.y = v2.w;
  r2.xyz = texture_Normal.Sample(sampler1_s, r1.xy).xyw;
  r2.x = r2.x * r2.z;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r0.xyz = -r2.xyz + r0.xyz;
  r1.zw = external_Puddle_Size * v1.xz;
  r3.xyzw = float4(22.1515102,22.1515102,0.348454505,0.348454505) * r1.zwzw;
  r0.w = texture_Texture.Sample(sampler1_s, r1.zw).x;
  r1.z = texture_Texture.Sample(sampler1_s, r3.xy).y;
  r1.w = texture_Texture.Sample(sampler1_s, r3.wz).z;
  r1.z = -0.5 + r1.z;
  r1.z = 0.0299999993 * r1.z;
  r0.w = saturate(r0.w * r1.w + r1.z);
  r3.xyz = texture_Specular.Sample(sampler1_s, r1.xy).xyz;
  r1.z = r0.w * r3.z + -r0.w;
  r0.w = r1.z * external_Puddle_Masking + r0.w;
  r4.xyz = float3(0.720000029,0.949999988,0.720000029) + -external_Puddle__Wetness;
  r1.z = 1 + -r4.x;
  r1.zw = r0.ww * r1.zz + -r4.yz;
  r1.zw = saturate(float2(19.9999962,12.5000048) * r1.zw);
  r0.xyz = r1.zzz * r0.xyz + r2.xyz;
  r2.x = dot(r0.xyz, v2.xyz);
  r2.y = dot(r0.xyz, v3.xyz);
  r2.z = dot(r0.xyz, v4.xyz);
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r2.xyz * r0.xxx;
  r2.x = max(abs(r0.x), abs(r0.y));
  r2.x = max(r2.x, abs(r0.z));
  r2.yzw = abs(r0.xyz) / r2.xxx;
  r3.zw = cmp(abs(r0.zy) < r2.xx);
  r2.xyz = float3(511.5,511.5,511.5) * r2.yzw;
  r2.xyz = floor(r2.xyz);
  r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = float3(0.001953125,0.001953125,0.001953125) * r2.xyz;
  r4.xy = r3.ww ? r2.yz : r2.xz;
  r3.zw = r3.zz ? r4.xy : r2.xy;
  r2.w = texture_bestFitNormalScaleTexture.Sample(sampler0_s, r3.zw).x;
  r4.xyz = cmp(float3(0,0,0) < r0.xyz);
  r5.xyz = cmp(r0.xyz < float3(0,0,0));
  r4.xyz = (int3)-r4.xyz + (int3)r5.xyz;
  r4.xyz = (int3)r4.xyz;
  r2.xyz = r4.xyz * r2.xyz;
  r2.xyz = r2.xyz * r2.www;
  o0.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r2.xy = external_Overlay_Tiling * r1.xy;
  r4.xyz = texture_Diffuse.Sample(sampler1_s, r1.xy).xyz;
  r2.xyz = texture_Overlay_Mult.Sample(sampler1_s, r2.xy).xyz;
  r1.x = external_SpecularSmoothnessScale * r3.y;
  r1.y = r1.x * r2.x + -r1.x;
  r1.x = r1.y * external_OverlaySmoothness + r1.x;
  r1.x = r1.w * 0.200000003 + r1.x;
  r1.y = r2.x * 0.980000019 + -0.980000019;
  r2.xyz = r4.xyz * r2.xyz + -r4.xyz;
  r1.y = r1.y * external_OverlayWetSmoothness + 0.980000019;
  r1.y = r1.y + -r1.x;
  o0.w = r1.z * r1.y + r1.x;
  r1.x = external_OverlayWetValue + -external_OverlayValue;
  r1.x = r1.z * r1.x + external_OverlayValue;
  r2.xyz = r2.xyz * r1.xxx + r4.xyz;
  r1.x = r1.w * -0.149999976 + 1;
  r3.yzw = external_Water_Colour.xyz + -r1.xxx;
  r3.yzw = r1.zzz * r3.yzw + r1.xxx;
  r2.xyz = r3.yzw * r2.xyz;
  o1.xyz = sqrt(r2.xyz);
  r1.x = -0.150000006 * r1.w;
  r1.x = r3.x * external_SpecularScale + r1.x;
  r1.y = 0.600000024 + -r1.x;
  r1.x = r1.z * r1.y + r1.x;
  o1.w = sqrt(r1.x);
  r0.w = 1;
  o2.x = dot(r0.xyzw, lightProbeShO.xyzw);
  o2.yzw = float3(0,0,0);
  r1.x = dot(r0.xyzw, lightProbeShR.xyzw);
  r1.y = dot(r0.xyzw, lightProbeShG.xyzw);
  r1.z = dot(r0.xyzw, lightProbeShB.xyzw);
  o3.xyz = max(float3(0,0,0), r1.xyz);
  o3.w = 0;
  o1 = saturate(o1); // added saturate to prevent NaNs
  return;
}