//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/OpaqueAtmosphericScattering" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "Default"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Less
 ZWrite Off
 Cull Off
  GpuProgramID 34504
}
 Pass {
 Name "MSAA"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Less
 ZWrite Off
 Cull Off
  GpuProgramID 76842
}
 Pass {
 Name "Polychromatic Alpha"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Less
 ZWrite Off
 Cull Off
  GpuProgramID 170865
}
 Pass {
 Name "MSAA + Polychromatic Alpha"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Less
 ZWrite Off
 Cull Off
  GpuProgramID 213157
}
}
}