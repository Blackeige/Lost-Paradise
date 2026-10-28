//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/Sky/HDRISky" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "FragBaking"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 63742
}
 Pass {
 Name "FragRender"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZWrite Off
 Cull Off
  GpuProgramID 95499
}
 Pass {
 Name "FragRenderBackplate"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 187175
}
 Pass {
 Name "FragRenderBackplateDepth"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 Cull Off
  GpuProgramID 234399
}
}
}