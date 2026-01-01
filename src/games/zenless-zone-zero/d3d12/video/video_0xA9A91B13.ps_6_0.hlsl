#include "../../tonemap.hlsl"

// Video shader

cbuffer _GlobalsUBO : register(b0, space0) {
  float4 _Globals_m0[6] : packoffset(c0);
};

Texture2D<float4> _TextureY_t : register(t0, space0);
Texture2D<float4> _TextureU_t : register(t1, space0);
Texture2D<float4> _TextureV_t : register(t2, space0);
SamplerState _TextureY_s : register(s0, space0);
SamplerState _TextureU_s : register(s1, space0);
SamplerState _TextureV_s : register(s2, space0);

static float2 TEXCOORD;
static float2 TEXCOORD_1;
static float4 SV_Target;

struct SPIRV_Cross_Input {
  float4 position : SV_Position;
  float2 TEXCOORD : TEXCOORD0;
  float2 TEXCOORD_1 : TEXCOORD1;
};

struct SPIRV_Cross_Output {
  float4 SV_Target : SV_Target0;
};

void frag_main() {
  float _64 = _TextureU_t.Sample(_TextureU_s, float2(TEXCOORD_1.x, TEXCOORD_1.y)).w + (-0.501959979534149169921875f);
  float _66 = _TextureV_t.Sample(_TextureV_s, float2(TEXCOORD_1.x, TEXCOORD_1.y)).w + (-0.501959979534149169921875f);
  float _67 = (_TextureY_t.Sample(_TextureY_s, float2(TEXCOORD.x, TEXCOORD.y)).w + (-0.06274999678134918212890625f)) * 1.16437995433807373046875f;
  float _70 = mad(1.5960299968719482421875f, _66, _67);
  float _74 = mad(-0.812969982624053955078125f, _66, mad(-0.39175999164581298828125f, _64, _67));
  float _76 = mad(2.01723003387451171875f, _64, _67);
  
  // Decode to linear
  float3 linear_rgb;
  linear_rgb.x = (_70 <= 0.040449999272823333740234375f) ? (_70 * 0.077399380505084991455078125f) : exp2(log2(abs((_70 + 0.054999999701976776123046875f) * 0.947867333889007568359375f)) * 2.400000095367431640625f);
  linear_rgb.y = (_74 <= 0.040449999272823333740234375f) ? (_74 * 0.077399380505084991455078125f) : exp2(log2(abs((_74 + 0.054999999701976776123046875f) * 0.947867333889007568359375f)) * 2.400000095367431640625f);
  linear_rgb.z = (_76 <= 0.040449999272823333740234375f) ? (_76 * 0.077399380505084991455078125f) : exp2(log2(abs((_76 + 0.054999999701976776123046875f) * 0.947867333889007568359375f)) * 2.400000095367431640625f);
  
  // AutoHDR for video
  float3 sdr_video = renodx::color::srgb::EncodeSafe(linear_rgb);
  float3 hdr_video = AutoHDRVideo(sdr_video);
  
  // Output linear HDR
  SV_Target.xyz = hdr_video;
  SV_Target.w = 1.0f - _Globals_m0[5u].x;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  TEXCOORD = stage_input.TEXCOORD;
  TEXCOORD_1 = stage_input.TEXCOORD_1;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output.SV_Target = SV_Target;
  return stage_output;
}
