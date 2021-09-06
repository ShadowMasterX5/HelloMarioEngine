/// @description Deals with the application surface, filtering, and fading
draw_enable_alphablend(0)

//No Filter
if filter = 0
    draw_surface(application_surface,0,0)

//HQ2X Filtering
else if filter = 1
{
    shader_set(sha_hq2x)
    draw_surface_stretched(application_surface,0,0,__view_get( e__VW.WView, 0 )*2,__view_get( e__VW.HView, 0 )*2)
    shader_reset()
}

//HQ4X Filtering
else if filter = 2
{
    shader_set(sha_hq4x)
    draw_surface_stretched(application_surface,0,0,__view_get( e__VW.WView, 0 )*4,__view_get( e__VW.HView, 0 )*4)
    shader_reset()
}

draw_enable_alphablend(1)

//Fades the screen to and from black
if done < 1
{

    //Increment fading
    done += 1/30

    //Fade from black
    if mode = 0
        draw_set_alpha(1-done)

    //Fade to black
    else
        draw_set_alpha(done)

    //Draw the fade
    draw_set_color(c_black)
    draw_rectangle(0,0,5000,5000,0)
    draw_set_alpha(1)
    draw_set_color(c_white)

}

