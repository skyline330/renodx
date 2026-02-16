#include "../../tonemap.hlsl"

// ---- Created with 3Dmigoto v1.4.1 on Sun Feb  8 15:24:39 2026
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[162];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0,
  out float o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v0.xy;
  r0.z = 0;
  r0.w = t0.Load(r0.xyz).x;
  r1.xyz = (int3)r0.xxy + int3(-1,1,-1);
  r1.w = 0;
  r2.x = t0.Load(r1.xzw).x;
  r0.z = t0.Load(r1.yzw).x;
  r1.w = cmp(r2.x >= r0.w);
  r2.yz = r1.xz;
  r2.xyz = r1.www ? r2.xyz : r0.wxy;
  r0.w = cmp(r0.z >= r2.x);
  r1.x = r0.z;
  r1.xyz = r0.www ? r1.xyz : r2.xyz;
  r0.xyz = (int3)r0.xyx + int3(-1,1,1);
  r0.w = 0;
  r2.x = t0.Load(r0.xyw).x;
  r0.w = t0.Load(r0.zyw).x;
  r1.w = cmp(r2.x >= r1.x);
  r2.yz = r0.xy;
  r1.xyz = r1.www ? r2.xyz : r1.xyz;
  r0.x = cmp(r0.w >= r1.x);
  r0.xy = r0.xx ? r0.zy : r1.yz;
  r0.zw = float2(0,0);
  r0.xyzw = t1.Load(r0.xyz).xyzw;
  r1.y = t1.SampleLevel(s0_s, v1.xy, 0).w;
  r0.xy = float2(-0.498039216,-0.498039216) + r0.xy;
  r1.zw = r0.xy + r0.xy;
  r1.zw = r1.zw * r1.zw;
  r2.xy = cmp(float2(0,0) < r0.xy);
  r0.xy = cmp(r0.xy < float2(0,0));
  r0.xy = (int2)-r2.xy + (int2)r0.xy;
  r0.xy = (int2)r0.xy;
  r0.xy = r1.zw * r0.xy;
  r1.z = cmp(0.5 < cb0[161].x);
  r0.xy = r1.zz ? float2(0,0) : r0.xy;
  r1.z = ddx_coarse(r0.w);
  r1.w = ddy_coarse(r0.w);
  r1.z = abs(r1.z) + abs(r1.w);
  r1.z = cmp(0.5 < r1.z);
  r1.x = r0.w;
  r1.xy = r1.zz ? float2(1,1) : r1.xy;
  r0.w = cmp(0.5 >= r1.x);
  r0.w = r0.w ? 1.000000 : 0;
  r2.xyzw = -r0.wwww * cb0[139].zwzw + v1.xyxy;
  r1.xzw = t2.SampleLevel(s0_s, r2.zw, 0).xyz;
  r3.xy = v1.xy + -r0.xy;
  r0.w = t4.SampleLevel(s1_s, r3.xy, 0).x;
  r0.w = r0.z + -r0.w;
  r0.w = cmp(0.100000001 < abs(r0.w));
  if (r0.w != 0) {
    o0.xyz = r1.xzw;
    o0.w = 1;
    o1.x = r0.z;
    return;
  }
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r3.xyz = t3.SampleLevel(s0_s, r3.xy, 0).xyz;
  r2.xyzw = cb0[137].zwzw * float4(-0.5,-0.5,0.5,0.5) + r2.xyzw;
  r4.xyz = t2.SampleLevel(s0_s, r2.xy, 0).xyz;
  r5.xyz = t2.SampleLevel(s0_s, r2.zw, 0).xyz;
  r6.xyz = r5.xyz + r4.xyz;
  r7.xyz = r1.xzw + r1.xzw;
  r6.xyz = r6.xyz * float3(4,4,4) + -r7.xyz;
  r7.xyz = t2.SampleLevel(s0_s, r2.zy, 0).xyz;
  r2.xyz = t2.SampleLevel(s0_s, r2.xw, 0).xyz;
  r7.xyz = r7.xyz + r4.xyz;
  r2.xyz = r7.xyz + r2.xyz;
  r2.xyz = r2.xyz + r5.xyz;
  r2.xyz = -r2.xyz * float3(0.25,0.25,0.25) + r1.xzw;
  r2.xyz = r2.xyz * cb0[138].xxx + r1.xzw;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = min(float3(65472,65472,65472), r2.xyz);
  r6.xyz = r6.xyz + r2.xyz;
  r6.xyz = float3(0.142857149,0.142857149,0.142857149) * r6.xyz;
  r0.y = max(r6.x, r6.y);
  r0.y = max(r0.y, r6.z);
  r0.y = 1 + r0.y;
  r0.y = rcp(r0.y);
  r6.xyz = r6.xyz * r0.yyy;
  r0.y = max(r4.x, r4.y);
  r0.y = max(r0.y, r4.z);
  r0.y = 1 + r0.y;
  r0.y = rcp(r0.y);
  r4.xyz = r4.xyz * r0.yyy;
  r0.y = max(r5.x, r5.y);
  r0.y = max(r0.y, r5.z);
  r0.y = 1 + r0.y;
  r0.y = rcp(r0.y);
  r5.xyz = r5.xyz * r0.yyy;
  r0.y = max(r2.x, r2.y);
  r0.y = max(r0.y, r2.z);
  r0.y = 1 + r0.y;
  r0.y = rcp(r0.y);
  r7.xyz = r2.xyz * r0.yyy;
  r0.w = dot(r7.xyz, float3(0.212672904,0.715152204,0.0721750036));
  r2.w = dot(r6.xyz, float3(0.212672904,0.715152204,0.0721750036));
  r6.xy = float2(80,5000) * r0.xx;
  r6.xy = min(float2(1,1), r6.xy);
  r6.xy = r6.xy * float2(-3.75,-0.25) + float2(4,0.949999988);
  r0.x = r2.w + -r0.w;
  r8.xyz = min(r5.xyz, r4.xyz);
  r8.xyz = -r6.xxx * abs(r0.xxx) + r8.xyz;
  r4.xyz = max(r5.xyz, r4.xyz);
  r4.xyz = r6.xxx * abs(r0.xxx) + r4.xyz;
  r0.x = max(r3.x, r3.y);
  r0.x = max(r0.x, r3.z);
  r0.x = 1 + r0.x;
  r0.x = rcp(r0.x);
  r5.xyz = r4.xyz + r8.xyz;
  r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
  r4.xyz = r4.xyz + -r8.xyz;
  r4.xyz = float3(0.5,0.5,0.5) * r4.xyz;
  r3.xyz = r3.xyz * r0.xxx + -r5.xyz;
  r6.xzw = max(float3(9.99999975e-05,9.99999975e-05,9.99999975e-05), abs(r3.xyz));
  r4.xyz = abs(r4.xyz) / r6.xzw;
  r0.x = min(r4.x, r4.y);
  r0.x = min(r0.x, r4.z);
  r0.x = min(1, r0.x);
  r3.xyz = r3.xyz * r0.xxx + r5.xyz;
  r0.xyw = -r2.xyz * r0.yyy + r3.xyz;
  r0.xyw = r6.yyy * r0.xyw + r7.xyz;
  r2.x = max(r0.x, r0.y);
  r2.x = max(r2.x, r0.w);
  r2.x = 1 + -r2.x;
  r2.x = rcp(r2.x);
  r0.xyw = r2.xxx * r0.xyw;
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.xyw = min(float3(65472,65472,65472), r0.xyw);
  r1.xzw = r1.xzw + -r0.xyw;
  o0.xyz = r1.yyy * r1.xzw + r0.xyw;
  o0.w = 1;
  o1.x = r0.z;
  return;
}