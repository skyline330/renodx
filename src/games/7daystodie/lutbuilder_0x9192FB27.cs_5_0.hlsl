#include "./shared.h"

// LUT3DBakerCustomTonemap

// ---- Created with 3Dmigoto v1.3.16 on Wed Jul 02 17:26:55 2025
Texture2D<float4> t0 : register(t0);

RWTexture3D<float4> u0 : register(u0); // manual fix

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[17];
}




// 3Dmigoto declarations
#define cmp -

[numthreads(4, 4, 4)] // manual fix
void main(uint3 vThreadID: SV_DispatchThreadID) // manual fix
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 4, 4, 4
  r0.xyz = (uint3)vThreadID.xyz;
  r1.xyz = cmp(r0.xyz < cb0[0].xxx);
  r0.w = r1.y ? r1.x : 0;
  r0.w = r1.z ? r0.w : 0;
  if (r0.w != 0) {
    r0.xyz = r0.xyz * cb0[0].yyy + float3(-0.413588405,-0.413588405,-0.413588405);
    r0.xyz = r0.xyz * cb0[3].zzz + float3(0.0275523961,0.0275523961,0.0275523961);
    r0.xyz = float3(13.6054821,13.6054821,13.6054821) * r0.xyz;
    r0.xyz = exp2(r0.xyz);
    r0.xyz = float3(-0.0479959995,-0.0479959995,-0.0479959995) + r0.xyz;
    r0.xyz = float3(0.179999992,0.179999992,0.179999992) * r0.xyz;
    r1.x = dot(float3(0.390404999,0.549941003,0.00892631989), r0.xyz);
    r1.y = dot(float3(0.070841603,0.963172019,0.00135775004), r0.xyz);
    r1.z = dot(float3(0.0231081992,0.128021002,0.936245024), r0.xyz);
    r0.xyz = cb0[1].xyz * r1.xyz;
    r1.x = dot(float3(2.85846996,-1.62879002,-0.0248910002), r0.xyz);
    r1.y = dot(float3(-0.210181996,1.15820003,0.000324280991), r0.xyz);
    r1.z = dot(float3(-0.0418119989,-0.118169002,1.06867003), r0.xyz);
    r0.xyz = cb0[2].xyz * r1.xyz;
    r1.x = dot(r0.xyz, cb0[4].xyz);
    r1.y = dot(r0.xyz, cb0[5].xyz);
    r1.z = dot(r0.xyz, cb0[6].xyz);
    r0.xyz = r1.xyz * cb0[9].xyz + cb0[7].xyz;
    r1.xyz = saturate(r0.xyz * float3(renodx::math::FLT_MAX, renodx::math::FLT_MAX, renodx::math::FLT_MAX) + float3(0.5,0.5,0.5));
    r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r0.xyz = log2(abs(r0.xyz));
    r0.xyz = cb0[8].xyz * r0.xyz;
    r0.xyz = exp2(r0.xyz);
    r0.xyz = r1.xyz * r0.xyz;
    r0.xyz = max(float3(0,0,0), r0.xyz);
    r0.w = cmp(r0.y >= r0.z);
    r0.w = r0.w ? 1.000000 : 0;
    r1.xy = r0.zy;
    r1.zw = float2(-1,0.666666687);
    r2.xy = -r1.xy + r0.yz;
    r2.zw = float2(1,-1);
    r1.xyzw = r0.wwww * r2.xyzw + r1.xyzw;
    r0.w = cmp(r0.x >= r1.x);
    r0.w = r0.w ? 1.000000 : 0;
    r2.xyz = r1.xyw;
    r2.w = r0.x;
    r1.xyw = r2.wyx;
    r1.xyzw = r1.xyzw + -r2.xyzw;
    r1.xyzw = r0.wwww * r1.xyzw + r2.xyzw;
    r0.w = min(r1.w, r1.y);
    r0.w = r1.x + -r0.w;
    r1.y = r1.w + -r1.y;
    r1.w = r0.w * 6 + 9.99999975e-005;
    r1.y = r1.y / r1.w;
    r1.y = r1.z + r1.y;
    r2.x = abs(r1.y);
    r1.y = 9.99999975e-005 + r1.x;
    r2.z = r0.w / r1.y;
    r2.yw = float2(0.25,0.25);
    r0.w = t0.SampleLevel(s0_s, r2.xy, 0).y;
    r0.w = saturate(r0.w);
    r0.w = r0.w + r0.w;
    r1.y = t0.SampleLevel(s0_s, r2.zw, 0).z;
    r1.y = saturate(r1.y);
    r0.w = dot(r1.yy, r0.ww);
    r3.x = dot(r0.xyz, float3(0.212672904,0.715152204,0.0721750036));
    r3.yw = float2(0.25,0.25);
    r0.x = t0.SampleLevel(s0_s, r3.xy, 0).w;
    r0.x = saturate(r0.x);
    r0.x = r0.x * r0.w;
    r3.z = cb0[3].x + r2.x;
    r0.y = t0.SampleLevel(s0_s, r3.zw, 0).x;
    r0.y = saturate(r0.y);
    r0.y = r0.y + r3.z;
    r0.yzw = float3(-0.5,0.5,-1.5) + r0.yyy;
    r1.y = cmp(r0.y < 0);
    r1.z = cmp(1 < r0.y);
    r0.y = r1.z ? r0.w : r0.y;
    r0.y = r1.y ? r0.z : r0.y;
    r0.yzw = float3(1,0.666666687,0.333333343) + r0.yyy;
    r0.yzw = frac(r0.yzw);
    r0.yzw = r0.yzw * float3(6,6,6) + float3(-3,-3,-3);
    r0.yzw = saturate(float3(-1,-1,-1) + abs(r0.yzw));
    r0.yzw = float3(-1,-1,-1) + r0.yzw;
    r0.yzw = r2.zzz * r0.yzw + float3(1,1,1);
    r1.yzw = r1.xxx * r0.yzw;
    r0.x = dot(cb0[3].yy, r0.xx);
    r1.y = dot(r1.yzw, float3(0.212672904,0.715152204,0.0721750036));
    r0.yzw = r1.xxx * r0.yzw + -r1.yyy;
    r0.xyz = r0.xxx * r0.yzw + r1.yyy;
    r0.xyz = max(float3(0,0,0), r0.xyz);
    r1.xyz = cb0[10].xxx * r0.xyz;
    r2.xyzw = cmp(r1.xxyy < cb0[10].yzyz);
    r3.xyzw = r2.yyyy ? cb0[13].xyzw : cb0[15].xyzw;
    r4.xyzw = r2.yyww ? cb0[14].xyxy : cb0[16].xyxy;
    r3.xyzw = r2.xxxx ? cb0[11].xyzw : r3.xyzw;
    r4.xyzw = r2.xxzz ? cb0[12].xyxy : r4.xyzw;
    r0.x = r0.x * cb0[10].x + -r3.x;
    r0.x = r0.x * r3.z;
    r0.w = cmp(0 < r0.x);
    r0.x = log2(r0.x);
    r0.x = r4.y * r0.x;
    r0.x = r0.x * 0.693147182 + r4.x;
    r0.x = 1.44269502 * r0.x;
    r0.x = exp2(r0.x);
    r0.x = r0.w ? r0.x : 0;
    r3.x = r0.x * r3.w + r3.y;
    r5.xyzw = r2.wwww ? cb0[13].xyzw : cb0[15].xyzw;
    r2.xyzw = r2.zzzz ? cb0[11].xyzw : r5.xyzw;
    r0.x = r0.y * cb0[10].x + -r2.x;
    r0.x = r0.x * r2.z;
    r0.y = cmp(0 < r0.x);
    r0.x = log2(r0.x);
    r0.x = r4.w * r0.x;
    r0.x = r0.x * 0.693147182 + r4.z;
    r0.x = 1.44269502 * r0.x;
    r0.x = exp2(r0.x);
    r0.x = r0.y ? r0.x : 0;
    r3.y = r0.x * r2.w + r2.y;
    r0.xy = cmp(r1.zz < cb0[10].yz);
    r1.xyzw = r0.yyyy ? cb0[13].xyzw : cb0[15].xyzw;
    r0.yw = r0.yy ? cb0[14].xy : cb0[16].xy;
    r1.xyzw = r0.xxxx ? cb0[11].xyzw : r1.xyzw;
    r0.xy = r0.xx ? cb0[12].xy : r0.yw;
    r0.z = r0.z * cb0[10].x + -r1.x;
    r0.z = r0.z * r1.z;
    r0.w = cmp(0 < r0.z);
    r0.z = log2(r0.z);
    r0.y = r0.y * r0.z;
    r0.x = r0.y * 0.693147182 + r0.x;
    r0.x = 1.44269502 * r0.x;
    r0.x = exp2(r0.x);
    r0.x = r0.w ? r0.x : 0;
    r3.z = r0.x * r1.w + r1.y;
    r0.xyz = max(float3(0,0,0), r3.xyz);
    r0.w = 1;
    // No code for instruction (needs manual fix):
    // store_uav_typed u0.xyzw, vThreadID.xyzz, r0.xyzw
    u0[vThreadID] = r0; // manual fix
  }
  return;
}