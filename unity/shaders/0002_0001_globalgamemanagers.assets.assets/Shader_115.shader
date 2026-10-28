//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/preIntegratedFGD_GGXDisneyDiffuse" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 30580
}
}
}