//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/VFX/HeatDistortion/Simple Loop/Output Particle HDRP Distortion Quad" {
Properties {

}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DistortionVectors" "QUEUE" = "Transparent" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "Transparent" }
 ZWrite Off
 Cull Off
  GpuProgramID 168405
}
}
}