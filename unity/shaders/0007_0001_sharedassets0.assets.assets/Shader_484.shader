//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Nature/Tree Soft Occlusion Leaves Rendertex" {
Properties {

_Color ("Main Color", Color) = (1,1,1,0)

_MainTex ("Main Texture", 2D) = "white" { }

_Cutoff ("Alpha cutoff", Range(0, 1)) = 0.5

_HalfOverCutoff ("0.5 / Alpha cutoff", Range(0, 1)) = 1.0

_BaseLight ("Base Light", Range(0, 1)) = 0.3499999940395355

_AO ("Amb. Occlusion", Range(0, 10)) = 2.4000000953674316

_Occlusion ("Dir Occlusion", Range(0, 20)) = 7.5

_TreeInstanceColor ("TreeInstanceColor", Vector) = (1,1,1,1)

_TreeInstanceScale ("TreeInstanceScale", Vector) = (1,1,1,1)

_SquashAmount ("Squash", Float) = 1.0

}
SubShader {
 Tags { "QUEUE" = "AlphaTest" }
 Pass {
  Tags { "QUEUE" = "AlphaTest" }
 Cull Off
  Lighting On
  GpuProgramID 14871
}
}
}