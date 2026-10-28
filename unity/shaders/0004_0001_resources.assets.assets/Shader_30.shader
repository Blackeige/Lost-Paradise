//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Zeta/UiBlur" {
Properties {

_MainTex ("Texture", 2D) = "black" { }

}
SubShader {
 Pass {
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 26253
}
 Pass {
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 100158
}
 Pass {
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 146183
}
}
}