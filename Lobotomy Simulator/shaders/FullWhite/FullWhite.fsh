//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 Colors = texture2D(gm_BaseTexture, v_vTexcoord);
    gl_FragColor = vec4(255, 255, 255, Colors.a);
}
