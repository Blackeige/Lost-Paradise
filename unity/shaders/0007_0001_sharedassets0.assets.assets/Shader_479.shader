//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "HDRP/Hair" {
Properties {

_BaseColorMap ("Base Color Map", 2D) = "white" { }

_BaseColor ("Base Color", Color) = (0.5,0.5,0.5,1)

_AlphaClipThreshold ("Alpha Clip Threshold", Range(0, 1)) = 0.0

_AlphaClipThresholdDepthPrepass ("Alpha Clip Threshold Depth Prepass", Range(0, 1)) = 0.8999999761581421

_AlphaClipThresholdDepthPostpass ("Alpha Clip Threshold Depth Postpass", Range(0, 1)) = 0.6000000238418579

_AlphaThresholdShadow ("Alpha Clip Threshold Shadows", Range(0, 1)) = 0.5

_uvBaseST ("Base UV Scale Transform", Vector) = (1,1,0,0)

_NormalMap ("Normal Map", 2D) = "bump" { }

_NormalScale ("Normal Strength", Range(0, 8)) = 1.0

_MaskMap ("AO Map", 2D) = "white" { }

[ToggleUI] _LightmapUV ("AO Use Lightmap UV", Float) = 0.0

_SmoothnessMask ("Smoothness Mask", 2D) = "white" { }

_uvSmoothnessST ("Smoothness UV Scale Transform", Vector) = (20,5,0,0)

_SmoothnessMin ("Smoothness Min", Range(0, 1)) = 0.30000001192092896

_SmoothnessMax ("Smoothness Max", Range(0, 1)) = 0.699999988079071

_SpecularColor ("Specular Color", Color) = (0.603922,0.313726,0,1)

_Specular ("Specular Multiplier", Range(0, 1)) = 1.0

_SpecularShift ("Specular Shift", Range(0, 1)) = 0.5

_SecondarySpecular ("Secondary Specular Multiplier", Range(0, 1)) = 1.0

_SecondarySpecularShift ("Secondary Specular Shift", Range(0, 1)) = 0.8999999761581421

_TransmissionColor ("Transmission Color", Color) = (1,0.866667,0.627451,1)

_TransmissionRim ("Transmission Rim", Range(0, 1)) = 0.20000000298023224

_EmissionColor ("Color", Color) = (1,1,1,1)

_RenderQueueType ("Float", Float) = 4.0

[ToggleUI] _AddPrecomputedVelocity ("Boolean", Float) = 0.0

[ToggleUI] _DepthOffsetEnable ("Boolean", Float) = 0.0

[ToggleUI] _ConservativeDepthOffsetEnable ("Boolean", Float) = 0.0

[ToggleUI] _TransparentWritingMotionVec ("Boolean", Float) = 1.0

[ToggleUI] _AlphaCutoffEnable ("Boolean", Float) = 1.0

_TransparentSortPriority ("_TransparentSortPriority", Float) = 0.0

[ToggleUI] _UseShadowThreshold ("Boolean", Float) = 1.0

[ToggleUI] _DoubleSidedEnable ("Boolean", Float) = 1.0

[Enum(Default, 0, Flip, 1, Mirror, 2, None, 3)] _DoubleSidedNormalMode ("Float", Float) = 2.0

_DoubleSidedConstants ("Vector4", Vector) = (1,1,-1,0)

[Enum(Default, 0, Auto, 1, On, 2, Off, 3)] _DoubleSidedGIMode ("Float", Float) = 0.0

[ToggleUI] _TransparentDepthPrepassEnable ("Boolean", Float) = 1.0

[ToggleUI] _TransparentDepthPostpassEnable ("Boolean", Float) = 1.0

[ToggleUI] _PerPixelSorting ("Boolean", Float) = 0.0

_SurfaceType ("Float", Float) = 1.0

_BlendMode ("Float", Float) = 0.0

_SrcBlend ("Float", Float) = 1.0

_DstBlend ("Float", Float) = 0.0

_DstBlend2 ("Float", Float) = 0.0

_AlphaSrcBlend ("Float", Float) = 1.0

_AlphaDstBlend ("Float", Float) = 0.0

[ToggleUI] _ZWrite ("Boolean", Float) = 0.0

[ToggleUI] _TransparentZWrite ("Boolean", Float) = 0.0

_CullMode ("Float", Float) = 2.0

[ToggleUI] _EnableFogOnTransparent ("Boolean", Float) = 1.0

_CullModeForward ("Float", Float) = 2.0

[Enum(Default, 0, Front, 1, Back, 2)] _TransparentCullMode ("Float", Float) = 2.0

[Enum(UnityEngine.Rendering.HighDefinition.OpaqueCullMode)] _OpaqueCullMode ("Float", Float) = 2.0

_ZTestDepthEqualForOpaque ("Float", Float) = 4.0

[Enum(UnityEngine.Rendering.CompareFunction)] _ZTestTransparent ("Float", Float) = 4.0

[ToggleUI] _TransparentBackfaceEnable ("Boolean", Float) = 1.0

[ToggleUI] _RequireSplitLighting ("Boolean", Float) = 0.0

[ToggleUI] _ReceivesSSR ("Boolean", Float) = 1.0

[ToggleUI] _ReceivesSSRTransparent ("Boolean", Float) = 0.0

[ToggleUI] _EnableBlendModePreserveSpecularLighting ("Boolean", Float) = 1.0

[ToggleUI] _SupportDecals ("Boolean", Float) = 1.0

[ToggleUI] _ExcludeFromTUAndAA ("Boolean", Float) = 0.0

_StencilRef ("Float", Float) = 0.0

_StencilWriteMask ("Float", Float) = 6.0

_StencilRefDepth ("Float", Float) = 0.0

_StencilWriteMaskDepth ("Float", Float) = 9.0

_StencilRefMV ("Float", Float) = 32.0

_StencilWriteMaskMV ("Float", Float) = 43.0

_StencilRefDistortionVec ("Float", Float) = 4.0

_StencilWriteMaskDistortionVec ("Float", Float) = 4.0

unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" { }

unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" { }

unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" { }

}
SubShader {
 Tags { "DisableBatching" = "False" "QUEUE" = "Transparent+0" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDLitShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "HairSubTarget" }
 Pass {
 Name "ShadowCaster"
  Tags { "DisableBatching" = "False" "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent+0" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDLitShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "HairSubTarget" }
 ZClip Off
 Cull Off
  GpuProgramID 53133
}
 Pass {
 Name "MotionVectors"
  Tags { "DisableBatching" = "False" "LIGHTMODE" = "MOTIONVECTORS" "QUEUE" = "Transparent+0" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDLitShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "HairSubTarget" }
 Cull Off
  GpuProgramID 281251
}
 Pass {
 Name "DepthForwardOnly"
  Tags { "DisableBatching" = "False" "LIGHTMODE" = "DepthForwardOnly" "QUEUE" = "Transparent+0" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDLitShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "HairSubTarget" }
 Cull Off
  GpuProgramID 584395
}
 Pass {
 Name "ForwardOnly"
  Tags { "DisableBatching" = "False" "LIGHTMODE" = "ForwardOnly" "QUEUE" = "Transparent+0" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDLitShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "HairSubTarget" }
 ZTest Off
 ZWrite Off
 Cull Off
  GpuProgramID 629962
}
}
SubShader {
 Tags { "DisableBatching" = "False" "QUEUE" = "Transparent+0" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDLitShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "HairSubTarget" }
}
Fall back "Hidden/Shader Graph/FallbackError"
CustomEditor "UnityEditor.ShaderGraph.GenericShaderGraphMaterialGUI"
}