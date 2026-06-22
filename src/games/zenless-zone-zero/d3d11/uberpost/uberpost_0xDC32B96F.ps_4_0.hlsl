#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Wed Jun 17 01:21:30 2026
Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3) {
  float4 cb3[1];
}

cbuffer cb2 : register(b2) {
  float4 cb2[17];
}

cbuffer cb1 : register(b1) {
  float4 cb1[38];
}

cbuffer cb0 : register(b0) {
  float4 cb0[139];
}

// 3Dmigoto declarations
#define cmp -

void main(
    float4 v0: SV_POSITION0,
    float4 v1: TEXCOORD0,
    float4 v2: TEXCOORD1,
    out float4 o0: SV_Target0) {
  const float4 icb[] = { { 1.000000, 0, 0, 0 },
                         { 0, 1.000000, 0, 0 },
                         { 0, 0, 1.000000, 0 },
                         { 0, 0, 0, 1.000000 } };
  float4 r0, r1, r2, r3, r4, r5, r6, r7, r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[3];
  float4 x1[3];
  float4 x2[3];
  float4 x3[3];
  r0.xy = cb0[138].xy * v1.xy;
  r0.xy = (uint2)r0.xy;
  r0.zw = float2(0, 0);
  r0.xyzw = t0.Load(r0.xyz).xyzw;
  r0.yz = v1.xy * float2(2, 2) + float2(-1, -1);
  r1.xyzw = cb0[135].xyzw * -r0.zzzz;
  r1.xyzw = cb0[134].xyzw * r0.yyyy + r1.xyzw;
  r1.xyzw = cb0[136].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[137].xyzw + r1.xyzw;
  r1.xyzw = r1.yzxy / r1.wwww;
  r0.yzw = ddx(r1.yzw);
  r2.xyz = ddy(r1.wyz);
  r3.xyz = r2.xyz * r0.yzw;
  r0.yzw = r0.wyz * r2.yzx + -r3.xyz;
  r2.x = dot(r0.yzw, r0.yzw);
  r2.x = rsqrt(r2.x);
  r0.yzw = r2.xxx * r0.yzw;
  r0.x = cb0[62].z * r0.x + cb0[62].w;
  r0.x = 1 / r0.x;
  r0.x = saturate(r0.x * cb1[34].z + -cb1[34].y);
  r2.x = -cb1[36].y + r1.w;
  r2.x = saturate(abs(r2.x) / cb1[36].x);
  r2.x = 1 + -r2.x;
  r2.x = log2(r2.x);
  r2.x = cb1[36].z * r2.x;
  r2.x = exp2(r2.x);
  r1.xyzw = cb1[34].wwww * r1.xyzw;
  r0.yzw = max(float3(9.99999975e-06, 9.99999975e-06, 9.99999975e-06), abs(r0.yzw));
  r2.y = dot(r0.yzw, r0.yzw);
  r2.y = rsqrt(r2.y);
  r3.xyz = r2.yyy * r0.yzw;
  r0.y = r3.x + r3.y;
  r0.y = r0.w * r2.y + r0.y;
  r0.yz = r3.xz / r0.yy;
  r2.yz = cb1[35].xy * cb0[14].xx;
  r1.xy = r1.xy * cb1[35].zw + r2.yz;
  r0.w = dot(r1.xy, float2(0.366025418, 0.366025418));
  r3.xy = r1.xy + r0.ww;
  r3.xy = floor(r3.xy);
  r1.xy = -r3.xy + r1.xy;
  r0.w = dot(r3.xy, float2(0.211324871, 0.211324871));
  r1.xy = r1.xy + r0.ww;
  r0.w = cmp(r1.y < r1.x);
  r4.xyzw = float4(0.211324871, 0.211324871, -0.577350259, -0.577350259) + r1.xyxy;
  r5.xyzw = r0.wwww ? float4(0, 1, -1, -0) : float4(1, 0, -0, -1);
  r4.xy = r5.zw + r4.xy;
  r3.zw = float2(0.00346020772, 0.00346020772) * r3.xy;
  r3.zw = floor(r3.zw);
  r3.xy = -r3.zw * float2(289, 289) + r3.xy;
  r6.xz = float2(0, 1);
  r6.y = r5.x;
  r3.yzw = r6.xyz + r3.yyy;
  r6.xyz = r3.yzw * float3(34, 34, 34) + float3(1, 1, 1);
  r3.yzw = r6.xyz * r3.yzw;
  r6.xyz = float3(0.00346020772, 0.00346020772, 0.00346020772) * r3.yzw;
  r6.xyz = floor(r6.xyz);
  r3.yzw = -r6.xyz * float3(289, 289, 289) + r3.yzw;
  r3.xyz = r3.yzw + r3.xxx;
  r5.xz = float2(0, 1);
  r3.xyz = r5.xyz + r3.xyz;
  r5.xyz = r3.xyz * float3(34, 34, 34) + float3(1, 1, 1);
  r3.xyz = r5.xyz * r3.xyz;
  r5.xyz = float3(0.00346020772, 0.00346020772, 0.00346020772) * r3.xyz;
  r5.xyz = floor(r5.xyz);
  r3.xyz = -r5.xyz * float3(289, 289, 289) + r3.xyz;
  r5.x = dot(r1.xy, r1.xy);
  r5.y = dot(r4.xy, r4.xy);
  r5.z = dot(r4.zw, r4.zw);
  r5.xyz = float3(0.5, 0.5, 0.5) + -r5.xyz;
  r5.xyz = max(float3(0, 0, 0), r5.xyz);
  r5.xyz = r5.xyz * r5.xyz;
  r5.xyz = r5.xyz * r5.xyz;
  r3.xyz = float3(0.024390243, 0.024390243, 0.024390243) * r3.xyz;
  r3.xyz = frac(r3.xyz);
  r6.xyz = r3.xyz * float3(2, 2, 2) + float3(-1, -1, -1);
  r7.xyz = float3(-0.5, -0.5, -0.5) + abs(r6.xyz);
  r3.xyz = r3.xyz * float3(2, 2, 2) + float3(-0.5, -0.5, -0.5);
  r3.xyz = floor(r3.xyz);
  r3.xyz = r6.xyz + -r3.xyz;
  r6.xyz = r7.xyz * r7.xyz;
  r6.xyz = r3.xyz * r3.xyz + r6.xyz;
  r6.xyz = -r6.xyz * float3(0.853734732, 0.853734732, 0.853734732) + float3(1.79284286, 1.79284286, 1.79284286);
  r5.xyz = r6.xyz * r5.xyz;
  r0.w = r7.x * r1.y;
  r6.x = r3.x * r1.x + r0.w;
  r1.xy = r7.yz * r4.yw;
  r6.yz = r3.yz * r4.xz + r1.xy;
  r0.w = dot(r5.xyz, r6.xyz);
  r0.y = r0.y * r0.w;
  r1.xy = r1.zw * cb1[37].xy + r2.yz;
  r0.w = dot(r1.xy, float2(0.366025418, 0.366025418));
  r1.zw = r1.xy + r0.ww;
  r1.zw = floor(r1.zw);
  r1.xy = r1.xy + -r1.zw;
  r0.w = dot(r1.zw, float2(0.211324871, 0.211324871));
  r1.xy = r1.xy + r0.ww;
  r0.w = cmp(r1.y < r1.x);
  r3.xyzw = float4(0.211324871, 0.211324871, -0.577350259, -0.577350259) + r1.xyxy;
  r4.xyzw = r0.wwww ? float4(0, 1, -1, -0) : float4(1, 0, -0, -1);
  r3.xy = r4.zw + r3.xy;
  r2.yz = float2(0.00346020772, 0.00346020772) * r1.zw;
  r2.yz = floor(r2.yz);
  r1.zw = -r2.yz * float2(289, 289) + r1.zw;
  r5.xz = float2(0, 1);
  r5.y = r4.x;
  r2.yzw = r5.xyz + r1.www;
  r5.xyz = r2.yzw * float3(34, 34, 34) + float3(1, 1, 1);
  r2.yzw = r5.xyz * r2.yzw;
  r5.xyz = float3(0.00346020772, 0.00346020772, 0.00346020772) * r2.yzw;
  r5.xyz = floor(r5.xyz);
  r2.yzw = -r5.xyz * float3(289, 289, 289) + r2.yzw;
  r2.yzw = r2.yzw + r1.zzz;
  r4.xz = float2(0, 1);
  r2.yzw = r4.xyz + r2.yzw;
  r4.xyz = r2.yzw * float3(34, 34, 34) + float3(1, 1, 1);
  r2.yzw = r4.xyz * r2.yzw;
  r4.xyz = float3(0.00346020772, 0.00346020772, 0.00346020772) * r2.yzw;
  r4.xyz = floor(r4.xyz);
  r2.yzw = -r4.xyz * float3(289, 289, 289) + r2.yzw;
  r4.x = dot(r1.xy, r1.xy);
  r4.y = dot(r3.xy, r3.xy);
  r4.z = dot(r3.zw, r3.zw);
  r4.xyz = float3(0.5, 0.5, 0.5) + -r4.xyz;
  r4.xyz = max(float3(0, 0, 0), r4.xyz);
  r4.xyz = r4.xyz * r4.xyz;
  r4.xyz = r4.xyz * r4.xyz;
  r2.yzw = float3(0.024390243, 0.024390243, 0.024390243) * r2.yzw;
  r2.yzw = frac(r2.yzw);
  r5.xyz = r2.yzw * float3(2, 2, 2) + float3(-1, -1, -1);
  r6.xyz = float3(-0.5, -0.5, -0.5) + abs(r5.xyz);
  r2.yzw = r2.yzw * float3(2, 2, 2) + float3(-0.5, -0.5, -0.5);
  r2.yzw = floor(r2.yzw);
  r2.yzw = r5.xyz + -r2.yzw;
  r5.xyz = r6.xyz * r6.xyz;
  r5.xyz = r2.yzw * r2.yzw + r5.xyz;
  r5.xyz = -r5.xyz * float3(0.853734732, 0.853734732, 0.853734732) + float3(1.79284286, 1.79284286, 1.79284286);
  r4.xyz = r5.xyz * r4.xyz;
  r0.w = r6.x * r1.y;
  r1.x = r2.y * r1.x + r0.w;
  r3.yw = r6.yz * r3.yw;
  r1.yz = r2.zw * r3.xz + r3.yw;
  r0.w = dot(r4.xyz, r1.xyz);
  r0.z = r0.z * r0.w;
  r0.z = 130 * r0.z;
  r0.y = r0.y * 130 + r0.z;
  r0.y = cb1[34].x * r0.y;
  r0.y = r0.y * r0.x;
  r0.x = r2.x * r0.x;
  r0.z = r0.y * r0.x;
  r0.xy = r0.yy * r0.xx + v1.xy;
  r0.xy = cb0[138].xy * r0.xy;
  r1.xy = (uint2)r0.xy;
  r1.zw = float2(0, 0);
  r1.xyzw = t0.Load(r1.xyz).xyzw;
  r0.x = cb0[62].z * r1.x + cb0[62].w;
  r0.x = 1 / r0.x;
  r0.x = saturate(r0.x * cb1[34].z + -cb1[34].y);
  r0.xy = r0.zz * r0.xx + v1.xy;
  r0.z = cmp(0.5 < cb2[16].w);
  r0.z = r0.z ? cb0[14].x : cb0[17].y;
  r1.xy = r0.xy * float2(2, 2) + float2(-1, -1);
  r1.zw = float2(1, 1) + -abs(r1.xy);
  r0.w = -1 + cb0[5].z;
  r2.w = cb0[5].y * r0.w;
  r0.w = cb0[5].y * r0.w + -1;
  r3.y = cb2[1].x * r0.w + 1;
  r3.xz = float2(1, 1);
  r4.xy = r3.xy * r1.xy;
  r3.x = dot(r4.xy, r4.xy);
  r3.x = sqrt(r3.x);
  r1.w = r3.y * r1.w;
  r1.z = min(r1.z, r1.w);
  r4.xyzw = cmp(cb2[0].zxxx < float4(0.5, 0.5, 1.5, 2.5));
  r1.w = -r3.x * 0.707000017 + 1;
  r1.z = r4.x ? r1.z : r1.w;
  r1.w = cmp(cb2[0].w >= r1.z);
  r1.w = r1.w ? 1.000000 : 0;
  r3.x = 1 + -cb2[1].y;
  r3.x = cb2[0].w * r3.x + -cb2[0].w;
  r1.z = -cb2[0].w + r1.z;
  r3.x = 1 / r3.x;
  r1.z = saturate(r3.x * r1.z);
  r3.x = r1.z * -2 + 3;
  r1.z = r1.z * r1.z;
  r1.z = r3.x * r1.z;
  r3.xy = cmp(float2(9.99999975e-05, 0.5) < cb2[1].yw);
  r1.z = r3.x ? r1.z : r1.w;
  r1.w = 1 + -r1.z;
  r1.z = r3.y ? r1.w : r1.z;
  r1.z = cb2[1].z * r1.z;
  r1.w = cmp(9.99999975e-05 < cb2[0].w);
  r1.w = r1.w ? r1.z : 0;
  r1.z = r1.z * r1.w;
  r1.w = cmp(0.5 < cb2[14].z);
  if (r1.w != 0) {
    r2.y = cb2[0].y * r0.w + 1;
    r2.xz = float2(1, 1);
    r2.xy = r2.xy * r1.xy;
    r1.w = min(abs(r2.y), abs(r2.x));
    r3.x = max(abs(r2.y), abs(r2.x));
    r3.x = 1 / r3.x;
    r1.w = r3.x * r1.w;
    r3.x = r1.w * r1.w;
    r3.y = r3.x * 0.0208350997 + -0.0851330012;
    r3.y = r3.x * r3.y + 0.180141002;
    r3.y = r3.x * r3.y + -0.330299497;
    r3.x = r3.x * r3.y + 0.999866009;
    r3.y = r3.x * r1.w;
    r4.x = cmp(abs(r2.x) < abs(r2.y));
    r3.y = r3.y * -2 + 1.57079637;
    r3.y = r4.x ? r3.y : 0;
    r1.w = r1.w * r3.x + r3.y;
    r3.x = cmp(r2.x < -r2.x);
    r3.x = r3.x ? -3.141593 : 0;
    r1.w = r3.x + r1.w;
    r3.x = min(r2.y, r2.x);
    r3.y = max(r2.y, r2.x);
    r3.x = cmp(r3.x < -r3.x);
    r3.y = cmp(r3.y >= -r3.y);
    r3.x = r3.y ? r3.x : 0;
    r3.x = r3.x ? -r1.w : r1.w;
    r1.w = dot(r2.xy, r2.xy);
    r3.y = sqrt(r1.w);
    r2.xy = float2(1.27323949, 0.636619747) * r3.xy;
    r3.xy = float2(-0.5, -0.5) + r0.xy;
    r2.zw = r3.xy * r2.zw + float2(0.5, 0.5);
    r1.w = cmp(0.5 < cb2[14].w);
    r2.xy = r1.ww ? r2.xy : r2.zw;
    r2.xy = r2.xy * cb2[15].xy + cb2[15].zw;
    r2.xy = r0.zz * cb2[16].yz + r2.xy;
    r2.xyzw = t10.Sample(s8_s, r2.xy).xyzw;
    r2.xy = r2.xy * float2(2, 2) + float2(-1, -1);
    r2.xy = cb2[16].xx * r2.xy;
    r2.xy = r2.xy * r1.zz;
    r2.xy = float2(0.100000001, 0.100000001) * r2.xy;
  } else {
    r2.xy = float2(0, 0);
  }
  r1.w = cmp(0 < cb1[11].w);
  if (r1.w != 0) {
    r5.xyzw = t3.Sample(s2_s, r0.xy).xyzw;
    r2.zw = r5.xy * float2(0.100000001, 0.100000001) + r2.xy;
    r3.xy = v1.xy + r2.zw;
    r5.xy = r2.zw * r5.zz;
    r5.xy = cb1[11].ww * r5.xy;
    r6.xyzw = r5.xyxy * cb1[11].xxyy + r2.zwzw;
    r2.zw = r5.xy * cb1[11].zz + r2.zw;
  } else {
    r3.xy = v1.xy;
    r6.xyzw = float4(0, 0, 0, 0);
    r2.zw = float2(0, 0);
  }
  r4.x = cmp(0.5 < cb1[24].w);
  if (r4.x != 0) {
    r5.xy = float2(-0.5, -0.5) + cb1[24].xy;
    r5.xy = -r5.xy + r1.xy;
    r4.x = dot(r5.xy, r5.xy);
    r5.xy = r5.xy * r4.xx;
    r5.xy = cb1[12].zz * r5.xy;
    r5.xy = float2(-0.333333343, -0.333333343) * r5.xy;
    r5.z = 9.99999975e-05;
    r4.x = dot(r5.xyz, r5.xyz);
    r4.x = rsqrt(r4.x);
    r5.zw = r5.xy * r4.xx;
    r4.x = dot(r5.xy, r5.xy);
    r4.x = sqrt(r4.x);
    r5.x = 0.942809045 * cb1[12].z;
    r4.x = r4.x / r5.x;
    r4.x = log2(r4.x);
    r4.x = cb1[24].z * r4.x;
    r4.x = exp2(r4.x);
    r5.yz = r5.zw * r4.xx;
    r5.xy = r5.yz * r5.xx;
    r5.zw = r6.xy + r0.xy;
    r5.zw = r5.xy * cb1[25].ww + r5.zw;
    r7.xyzw = t1.Sample(s0_s, r5.zw).xyzw;
    r5.zw = r6.zw + r0.xy;
    r5.zw = r5.xy * cb1[26].ww + r5.zw;
    r8.xyzw = t1.Sample(s0_s, r5.zw).xyzw;
    r5.zw = r2.zw + r0.xy;
    r5.xy = r5.xy * cb1[27].ww + r5.zw;
    r5.xyzw = t1.Sample(s0_s, r5.xy).xyzw;
    r5.xyw = cb1[26].xyz * r8.yyy;
    r5.xyw = r7.xxx * cb1[25].xyz + r5.xyw;
    r5.xyz = r5.zzz * cb1[27].xyz + r5.xyw;
    r7.xyzw = t1.Sample(s0_s, r3.xy).wxyz;
  } else {
    if (r1.w != 0) {
      r6.xy = r6.xy + r0.xy;
      r8.xyzw = t1.Sample(s0_s, r6.xy).xyzw;
      r6.xy = r6.zw + r0.xy;
      r6.xyzw = t1.Sample(s0_s, r6.xy).xyzw;
      r2.zw = r2.zw + r0.xy;
      r5.xyzw = t1.Sample(s0_s, r2.zw).xyzw;
      r5.x = r8.x;
      r5.y = r6.y;
    } else {
      r5.xyzw = t1.Sample(s0_s, r3.xy).xyzw;
    }
    r7.xyzw = t1.Sample(s0_s, r3.xy).wxyz;
  }
  r1.w = cmp(cb1[21].z < 0.5);
  r2.zw = cmp(float2(0, 0) < cb1[21].xy);
  r2.z = (int)r2.w | (int)r2.z;
  r1.w = r1.w ? r2.z : 0;
  if (r1.w != 0) {
    r1.w = cb0[138].y * r3.y;
    r1.w = cb1[28].x * r1.w;
    r2.z = r1.w + r1.w;
    r2.z = cmp(r2.z >= -r2.z);
    r6.xy = r2.zz ? float2(2, 0.5) : float2(-2, -0.5);
    r1.w = r6.y * r1.w;
    r1.w = frac(r1.w);
    r2.z = r6.x * r1.w;
    r4.x = cmp(1 < r2.z);
    r1.w = -r6.x * r1.w + 2;
    r1.w = r4.x ? r1.w : r2.z;
    r1.w = r1.w * 2 + -1;
    r6.x = cb1[28].z * r1.w + r3.x;
    r1.w = cb0[138].x * cb0[138].w;
    r2.z = abs(cb1[29].y) + r6.x;
    r4.x = cb1[29].y * r3.y;
    r2.z = r2.z * r1.w + -r4.x;
    r1.w = dot(cb1[29].xx, r1.ww);
    r1.w = r2.z / r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 >= r1.w);
    r1.w = r1.w ? 0.999989986 : -1;
    r6.y = cb1[29].z * r1.w + r3.y;
    r6.xyzw = t4.Sample(s3_s, r6.xy).xyzw;
    r7.yzw = log2(abs(r6.xyz));
    r7.yzw = float3(0.333333343, 0.333333343, 0.333333343) * r7.yzw;
    r7.yzw = exp2(r7.yzw);
    r7.yzw = r7.yzw * float3(1.49380159, 1.49380159, 1.49380159) + -r6.xyz;
    r8.xyz = cmp(r6.xyz >= float3(0.300000012, 0.300000012, 0.300000012));
    r8.xyz = r8.xyz ? float3(1, 1, 1) : 0;
    r7.yzw = float3(-0.699999988, -0.699999988, -0.699999988) + r7.yzw;
    r6.xyz = r8.xyz * r7.yzw + r6.xyz;
    r6.xyz = cb1[21].xxx * r6.xyz;
    r1.w = dot(r5.xyz, float3(0.298999995, 0.587000012, 0.114));
    r2.z = cmp(0.5 < cb1[22].x);
    r7.yzw = r1.www * r6.xyz + -r6.xyz;
    r7.yzw = r7.xxx * r7.yzw + r6.xyz;
    r7.yzw = r2.zzz ? r7.yzw : r6.xyz;
    if (r2.w != 0) {
      r2.zw = r3.xy * cb1[20].xy + cb1[20].zw;
      r8.xyzw = t5.Sample(s0_s, r2.zw).xyzw;
      r8.xyz = cb1[21].yyy * r8.xyz;
      r7.yzw = r8.xyz * r6.xyz + r7.yzw;
    }
    r5.xyz = r7.yzw + r5.xyz;
    r1.w = r7.y + r7.z;
    r1.w = r1.w + r7.w;
    o0.w = saturate(r1.w * 0.333299994 + r7.x);
  } else {
    o0.w = r7.x;
  }

  // Vignette
  r1.w = cmp(0 < cb1[7].z);
  if (r1.w != 0) {
    r2.zw = -cb1[7].xy + r3.xy;
    r6.yz = cb1[7].zz * abs(r2.zw) * min(1.f, CUSTOM_VIGNETTE);
    r6.x = cb1[6].w * r6.y;
    r1.w = dot(r6.xz, r6.xz);
    r1.w = 1 + -r1.w;
    r1.w = max(0, r1.w);
    r1.w = log2(r1.w);
    r1.w = cb1[7].w * r1.w * max(1.f, CUSTOM_VIGNETTE);
    r1.w = exp2(r1.w);
    r6.xyz = float3(1, 1, 1) + -cb1[6].xyz;
    r6.xyz = r1.www * r6.xyz + cb1[6].xyz;
    r5.xyz = r6.xyz * r5.xyz;
  }

  r1.w = cmp(0 < cb1[13].x);
  if (r1.w != 0) {
    r2.zw = r0.xy * cb1[8].xy + cb1[8].zw;
    r6.xyzw = t2.Sample(s1_s, r2.zw).xyzw;
    r1.w = -0.5 + r6.w;
    r1.w = r1.w + r1.w;
    r2.z = dot(r5.xyz, float3(0.212672904, 0.715152204, 0.0721750036));
    r2.z = sqrt(r2.z);
    r2.z = cb1[13].y * -r2.z + 1;
    r6.xyz = r5.xyz * r1.www;
    r6.xyz = cb1[13].xxx * r6.xyz;
    r5.xyz = r6.xyz * r2.zzz + r5.xyz;
  }

  r3.w = cb2[0].y * r0.w + 1;
  r1.xy = r3.zw * r1.xy;
  r0.w = min(abs(r1.y), abs(r1.x));
  r1.w = max(abs(r1.y), abs(r1.x));
  r1.w = 1 / r1.w;
  r0.w = r1.w * r0.w;
  r1.w = r0.w * r0.w;
  r2.z = r1.w * 0.0208350997 + -0.0851330012;
  r2.z = r1.w * r2.z + 0.180141002;
  r2.z = r1.w * r2.z + -0.330299497;
  r1.w = r1.w * r2.z + 0.999866009;
  r2.z = r1.w * r0.w;
  r2.w = cmp(abs(r1.x) < abs(r1.y));
  r2.z = r2.z * -2 + 1.57079637;
  r2.z = r2.w ? r2.z : 0;
  r0.w = r0.w * r1.w + r2.z;
  r1.w = cmp(r1.x < -r1.x);
  r1.w = r1.w ? -3.141593 : 0;
  r0.w = r1.w + r0.w;
  r1.w = min(r1.y, r1.x);
  r2.z = max(r1.y, r1.x);
  r1.w = cmp(r1.w < -r1.w);
  r2.z = cmp(r2.z >= -r2.z);
  r1.w = r1.w ? r2.z : 0;
  r0.w = r1.w ? -r0.w : r0.w;
  r3.x = 1.27323949 * r0.w;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = sqrt(r0.w);
  r3.y = 0.5 * r0.w;
  r1.xy = r0.zz * cb2[10].zw + cb3[0].xy;
  r2.zw = r0.zz * cb2[11].xy + cb3[0].zw;
  r3.zw = float2(-0.5, -0.5) + r0.xy;
  r6.x = cb0[138].x * cb0[138].w;
  r6.y = 1;
  r3.zw = r3.zw * r6.xy + float2(0.5, 0.5);
  x0[0].xy = r3.zw;
  x0[1].xy = r3.xy;
  x0[2].xy = r0.xy;
  r0.w = round(cb2[6].z);
  r0.w = (int)r0.w;
  r0.w = max(0, (int)r0.w);
  r0.w = min(2, (int)r0.w);
  r6.xy = x0[r0.w + 0].xy;
  r6.xy = r6.xy * cb2[7].xy + cb2[7].zw;
  r6.xy = r0.zz * cb2[8].xy + r6.xy;
  r6.xy = r6.xy + r2.xy;
  x1[0].xy = r3.zw;
  x1[1].xy = r3.xy;
  x1[2].xy = r0.xy;
  r0.w = round(cb2[11].w);
  r0.w = (int)r0.w;
  r0.w = max(0, (int)r0.w);
  r0.w = min(2, (int)r0.w);
  r6.zw = x1[r0.w + 0].xy;
  r6.zw = r6.zw * cb2[12].xy + cb2[12].zw;
  r2.zw = r6.zw + r2.zw;
  r2.zw = r2.zw + r2.xy;
  r0.w = (uint)cb2[13].x;
  r7.xyzw = t9.Sample(s7_s, r2.zw).xyzw;
  r0.w = min(3, (uint)r0.w);
  r0.w = dot(r7.xyzw, icb[r0.w + 0].xyzw);
  r0.w = -0.498039216 + r0.w;
  r0.w = r0.w + r0.w;
  r1.w = cmp(cb2[3].x < 9.99999975e-06);
  r2.z = 0.00092592591 * cb0[138].y;
  r2.z = max(1, r2.z);
  r1.w = r1.w ? r2.z : 1;
  x2[0].xy = r3.zw;
  x2[1].xy = r3.xy;
  x2[2].xy = r0.xy;
  r2.z = round(cb2[3].x);
  r2.z = (int)r2.z;
  r2.z = max(0, (int)r2.z);
  r2.z = min(2, (int)r2.z);
  r2.zw = x2[r2.z + 0].xy;
  r2.zw = cb2[2].xy * r2.zw;
  r2.zw = r2.zw * r1.ww + cb2[2].zw;
  r2.zw = r0.zz * cb2[6].xy + r2.zw;
  r2.zw = r0.ww * cb2[13].yy + r2.zw;
  r2.zw = r2.zw + r2.xy;
  x3[0].xy = r3.zw;
  x3[1].xy = r3.xy;
  x3[2].xy = r0.xy;
  r0.x = round(cb2[8].w);
  r0.x = (int)r0.x;
  r0.x = max(0, (int)r0.x);
  r0.x = min(2, (int)r0.x);
  r0.xy = x3[r0.x + 0].xy;
  r0.xy = r0.xy * cb2[9].xy + cb2[9].zw;
  r0.xy = r0.xy + r1.xy;
  r0.xy = r0.ww * cb2[13].zz + r0.xy;
  r0.xy = r0.xy + r2.xy;
  r0.z = (uint)cb2[10].y;
  r3.xyzw = t8.Sample(s6_s, r0.xy).xyzw;
  r0.x = min(3, (uint)r0.z);
  r0.x = dot(r3.xyzw, icb[r0.x + 0].xyzw);
  r2.xyzw = t6.Sample(s4_s, r2.zw).xyzw;
  r0.y = cmp(0.5 < cb2[11].z);
  r0.y = r0.y ? r0.x : 1;
  r0.zw = (uint2)cb2[3].yz;
  r0.zw = min(uint2(0, 0), (uint2)r0.zw);
  r0.z = dot(r2.xyzw, icb[r0.z + 0].xyzw);
  r1.x = cmp(3.5 < cb2[3].y);
  r1.y = saturate(cb2[3].w * r0.y);
  r3.xyzw = cb2[5].xyzw + -cb2[4].xyzw;
  r7.xyz = r1.yyy * r3.xyz + cb2[4].xyz;
  r7.xyz = r7.xyz * r2.xyz;
  r0.z = cb2[3].w * r0.z;
  r0.y = saturate(r0.z * r0.y);
  r3.xyz = r0.yyy * r3.xyz + cb2[4].xyz;
  r1.xyw = r1.xxx ? r7.xyz : r3.xyz;
  r0.y = dot(r2.xyzw, icb[r0.w + 0].xyzw);
  r0.z = r0.y * r0.x;
  r0.z = cmp(r0.z >= cb2[10].x);
  r0.z = r0.z ? 1.000000 : 0;
  r0.x = r0.y * r0.x + -cb2[10].x;
  r0.x = saturate(cb2[14].x * r0.x);
  r0.w = cmp(0.5 < cb2[13].w);
  r0.x = r0.w ? r0.x : r0.z;
  r0.z = (uint)cb2[6].w;
  r2.xyzw = t7.Sample(s5_s, r6.xy).xyzw;
  r0.z = min(3, (uint)r0.z);
  r0.z = dot(r2.xyzw, icb[r0.z + 0].xyzw);
  r0.w = cmp(cb2[8].z < 0.5);
  r0.y = r0.y * r3.w + cb2[4].w;
  r0.xy = r0.xy * r0.zz;
  r0.x = r0.w ? r0.y : r0.x;
  r0.x = r0.x * r1.z;
  r0.y = cmp(r0.x >= cb2[14].y);
  r0.y = r0.y ? 1.000000 : 0;
  r0.x = r0.x * r0.y;
  r0.yzw = r1.xyw + -r5.xyz;
  r0.yzw = r0.xxx * r0.yzw + r5.xyz;
  r2.xyz = r1.xyw * r0.xxx + r5.xyz;
  r3.xyz = float3(-1, -1, -1) + r1.xyw;
  r3.xyz = r0.xxx * r3.xyz + float3(1, 1, 1);
  r3.xyz = r5.xyz * r3.xyz;
  r1.xyz = float3(-0.5, -0.5, -0.5) + r1.xyw;
  r1.xyz = r0.xxx * r1.xyz + float3(0.5, 0.5, 0.5);
  r6.xyz = cmp(r5.xyz < float3(0.5, 0.5, 0.5));
  r7.xyz = r5.xyz * r1.xyz;
  r7.xyz = r7.xyz + r7.xyz;
  r5.xyz = float3(1, 1, 1) + -r5.xyz;
  r1.xyz = float3(1, 1, 1) + -r1.xyz;
  r1.xyz = r5.xyz * r1.xyz;
  r1.xyz = -r1.xyz * float3(2, 2, 2) + float3(1, 1, 1);
  r1.xyz = r6.xyz ? r7.xyz : r1.xyz;
  r1.xyz = r4.www ? r3.xyz : r1.xyz;
  r1.xyz = r4.zzz ? r2.xyz : r1.xyz;

  // o0.xyz = saturate(r4.yyy ? r0.yzw : r1.xyz);
  o0.xyz = (r4.yyy ? r0.yzw : r1.xyz);

  o0.xyz = ApplyOutputToneMap(o0.xyz, v1.xy);
  o0.xyz = renodx::draw::RenderIntermediatePass(o0.xyz);

  return;
}
