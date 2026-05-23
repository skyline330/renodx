#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Wed May  6 19:17:19 2026
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0) {
  float4 cb0[199];
}

// 3Dmigoto declarations
#define cmp -

void main(
    float4 v0: SV_POSITION0,
    float2 v1: TEXCOORD0,
    out float4 o0: SV_Target0,
    out float4 o1: SV_Target1) {
  float4 r0, r1, r2, r3, r4, r5, r6, r7, r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[140].xy + v0.xy;
  r0.zw = float2(1, 1);
  r1.x = dot(r0.xyww, cb0[167].xyzw);
  r1.y = dot(r0.xyww, cb0[168].xyzw);
  r1.z = dot(r0.xyzw, cb0[169].xyzw);
  r0.x = dot(-r1.xyz, -r1.xyz);
  r0.x = rsqrt(r0.x);
  r0.yzw = -r1.xyz * r0.xxx;
  r0.x = -r1.y * r0.x + cb0[172].y;
  r1.x = r0.x / cb0[173].y;
  r1.yw = float2(0.046875, 0.546875);
  r2.xyzw = t6.SampleLevel(s0_s, r1.xy, 0).xyzw;
  r1.z = abs(r1.x);
  r3.xyzw = t6.SampleLevel(s0_s, r1.zw, 0).xyzw;
  r1.yzw = r3.xyz + -r2.xyz;
  r1.yzw = cb0[161].www * r1.yzw + r2.xyz;
  r2.xyz = cb0[198].xyz + -cb0[197].xyz;
  r2.xyz = r1.xxx * r2.xyz + cb0[197].xyz;
  r2.xyz = r2.xyz + -r1.yzw;
  r1.xyz = cb0[196].xxx * r2.xyz + r1.yzw;
  r0.x = dot(cb0[182].xyz, r0.yzw);
  r1.w = cmp(0 < r0.x);
  r0.x = 1 + -r0.x;
  r0.x = 800 * r0.x;
  r0.x = 1 / r0.x;
  r0.x = saturate(cb0[174].x * r0.x);
  r2.x = 1 + -cb0[178].z;
  r0.x = -cb0[178].z + r0.x;
  r2.x = 1 / r2.x;
  r0.x = saturate(r2.x * r0.x);
  r2.x = r0.x * -2 + 3;
  r0.x = r0.x * r0.x;
  r0.x = r2.x * r0.x;
  r2.x = cb0[171].y * r0.x;
  r0.x = saturate(-r0.x * cb0[171].y + 1);
  r3.x = cb0[171].x * r2.x;
  r3.y = cb0[172].x * r2.x;
  r3.z = cb0[173].x * r2.x;
  r2.xyz = r0.xxx * r1.xyz + r3.xyz;
  r1.xyz = r1.www ? r2.xyz : r1.xyz;
  r2.y = cb0[179].w;
  r2.z = cb0[180].w;
  r2.x = cb0[181].w;
  r0.x = dot(r2.yzx, r0.yzw);
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) {
    r3.y = abs(r0.z);
    r3.x = 0.5;
    r3.xyzw = t5.SampleLevel(s0_s, r3.xy, 0).xyzw;
    r3.yzw = float3(0, 0, -1) * r2.yzx;
    r3.yzw = r2.xyz * float3(0, -1, 0) + -r3.yzw;
    r0.x = dot(r3.zw, r3.zw);
    r0.x = rsqrt(r0.x);
    r3.yzw = r3.yzw * r0.xxx;
    r4.xyz = r3.yzw * r2.xyz;
    r2.xyz = r2.zxy * r3.zwy + -r4.xyz;
    r4.x = dot(r3.wz, r0.yw);
    r4.y = dot(r2.xyz, r0.yzw);
    r0.x = 20.7000008 + -cb0[175].z;
    r0.x = max(0, r0.x);
    r2.xy = r4.xy * r0.xx + float2(0.5, 0.5);
    r4.xyzw = t4.SampleLevel(s0_s, r2.xy, 0).xyzw;
    r2.xy = r2.xy * float2(2, 2) + float2(-1, -1);
    r5.xyzw = cb0[183].xxyy * r2.xyxy;
    r5.xyzw = r5.xyzw * float4(0.5, 0.5, 0.5, 0.5) + float4(0.5, 0.5, 0.5, 0.5);
    r0.x = saturate(r2.x);
    r6.xz = float2(0, 0);
    r6.yw = cb0[183].zz * cb0[14].xx;
    r6.xyzw = r6.xyzw + r5.xyzw;
    r7.xyzw = t1.SampleLevel(s1_s, r6.xy, 0).xyzw;
    r8.xyzw = t2.SampleLevel(s0_s, r5.xy, 0).xyzw;
    r6.xyzw = t1.SampleLevel(s1_s, r6.zw, 0).xyzw;
    r5.xyzw = t3.SampleLevel(s0_s, r5.zw, 0).xyzw;
    r3.yzw = r6.xyz * r5.www;
    r1.w = 1 + -r8.w;
    r3.yzw = r3.yzw * r1.www;
    r3.yzw = r7.xyz * r8.www + r3.yzw;
    r3.yzw = r3.yzw * r0.xxx;
    r2.xy = cb0[183].ww * r2.xy;
    r2.xy = r2.xy * float2(0.5, 0.5) + float2(0.5, 0.5);
    r2.xyzw = t0.SampleLevel(s0_s, r2.xy, 0).xyzw;
    r5.x = cb0[175].y * r2.x;
    r5.y = cb0[176].y * r2.y;
    r5.z = cb0[177].y * r2.z;
    r2.xyz = r3.yzw * cb0[178].yyy + r5.xyz;
    r0.x = 1 + -r4.w;
    r2.xyz = r2.xyz * r0.xxx;
    r5.x = cb0[175].x * r4.x;
    r5.y = cb0[176].x * r4.y;
    r5.z = cb0[177].x * r4.z;
    r0.x = cb0[178].x * r4.w;
    r1.w = r0.x * r3.x;
    r0.x = -r0.x * r3.x + 1;
    r3.yzw = r5.xyz * r1.www;
    r3.yzw = r1.xyz * r0.xxx + r3.yzw;
    r1.xyz = r2.xyz * r3.xxx + r3.yzw;
  }
  r2.xyw = cb0[30].yxz;
  r2.z = cb0[193].x;
  r0.x = cb0[193].x + -r2.x;
  r0.x = r0.x / r0.z;
  r3.xyz = r0.yzw * r0.xxx + cb0[30].xyz;
  r0.yw = float2(0.00999999978, 0.00999999978) * r3.xz;
  r4.xy = r3.xz * float2(0.00999999978, 0.00999999978) + cb0[15].xx;
  r4.xy = cb0[193].zz * r4.xy;
  r4.xyzw = t8.SampleLevel(s1_s, r4.xy, 0).xyzw;
  r4.xy = float2(-0.5, -0.5) + r4.xy;
  r0.yw = r4.xy * cb0[193].ww + r0.yw;
  r4.xyzw = t7.SampleBias(s2_s, r0.yw, cb0[61].x).xyzw;
  r5.xyz = cb0[194].xyz * r4.xyz;
  r5.xyz = cb0[193].yyy * r5.xyz;
  r2.xyz = r3.xyz + -r2.yzw;
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = sqrt(r0.y);
  r0.y = -1000 + r0.y;
  r0.y = saturate(0.00200000009 * r0.y);
  r0.w = r0.y * -2 + 3;
  r0.y = r0.y * r0.y;
  r0.y = -r0.w * r0.y + 1;
  r0.w = cmp(cb0[193].y != 0.000000);
  r0.z = cmp(9.99999997e-07 < abs(r0.z));
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = sqrt(r1.w);
  r1.w = cmp(9.99999997e-07 < r1.w);
  r0.z = (int)r0.z | (int)r1.w;
  r0.x = cmp(0 < r0.x);
  r0.x = (int)r0.x | (int)r0.z;
  r2.xyz = r5.xyz * r0.yyy + r1.xyz;
  r0.xyz = r0.xxx ? r2.xyz : r1.xyz;
  o0.xyz = r0.www ? r0.xyz : r1.xyz;
  o0.w = 1;
  o1.xyzw = float4(0.498039216, 0.498039216, 0, 0);
  return;
}
