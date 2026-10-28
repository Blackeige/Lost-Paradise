//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/Material/Decal/DecalNormalBuffer" {
Properties {

_DecalNormalBufferStencilRef ("_DecalNormalBufferStencilRef", Float) = 0.0

_DecalNormalBufferStencilReadMask ("_DecalNormalBufferStencilReadMask", Float) = 0.0

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 27293
}
}
}