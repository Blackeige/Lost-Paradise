//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/DepthValues" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 Cull Off
  GpuProgramID 30504
}
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 Cull Off
  GpuProgramID 110622
}
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 Cull Off
  GpuProgramID 142149
}
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 Cull Off
  GpuProgramID 261360
}
}
}