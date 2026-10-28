//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "HDRP/DefaultFogVolume" {
Properties {

_Mask ("Mask", 3D) = "white" { }

_ScrollSpeed ("Scroll Speed", Vector) = (0,0,0,0)

_Tiling ("Tiling", Vector) = (0,0,0,0)

_AlphaOnlyTexture ("Alpha Only Texture", Float) = 0.0

[Enum(UnityEngine.Rendering.HighDefinition.LocalVolumetricFogBlendingMode)] _FogVolumeBlendMode ("Float", Float) = 1.0

[Enum(UnityEngine.Rendering.BlendMode)] _FogVolumeDstColorBlend ("Float", Float) = 1.0

[Enum(UnityEngine.Rendering.BlendMode)] _FogVolumeSrcColorBlend ("Float", Float) = 1.0

[Enum(UnityEngine.Rendering.BlendMode)] _FogVolumeDstAlphaBlend ("Float", Float) = 1.0

[Enum(UnityEngine.Rendering.BlendMode)] _FogVolumeSrcAlphaBlend ("Float", Float) = 1.0

[Enum(UnityEngine.Rendering.BlendOp)] _FogVolumeColorBlendOp ("Float", Float) = 0.0

[Enum(UnityEngine.Rendering.BlendOp)] _FogVolumeAlphaBlendOp ("Float", Float) = 0.0

_FogVolumeSingleScatteringAlbedo ("Color", Color) = (1,1,1,1)

_FogVolumeFogDistanceProperty ("Float", Float) = 10.0

unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" { }

unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" { }

unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" { }

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDFogVolumeShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "FogVolumeSubTarget" }
 Pass {
 Name "FogVolumeVoxelize"
  Tags { "LIGHTMODE" = "FogVolumeVoxelize" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDFogVolumeShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "FogVolumeSubTarget" }
 ZTest Off
 ZWrite Off
 Cull Off
  GpuProgramID 19340
}
 Pass {
 Name "ShaderGraphPreview"
  Tags { "LIGHTMODE" = "ShaderGraphPreview" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDFogVolumeShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "FogVolumeSubTarget" }
 ZTest Off
 ZWrite Off
 Cull Off
  GpuProgramID 102973
}
 Pass {
 Name "VolumetricFogVFXOverdrawDebug"
  Tags { "LIGHTMODE" = "VolumetricFogVFXOverdrawDebug" "RenderPipeline" = "HDRenderPipeline" "RenderType" = "HDFogVolumeShader" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "FogVolumeSubTarget" }
 ZTest Off
 ZWrite Off
 Cull Off
  GpuProgramID 141269
}
}
Fall back "Hidden/Shader Graph/FallbackError"
CustomEditor "UnityEditor.ShaderGraph.GenericShaderGraphMaterialGUI"
}