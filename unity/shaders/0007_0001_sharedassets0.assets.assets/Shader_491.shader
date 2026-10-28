//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/TerrainEngine/TerrainLayerUtils" {
Properties {

_MainTex ("Texture", any) = "" { }

}
SubShader {
 Pass {
 Name "Get Terrain Layer Channel"
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 15033
}
 Pass {
 Name "Set Terrain Layer Channel"
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 102695
}
 Pass {
 Name "Blit Copy Highest Mip"
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 155589
}
}
}