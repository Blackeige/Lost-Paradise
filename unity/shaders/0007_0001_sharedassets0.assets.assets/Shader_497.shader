//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HDRP/TerrainLit_Basemap" {
Properties {

_StencilRef ("_StencilRef", Float) = 0.0

_StencilWriteMask ("_StencilWriteMask", Float) = 3.0

_StencilRefGBuffer ("_StencilRefGBuffer", Float) = 2.0

_StencilWriteMaskGBuffer ("_StencilWriteMaskGBuffer", Float) = 3.0

_StencilRefDepth ("_StencilRefDepth", Float) = 0.0

_StencilWriteMaskDepth ("_StencilWriteMaskDepth", Float) = 8.0

_ZWrite ("__zw", Float) = 1.0

_CullMode ("__cullmode", Float) = 2.0

_ZTestDepthEqualForOpaque ("_ZTestDepthEqualForOpaque", Float) = 4.0

_ZTestGBuffer ("_ZTestGBuffer", Float) = 4.0

_TerrainHolesTexture ("Holes Map (RGB)", 2D) = "white" { }

_EmissionColor ("Color", Color) = (1,1,1,1)

_MetallicTex ("Metallic (R)", 2D) = "white" { }

_MainTex ("Albedo", 2D) = "white" { }

_Color ("Color", Color) = (1,1,1,1)

[ToggleUI] _SupportDecals ("Support Decals", Float) = 1.0

[ToggleUI] _ReceivesSSR ("Receives SSR", Float) = 1.0

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" "RenderType" = "Opaque" }
 Pass {
 Name "GBuffer"
  Tags { "LIGHTMODE" = "GBuffer" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "Opaque" }
 ZTest Off
 Cull Off
  GpuProgramID 31932
}
 Pass {
 Name "ShadowCaster"
  Tags { "LIGHTMODE" = "SHADOWCASTER" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "Opaque" }
 ZClip Off
 Cull Off
  GpuProgramID 159913
}
 Pass {
 Name "DepthOnly"
  Tags { "LIGHTMODE" = "DepthOnly" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "Opaque" }
 Cull Off
  GpuProgramID 256874
}
}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" "RenderType" = "Opaque" }
}
}