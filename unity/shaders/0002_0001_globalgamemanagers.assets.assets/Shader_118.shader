//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/Sky/GradientSky" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 26767
}
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZWrite Off
 Cull Off
  GpuProgramID 98460
}
}
}