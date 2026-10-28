//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "HDRP/TerrainLit" {
Properties {

[ToggleUI] _EnableHeightBlend ("EnableHeightBlend", Float) = 0.0

_HeightTransition ("Height Transition", Range(0, 1)) = 0.0

[Enum(Off, 0, From Ambient Occlusion, 1)] _SpecularOcclusionMode ("Specular Occlusion Mode", Float) = 1.0

_StencilRef ("_StencilRef", Float) = 0.0

_StencilWriteMask ("_StencilWriteMask", Float) = 3.0

_StencilRefGBuffer ("_StencilRefGBuffer", Float) = 2.0

_StencilWriteMaskGBuffer ("_StencilWriteMaskGBuffer", Float) = 3.0

_StencilRefDepth ("_StencilRefDepth", Float) = 0.0

_StencilWriteMaskDepth ("_StencilWriteMaskDepth", Float) = 8.0

_ZWrite ("__zw", Float) = 1.0

[ToggleUI] _TransparentZWrite ("_TransparentZWrite", Float) = 0.0

_CullMode ("__cullmode", Float) = 2.0

_ZTestDepthEqualForOpaque ("_ZTestDepthEqualForOpaque", Float) = 4.0

_ZTestGBuffer ("_ZTestGBuffer", Float) = 4.0

[ToggleUI] _EnableInstancedPerPixelNormal ("Instanced per pixel normal", Float) = 1.0

_TerrainHolesTexture ("Holes Map (RGB)", 2D) = "white" { }

_EmissionColor ("Color", Color) = (1,1,1,1)

_MainTex ("Albedo", 2D) = "white" { }

_Color ("Color", Color) = (1,1,1,1)

[ToggleUI] _SupportDecals ("Support Decals", Float) = 1.0

[ToggleUI] _ReceivesSSR ("Receives SSR", Float) = 1.0

[ToggleUI] _AddPrecomputedVelocity ("AddPrecomputedVelocity", Float) = 0.0

}
SubShader {
 Tags { "DiffuseA" = "Smoothness (becomes Density when Mask map is assigned)" "DiffuseA_MaskMapUsed" = "Density" "MaskMapA" = "Smoothness" "MaskMapB" = "Height" "MaskMapG" = "AO" "MaskMapR" = "Metallic" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "Opaque" "SplatCount" = "8" "TerrainCompatible" = "true" }
 Pass {
 Name "GBuffer"
  Tags { "DiffuseA" = "Smoothness (becomes Density when Mask map is assigned)" "DiffuseA_MaskMapUsed" = "Density" "LIGHTMODE" = "GBuffer" "MaskMapA" = "Smoothness" "MaskMapB" = "Height" "MaskMapG" = "AO" "MaskMapR" = "Metallic" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "Opaque" "SplatCount" = "8" "TerrainCompatible" = "true" }
 ZTest Off
 Cull Off
  GpuProgramID 16662
}
 Pass {
 Name "ShadowCaster"
  Tags { "DiffuseA" = "Smoothness (becomes Density when Mask map is assigned)" "DiffuseA_MaskMapUsed" = "Density" "LIGHTMODE" = "SHADOWCASTER" "MaskMapA" = "Smoothness" "MaskMapB" = "Height" "MaskMapG" = "AO" "MaskMapR" = "Metallic" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "Opaque" "SplatCount" = "8" "TerrainCompatible" = "true" }
 ZClip Off
 Cull Off
  GpuProgramID 134740
}
 Pass {
 Name "DepthOnly"
  Tags { "DiffuseA" = "Smoothness (becomes Density when Mask map is assigned)" "DiffuseA_MaskMapUsed" = "Density" "LIGHTMODE" = "DepthOnly" "MaskMapA" = "Smoothness" "MaskMapB" = "Height" "MaskMapG" = "AO" "MaskMapR" = "Metallic" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "Opaque" "SplatCount" = "8" "TerrainCompatible" = "true" }
 Cull Off
  GpuProgramID 226517
}
}
SubShader {
 Tags { "DiffuseA" = "Smoothness (becomes Density when Mask map is assigned)" "DiffuseA_MaskMapUsed" = "Density" "MaskMapA" = "Smoothness" "MaskMapB" = "Height" "MaskMapG" = "AO" "MaskMapR" = "Metallic" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "Opaque" "SplatCount" = "8" "TerrainCompatible" = "true" }
}
Fall back "Hidden/HDRP/FallbackError"
CustomEditor "UnityEditor.Rendering.HighDefinition.TerrainLitGUI"
}