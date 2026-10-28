//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/ScriptableRenderPipeline/DebugDisplayHDShadowMap" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "RegularShadow"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Off
 Cull Off
  GpuProgramID 59560
}
 Pass {
 Name "VarianceShadow"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Off
 Cull Off
  GpuProgramID 128919
}
}
}