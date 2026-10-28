//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/LensFlareScreenSpace" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "LensFlareScreenSpac Prefilter"
  Tags { "LIGHTMODE" = "Forward" "RenderPipeline" = "HDRenderPipeline" "RenderQueue" = "Transparent" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 63649
}
 Pass {
 Name "LensFlareScreenSpace Downsample"
  Tags { "LIGHTMODE" = "Forward" "RenderPipeline" = "HDRenderPipeline" "RenderQueue" = "Transparent" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 75256
}
 Pass {
 Name "LensFlareScreenSpace Upsample"
  Tags { "LIGHTMODE" = "Forward" "RenderPipeline" = "HDRenderPipeline" "RenderQueue" = "Transparent" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 158377
}
 Pass {
 Name "LensFlareScreenSpace Composition"
  Tags { "LIGHTMODE" = "Forward" "RenderPipeline" = "HDRenderPipeline" "RenderQueue" = "Transparent" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 220496
}
 Pass {
 Name "LensFlareScreenSpace Write to BloomTexture"
  Tags { "LIGHTMODE" = "Forward" "RenderPipeline" = "HDRenderPipeline" "RenderQueue" = "Transparent" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 281163
}
}
}