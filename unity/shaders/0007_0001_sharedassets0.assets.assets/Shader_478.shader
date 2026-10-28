//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Shader Graphs/S_Smoke_Master" {
Properties {

_Alpha_Pow ("Alpha_Pow", Float) = 1.0

_Color_Pow ("Color_Pow", Float) = 1.0

_FadeDistance ("FadeDistance", Float) = 1.0

[Toggle(_USERGBMASK)] _USERGBMASK ("useRGBMask", Float) = 0.0

_Texture ("Texture", 2D) = "white" { }

_Color1 ("Color1", Color) = (0.662745,0.662745,0.662745,1)

_Color2 ("Color2", Color) = (0.843137,0.843137,0.843137,1)

_SoftenShadows ("SoftenShadows", Range(0, 1)) = 0.5

_EmissionColor ("Color", Color) = (1,1,1,1)

_RenderQueueType ("Float", Float) = 4.0

[ToggleUI] _AddPrecomputedVelocity ("Boolean", Float) = 0.0

[ToggleUI] _DepthOffsetEnable ("Boolean", Float) = 0.0

[ToggleUI] _ConservativeDepthOffsetEnable ("Boolean", Float) = 0.0

[ToggleUI] _TransparentWritingMotionVec ("Boolean", Float) = 0.0

[ToggleUI] _AlphaCutoffEnable ("Boolean", Float) = 0.0

_TransparentSortPriority ("_TransparentSortPriority", Float) = 0.0

[ToggleUI] _UseShadowThreshold ("Boolean", Float) = 0.0

[ToggleUI] _DoubleSidedEnable ("Boolean", Float) = 0.0

[Enum(Default, 0, Flip, 1, Mirror, 2, None, 3)] _DoubleSidedNormalMode ("Float", Float) = 2.0

_DoubleSidedConstants ("Vector4", Vector) = (1,1,-1,0)

[Enum(Default, 0, Auto, 1, On, 2, Off, 3)] _DoubleSidedGIMode ("Float", Float) = 0.0

[ToggleUI] _TransparentDepthPrepassEnable ("Boolean", Float) = 0.0

[ToggleUI] _TransparentDepthPostpassEnable ("Boolean", Float) = 0.0

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

[ToggleUI] _TransparentBackfaceEnable ("Boolean", Float) = 0.0

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

_StencilWriteMaskMV ("Float", Float) = 41.0

_StencilRefDistortionVec ("Float", Float) = 4.0

_StencilWriteMaskDistortionVec ("Float", Float) = 4.0

_StencilWriteMaskGBuffer ("Float", Float) = 15.0

_StencilRefGBuffer ("Float", Float) = 2.0

_ZTestGBuffer ("Float", Float) = 4.0

[ToggleUI] _RayTracing ("Boolean", Float) = 0.0

[Enum(None, 0, Planar, 1, Sphere, 2, Thin, 3)] _RefractionModel ("Float", Float) = 0.0

[Enum(Standard, 1)] _MaterialID ("_MaterialID", Float) = 1.0

_MaterialTypeMask ("_MaterialTypeMask", Float) = 2.0

[ToggleUI] _TransmissionEnable ("Boolean", Float) = 1.0

unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" { }

unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" { }

unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" { }

}
SubShader {
 Tags { "DisableBatching" = "False" "QUEUE" = "Transparent+0" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDLitShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "HDLitSubTarget" }
 Pass {
 Name "ShadowCaster"
  Tags { "DisableBatching" = "False" "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent+0" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDLitShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "HDLitSubTarget" }
 ZClip Off
 Cull Off
  GpuProgramID 64366
}
 Pass {
 Name "MotionVectors"
  Tags { "DisableBatching" = "False" "LIGHTMODE" = "MOTIONVECTORS" "QUEUE" = "Transparent+0" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDLitShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "HDLitSubTarget" }
 Cull Off
  GpuProgramID 310463
}
 Pass {
 Name "TransparentDepthPrepass"
  Tags { "DisableBatching" = "False" "LIGHTMODE" = "TransparentDepthPrepass" "QUEUE" = "Transparent+0" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDLitShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "HDLitSubTarget" }
 Cull Off
  GpuProgramID 361510
}
 Pass {
 Name "DepthOnly"
  Tags { "DisableBatching" = "False" "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent+0" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDLitShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "HDLitSubTarget" }
 Cull Off
  GpuProgramID 476892
}
 Pass {
 Name "GBuffer"
  Tags { "DisableBatching" = "False" "LIGHTMODE" = "GBuffer" "QUEUE" = "Transparent+0" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDLitShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "HDLitSubTarget" }
 ZTest Off
 Cull Off
  GpuProgramID 585833
}
 Pass {
 Name "Forward"
  Tags { "DisableBatching" = "False" "LIGHTMODE" = "Forward" "QUEUE" = "Transparent+0" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDLitShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "HDLitSubTarget" }
 ZTest Off
 ZWrite Off
 Cull Off
  GpuProgramID 619726
}
}
SubShader {
 Tags { "DisableBatching" = "False" "QUEUE" = "Transparent+0" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDLitShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "HDLitSubTarget" }
}
Fall back "Hidden/Shader Graph/FallbackError"
CustomEditor "UnityEditor.ShaderGraph.GenericShaderGraphMaterialGUI"
}