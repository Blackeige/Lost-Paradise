//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Shader Graphs/PhysicallyBasedSky" {
Properties {

_Planet_Rotation ("Planet Rotation", Range(0, 360)) = 0.0

_Ground_Color_Texture ("Ground Color Texture", Cube) = "" { }

_Ground_Emission_Texture ("Ground Emission Texture", Cube) = "" { }

_Ground_Emission_Multiplier ("Ground Emission Multiplier", Float) = 0.0

_Space_Rotation ("Space Rotation", Range(0, 360)) = 0.0

_Space_Emission_Texture ("Space Emission Texture", Cube) = "" { }

_Space_Emission_Multiplier ("Space Emission Multiplier", Float) = 0.0

unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" { }

unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" { }

unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" { }

}
SubShader {
 Tags { "RenderPipeline" = "HDRenderPipeline" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "" }
 Pass {
 Name "PBR Sky cubemap"
  Tags { "RenderPipeline" = "HDRenderPipeline" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "" }
 ZTest Always
 ZWrite Off
 Cull Off
  GpuProgramID 39726
}
 Pass {
 Name "PBR Sky"
  Tags { "RenderPipeline" = "HDRenderPipeline" "ShaderGraphShader" = "true" "ShaderGraphTargetId" = "" }
 ZWrite Off
 Cull Off
  GpuProgramID 74750
}
}
Fall back "Hidden/Shader Graph/FallbackError"
CustomEditor "UnityEditor.ShaderGraph.GenericShaderGraphMaterialGUI"
}