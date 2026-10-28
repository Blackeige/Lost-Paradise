//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/Sky/CloudLayer" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 2374
}
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZWrite Off
 Cull Off
  GpuProgramID 81505
}
}
}