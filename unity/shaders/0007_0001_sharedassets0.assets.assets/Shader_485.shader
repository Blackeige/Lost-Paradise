//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/TerrainEngine/CameraFacingBillboardTree" {
Properties {

_MainTex ("Base (RGB) Alpha (A)", 2D) = "white" { }

_NormalTex ("Base (RGB) Alpha (A)", 2D) = "white" { }

_TranslucencyViewDependency ("View dependency", Range(0, 1)) = 0.699999988079071

_TranslucencyColor ("Translucency Color", Color) = (0.73,0.85,0.41,1)

_AlphaToMask ("AlphaToMask", Float) = 1.0

}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "RenderType" = "TreeBillboard" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "RenderType" = "TreeBillboard" }
 Cull Off
  GpuProgramID 170
}
}
}