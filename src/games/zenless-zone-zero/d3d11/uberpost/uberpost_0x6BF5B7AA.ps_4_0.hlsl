#include "../../common.hlsli"

// ---- Created with 3Dmigoto v1.4.1 on Wed May  6 19:17:17 2026
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
  float4 cb1[30];
}

cbuffer cb0 : register(b0) {
  float4 cb0[203];
}

// 3Dmigoto declarations
#define cmp -

void main(
    float4 v0: SV_POSITION0,
    float4 v1: TEXCOORD0,
    float4 v2: TEXCOORD1,
    out float4 o0: SV_Target0) {
  float4 r0, r1, r2, r3, r4, r5, r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < cb1[11].w);
  if (r0.x != 0) {
    r0.xyzw = t4.SampleBias(s2_s, v1.xy, cb0[61].x).xyzw;
    r1.xy = float2(0.100000001, 0.100000001) * r0.xy;
    r0.xy = r0.xy * float2(0.100000001, 0.100000001) + v1.xy;
    r0.zw = r1.xy * r0.zz;
    r0.zw = cb1[11].ww * r0.zw;
    r2.xyzw = r0.zwzw * cb1[11].xxyy + r1.xyxy;
    r0.zw = r0.zw * cb1[11].zz + r1.xy;
  } else {
    r0.xy = v1.xy;
    r2.xyzw = float4(0, 0, 0, 0);
    r0.zw = float2(0, 0);
  }
  r1.x = frac(cb0[14].x);
  r1.yz = v1.xy * float2(5, 5) + r1.xx;
  r3.xyzw = t5.SampleBias(s3_s, r1.yz, cb0[61].x).xyzw;
  r1.y = -0.5 + r3.x;
  r1.y = r1.y + r1.y;
  r1.z = cmp(abs(r1.y) >= cb1[15].z);
  r1.z = r1.z ? 1.000000 : 0;
  r1.y = r1.y * r1.z;
  r1.y = cb1[15].y * r1.y;
  r1.y = 0.00999999978 * r1.y;
  sincos(cb1[14].w, r3.x, r4.x);
  r1.yzw = cb1[14].xyz * float3(0.100000001, 0.100000001, 0.100000001) + r1.yyy;
  r4.y = r3.x;
  r3.xyz = r4.yyy * r1.yzw;
  r4.zw = float2(88, 1234) * r1.xx;
  r4.zw = frac(r4.zw);
  r1.x = v1.y + r4.z;
  r5.yw = r1.xx * cb1[15].xx + r3.xy;
  r3.y = r1.x * cb1[15].x + r3.z;
  r5.xz = float2(0.5, 0.5);
  r6.xyzw = t5.SampleBias(s3_s, r5.xy, cb0[61].x).xyzw;
  r5.xyzw = t5.SampleBias(s3_s, r5.zw, cb0[61].x).xyzw;
  r3.x = 0.5;
  r3.xyzw = t5.SampleBias(s3_s, r3.xy, cb0[61].x).yzxw;
  r1.x = r4.w * r4.w;
  r1.x = r4.w * r1.x;
  r3.w = max(cb1[16].y, cb1[16].x);
  r3.w = -cb1[16].x + r3.w;
  r1.x = r1.x * r3.w + cb1[16].x;
  r3.x = r6.x;
  r3.y = r5.x;
  r3.xyz = cmp(r1.xxx >= r3.xyz);
  r3.xyz = r3.xyz ? float3(1, 1, 1) : 0;
  r3.xyz = cb1[16].zzz * r3.xyz;
  r4.zw = cmp(float2(0.5, 0.5) < cb1[19].zw);
  if (r4.z != 0) {
    r5.xy = v1.xy * cb1[17].xy + cb1[17].zw;
    r5.xyzw = t6.SampleBias(s4_s, r5.xy, cb0[61].x).xyzw;
    r3.xyz = r5.xxx * r3.xyz;
  }
  if (r4.w != 0) {
    r4.zw = v1.xy * cb1[18].xy + cb1[18].zw;
    r5.xy = cb1[19].xy * cb0[14].xx;
    r5.xy = frac(r5.xy);
    r4.zw = r5.xy + r4.zw;
    r5.xyzw = t6.SampleBias(s4_s, r4.zw, cb0[61].x).xyzw;
    r3.xyz = r5.yyy * r3.xyz;
  }
  r4.zw = v1.xy * float2(2, 2) + float2(-1, -1);
  r5.xy = float2(-0.5, -0.5) + cb1[24].xy;
  r4.zw = -r5.xy + r4.zw;
  r1.x = dot(r4.zw, r4.zw);
  r4.zw = r4.zw * r1.xx;
  r4.zw = cb1[12].zz * r4.zw;
  r5.xy = float2(-0.333333343, -0.333333343) * r4.zw;
  r5.z = 9.99999975e-05;
  r1.x = dot(r5.xyz, r5.xyz);
  r1.x = rsqrt(r1.x);
  r4.zw = r5.xy * r1.xx;
  r1.x = dot(r5.xy, r5.xy);
  r1.x = sqrt(r1.x);
  r3.w = 0.942809045 * cb1[12].z;
  r1.x = r1.x / r3.w;
  r1.x = log2(r1.x);
  r1.x = cb1[24].z * r1.x;
  r1.x = exp2(r1.x);
  r4.zw = r4.zw * r1.xx;
  r4.zw = r4.zw * r3.ww;
  r2.xy = v1.xy + r2.xy;
  r1.xy = r1.yy * r4.xy + r2.xy;
  r1.xy = r4.zw * cb1[25].ww + r1.xy;
  r5.xyzw = t1.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r1.xy = v1.xy + r2.zw;
  r1.xy = r1.zz * r4.xy + r1.xy;
  r1.xy = r4.zw * cb1[26].ww + r1.xy;
  r2.xyzw = t1.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
  r0.zw = v1.xy + r0.zw;
  r0.zw = r1.ww * r4.xy + r0.zw;
  r0.zw = r4.zw * cb1[27].ww + r0.zw;
  r1.xyzw = t1.SampleBias(s0_s, r0.zw, cb0[61].x).xyzw;
  r1.xyw = cb1[26].xyz * r2.yyy;
  r1.xyw = r5.xxx * cb1[25].xyz + r1.xyw;
  r1.xyz = r1.zzz * cb1[27].xyz + r1.xyw;
  r2.xyzw = t1.SampleBias(s0_s, r0.xy, cb0[61].x).xyzw;
  r0.zw = cb1[23].xy * v1.xy;
  r0.zw = cb0[202].xy * r0.zw;
  r4.xyzw = t9.SampleBias(s1_s, r0.zw, cb0[61].x).xyzw;
  r2.xyz = float3(12, 12, 12) * r4.xyz;
  r0.z = 25 * cb0[14].x;
  r0.z = frac(r0.z);
  r0.w = 1 + -v1.y;
  r0.z = r0.z + -r0.w;
  r0.w = 0.400000006 + -r0.z;
  r0.z = saturate(0.0500000007 + r0.z);
  r1.w = cmp(r0.w >= 0.400000006);
  r1.w = r1.w ? 1.000000 : 0;
  r0.z = r0.z * 10 + -r0.w;
  r0.z = r1.w * r0.z + r0.w;
  r0.z = max(0, r0.z);
  r0.z = r0.z * cb1[23].w + 1;
  r2.xyz = r2.xyz * r0.zzz;
  r0.z = 1 + -cb1[23].z;
  r2.xyz = r2.xyz * r0.zzz + cb1[23].zzz;
  r1.xyz = r1.xyz * r2.xyz + r3.xyz;
  r0.z = cmp(cb1[21].z < 0.5);
  r2.xy = cmp(float2(0, 0) < cb1[21].xy);
  r0.w = (int)r2.y | (int)r2.x;
  r0.z = r0.z ? r0.w : 0;
  if (r0.z != 0) {
    r0.z = cb0[138].y * r0.y;
    r0.z = cb1[28].x * r0.z;
    r0.w = r0.z + r0.z;
    r0.w = cmp(r0.w >= -r0.w);
    r2.xz = r0.ww ? float2(2, 0.5) : float2(-2, -0.5);
    r0.z = r2.z * r0.z;
    r0.z = frac(r0.z);
    r0.w = r2.x * r0.z;
    r1.w = cmp(1 < r0.w);
    r0.z = -r2.x * r0.z + 2;
    r0.z = r1.w ? r0.z : r0.w;
    r0.z = r0.z * 2 + -1;
    r3.x = cb1[28].z * r0.z + r0.x;
    r0.z = cb0[138].x * cb0[138].w;
    r0.w = abs(cb1[29].y) + r3.x;
    r1.w = cb1[29].y * r0.y;
    r0.w = r0.w * r0.z + -r1.w;
    r0.z = dot(cb1[29].xx, r0.zz);
    r0.z = r0.w / r0.z;
    r0.z = frac(r0.z);
    r0.z = cmp(0.5 >= r0.z);
    r0.z = r0.z ? 0.999989986 : -1;
    r3.y = cb1[29].z * r0.z + r0.y;
    r3.xyzw = t7.SampleBias(s5_s, r3.xy, cb0[61].x).xyzw;
    r4.xyz = log2(abs(r3.xyz));
    r4.xyz = float3(0.333333343, 0.333333343, 0.333333343) * r4.xyz;
    r4.xyz = exp2(r4.xyz);
    r4.xyz = r4.xyz * float3(1.49380159, 1.49380159, 1.49380159) + -r3.xyz;
    r5.xyz = cmp(r3.xyz >= float3(0.300000012, 0.300000012, 0.300000012));
    r5.xyz = r5.xyz ? float3(1, 1, 1) : 0;
    r4.xyz = float3(-0.699999988, -0.699999988, -0.699999988) + r4.xyz;
    r3.xyz = r5.xyz * r4.xyz + r3.xyz;
    r3.xyz = cb1[21].xxx * r3.xyz;
    r0.z = dot(r1.xyz, float3(0.298999995, 0.587000012, 0.114));
    r0.w = cmp(0.5 < cb1[22].x);
    r4.xyz = r0.zzz * r3.xyz + -r3.xyz;
    r4.xyz = r2.www * r4.xyz + r3.xyz;
    r4.xyz = r0.www ? r4.xyz : r3.xyz;
    if (r2.y != 0) {
      r0.zw = r0.xy * cb1[20].xy + cb1[20].zw;
      r5.xyzw = t8.SampleBias(s0_s, r0.zw, cb0[61].x).xyzw;
      r2.xyz = cb1[21].yyy * r5.xyz;
      r4.xyz = r2.xyz * r3.xyz + r4.xyz;
    }
    r1.xyz = r4.xyz + r1.xyz;
    r0.z = r4.x + r4.y;
    r0.z = r0.z + r4.z;
    o0.w = saturate(r0.z * 0.333299994 + r2.w);
  } else {
    o0.w = r2.w;
  }
  r0.z = cmp(0 < cb1[7].z);
  if (r0.z != 0) {
    r0.xy = -cb1[7].xy + r0.xy;
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
    r1.xyz = r1.xyz * r0.xyz;
  }

  r1.xyz = max(0, r1.xyz);

  float3 hdr_color = r1.xyz;
  float3 hdr_color_tm = renodx::tonemap::neutwo::ComputeBT709Scale(hdr_color);
  if (RENODX_TONE_MAP_TYPE > 0) {
    r1.xyz = (hdr_color * hdr_color_tm);
  }

  r0.x = cmp(0 < cb1[13].x);
  if (r0.x != 0) {
    r0.xy = v1.xy * cb1[8].xy + cb1[8].zw;
    r0.xyzw = t2.SampleBias(s1_s, r0.xy, cb0[61].x).xyzw;
    r0.x = -0.5 + r0.w;
    r0.x = r0.x + r0.x;
    r0.y = dot(r1.xyz, float3(0.212672904, 0.715152204, 0.0721750036));
    r0.y = sqrt(r0.y);
    r0.y = cb1[13].y * -r0.y + 1;
    r0.xzw = r1.xyz * r0.xxx;
    r0.xzw = cb1[13].xxx * r0.xzw;
    r1.xyz = r0.xzw * r0.yyy + r1.xyz;
  }
  r0.x = r1.x + r1.y;
  r0.x = r0.x + r1.z;
  r0.y = 0.333333343 * r0.x;
  r0.xzw = -r0.xxx * float3(0.333333343, 0.333333343, 0.333333343) + r1.xyz;
  r0.xyz = r0.xzw * cb2[0].www + r0.yyy;
  r0.w = cmp(0.5 < cb0[54].w);
  if (r0.w != 0) {
    r1.x = dot(r0.xyz, float3(0.212672904, 0.715152204, 0.0721750036));
    r1.y = 0.5;
    r1.xyzw = t0.SampleBias(s0_s, r1.xy, cb0[61].x).xyzw;
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

  // r0.xyz = saturate(cb2[2].xxx * r1.xyz + r0.xyz);
  r0.xyz = (cb2[2].xxx * r1.xyz + r0.xyz);

  // HDR FX Mask Blend
  float3 result = r0.xyz;
  r0.w = cmp(0.5 < cb2[2].w);
  if (r0.w != 0) {
    r1.xyzw = t3.SampleBias(s0_s, v1.xy, cb0[61].x).xyzw;
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

  // Original FX Mask Blend
  /*
  r0.w = cmp(0.5 < cb2[2].w);
  if (r0.w != 0) {
    r1.xyzw = t3.SampleBias(s0_s, v1.xy, cb0[61].x).xyzw;
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
  */

  o0.xyz = result;

  float3 sdr_color = o0.xyz;

  o0.xyz = DisplayMap(hdr_color, hdr_color_tm, sdr_color, v1.xy);

  o0.xyz = renodx::draw::RenderIntermediatePass(o0.xyz);

  return;
}
