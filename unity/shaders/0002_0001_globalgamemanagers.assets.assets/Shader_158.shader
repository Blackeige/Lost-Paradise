//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/PostProcessing/SubpixelMorphologicalAntialiasing" {
Properties {

_StencilRef ("_StencilRef", Float) = 4.0

_StencilMask ("_StencilMask", Float) = 4.0

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "Edge detection"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 16900
}
 Pass {
 Name "Blend Weights Calculation"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 70003
}
 Pass {
 Name "Neighborhood Blending"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 183943
}
}
}