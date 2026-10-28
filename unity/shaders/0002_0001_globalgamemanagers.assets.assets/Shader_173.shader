//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/CustomPassRenderersUtils" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "DepthToColorPass"
  Tags { "LIGHTMODE" = "DepthToColorPass" "RenderPipeline" = "HDRenderPipeline" }
  GpuProgramID 56536
}
 Pass {
 Name "DepthPass"
  Tags { "LIGHTMODE" = "DepthPass" "RenderPipeline" = "HDRenderPipeline" }
  GpuProgramID 97436
}
 Pass {
 Name "NormalToColorPass"
  Tags { "LIGHTMODE" = "NormalToColorPass" "RenderPipeline" = "HDRenderPipeline" }
  GpuProgramID 138540
}
 Pass {
 Name "TangentToColorPass"
  Tags { "LIGHTMODE" = "TangentToColorPass" "RenderPipeline" = "HDRenderPipeline" }
  GpuProgramID 236392
}
}
}