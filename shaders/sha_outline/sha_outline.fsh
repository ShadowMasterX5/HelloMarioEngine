/*
** Outline Shader
*/
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 c = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    if(c.r<0.2&&c.g<0.2&&c.b<0.2)
        gl_FragColor = c;
    else
        gl_FragColor = vec4( 0.0, 0.0, 0.0, 0.0);
}

