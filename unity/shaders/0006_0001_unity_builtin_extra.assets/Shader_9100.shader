//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Internal-UIRDefault" {
Properties {

_MainTex ("Atlas", 2D) = "white" { }

_FontTex ("Font", 2D) = "black" { }

_CustomTex ("Custom", 2D) = "black" { }

_Color ("Tint", Color) = (1,1,1,1)

}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 ZWrite Off
 Cull Off
  GpuProgramID 8993
}
}
}