//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/TerrainLit_BasemapGen" {
Properties {

_DstBlend ("DstBlend", Float) = 0.0

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" "SplatCount" = "8" }
 Pass {
  Tags { "Format" = "ARGB32" "Name" = "_MainTex" "RenderPipeline" = "HDRenderPipeline" "Size" = "1" "SplatCount" = "8" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 26651
}
 Pass {
  Tags { "Format" = "RG16" "Name" = "_MetallicTex" "RenderPipeline" = "HDRenderPipeline" "Size" = "1/4" "SplatCount" = "8" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 84625
}
}
}