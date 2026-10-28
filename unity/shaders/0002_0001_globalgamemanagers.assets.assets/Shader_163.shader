//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/Sky/PbrSky" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "PBRSky Cubemap"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 54826
}
 Pass {
 Name "PBRSky"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZWrite Off
 Cull Off
  GpuProgramID 126753
}
}
}