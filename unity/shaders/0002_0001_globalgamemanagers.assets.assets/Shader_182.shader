//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/ScriptableRenderPipeline/ShadowClear" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "ClearShadow"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 Cull Off
  GpuProgramID 27003
}
}
}