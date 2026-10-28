//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/TerrainEngine/GenerateNormalmap" {
Properties {

_MainTex ("Texture", any) = "" { }

}
SubShader {
 Pass {
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 15633
}
}
}