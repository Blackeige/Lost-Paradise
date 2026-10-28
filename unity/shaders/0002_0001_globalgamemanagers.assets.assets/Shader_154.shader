//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/CompositeLines" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "CompositeAll"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Less
 Cull Off
  GpuProgramID 46675
}
 Pass {
 Name "CompositeColorOnly"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Less
 ZWrite Off
 Cull Off
  GpuProgramID 119886
}
 Pass {
 Name "CompositeDepthMovecOnly"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Less
 Cull Off
  GpuProgramID 139639
}
}
}