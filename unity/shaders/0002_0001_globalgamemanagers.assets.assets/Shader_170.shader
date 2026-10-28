//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "HDRP/Unlit" {
Properties {

_UnlitColor ("Color", Color) = (1,1,1,1)

_UnlitColorMap ("ColorMap", 2D) = "white" { }

_AlphaRemapMin ("AlphaRemapMin", Float) = 0.0

_AlphaRemapMax ("AlphaRemapMax", Float) = 1.0

_EmissiveColor ("EmissiveColor", Color) = (0,0,0,1)

_EmissiveColorMap ("EmissiveColorMap", 2D) = "white" { }

_EmissiveColorLDR ("EmissiveColor LDR", Color) = (0,0,0,1)

[ToggleUI] _AlbedoAffectEmissive ("Albedo Affect Emissive", Float) = 0.0

_EmissiveIntensityUnit ("Emissive Mode", Float) = 0.0

[ToggleUI] _UseEmissiveIntensity ("Use Emissive Intensity", Float) = 0.0

_EmissiveIntensity ("Emissive Intensity", Float) = 1.0

_EmissiveExposureWeight ("Emissive Pre Exposure", Range(0, 1)) = 1.0

_DistortionVectorMap ("DistortionVectorMap", 2D) = "black" { }

[ToggleUI] _DistortionEnable ("Enable Distortion", Float) = 0.0

[ToggleUI] _DistortionOnly ("Distortion Only", Float) = 0.0

[ToggleUI] _DistortionDepthTest ("Distortion Depth Test Enable", Float) = 1.0

[Enum(Add, 0, Multiply, 1, Replace, 2)] _DistortionBlendMode ("Distortion Blend Mode", Float) = 0.0

_DistortionSrcBlend ("Distortion Blend Src", Float) = 0.0

_DistortionDstBlend ("Distortion Blend Dst", Float) = 0.0

_DistortionBlurSrcBlend ("Distortion Blur Blend Src", Float) = 0.0

_DistortionBlurDstBlend ("Distortion Blur Blend Dst", Float) = 0.0

_DistortionBlurBlendMode ("Distortion Blur Blend Mode", Float) = 0.0

_DistortionScale ("Distortion Scale", Float) = 1.0

_DistortionVectorScale ("Distortion Vector Scale", Float) = 2.0

_DistortionVectorBias ("Distortion Vector Bias", Float) = -1.0

_DistortionBlurScale ("Distortion Blur Scale", Float) = 1.0

_DistortionBlurRemapMin ("DistortionBlurRemapMin", Float) = 0.0

_DistortionBlurRemapMax ("DistortionBlurRemapMax", Float) = 1.0

[ToggleUI] _AlphaCutoffEnable ("Alpha Cutoff Enable", Float) = 0.0

_AlphaCutoff ("Alpha Cutoff", Range(0, 1)) = 0.5

_TransparentSortPriority ("_TransparentSortPriority", Float) = 0.0

_SurfaceType ("__surfacetype", Float) = 0.0

_BlendMode ("__blendmode", Float) = 0.0

_SrcBlend ("__src", Float) = 1.0

_DstBlend ("__dst", Float) = 0.0

_AlphaSrcBlend ("__alphaSrc", Float) = 1.0

_AlphaDstBlend ("__alphaDst", Float) = 0.0

[ToggleUI] _ZWrite ("__zw", Float) = 1.0

[ToggleUI] _TransparentZWrite ("_TransparentZWrite", Float) = 0.0

_CullMode ("__cullmode", Float) = 2.0

[Enum(UnityEngine.Rendering.HighDefinition.TransparentCullMode)] _TransparentCullMode ("_TransparentCullMode", Float) = 2.0

[Enum(UnityEngine.Rendering.HighDefinition.OpaqueCullMode)] _OpaqueCullMode ("_OpaqueCullMode", Float) = 2.0

_ZTestModeDistortion ("_ZTestModeDistortion", Float) = 8.0

[Enum(UnityEngine.Rendering.CompareFunction)] _ZTestTransparent ("Transparent ZTest", Float) = 4.0

_ZTestDepthEqualForOpaque ("_ZTestDepthEqualForOpaque", Float) = 4.0

[ToggleUI] _EnableFogOnTransparent ("Enable Fog", Float) = 0.0

[ToggleUI] _DoubleSidedEnable ("Double sided enable", Float) = 0.0

[Enum(Auto, 0, On, 1, Off, 2)] _DoubleSidedGIMode ("Double sided GI mode", Float) = 0.0

_StencilRef ("_StencilRef", Float) = 0.0

_StencilWriteMask ("_StencilWriteMask", Float) = 3.0

_StencilRefDepth ("_StencilRefDepth", Float) = 0.0

_StencilWriteMaskDepth ("_StencilWriteMaskDepth", Float) = 8.0

_StencilRefMV ("_StencilRefMV", Float) = 32.0

_StencilWriteMaskMV ("_StencilWriteMaskMV", Float) = 32.0

[ToggleUI] _AddPrecomputedVelocity ("AddPrecomputedVelocity", Float) = 0.0

_StencilRefDistortionVec ("_StencilRefDistortionVec", Float) = 2.0

_StencilWriteMaskDistortionVec ("_StencilWriteMaskDistortionVec", Float) = 2.0

_EmissionColor ("Color", Color) = (1,1,1,1)

_IncludeIndirectLighting ("_IncludeIndirectLighting", Float) = 1.0

_MainTex ("Albedo", 2D) = "white" { }

_Color ("Color", Color) = (1,1,1,1)

_Cutoff ("Alpha Cutoff", Range(0, 1)) = 0.5

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDUnlitShader" }
 Pass {
 Name "DepthForwardOnly"
  Tags { "LIGHTMODE" = "DepthForwardOnly" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDUnlitShader" }
 Cull Off
  GpuProgramID 95057
}
 Pass {
 Name "MotionVectors"
  Tags { "LIGHTMODE" = "MOTIONVECTORS" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDUnlitShader" }
 Cull Off
  GpuProgramID 180869
}
 Pass {
 Name "ForwardOnly"
  Tags { "LIGHTMODE" = "ForwardOnly" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDUnlitShader" }
 ZTest Off
 ZWrite Off
 Cull Off
  GpuProgramID 217467
}
 Pass {
 Name "ShadowCaster"
  Tags { "LIGHTMODE" = "SHADOWCASTER" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDUnlitShader" }
 ZClip Off
 Cull Off
  GpuProgramID 333449
}
}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" }
}
Fall back "Hidden/HDRP/FallbackError"
CustomEditor "Rendering.HighDefinition.UnlitGUI"
}