#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Wed Jun 17 01:21:29 2026
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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2) {
  float4 cb2[4];
}

cbuffer cb1 : register(b1) {
  float4 cb1[38];
}

cbuffer cb0 : register(b0) {
  float4 cb0[207];
}

// 3Dmigoto declarations
#define cmp -

void main(
    float4 v0: SV_POSITION0,
    float4 v1: TEXCOORD0,
    float4 v2: TEXCOORD1,
    out float4 o0: SV_Target0) {
  float4 r0, r1, r2, r3, r4, r5, r6, r7, r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[138].xy * v1.xy;
  r0.xy = (uint2)r0.xy;
  r0.zw = float2(0, 0);
  r0.xyzw = t1.Load(r0.xyz).xyzw;
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
  r1.xyzw = t1.Load(r1.xyz).xyzw;
  r0.x = cb0[62].z * r1.x + cb0[62].w;
  r0.x = 1 / r0.x;
  r0.x = saturate(r0.x * cb1[34].z + -cb1[34].y);
  r0.xy = r0.zz * r0.xx + v1.xy;
  r0.z = cmp(0 < cb1[11].w);
  if (r0.z != 0) {
    r1.xyzw = t5.Sample(s2_s, r0.xy).xyzw;
    r0.zw = float2(0.100000001, 0.100000001) * r1.xy;
    r1.xy = r1.xy * float2(0.100000001, 0.100000001) + v1.xy;
    r1.zw = r0.zw * r1.zz;
    r1.zw = cb1[11].ww * r1.zw;
    r2.xyzw = r1.zwzw * cb1[11].xxyy + r0.zwzw;
    r0.zw = r1.zw * cb1[11].zz + r0.zw;
  } else {
    r1.xy = v1.xy;
    r2.xyzw = float4(0, 0, 0, 0);
    r0.zw = float2(0, 0);
  }
  r1.z = frac(cb0[14].x);
  r3.xy = r0.xy * float2(5, 5) + r1.zz;
  r3.xyzw = t6.Sample(s3_s, r3.xy).xyzw;
  r1.w = -0.5 + r3.x;
  r1.w = r1.w + r1.w;
  r3.x = cmp(abs(r1.w) >= cb1[15].z);
  r3.x = r3.x ? 1.000000 : 0;
  r1.w = r3.x * r1.w;
  r1.w = cb1[15].y * r1.w;
  r1.w = 0.00999999978 * r1.w;
  sincos(cb1[14].w, r3.x, r4.x);
  r3.yzw = cb1[14].xyz * float3(0.100000001, 0.100000001, 0.100000001) + r1.www;
  r4.y = r3.x;
  r4.zw = r4.yy * r3.yz;
  r1.w = r4.y * r3.w;
  r5.xy = float2(88, 1234) * r1.zz;
  r5.xy = frac(r5.xy);
  r1.z = r5.x + r0.y;
  r6.yw = r1.zz * cb1[15].xx + r4.zw;
  r7.y = r1.z * cb1[15].x + r1.w;
  r6.xz = float2(0.5, 0.5);
  r8.xyzw = t6.Sample(s3_s, r6.xy).xyzw;
  r6.xyzw = t6.Sample(s3_s, r6.zw).xyzw;
  r7.x = 0.5;
  r7.xyzw = t6.Sample(s3_s, r7.xy).yzxw;
  r1.z = r5.y * r5.y;
  r1.z = r5.y * r1.z;
  r1.w = max(cb1[16].y, cb1[16].x);
  r1.w = -cb1[16].x + r1.w;
  r1.z = r1.z * r1.w + cb1[16].x;
  r7.x = r8.x;
  r7.y = r6.x;
  r5.xyz = cmp(r1.zzz >= r7.xyz);
  r5.xyz = r5.xyz ? float3(1, 1, 1) : 0;
  r5.xyz = cb1[16].zzz * r5.xyz;
  r1.zw = cmp(float2(0.5, 0.5) < cb1[19].zw);
  if (r1.z != 0) {
    r4.zw = r0.xy * cb1[17].xy + cb1[17].zw;
    r6.xyzw = t7.Sample(s4_s, r4.zw).xyzw;
    r5.xyz = r6.xxx * r5.xyz;
  }
  if (r1.w != 0) {
    r1.zw = r0.xy * cb1[18].xy + cb1[18].zw;
    r4.zw = cb1[19].xy * cb0[14].xx;
    r4.zw = frac(r4.zw);
    r1.zw = r4.zw + r1.zw;
    r6.xyzw = t7.Sample(s4_s, r1.zw).xyzw;
    r5.xyz = r6.yyy * r5.xyz;
  }
  r1.z = cmp(0.5 < cb1[24].w);
  if (r1.z != 0) {
    r1.zw = r0.xy * float2(2, 2) + float2(-1, -1);
    r4.zw = float2(-0.5, -0.5) + cb1[24].xy;
    r1.zw = -r4.zw + r1.zw;
    r3.x = dot(r1.zw, r1.zw);
    r1.zw = r3.xx * r1.zw;
    r1.zw = cb1[12].zz * r1.zw;
    r6.xy = float2(-0.333333343, -0.333333343) * r1.zw;
    r6.z = 9.99999975e-05;
    r1.z = dot(r6.xyz, r6.xyz);
    r1.z = rsqrt(r1.z);
    r1.zw = r6.xy * r1.zz;
    r3.x = dot(r6.xy, r6.xy);
    r3.x = sqrt(r3.x);
    r4.z = 0.942809045 * cb1[12].z;
    r3.x = r3.x / r4.z;
    r3.x = log2(r3.x);
    r3.x = cb1[24].z * r3.x;
    r3.x = exp2(r3.x);
    r1.zw = r3.xx * r1.zw;
    r1.zw = r1.zw * r4.zz;
    r4.zw = r2.xy + r0.xy;
    r4.zw = r3.yy * r4.xy + r4.zw;
    r4.zw = r1.zw * cb1[25].ww + r4.zw;
    r6.xyzw = t2.Sample(s0_s, r4.zw).xyzw;
    r4.zw = r2.zw + r0.xy;
    r4.zw = r3.zz * r4.xy + r4.zw;
    r4.zw = r1.zw * cb1[26].ww + r4.zw;
    r7.xyzw = t2.Sample(s0_s, r4.zw).xyzw;
    r4.zw = r0.xy + r0.zw;
    r4.zw = r3.ww * r4.xy + r4.zw;
    r1.zw = r1.zw * cb1[27].ww + r4.zw;
    r8.xyzw = t2.Sample(s0_s, r1.zw).xyzw;
    r6.yzw = cb1[26].xyz * r7.yyy;
    r6.xyz = r6.xxx * cb1[25].xyz + r6.yzw;
    r6.xyz = r8.zzz * cb1[27].xyz + r6.xyz;
    r7.xyzw = t2.Sample(s0_s, r1.xy).wxyz;
  } else {
    r1.zw = r2.xy + r0.xy;
    r1.zw = r3.yy * r4.xy + r1.zw;
    r8.xyzw = t2.Sample(s0_s, r1.zw).xyzw;
    r1.zw = r2.zw + r0.xy;
    r1.zw = r3.zz * r4.xy + r1.zw;
    r2.xyzw = t2.Sample(s0_s, r1.zw).xyzw;
    r0.zw = r0.xy + r0.zw;
    r0.zw = r3.ww * r4.xy + r0.zw;
    r6.xyzw = t2.Sample(s0_s, r0.zw).xyzw;
    r7.xyzw = t2.Sample(s0_s, r1.xy).wxyz;
    r6.x = r8.x;
    r6.y = r2.y;
  }
  r0.zw = cb1[23].xy * r0.xy;
  r0.zw = cb0[206].xy * r0.zw;
  r2.xyzw = t10.Sample(s1_s, r0.zw).xyzw;
  r2.xyz = float3(12, 12, 12) * r2.xyz;
  r0.z = 25 * cb0[14].x;
  r0.z = frac(r0.z);
  r0.w = 1 + -r0.y;
  r0.z = r0.z + -r0.w;
  r0.w = 0.400000006 + -r0.z;
  r0.z = saturate(0.0500000007 + r0.z);
  r1.z = cmp(r0.w >= 0.400000006);
  r1.z = r1.z ? 1.000000 : 0;
  r0.z = r0.z * 10 + -r0.w;
  r0.z = r1.z * r0.z + r0.w;
  r0.z = max(0, r0.z);
  r0.z = r0.z * cb1[23].w + 1;
  r2.xyz = r2.xyz * r0.zzz;
  r0.z = 1 + -cb1[23].z;
  r2.xyz = r2.xyz * r0.zzz + cb1[23].zzz;
  r2.xyz = r6.xyz * r2.xyz + r5.xyz;
  r0.z = cmp(cb1[21].z < 0.5);
  r1.zw = cmp(float2(0, 0) < cb1[21].xy);
  r0.w = (int)r1.w | (int)r1.z;
  r0.z = r0.z ? r0.w : 0;
  if (r0.z != 0) {
    r0.z = cb0[138].y * r1.y;
    r0.z = cb1[28].x * r0.z;
    r0.w = r0.z + r0.z;
    r0.w = cmp(r0.w >= -r0.w);
    r3.xy = r0.ww ? float2(2, 0.5) : float2(-2, -0.5);
    r0.z = r3.y * r0.z;
    r0.z = frac(r0.z);
    r0.w = r3.x * r0.z;
    r1.z = cmp(1 < r0.w);
    r0.z = -r3.x * r0.z + 2;
    r0.z = r1.z ? r0.z : r0.w;
    r0.z = r0.z * 2 + -1;
    r3.x = cb1[28].z * r0.z + r1.x;
    r0.z = cb0[138].x * cb0[138].w;
    r0.w = abs(cb1[29].y) + r3.x;
    r1.z = cb1[29].y * r1.y;
    r0.w = r0.w * r0.z + -r1.z;
    r0.z = dot(cb1[29].xx, r0.zz);
    r0.z = r0.w / r0.z;
    r0.z = frac(r0.z);
    r0.z = cmp(0.5 >= r0.z);
    r0.z = r0.z ? 0.999989986 : -1;
    r3.y = cb1[29].z * r0.z + r1.y;
    r3.xyzw = t8.Sample(s5_s, r3.xy).xyzw;
    r4.xyz = log2(abs(r3.xyz));
    r4.xyz = float3(0.333333343, 0.333333343, 0.333333343) * r4.xyz;
    r4.xyz = exp2(r4.xyz);
    r4.xyz = r4.xyz * float3(1.49380159, 1.49380159, 1.49380159) + -r3.xyz;
    r5.xyz = cmp(r3.xyz >= float3(0.300000012, 0.300000012, 0.300000012));
    r5.xyz = r5.xyz ? float3(1, 1, 1) : 0;
    r4.xyz = float3(-0.699999988, -0.699999988, -0.699999988) + r4.xyz;
    r3.xyz = r5.xyz * r4.xyz + r3.xyz;
    r3.xyz = cb1[21].xxx * r3.xyz;
    r0.z = dot(r2.xyz, float3(0.298999995, 0.587000012, 0.114));
    r0.w = cmp(0.5 < cb1[22].x);
    r4.xyz = r0.zzz * r3.xyz + -r3.xyz;
    r4.xyz = r7.xxx * r4.xyz + r3.xyz;
    r4.xyz = r0.www ? r4.xyz : r3.xyz;
    if (r1.w != 0) {
      r0.zw = r1.xy * cb1[20].xy + cb1[20].zw;
      r5.xyzw = t9.Sample(s0_s, r0.zw).xyzw;
      r5.xyz = cb1[21].yyy * r5.xyz;
      r4.xyz = r5.xyz * r3.xyz + r4.xyz;
    }
    r2.xyz = r4.xyz + r2.xyz;
    r0.z = r4.x + r4.y;
    r0.z = r0.z + r4.z;
    o0.w = saturate(r0.z * 0.333299994 + r7.x);
  } else {
    o0.w = r7.x;
  }

  // Vignette
  r0.z = cmp(0 < cb1[7].z);
  if (r0.z != 0) {
    r0.zw = -cb1[7].xy + r1.xy;
    r1.yz = cb1[7].zz * abs(r0.zw) * min(1.f, CUSTOM_VIGNETTE);
    r1.x = cb1[6].w * r1.y;
    r0.z = dot(r1.xz, r1.xz);
    r0.z = 1 + -r0.z;
    r0.z = max(0, r0.z);
    r0.z = log2(r0.z);
    r0.z = cb1[7].w * r0.z * max(1.f, CUSTOM_VIGNETTE);
    r0.z = exp2(r0.z);
    r1.xyz = float3(1, 1, 1) + -cb1[6].xyz;
    r1.xyz = r0.zzz * r1.xyz + cb1[6].xyz;
    r2.xyz = r2.xyz * r1.xyz;
  }

  r0.z = cmp(0 < cb1[13].x);
  if (r0.z != 0) {
    r0.xy = r0.xy * cb1[8].xy + cb1[8].zw;
    r0.xyzw = t3.Sample(s1_s, r0.xy).xyzw;
    r0.x = -0.5 + r0.w;
    r0.x = r0.x + r0.x;
    r0.y = dot(r2.xyz, float3(0.212672904, 0.715152204, 0.0721750036));
    r0.y = sqrt(r0.y);
    r0.y = cb1[13].y * -r0.y + 1;
    r0.xzw = r2.xyz * r0.xxx;
    r0.xzw = cb1[13].xxx * r0.xzw;
    r2.xyz = r0.xzw * r0.yyy + r2.xyz;
  }

  r0.x = r2.x + r2.y;
  r0.x = r0.x + r2.z;
  r0.y = 0.333333343 * r0.x;
  r0.xzw = -r0.xxx * float3(0.333333343, 0.333333343, 0.333333343) + r2.xyz;
  r0.xyz = r0.xzw * cb2[0].www + r0.yyy;
  r0.w = cmp(0.5 < cb0[54].w);
  if (r0.w != 0) {
    r1.x = dot(r0.xyz, float3(0.212672904, 0.715152204, 0.0721750036));
    r1.y = 0.5;
    r1.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
    r0.xyz = r1.xxx;
  }
  r1.xyz = saturate(r0.xyz);
  r1.xyz = float3(1, 1, 1) + -r1.xyz;
  r1.xyz = r1.xyz + -r0.xyz;
  r0.xyz = cb2[1].www * r1.xyz + r0.xyz;
  r0.w = saturate(dot(r0.xyz, float3(0.212672904, 0.715152204, 0.0721750036)));
  r0.w = -cb2[2].y + r0.w;
  r0.w = saturate(cb2[2].z * r0.w);
  r1.xyz = cb2[1].xyz + -cb2[0].xyz;
  r1.xyz = r0.www * r1.xyz + cb2[0].xyz;
  r1.xyz = r1.xyz + -r0.xyz;

  if (RENODX_TONE_MAP_TYPE > 0) {
    r0.xyz = (cb2[2].xxx * r1.xyz + r0.xyz);
    // HDR FX Mask Blend
    float3 result = r0.xyz;
    r0.w = cmp(0.5 < cb2[2].w);
    if (r0.w != 0) {
      r1.xyzw = t4.Sample(s0_s, v1.xy).xyzw;
      float m = smoothstep(0.0f, 1.0f, r1.x);
      r0.w = cmp(cb2[3].w < 0.5);
      if (r0.w != 0) {
        // Simple lighten (HDR-compatible)
        float3 blend_factor = pow(m, 2.2f);
        result = result * (1.0f + blend_factor * 0.5f);
      } else {
        // Overlay (HDR-compatible)
        float3 blend = cb2[3].xyz;
        result = result * lerp(1.0f, blend * 2.0f, m);
      }
    }
    o0.xyz = result;
  } else {
    r0.xyz = saturate(cb2[2].xxx * r1.xyz + r0.xyz);
    // Original FX Mask Blend
    r0.w = cmp(0.5 < cb2[2].w);
    if (r0.w != 0) {
      r1.xyzw = t4.Sample(s0_s, v1.xy).xyzw;
      r0.w = cmp(cb2[3].w < 0.5);
      r1.yzw = r1.xxx + r0.xyz;
      r1.yzw = min(float3(1, 1, 1), r1.yzw);
      r2.xyz = cb2[3].xyz * r0.xyz;
      r2.xyz = r2.xyz + r2.xyz;
      r3.xyz = float3(1, 1, 1) + -r0.xyz;
      r3.xyz = r3.xyz + r3.xyz;
      r4.xyz = float3(1, 1, 1) + -cb2[3].xyz;
      r3.xyz = -r3.xyz * r4.xyz + float3(1, 1, 1);
      r4.xyz = cmp(float3(0.5, 0.5, 0.5) >= r0.xyz);
      r5.xyz = r4.xyz ? float3(1, 1, 1) : 0;
      r4.xyz = r4.xyz ? float3(0, 0, 0) : float3(1, 1, 1);
      r3.xyz = r4.xyz * r3.xyz;
      r2.xyz = r5.xyz * r2.xyz + r3.xyz;
      r2.w = 1 + -r1.x;
      r2.xyz = r2.xyz * r1.xxx;
      r2.xyz = r2.www * r0.xyz + r2.xyz;
      o0.xyz = r0.www ? r1.yzw : r2.xyz;
    } else {
      o0.xyz = r0.xyz;
    }
  }

  o0.xyz = ApplyOutputToneMap(o0.xyz, v1.xy);
  o0.xyz = renodx::draw::RenderIntermediatePass(o0.xyz);

  return;
}
