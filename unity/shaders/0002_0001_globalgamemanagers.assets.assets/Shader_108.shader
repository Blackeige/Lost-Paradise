//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/DLSSBiasColorMask" {
Properties {

_StencilRef ("_StencilRef", Float) = 2.0

_StencilMask ("_StencilMask", Float) = 2.0

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 46342
}
}
}