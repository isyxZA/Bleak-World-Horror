#version 120

uniform sampler2D Texture;
uniform vec2 u_resolution;
uniform float u_radius = 0.5;
uniform vec4 u_color;

varying vec4 vColor;
varying vec2 vUV;


void main()
{
	vec2 uv = vUV.xy;
	
	float noise = (fract(sin(dot(uv, vec2(12.9898, 78.233))) * 43758.5453) - 0.5) * 60.0;
	
	float blur = u_radius / u_resolution.y;
	float sum = texture2D(Texture, uv).a;
	
	sum += texture2D(Texture, vec2(uv.x, uv.y - (4.0+noise) * blur)).a;
	sum += texture2D(Texture, vec2(uv.x, uv.y - (3.0+noise) * blur)).a;
	sum += texture2D(Texture, vec2(uv.x, uv.y - (2.0+noise) * blur)).a;
	sum += texture2D(Texture, vec2(uv.x, uv.y - (1.0+noise) * blur)).a;
	
	sum += texture2D(Texture, vec2(uv.x, uv.y + (1.0+noise) * blur)).a;
	sum += texture2D(Texture, vec2(uv.x, uv.y + (2.0+noise) * blur)).a;
	sum += texture2D(Texture, vec2(uv.x, uv.y + (3.0+noise) * blur)).a;
	sum += texture2D(Texture, vec2(uv.x, uv.y + (4.0+noise) * blur)).a;
	
	vec3 finalColor = u_color.rgb;
	
	finalColor.r = 0.0;
	finalColor.g = 0.0;
	finalColor.b = 0.0;
	
	gl_FragColor = vec4(finalColor, sum*0.15);
}
