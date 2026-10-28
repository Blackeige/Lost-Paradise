//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/LensFlareDataDriven" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "LensFlareAdditive"
  Tags { "LIGHTMODE" = "Forward" "RenderPipeline" = "HDRenderPipeline" "RenderQueue" = "Transparent" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 5997
}
 Pass {
 Name "LensFlareScreen"
  Tags { "LIGHTMODE" = "Forward" "RenderPipeline" = "HDRenderPipeline" "RenderQueue" = "Transparent" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 130315
}
 Pass {
 Name "LensFlarePremultiply"
  Tags { "LIGHTMODE" = "Forward" "RenderPipeline" = "HDRenderPipeline" "RenderQueue" = "Transparent" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 186777
}
 Pass {
 Name "LensFlareLerp"
  Tags { "LIGHTMODE" = "Forward" "RenderPipeline" = "HDRenderPipeline" "RenderQueue" = "Transparent" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 257427
}
 Pass {
 Name "LensFlareOcclusion"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 285470
}
}
}