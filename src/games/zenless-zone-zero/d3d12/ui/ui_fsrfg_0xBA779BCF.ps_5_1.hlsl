// FSR frame generation UI composition (FidelityFX present callback).
// Vanilla decodes both inputs from sRGB, blends and re-encodes; the FP16 clones are already linear, so blend
// like the DLSS frame generation composition (ui_dlssfg_0x854C15A7).
// Its layout already has root constants, so RenoDX doesn't inject shader_injection; this includes nothing from RenoDX.

Texture2D<float4> r_currBB : register(t0);
Texture2D<float4> r_uiTexture : register(t1);

float4 main(float4 SV_Position: SV_Position) : SV_Target {
  int3 position = int3(SV_Position.xy, 0);
  float4 scene = r_currBB.Load(position);
  float4 ui = r_uiTexture.Load(position);

  scene.rgb = scene.rgb * (1.f - ui.a) + ui.rgb;
  return scene;
}
