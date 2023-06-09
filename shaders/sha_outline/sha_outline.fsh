//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_Texel;
uniform vec4 u_Outline;
uniform float u_Width;

void main()
{
    vec4 newColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	vec2 pixelSize = u_Texel * u_Width;
	if (texture2D(gm_BaseTexture, v_vTexcoord).a <= 0.0) {
		float alpha = 0.0;
		alpha = max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x - pixelSize.x, v_vTexcoord.y)).a);
		alpha += max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x + pixelSize.x, v_vTexcoord.y)).a);
		alpha += max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y - pixelSize.y)).a);
		alpha += max(alpha, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y + pixelSize.y)).a);
		if (alpha > 0.0) {
			newColor = u_Outline;
		}
	}
	gl_FragColor = newColor;
}
