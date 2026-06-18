#version 330
#moj_import<minecraft:fog.glsl>
#moj_import<minecraft:dynamictransforms.glsl>
#moj_import<minecraft:globals.glsl>
uniform sampler2D Sampler0;in float sphericalVertexDistance;in float cylindricalVertexDistance;in vec4 vertexColor;in vec2 texCoord0;in vec2 texCoord1;out vec4 fragColor;/*INJECTION UTIL*/void main(){vec4 _870934da1f2c2e04=texture(Sampler0,texCoord0)*vertexColor*ColorModulator;if(_870934da1f2c2e04.a<0.1){discard;}fragColor=apply_fog(_870934da1f2c2e04,sphericalVertexDistance,cylindricalVertexDistance,FogEnvironmentalStart,FogEnvironmentalEnd,FogRenderDistanceStart,FogRenderDistanceEnd,FogColor);/*INJECTION MAIN*/}