//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/CoreSRP/CoreCopy" {
Properties {

}
SubShader {
 Tags { "RenderType" = "Opaque" }
 Pass {
 Name "Copy"
  Tags { "RenderType" = "Opaque" }
 ZClip Off
 ZTest Off
 ZWrite Off
 Cull Off
  GpuProgramID 30028
}
 Pass {
 Name "CopyMS"
  Tags { "RenderType" = "Opaque" }
 ZClip Off
 ZTest Off
 ZWrite Off
 Cull Off
  GpuProgramID 100420
}
}
}