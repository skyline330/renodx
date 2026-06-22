#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Wed Jun 17 01:21:26 2026
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1) {
  float4 cb1[30];
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
  float4 r0, r1, r2, r3, r4, r5, r6, r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb1[5].w != 0.000000);
  if (r0.x != 0) {
    r0.yz = float2(-0.5, -0.5) + v1.xy;
    r1.xy = r0.yz * cb1[5].zz + float2(0.5, 0.5);
    r0.yz = r0.yz * cb1[5].zz + -cb1[4].xy;
    r0.yz = cb1[4].zw * r0.yz;
    r0.w = dot(r0.yz, r0.yz);
    r0.w = sqrt(r0.w);
    r1.z = cmp(0 < cb1[5].w);
    if (r1.z != 0) {
      r1.zw = cb1[5].xy * r0.ww;
      sincos(r1.z, r2.x, r3.x);
      r1.z = r2.x / r3.x;
      r1.w = 1 / r1.w;
      r1.z = r1.z * r1.w + -1;
      r1.zw = r0.yz * r1.zz + r1.xy;
    } else {
      r2.x = 1 / r0.w;
      r2.x = cb1[5].x * r2.x;
      r0.w = cb1[5].y * r0.w;
      r2.y = min(1, abs(r0.w));
      r2.z = max(1, abs(r0.w));
      r2.z = 1 / r2.z;
      r2.y = r2.y * r2.z;
      r2.z = r2.y * r2.y;
      r2.w = r2.z * 0.0208350997 + -0.0851330012;
      r2.w = r2.z * r2.w + 0.180141002;
      r2.w = r2.z * r2.w + -0.330299497;
      r2.z = r2.z * r2.w + 0.999866009;
      r2.w = r2.y * r2.z;
      r3.x = cmp(1 < abs(r0.w));
      r2.w = r2.w * -2 + 1.57079637;
      r2.w = r3.x ? r2.w : 0;
      r2.y = r2.y * r2.z + r2.w;
      r0.w = min(1, r0.w);
      r0.w = cmp(r0.w < -r0.w);
      r0.w = r0.w ? -r2.y : r2.y;
      r0.w = r2.x * r0.w + -1;
      r1.zw = r0.yz * r0.ww + r1.xy;
    }
  } else {
    r1.zw = v1.xy;
  }
  r0.y = cmp(0 < cb1[11].w);
  if (r0.y != 0) {
    r2.xyzw = t2.Sample(s2_s, v1.xy).xyzw;
    r0.zw = float2(0.100000001, 0.100000001) * r2.xy;
    r1.zw = r2.xy * float2(0.100000001, 0.100000001) + r1.zw;
    r1.xy = r0.zw * r2.zz;
    r1.xy = cb1[11].ww * r1.xy;
    r2.xyzw = r1.xyxy * cb1[11].xxyy + r0.zwzw;
    r0.zw = r1.xy * cb1[11].zz + r0.zw;
  } else {
    r2.xyzw = float4(0, 0, 0, 0);
    r0.zw = float2(0, 0);
  }
  r1.x = cmp(0.5 < cb1[24].w);
  if (r1.x != 0) {
    r1.xy = v1.xy * float2(2, 2) + float2(-1, -1);
    r3.xy = float2(-0.5, -0.5) + cb1[24].xy;
    r1.xy = -r3.xy + r1.xy;
    r3.x = dot(r1.xy, r1.xy);
    r1.xy = r3.xx * r1.xy;
    r1.xy = cb1[12].zz * r1.xy;
    r3.xy = float2(-0.333333343, -0.333333343) * r1.xy;
    r3.z = 9.99999975e-05;
    r1.x = dot(r3.xyz, r3.xyz);
    r1.x = rsqrt(r1.x);
    r1.xy = r3.xy * r1.xx;
    r3.x = dot(r3.xy, r3.xy);
    r3.x = sqrt(r3.x);
    r3.y = 0.942809045 * cb1[12].z;
    r3.x = r3.x / r3.y;
    r3.x = log2(r3.x);
    r3.x = cb1[24].z * r3.x;
    r3.x = exp2(r3.x);
    r1.xy = r3.xx * r1.xy;
    r1.xy = r1.xy * r3.yy;
    r3.xy = v1.xy + r2.xy;
    r3.xy = r1.xy * cb1[25].ww + r3.xy;
    if (r0.x != 0) {
      r3.zw = float2(-0.5, -0.5) + r3.xy;
      r4.xy = r3.zw * cb1[5].zz + float2(0.5, 0.5);
      r3.zw = r3.zw * cb1[5].zz + -cb1[4].xy;
      r3.zw = cb1[4].zw * r3.zw;
      r4.z = dot(r3.zw, r3.zw);
      r4.z = sqrt(r4.z);
      r4.w = cmp(0 < cb1[5].w);
      if (r4.w != 0) {
        r5.xy = cb1[5].xy * r4.zz;
        sincos(r5.x, r5.x, r6.x);
        r4.w = r5.x / r6.x;
        r5.x = 1 / r5.y;
        r4.w = r4.w * r5.x + -1;
        r3.xy = r3.zw * r4.ww + r4.xy;
      } else {
        r4.w = 1 / r4.z;
        r4.w = cb1[5].x * r4.w;
        r4.z = cb1[5].y * r4.z;
        r5.x = min(1, abs(r4.z));
        r5.y = max(1, abs(r4.z));
        r5.y = 1 / r5.y;
        r5.x = r5.x * r5.y;
        r5.y = r5.x * r5.x;
        r5.z = r5.y * 0.0208350997 + -0.0851330012;
        r5.z = r5.y * r5.z + 0.180141002;
        r5.z = r5.y * r5.z + -0.330299497;
        r5.y = r5.y * r5.z + 0.999866009;
        r5.z = r5.x * r5.y;
        r5.w = cmp(1 < abs(r4.z));
        r5.z = r5.z * -2 + 1.57079637;
        r5.z = r5.w ? r5.z : 0;
        r5.x = r5.x * r5.y + r5.z;
        r4.z = min(1, r4.z);
        r4.z = cmp(r4.z < -r4.z);
        r4.z = r4.z ? -r5.x : r5.x;
        r4.z = r4.w * r4.z + -1;
        r3.xy = r3.zw * r4.zz + r4.xy;
      }
    }
    r3.xyzw = t0.Sample(s0_s, r3.xy).xyzw;
    r3.yz = v1.xy + r2.zw;
    r3.yz = r1.xy * cb1[26].ww + r3.yz;
    if (r0.x != 0) {
      r4.xy = float2(-0.5, -0.5) + r3.yz;
      r4.zw = r4.xy * cb1[5].zz + float2(0.5, 0.5);
      r4.xy = r4.xy * cb1[5].zz + -cb1[4].xy;
      r4.xy = cb1[4].zw * r4.xy;
      r3.w = dot(r4.xy, r4.xy);
      r3.w = sqrt(r3.w);
      r5.x = cmp(0 < cb1[5].w);
      if (r5.x != 0) {
        r5.xy = cb1[5].xy * r3.ww;
        sincos(r5.x, r5.x, r6.x);
        r5.x = r5.x / r6.x;
        r5.y = 1 / r5.y;
        r5.x = r5.x * r5.y + -1;
        r3.yz = r4.xy * r5.xx + r4.zw;
      } else {
        r5.x = 1 / r3.w;
        r5.x = cb1[5].x * r5.x;
        r3.w = cb1[5].y * r3.w;
        r5.y = min(1, abs(r3.w));
        r5.z = max(1, abs(r3.w));
        r5.z = 1 / r5.z;
        r5.y = r5.y * r5.z;
        r5.z = r5.y * r5.y;
        r5.w = r5.z * 0.0208350997 + -0.0851330012;
        r5.w = r5.z * r5.w + 0.180141002;
        r5.w = r5.z * r5.w + -0.330299497;
        r5.z = r5.z * r5.w + 0.999866009;
        r5.w = r5.y * r5.z;
        r6.x = cmp(1 < abs(r3.w));
        r5.w = r5.w * -2 + 1.57079637;
        r5.w = r6.x ? r5.w : 0;
        r5.y = r5.y * r5.z + r5.w;
        r3.w = min(1, r3.w);
        r3.w = cmp(r3.w < -r3.w);
        r3.w = r3.w ? -r5.y : r5.y;
        r3.w = r5.x * r3.w + -1;
        r3.yz = r4.xy * r3.ww + r4.zw;
      }
    }
    r4.xyzw = t0.Sample(s0_s, r3.yz).xyzw;
    r3.yz = v1.xy + r0.zw;
    r1.xy = r1.xy * cb1[27].ww + r3.yz;
    if (r0.x != 0) {
      r3.yz = float2(-0.5, -0.5) + r1.xy;
      r4.xz = r3.yz * cb1[5].zz + float2(0.5, 0.5);
      r3.yz = r3.yz * cb1[5].zz + -cb1[4].xy;
      r3.yz = cb1[4].zw * r3.yz;
      r3.w = dot(r3.yz, r3.yz);
      r3.w = sqrt(r3.w);
      r4.w = cmp(0 < cb1[5].w);
      if (r4.w != 0) {
        r5.xy = cb1[5].xy * r3.ww;
        sincos(r5.x, r5.x, r6.x);
        r4.w = r5.x / r6.x;
        r5.x = 1 / r5.y;
        r4.w = r4.w * r5.x + -1;
        r1.xy = r3.yz * r4.ww + r4.xz;
      } else {
        r4.w = 1 / r3.w;
        r4.w = cb1[5].x * r4.w;
        r3.w = cb1[5].y * r3.w;
        r5.x = min(1, abs(r3.w));
        r5.y = max(1, abs(r3.w));
        r5.y = 1 / r5.y;
        r5.x = r5.x * r5.y;
        r5.y = r5.x * r5.x;
        r5.z = r5.y * 0.0208350997 + -0.0851330012;
        r5.z = r5.y * r5.z + 0.180141002;
        r5.z = r5.y * r5.z + -0.330299497;
        r5.y = r5.y * r5.z + 0.999866009;
        r5.z = r5.x * r5.y;
        r5.w = cmp(1 < abs(r3.w));
        r5.z = r5.z * -2 + 1.57079637;
        r5.z = r5.w ? r5.z : 0;
        r5.x = r5.x * r5.y + r5.z;
        r3.w = min(1, r3.w);
        r3.w = cmp(r3.w < -r3.w);
        r3.w = r3.w ? -r5.x : r5.x;
        r3.w = r4.w * r3.w + -1;
        r1.xy = r3.yz * r3.ww + r4.xz;
      }
    }
    r5.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
    r3.yzw = cb1[26].xyz * r4.yyy;
    r3.xyz = r3.xxx * cb1[25].xyz + r3.yzw;
    r3.xyz = r5.zzz * cb1[27].xyz + r3.xyz;
    r4.xyzw = t0.Sample(s0_s, r1.zw).wxyz;
  } else {
    if (r0.y != 0) {
      r1.xy = v1.xy + r2.xy;
      if (r0.x != 0) {
        r2.xy = float2(-0.5, -0.5) + r1.xy;
        r5.xy = r2.xy * cb1[5].zz + float2(0.5, 0.5);
        r2.xy = r2.xy * cb1[5].zz + -cb1[4].xy;
        r2.xy = cb1[4].zw * r2.xy;
        r0.y = dot(r2.xy, r2.xy);
        r0.y = sqrt(r0.y);
        r5.z = cmp(0 < cb1[5].w);
        if (r5.z != 0) {
          r5.zw = cb1[5].xy * r0.yy;
          sincos(r5.z, r6.x, r7.x);
          r5.z = r6.x / r7.x;
          r5.w = 1 / r5.w;
          r5.z = r5.z * r5.w + -1;
          r1.xy = r2.xy * r5.zz + r5.xy;
        } else {
          r5.z = 1 / r0.y;
          r5.z = cb1[5].x * r5.z;
          r0.y = cb1[5].y * r0.y;
          r5.w = min(1, abs(r0.y));
          r6.x = max(1, abs(r0.y));
          r6.x = 1 / r6.x;
          r5.w = r6.x * r5.w;
          r6.x = r5.w * r5.w;
          r6.y = r6.x * 0.0208350997 + -0.0851330012;
          r6.y = r6.x * r6.y + 0.180141002;
          r6.y = r6.x * r6.y + -0.330299497;
          r6.x = r6.x * r6.y + 0.999866009;
          r6.y = r6.x * r5.w;
          r6.z = cmp(1 < abs(r0.y));
          r6.y = r6.y * -2 + 1.57079637;
          r6.y = r6.z ? r6.y : 0;
          r5.w = r5.w * r6.x + r6.y;
          r0.y = min(1, r0.y);
          r0.y = cmp(r0.y < -r0.y);
          r0.y = r0.y ? -r5.w : r5.w;
          r0.y = r5.z * r0.y + -1;
          r1.xy = r2.xy * r0.yy + r5.xy;
        }
      }
      r5.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
      r1.xy = v1.xy + r2.zw;
      if (r0.x != 0) {
        r2.xy = float2(-0.5, -0.5) + r1.xy;
        r2.zw = r2.xy * cb1[5].zz + float2(0.5, 0.5);
        r2.xy = r2.xy * cb1[5].zz + -cb1[4].xy;
        r2.xy = cb1[4].zw * r2.xy;
        r0.y = dot(r2.xy, r2.xy);
        r0.y = sqrt(r0.y);
        r5.y = cmp(0 < cb1[5].w);
        if (r5.y != 0) {
          r5.yz = cb1[5].xy * r0.yy;
          sincos(r5.y, r6.x, r7.x);
          r5.y = r6.x / r7.x;
          r5.z = 1 / r5.z;
          r5.y = r5.y * r5.z + -1;
          r1.xy = r2.xy * r5.yy + r2.zw;
        } else {
          r5.y = 1 / r0.y;
          r5.y = cb1[5].x * r5.y;
          r0.y = cb1[5].y * r0.y;
          r5.z = min(1, abs(r0.y));
          r5.w = max(1, abs(r0.y));
          r5.w = 1 / r5.w;
          r5.z = r5.z * r5.w;
          r5.w = r5.z * r5.z;
          r6.x = r5.w * 0.0208350997 + -0.0851330012;
          r6.x = r5.w * r6.x + 0.180141002;
          r6.x = r5.w * r6.x + -0.330299497;
          r5.w = r5.w * r6.x + 0.999866009;
          r6.x = r5.z * r5.w;
          r6.y = cmp(1 < abs(r0.y));
          r6.x = r6.x * -2 + 1.57079637;
          r6.x = r6.y ? r6.x : 0;
          r5.z = r5.z * r5.w + r6.x;
          r0.y = min(1, r0.y);
          r0.y = cmp(r0.y < -r0.y);
          r0.y = r0.y ? -r5.z : r5.z;
          r0.y = r5.y * r0.y + -1;
          r1.xy = r2.xy * r0.yy + r2.zw;
        }
      }
      r2.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
      r0.yz = v1.xy + r0.zw;
      if (r0.x != 0) {
        r0.xw = float2(-0.5, -0.5) + r0.yz;
        r1.xy = r0.xw * cb1[5].zz + float2(0.5, 0.5);
        r0.xw = r0.xw * cb1[5].zz + -cb1[4].xy;
        r0.xw = cb1[4].zw * r0.xw;
        r2.x = dot(r0.xw, r0.xw);
        r2.x = sqrt(r2.x);
        r2.z = cmp(0 < cb1[5].w);
        if (r2.z != 0) {
          r2.zw = cb1[5].xy * r2.xx;
          sincos(r2.z, r6.x, r7.x);
          r2.z = r6.x / r7.x;
          r2.w = 1 / r2.w;
          r2.z = r2.z * r2.w + -1;
          r0.yz = r0.xw * r2.zz + r1.xy;
        } else {
          r2.z = 1 / r2.x;
          r2.z = cb1[5].x * r2.z;
          r2.x = cb1[5].y * r2.x;
          r2.w = min(1, abs(r2.x));
          r5.y = max(1, abs(r2.x));
          r5.y = 1 / r5.y;
          r2.w = r5.y * r2.w;
          r5.y = r2.w * r2.w;
          r5.z = r5.y * 0.0208350997 + -0.0851330012;
          r5.z = r5.y * r5.z + 0.180141002;
          r5.z = r5.y * r5.z + -0.330299497;
          r5.y = r5.y * r5.z + 0.999866009;
          r5.z = r5.y * r2.w;
          r5.w = cmp(1 < abs(r2.x));
          r5.z = r5.z * -2 + 1.57079637;
          r5.z = r5.w ? r5.z : 0;
          r2.w = r2.w * r5.y + r5.z;
          r2.x = min(1, r2.x);
          r2.x = cmp(r2.x < -r2.x);
          r2.x = r2.x ? -r2.w : r2.w;
          r2.x = r2.z * r2.x + -1;
          r0.yz = r0.xw * r2.xx + r1.xy;
        }
      }
      r3.xyzw = t0.Sample(s0_s, r0.yz).xyzw;
      r3.x = r5.x;
      r3.y = r2.y;
    } else {
      r3.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
    }
    r4.xyzw = t0.Sample(s0_s, r1.zw).wxyz;
  }
  r0.x = cmp(cb1[21].z < 0.5);
  r0.yz = cmp(float2(0, 0) < cb1[21].xy);
  r0.y = (int)r0.z | (int)r0.y;
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.x = cb0[138].y * r1.w;
    r0.x = cb1[28].x * r0.x;
    r0.y = r0.x + r0.x;
    r0.y = cmp(r0.y >= -r0.y);
    r0.yw = r0.yy ? float2(2, 0.5) : float2(-2, -0.5);
    r0.x = r0.x * r0.w;
    r0.x = frac(r0.x);
    r0.w = r0.y * r0.x;
    r1.x = cmp(1 < r0.w);
    r0.x = -r0.y * r0.x + 2;
    r0.x = r1.x ? r0.x : r0.w;
    r0.x = r0.x * 2 + -1;
    r0.x = cb1[28].z * r0.x + r1.z;
    r0.w = cb0[138].x * cb0[138].w;
    r1.x = abs(cb1[29].y) + r0.x;
    r1.y = cb1[29].y * r1.w;
    r1.x = r1.x * r0.w + -r1.y;
    r0.w = dot(cb1[29].xx, r0.ww);
    r0.w = r1.x / r0.w;
    r0.w = frac(r0.w);
    r0.w = cmp(0.5 >= r0.w);
    r0.w = r0.w ? 0.999989986 : -1;
    r0.y = cb1[29].z * r0.w + r1.w;
    r2.xyzw = t3.Sample(s3_s, r0.xy).xyzw;
    r0.xyw = log2(abs(r2.xyz));
    r0.xyw = float3(0.333333343, 0.333333343, 0.333333343) * r0.xyw;
    r0.xyw = exp2(r0.xyw);
    r0.xyw = r0.xyw * float3(1.49380159, 1.49380159, 1.49380159) + -r2.xyz;
    r4.yzw = cmp(r2.xyz >= float3(0.300000012, 0.300000012, 0.300000012));
    r4.yzw = r4.yzw ? float3(1, 1, 1) : 0;
    r0.xyw = float3(-0.699999988, -0.699999988, -0.699999988) + r0.xyw;
    r0.xyw = r4.yzw * r0.xyw + r2.xyz;
    r0.xyw = cb1[21].xxx * r0.xyw;
    r1.x = dot(r3.xyz, float3(0.298999995, 0.587000012, 0.114));
    r1.y = cmp(0.5 < cb1[22].x);
    r2.xyz = r1.xxx * r0.xyw + -r0.xyw;
    r2.xyz = r4.xxx * r2.xyz + r0.xyw;
    r2.xyz = r1.yyy ? r2.xyz : r0.xyw;
    if (r0.z != 0) {
      r1.xy = r1.zw * cb1[20].xy + cb1[20].zw;
      r5.xyzw = t4.Sample(s0_s, r1.xy).xyzw;
      r4.yzw = cb1[21].yyy * r5.xyz;
      r2.xyz = r4.yzw * r0.xyw + r2.xyz;
    }
    r3.xyz = r3.xyz + r2.xyz;
    r0.x = r2.x + r2.y;
    r0.x = r0.x + r2.z;
    o0.w = saturate(r0.x * 0.333299994 + r4.x);
  } else {
    o0.w = r4.x;
  }

  // Vignette
  r0.x = cmp(0 < cb1[7].z);
  if (r0.x != 0) {
    r0.xy = -cb1[7].xy + r1.zw;
    r0.yz = cb1[7].zz * abs(r0.xy) * min(1.f, CUSTOM_VIGNETTE);
    r0.x = cb1[6].w * r0.y;
    r0.x = dot(r0.xz, r0.xz);
    r0.x = 1 + -r0.x;
    r0.x = max(0, r0.x);
    r0.x = log2(r0.x);
    r0.x = cb1[7].w * r0.x * max(1.f, CUSTOM_VIGNETTE);
    r0.x = exp2(r0.x);
    r0.yzw = float3(1, 1, 1) + -cb1[6].xyz;
    r0.xyz = r0.xxx * r0.yzw + cb1[6].xyz;
    r3.xyz = r3.xyz * r0.xyz;
  }

  r0.x = cmp(0 < cb1[13].x);
  if (r0.x != 0) {
    r0.xy = v1.xy * cb1[8].xy + cb1[8].zw;
    r0.xyzw = t1.Sample(s1_s, r0.xy).xyzw;
    r0.x = -0.5 + r0.w;
    r0.x = r0.x + r0.x;
    r0.y = dot(r3.xyz, float3(0.212672904, 0.715152204, 0.0721750036));
    r0.y = sqrt(r0.y);
    r0.y = cb1[13].y * -r0.y + 1;
    r0.xzw = r3.xyz * r0.xxx;
    r0.xzw = cb1[13].xxx * r0.xzw;
    r3.xyz = r0.xzw * r0.yyy + r3.xyz;
  }
  // o0.xyz = saturate(r3.xyz);
  o0.xyz = (r3.xyz);

  o0.xyz = ApplyOutputToneMap(o0.xyz, v1.xy);
  o0.xyz = renodx::draw::RenderIntermediatePass(o0.xyz);

  return;
}
