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
  float4 r0, r1, r2, r3, r4, r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < cb1[11].w);
  if (r0.x != 0) {
    r1.xyzw = t2.Sample(s2_s, v1.xy).xyzw;
    r0.yz = float2(0.100000001, 0.100000001) * r1.xy;
    r1.xy = r1.xy * float2(0.100000001, 0.100000001) + v1.xy;
    r1.zw = r0.yz * r1.zz;
    r1.zw = cb1[11].ww * r1.zw;
    r2.xyzw = r1.zwzw * cb1[11].xxyy + r0.yzyz;
    r0.yz = r1.zw * cb1[11].zz + r0.yz;
  } else {
    r1.xy = v1.xy;
    r2.xyzw = float4(0, 0, 0, 0);
    r0.yz = float2(0, 0);
  }
  r0.w = cmp(0.5 < cb1[24].w);
  if (r0.w != 0) {
    r1.zw = v1.xy * float2(2, 2) + float2(-1, -1);
    r3.xy = float2(-0.5, -0.5) + cb1[24].xy;
    r1.zw = -r3.xy + r1.zw;
    r0.w = dot(r1.zw, r1.zw);
    r1.zw = r1.zw * r0.ww;
    r1.zw = cb1[12].zz * r1.zw;
    r3.xy = float2(-0.333333343, -0.333333343) * r1.zw;
    r3.z = 9.99999975e-05;
    r0.w = dot(r3.xyz, r3.xyz);
    r0.w = rsqrt(r0.w);
    r1.zw = r3.xy * r0.ww;
    r0.w = dot(r3.xy, r3.xy);
    r0.w = sqrt(r0.w);
    r3.x = 0.942809045 * cb1[12].z;
    r0.w = r0.w / r3.x;
    r0.w = log2(r0.w);
    r0.w = cb1[24].z * r0.w;
    r0.w = exp2(r0.w);
    r1.zw = r1.zw * r0.ww;
    r1.zw = r1.zw * r3.xx;
    r3.xy = v1.xy + r2.xy;
    r3.xy = r1.zw * cb1[25].ww + r3.xy;
    r3.xyzw = t0.Sample(s0_s, r3.xy).xyzw;
    r3.yz = v1.xy + r2.zw;
    r3.yz = r1.zw * cb1[26].ww + r3.yz;
    r4.xyzw = t0.Sample(s0_s, r3.yz).xyzw;
    r3.yz = v1.xy + r0.yz;
    r1.zw = r1.zw * cb1[27].ww + r3.yz;
    r5.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
    r3.yzw = cb1[26].xyz * r4.yyy;
    r3.xyz = r3.xxx * cb1[25].xyz + r3.yzw;
    r3.xyz = r5.zzz * cb1[27].xyz + r3.xyz;
    r4.xyzw = t0.Sample(s0_s, r1.xy).wxyz;
  } else {
    if (r0.x != 0) {
      r0.xw = v1.xy + r2.xy;
      r5.xyzw = t0.Sample(s0_s, r0.xw).xyzw;
      r0.xw = v1.xy + r2.zw;
      r2.xyzw = t0.Sample(s0_s, r0.xw).xyzw;
      r0.xy = v1.xy + r0.yz;
      r3.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
      r3.x = r5.x;
      r3.y = r2.y;
    } else {
      r3.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
    }
    r4.xyzw = t0.Sample(s0_s, r1.xy).wxyz;
  }
  r0.x = cmp(cb1[21].z < 0.5);
  r0.yz = cmp(float2(0, 0) < cb1[21].xy);
  r0.y = (int)r0.z | (int)r0.y;
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) {
    r0.x = cb0[138].y * r1.y;
    r0.x = cb1[28].x * r0.x;
    r0.y = r0.x + r0.x;
    r0.y = cmp(r0.y >= -r0.y);
    r0.yw = r0.yy ? float2(2, 0.5) : float2(-2, -0.5);
    r0.x = r0.x * r0.w;
    r0.x = frac(r0.x);
    r0.w = r0.y * r0.x;
    r1.z = cmp(1 < r0.w);
    r0.x = -r0.y * r0.x + 2;
    r0.x = r1.z ? r0.x : r0.w;
    r0.x = r0.x * 2 + -1;
    r0.x = cb1[28].z * r0.x + r1.x;
    r0.w = cb0[138].x * cb0[138].w;
    r1.z = abs(cb1[29].y) + r0.x;
    r1.w = cb1[29].y * r1.y;
    r1.z = r1.z * r0.w + -r1.w;
    r0.w = dot(cb1[29].xx, r0.ww);
    r0.w = r1.z / r0.w;
    r0.w = frac(r0.w);
    r0.w = cmp(0.5 >= r0.w);
    r0.w = r0.w ? 0.999989986 : -1;
    r0.y = cb1[29].z * r0.w + r1.y;
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
    r1.z = dot(r3.xyz, float3(0.298999995, 0.587000012, 0.114));
    r1.w = cmp(0.5 < cb1[22].x);
    r2.xyz = r1.zzz * r0.xyw + -r0.xyw;
    r2.xyz = r4.xxx * r2.xyz + r0.xyw;
    r2.xyz = r1.www ? r2.xyz : r0.xyw;
    if (r0.z != 0) {
      r1.zw = r1.xy * cb1[20].xy + cb1[20].zw;
      r5.xyzw = t4.Sample(s0_s, r1.zw).xyzw;
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
    r0.xy = -cb1[7].xy + r1.xy;
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
