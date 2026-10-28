//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/PreIntegratedFGD_CookTorrance" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 6067
}
}
}