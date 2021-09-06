/*
** Color Invert Shader
*/
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 c = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor = vec4( 1.0 - c.r, 1.0 - c.g, 1.0 - c.b, c.a); 
}

