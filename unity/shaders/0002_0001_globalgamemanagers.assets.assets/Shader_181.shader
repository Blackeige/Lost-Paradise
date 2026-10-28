//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/Blit" {
Properties {

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "Nearest"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 62099
}
 Pass {
 Name "Bilinear"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 115211
}
 Pass {
 Name "NearestQuad"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 164961
}
 Pass {
 Name "BilinearQuad"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 226567
}
 Pass {
 Name "NearestQuadPadding"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 276691
}
 Pass {
 Name "BilinearQuadPadding"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 342451
}
 Pass {
 Name "NearestQuadPaddingRepeat"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 439454
}
 Pass {
 Name "BilinearQuadPaddingRepeat"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 508923
}
 Pass {
 Name "BilinearQuadPaddingOctahedral"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 585316
}
 Pass {
 Name "NearestQuadPaddingAlphaBlend"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 629295
}
 Pass {
 Name "BilinearQuadPaddingAlphaBlend"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 695507
}
 Pass {
 Name "NearestQuadPaddingAlphaBlendRepeat"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 722252
}
 Pass {
 Name "BilinearQuadPaddingAlphaBlendRepeat"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 824518
}
 Pass {
 Name "BilinearQuadPaddingAlphaBlendOctahedral"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 883241
}
 Pass {
 Name "CubeToOctahedral"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 921167
}
 Pass {
 Name "CubeToOctahedralLuminance"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 988549
}
 Pass {
 Name "CubeToOctahedralAlpha"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 1066819
}
 Pass {
 Name "CubeToOctahedralRed"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 1172609
}
 Pass {
 Name "BilinearQuadLuminance"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 1196367
}
 Pass {
 Name "BilinearQuadAlpha"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 1273391
}
 Pass {
 Name "BilinearQuadRed"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 1374061
}
 Pass {
 Name "NearestCubeToOctahedralPadding"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 1419058
}
 Pass {
 Name "BilinearCubeToOctahedralPadding"
  Tags { "RenderPipeline" = "HDRenderPipeline" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 1456259
}
}
}