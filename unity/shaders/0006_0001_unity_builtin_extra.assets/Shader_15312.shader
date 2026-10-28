//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/VR/BlitFromTex2DToTexArraySlice" {
Properties {

_MainTex ("Texture", 2D) = "" { }

}
SubShader {
 Pass {
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 31027
}
}
SubShader {
 Pass {
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 80550
}
}
}