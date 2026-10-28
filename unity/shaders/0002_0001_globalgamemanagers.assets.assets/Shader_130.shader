//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/CopyStencilBuffer" {
Properties {

_StencilRef ("_StencilRef", Float) = 1.0

_StencilMask ("_StencilMask", Float) = 7.0

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "Pass 0 - Copy stencilRef to output"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 4386
}
 Pass {
 Name "Pass 1 - Write 1 if value different from stencilRef to output"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 94966
}
 Pass {
 Name "Pass 2 - Export HTILE for stencilRef to output"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 168026
}
 Pass {
 Name "Pass 3 - Initialize Stencil UAV copy with 1 if value different from stencilRef to output"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 242703
}
 Pass {
 Name "Pass 4 - Update Stencil UAV copy with Stencil Ref"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 287692
}
}
}