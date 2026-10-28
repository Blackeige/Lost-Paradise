//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/TerrainEngine/PaintHeight" {
Properties {

_MainTex ("Texture", any) = "" { }

}
SubShader {
 Pass {
 Name "Raise/Lower Heights"
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 57649
}
 Pass {
 Name "Stamp Heights"
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 118955
}
 Pass {
 Name "Set Heights"
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 138096
}
 Pass {
 Name "Smooth Heights"
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 242800
}
 Pass {
 Name "Paint Texture"
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 313761
}
 Pass {
 Name "Paint Holes"
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 351643
}
}
}