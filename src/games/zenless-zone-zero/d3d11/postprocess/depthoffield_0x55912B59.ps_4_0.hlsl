// ---- Created with 3Dmigoto v1.4.1 on Sun Feb  8 17:43:22 2026
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[167];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float oDepth : SV_Depth)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t1.Sample(s1_s, v1.xy).xyzw;
  r0.x = cb1[0].y + r0.x;
  r0.x = 1 / r0.x;
  r0.x = saturate(cb1[0].x * r0.x + cb1[0].z);
  r1.xyzw = cb0[166].xyxy * float4(1.3499999,-0.600000024,-1.3499999,0.600000024) + v1.xyxy;
  r2.xyzw = t1.Sample(s1_s, r1.xy).xyzw;
  r0.y = cb1[0].y + r2.x;
  r0.y = 1 / r0.y;
  r0.y = saturate(cb1[0].x * r0.y + cb1[0].z);
  r0.z = r0.x + r0.y;
  r2.xyzw = t1.Sample(s1_s, r1.zw).xyzw;
  r0.w = cb1[0].y + r2.x;
  r0.w = 1 / r0.w;
  r0.w = saturate(cb1[0].x * r0.w + cb1[0].z);
  r0.z = r0.z + r0.w;
  r2.xyzw = cb0[166].xyxy * float4(0.600000024,1.3499999,-0.600000024,-1.3499999) + v1.xyxy;
  r3.xyzw = t1.Sample(s1_s, r2.xy).xyzw;
  r3.x = cb1[0].y + r3.x;
  r3.x = 1 / r3.x;
  r3.x = saturate(cb1[0].x * r3.x + cb1[0].z);
  r0.z = r3.x + r0.z;
  r4.xyzw = t1.Sample(s1_s, r2.zw).xyzw;
  r3.y = cb1[0].y + r4.x;
  r3.y = 1 / r3.y;
  r3.y = saturate(cb1[0].x * r3.y + cb1[0].z);
  r0.z = r3.y + r0.z;
  o0.x = 0.200000003 * r0.z;
  r0.z = cmp(r0.z != 0.000000);
  oDepth = r0.z ? 0 : 1;
  o0.yzw = float3(0,0,0);
  r4.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  r1.xyzw = t0.Sample(s0_s, r1.zw).xyzw;
  r4.xyz = r4.xyz * r0.yyy;
  r5.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r0.xyz = r5.xyz * r0.xxx + r4.xyz;
  r0.xyz = r1.xyz * r0.www + r0.xyz;
  r1.xyzw = t0.Sample(s0_s, r2.xy).xyzw;
  r2.xyzw = t0.Sample(s0_s, r2.zw).xyzw;
  r0.xyz = r1.xyz * r3.xxx + r0.xyz;
  r0.xyz = r2.xyz * r3.yyy + r0.xyz;
  o1.xyz = float3(0.200000003,0.200000003,0.200000003) * r0.xyz;
  o1.w = 0;
  o2.xyzw = float4(0,0,0,0);
  return;
}