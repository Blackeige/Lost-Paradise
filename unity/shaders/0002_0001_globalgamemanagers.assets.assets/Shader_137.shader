//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Renderers/Thickness" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "ComputeThicknessOpaque"
  Tags { "LIGHTMODE" = "Forward" "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 41126
}
 Pass {
 Name "ComputeThicknessTransparent"
  Tags { "LIGHTMODE" = "Forward" "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 107437
}
}
}