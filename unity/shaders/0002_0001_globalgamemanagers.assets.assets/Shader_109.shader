//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/ApplyDistortion" {
Properties {

_StencilRef ("_StencilRef", Float) = 2.0

_StencilMask ("_StencilMask", Float) = 2.0

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Less
 ZWrite Off
 Cull Off
  GpuProgramID 48368
}
}
}