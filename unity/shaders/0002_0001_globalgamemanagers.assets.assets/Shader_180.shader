//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/ColorResolve" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "MSAA1X"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 5982
}
 Pass {
 Name "MSAA2X"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 89572
}
 Pass {
 Name "MSAA4X"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 168648
}
 Pass {
 Name "MSAA8X"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 208604
}
}
}