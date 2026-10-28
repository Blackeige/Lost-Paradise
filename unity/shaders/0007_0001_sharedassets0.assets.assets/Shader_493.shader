//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "HDRP/Decal" {
Properties {

_BaseColor ("_BaseColor", Color) = (1,1,1,1)

_BaseColorMap ("BaseColorMap", 2D) = "white" { }

_NormalMap ("NormalMap", 2D) = "bump" { }

_MaskMap ("MaskMap", 2D) = "white" { }

_DecalBlend ("_DecalBlend", Range(0, 1)) = 0.5

_NormalBlendSrc ("_NormalBlendSrc", Float) = 0.0

_MaskBlendSrc ("_MaskBlendSrc", Float) = 1.0

[Enum(Depth Bias, 0, View Bias, 1)] _DecalMeshBiasType ("_DecalMeshBiasType", Float) = 0.0

_DecalMeshDepthBias ("_DecalMeshDepthBias", Float) = 0.0

_DecalMeshViewBias ("_DecalMeshViewBias", Float) = 0.0

_DrawOrder ("_DrawOrder", Float) = 0.0

_EmissiveColor ("EmissiveColor", Color) = (0,0,0,1)

_EmissiveColorLDR ("EmissiveColor LDR", Color) = (0,0,0,1)

_EmissiveColorHDR ("EmissiveColor HDR", Color) = (0,0,0,1)

_EmissiveColorMap ("EmissiveColorMap", 2D) = "white" { }

_EmissiveIntensityUnit ("Emissive Mode", Float) = 0.0

[ToggleUI] _UseEmissiveIntensity ("Use Emissive Intensity", Float) = 0.0

_EmissiveIntensity ("Emissive Intensity", Float) = 1.0

_EmissiveExposureWeight ("Emissive Pre Exposure", Range(0, 1)) = 1.0

_MetallicRemapMin ("_MetallicRemapMin", Range(0, 1)) = 0.0

_MetallicRemapMax ("_MetallicRemapMax", Range(0, 1)) = 1.0

_SmoothnessRemapMin ("SmoothnessRemapMin", Float) = 0.0

_SmoothnessRemapMax ("SmoothnessRemapMax", Float) = 1.0

_AORemapMin ("AORemapMin", Float) = 0.0

_AORemapMax ("AORemapMax", Float) = 1.0

_DecalMaskMapBlueScale ("_DecalMaskMapBlueScale", Range(0, 1)) = 1.0

_Smoothness ("_Smoothness", Range(0, 1)) = 0.5

_Metallic ("_Metallic", Range(0, 1)) = 0.0

_AO ("_AO", Range(0, 1)) = 1.0

[ToggleUI] _AffectAlbedo ("Boolean", Float) = 1.0

[ToggleUI] _AffectNormal ("Boolean", Float) = 1.0

[ToggleUI] _AffectAO ("Boolean", Float) = 0.0

[ToggleUI] _AffectMetal ("Boolean", Float) = 1.0

[ToggleUI] _AffectSmoothness ("Boolean", Float) = 1.0

[ToggleUI] _AffectEmission ("Boolean", Float) = 0.0

_DecalStencilRef ("_DecalStencilRef", Float) = 16.0

_DecalStencilWriteMask ("_DecalStencilWriteMask", Float) = 16.0

_DecalColorMask0 ("_DecalColorMask0", Float) = 0.0

_DecalColorMask1 ("_DecalColorMask1", Float) = 0.0

_DecalColorMask2 ("_DecalColorMask2", Float) = 0.0

_DecalColorMask3 ("_DecalColorMask3", Float) = 0.0

_Unity_Identify_HDRP_Decal ("_Unity_Identify_HDRP_Decal", Float) = 1.0

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
 Pass {
 Name "DBufferProjector"
  Tags { "LIGHTMODE" = "DBufferProjector" "RenderPipeline" = "HDRenderPipeline" }
 ZTest Greater
 ZWrite Off
 Cull Front
  GpuProgramID 61363
}
 Pass {
 Name "DecalProjectorForwardEmissive"
  Tags { "LIGHTMODE" = "DecalProjectorForwardEmissive" "RenderPipeline" = "HDRenderPipeline" }
 ZTest Greater
 ZWrite Off
 Cull Front
  GpuProgramID 111849
}
 Pass {
 Name "DBufferMesh"
  Tags { "LIGHTMODE" = "DBufferMesh" "RenderPipeline" = "HDRenderPipeline" }
 ZWrite Off
  GpuProgramID 177254
}
 Pass {
 Name "DecalMeshForwardEmissive"
  Tags { "LIGHTMODE" = "DecalMeshForwardEmissive" "RenderPipeline" = "HDRenderPipeline" }
 ZWrite Off
  GpuProgramID 230494
}
}
Fall back "Hidden/HDRP/FallbackError"
CustomEditor "Rendering.HighDefinition.DecalUI"
}