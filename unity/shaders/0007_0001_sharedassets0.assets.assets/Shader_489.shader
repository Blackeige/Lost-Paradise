//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/TerrainEngine/HeightBlitCopy" {
Properties {

_MainTex ("Texture", any) = "" { }

}
SubShader {
 Pass {
 Cull Off
  GpuProgramID 15081
}
}
}