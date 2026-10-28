//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/CombineLighting" {
Properties {

_StencilMask ("_StencilMask", Float) = 7.0

_StencilRef ("_StencilRef", Float) = 1.0

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Less
 ZWrite Off
 Cull Off
  GpuProgramID 39942
}
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Less
 ZWrite Off
 Cull Off
  GpuProgramID 86121
}
}
}