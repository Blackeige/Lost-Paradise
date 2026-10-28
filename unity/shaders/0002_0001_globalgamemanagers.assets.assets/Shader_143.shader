//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Core/VrsVisualization" {
Properties {

}
SubShader {
 Pass {
 Name "VrsVisualization"
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 5430
}
}
}