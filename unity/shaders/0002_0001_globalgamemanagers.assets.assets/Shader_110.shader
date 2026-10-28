//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/CameraMotionVectors" {
Properties {

_StencilRef ("_StencilRef", Float) = 128.0

_StencilMask ("_StencilMask", Float) = 128.0

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Less
 ZWrite Off
 Cull Off
  GpuProgramID 10296
}
}
}