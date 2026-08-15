#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Fri Aug 14 21:10:12 2026
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

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
  float4 cb0[210];
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

  r0.x = cmp(0 < cb1[11].w);
  if (r0.x != 0) {
    r1.xyzw = t5.Sample(s2_s, v1.xy).xyzw;
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
  r3.xyzw = t3.Sample(s1_s, v1.xy).xyzw;
  r1.zw = r3.xy * float2(2, 2) + float2(-1, -1);
  r4.x = cb0[209].y + r3.w;
  r4.yw = float2(0.5, 0);
  r5.xyzw = t4.Sample(s1_s, r4.xy).xyzw;
  r0.w = 1 + -r5.x;
  r0.w = r3.z + -r0.w;
  r0.w = saturate(r0.w / r3.z);
  r3.x = cb0[209].x * r0.w;
  r3.x = r3.x * r3.z;
  r3.yw = r3.xx * r1.zw;
  r1.zw = -r1.zw * r3.xx + r2.xy;
  r2.x = 1 + cb0[209].z;
  r2.xy = -r3.yw * r2.xx + r2.zw;
  r2.z = 1 + -cb0[209].z;
  r0.yz = -r3.yw * r2.zz + r0.yz;
  r2.z = cmp(0.5 < cb1[24].w);
  if (r2.z != 0) {
    r2.zw = v1.xy * float2(2, 2) + float2(-1, -1);
    r3.xy = float2(-0.5, -0.5) + cb1[24].xy;
    r2.zw = -r3.xy + r2.zw;
    r3.x = dot(r2.zw, r2.zw);
    r2.zw = r3.xx * r2.zw;
    r2.zw = cb1[12].zz * r2.zw;
    r5.xy = float2(-0.333333343, -0.333333343) * r2.zw;
    r5.z = 9.99999975e-05;
    r2.z = dot(r5.xyz, r5.xyz);
    r2.z = rsqrt(r2.z);
    r2.zw = r5.xy * r2.zz;
    r3.x = dot(r5.xy, r5.xy);
    r3.x = sqrt(r3.x);
    r3.y = 0.942809045 * cb1[12].z;
    r3.x = r3.x / r3.y;
    r3.x = log2(r3.x);
    r3.x = cb1[24].z * r3.x;
    r3.x = exp2(r3.x);
    r2.zw = r3.xx * r2.zw;
    r2.zw = r2.zw * r3.yy;
    r3.xy = v1.xy + r1.zw;
    r3.xy = r2.zw * cb1[25].ww + r3.xy;
    r5.xyzw = t0.Sample(s0_s, r3.xy).xyzw;
    r3.xy = v1.xy + r2.xy;
    r3.xy = r2.zw * cb1[26].ww + r3.xy;
    r6.xyzw = t0.Sample(s0_s, r3.xy).xyzw;
    r3.xy = v1.xy + r0.yz;
    r2.zw = r2.zw * cb1[27].ww + r3.xy;
    r7.xyzw = t0.Sample(s0_s, r2.zw).xyzw;
    r3.xyw = cb1[26].xyz * r6.yyy;
    r3.xyw = r5.xxx * cb1[25].xyz + r3.xyw;
    r5.xyz = r7.zzz * cb1[27].xyz + r3.xyw;
    r6.xyzw = t0.Sample(s0_s, r1.xy).wxyz;
  } else {
    if (r0.x != 0) {
      r1.zw = v1.xy + r1.zw;
      r7.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
      r1.zw = v1.xy + r2.xy;
      r2.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
      r0.xy = v1.xy + r0.yz;
      r5.xyzw = t0.Sample(s0_s, r0.xy).xyzw;
      r5.x = r7.x;
      r5.y = r2.y;
    } else {
      r5.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
    }
    r6.xyzw = t0.Sample(s0_s, r1.xy).wxyz;
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
    r1.zw = r0.yy ? float2(2, 0.5) : float2(-2, -0.5);
    r0.x = r1.w * r0.x;
    r0.x = frac(r0.x);
    r0.y = r1.z * r0.x;
    r1.w = cmp(1 < r0.y);
    r0.x = -r1.z * r0.x + 2;
    r0.x = r1.w ? r0.x : r0.y;
    r0.x = r0.x * 2 + -1;
    r0.x = cb1[28].z * r0.x + r1.x;
    r1.z = cb0[138].x * cb0[138].w;
    r1.w = abs(cb1[29].y) + r0.x;
    r2.x = cb1[29].y * r1.y;
    r1.w = r1.w * r1.z + -r2.x;
    r1.z = dot(cb1[29].xx, r1.zz);
    r1.z = r1.w / r1.z;
    r1.z = frac(r1.z);
    r1.z = cmp(0.5 >= r1.z);
    r1.z = r1.z ? 0.999989986 : -1;
    r0.y = cb1[29].z * r1.z + r1.y;
    r2.xyzw = t6.Sample(s3_s, r0.xy).xyzw;
    r3.xyw = log2(abs(r2.xyz));
    r3.xyw = float3(0.333333343, 0.333333343, 0.333333343) * r3.xyw;
    r3.xyw = exp2(r3.xyw);
    r3.xyw = r3.xyw * float3(1.49380159, 1.49380159, 1.49380159) + -r2.xyz;
    r6.yzw = cmp(r2.xyz >= float3(0.300000012, 0.300000012, 0.300000012));
    r6.yzw = r6.yzw ? float3(1, 1, 1) : 0;
    r3.xyw = float3(-0.699999988, -0.699999988, -0.699999988) + r3.xyw;
    r2.xyz = r6.yzw * r3.xyw + r2.xyz;
    r2.xyz = cb1[21].xxx * r2.xyz;
    r0.x = dot(r5.xyz, float3(0.298999995, 0.587000012, 0.114));
    r0.y = cmp(0.5 < cb1[22].x);
    r3.xyw = r0.xxx * r2.xyz + -r2.xyz;
    r3.xyw = r6.xxx * r3.xyw + r2.xyz;
    r3.xyw = r0.yyy ? r3.xyw : r2.xyz;
    if (r0.z != 0) {
      r0.xy = r1.xy * cb1[20].xy + cb1[20].zw;
      r7.xyzw = t7.Sample(s0_s, r0.xy).xyzw;
      r0.xyz = cb1[21].yyy * r7.xyz;
      r3.xyw = r0.xyz * r2.xyz + r3.xyw;
    }
    r0.x = cb0[209].w * r0.w;
    r0.x = r0.x * r3.z + 1;
    r5.xyz = r5.xyz * r0.xxx + r3.xyw;
    r0.x = r3.x + r3.y;
    r0.x = r0.x + r3.w;
    o0.w = saturate(r0.x * 0.333299994 + r6.x);
  } else {
    o0.w = r6.x;
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
    r5.xyz = r5.xyz * r0.xyz;
  }

  if (RENODX_TONE_MAP_TYPE > 0) {
    r0.xyz = UberpostArriLutSample(r5.xyz, t2, s0_s);
  } else {
    r0.xyz = r5.zxy * float3(5.55555582, 5.55555582, 5.55555582) + float3(0.0479959995, 0.0479959995, 0.0479959995);
    r0.xyz = log2(r0.xyz);
    r0.xyz = saturate(r0.xyz * float3(0.0734997839, 0.0734997839, 0.0734997839) + float3(0.386036009, 0.386036009, 0.386036009));
    r0.yzw = cb1[0].zzz * r0.xyz;
    r0.y = floor(r0.y);
    r1.xy = float2(0.5, 0.5) * cb1[0].xy;
    r1.yz = r0.zw * cb1[0].xy + r1.xy;
    r1.x = r0.y * cb1[0].y + r1.y;
    r2.xyzw = t2.SampleLevel(s0_s, r1.xz, 0).xyzw;
    r4.z = cb1[0].y;
    r0.zw = r1.xz + r4.zw;
    r1.xyzw = t2.SampleLevel(s0_s, r0.zw, 0).xyzw;
    r0.x = r0.x * cb1[0].z + -r0.y;
    r0.yzw = r1.xyz + -r2.xyz;
    r0.xyz = r0.xxx * r0.yzw + r2.xyz;
  }

  r0.w = cmp(0 < cb1[13].x);
  if (r0.w != 0) {
    r1.xy = v1.xy * cb1[8].xy + cb1[8].zw;
    r1.xyzw = t1.Sample(s1_s, r1.xy).xyzw;
    r0.w = -0.5 + r1.w;
    r0.w = r0.w + r0.w;
    r1.x = dot(r0.xyz, float3(0.212672904, 0.715152204, 0.0721750036));
    r1.x = sqrt(r1.x);
    r1.x = cb1[13].y * -r1.x + 1;
    r1.yzw = r0.xyz * r0.www;
    r1.yzw = cb1[13].xxx * r1.yzw;
    r0.xyz = r1.yzw * r1.xxx + r0.xyz;
  }

  // o0.xyz = saturate(r0.xyz);
  o0.xyz = (r0.xyz);

  o0.xyz = renodx::draw::RenderIntermediatePass(o0.xyz);

  return;
}
