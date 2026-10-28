//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Core/ProbeVolumeSamplingDebug" {
Properties {

}
SubShader {
 LOD 100
 Tags { "RenderType" = "Opaque" }
 Pass {
 Name "ForwardOnly"
  LOD 100
  Tags { "RenderType" = "Opaque" }
  GpuProgramID 10769
}
}
}