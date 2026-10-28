//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/TerrainEngine/BillboardTree" {
Properties {

_MainTex ("Base (RGB) Alpha (A)", 2D) = "white" { }

}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent-100" "RenderType" = "TreeBillboard" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent-100" "RenderType" = "TreeBillboard" }
 ZWrite Off
 Cull Off
  GpuProgramID 53407
}
}
}