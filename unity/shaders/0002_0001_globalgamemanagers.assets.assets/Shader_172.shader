//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/ScriptableRenderPipeline/ShadowBlit" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "BlitShadows"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 Cull Off
  GpuProgramID 54404
}
}
}