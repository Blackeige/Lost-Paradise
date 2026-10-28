//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/UpsampleTransparent" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Off
 ZWrite Off
 Cull Off
  GpuProgramID 31120
}
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Off
 ZWrite Off
 Cull Off
  GpuProgramID 95143
}
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Off
 ZWrite Off
 Cull Off
  GpuProgramID 136463
}
}
}