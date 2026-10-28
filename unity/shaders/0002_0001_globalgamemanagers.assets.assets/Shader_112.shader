//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/VoxelizeShader" {
Properties {

}
SubShader {
 Pass {
 ZTest Always
 Cull Off
  GpuProgramID 49403
}
 Pass {
 ZTest Always
 Cull Off
  GpuProgramID 71867
}
}
}