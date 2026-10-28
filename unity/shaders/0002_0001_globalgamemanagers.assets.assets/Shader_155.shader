//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/DebugLightVolumes" {
Properties {

_Color ("Color", Color) = (1,1,1,1)

_Range ("Range", Vector) = (1,1,1,1)

_Offset ("Offset", Vector) = (1,1,1,1)

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
}
}