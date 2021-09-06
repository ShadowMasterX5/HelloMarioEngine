/// @description Draws the screenshot shown when fading to black
if background_exists(back)
{
    draw_enable_alphablend(0)
    draw_background(back,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
    draw_enable_alphablend(1)
}

//Display messages
draw_set_font(global.font)
draw_text(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),string_hash_to_newline(message))

//Show FPS
if showfps
{
    draw_set_halign(fa_right)
    draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-2,__view_get( e__VW.YView, 0 )+206,string_hash_to_newline("FPS: "+string(fps)+" MAX FPS: "+string(fps_real)))
    draw_set_halign(fa_left)
}

//Draw on screen controls
if (os_type = os_android or os_type = os_ios)
and (instance_exists(obj_levelmanager) or instance_exists(obj_mapmario) or instance_exists(obj_titlescreen))
{

    //Set the font
    draw_set_font(global.font)

    //Center the text
    draw_set_halign(fa_center)

    //Set the aplha
    draw_set_alpha(0.6)

    //Up
    draw_rectangle(__view_get( e__VW.XView, 0 )+34,__view_get( e__VW.YView, 0 )+118,__view_get( e__VW.XView, 0 )+34+31,__view_get( e__VW.YView, 0 )+118+31,0)

    //Down
    draw_rectangle(__view_get( e__VW.XView, 0 )+34,__view_get( e__VW.YView, 0 )+182,__view_get( e__VW.XView, 0 )+34+31,__view_get( e__VW.YView, 0 )+182+31,0)

    //Left
    draw_rectangle(__view_get( e__VW.XView, 0 )+2,__view_get( e__VW.YView, 0 )+150,__view_get( e__VW.XView, 0 )+2+31,__view_get( e__VW.YView, 0 )+150+31,0)

    //Right
    draw_rectangle(__view_get( e__VW.XView, 0 )+66,__view_get( e__VW.YView, 0 )+150,__view_get( e__VW.XView, 0 )+66+31,__view_get( e__VW.YView, 0 )+150+31,0)

    //Jump
    draw_rectangle(__view_get( e__VW.XView, 0 )+350,__view_get( e__VW.YView, 0 )+150,__view_get( e__VW.XView, 0 )+350+31,__view_get( e__VW.YView, 0 )+150+31,0)
    draw_text(__view_get( e__VW.XView, 0 )+350+15,__view_get( e__VW.YView, 0 )+150+12,string_hash_to_newline("A"))

    //Run
    draw_rectangle(__view_get( e__VW.XView, 0 )+310,__view_get( e__VW.YView, 0 )+150,__view_get( e__VW.XView, 0 )+310+31,__view_get( e__VW.YView, 0 )+150+31,0)
    draw_text(__view_get( e__VW.XView, 0 )+310+15,__view_get( e__VW.YView, 0 )+150+12,string_hash_to_newline("B"))

    //Pause
    draw_rectangle(__view_get( e__VW.XView, 0 )+350,__view_get( e__VW.YView, 0 )+2,__view_get( e__VW.XView, 0 )+350+31,__view_get( e__VW.YView, 0 )+2+31,0)
    draw_text(__view_get( e__VW.XView, 0 )+350+15,__view_get( e__VW.YView, 0 )+2+12,string_hash_to_newline("+"))

    //Inventory
    draw_rectangle(__view_get( e__VW.XView, 0 )+2,__view_get( e__VW.YView, 0 )+2,__view_get( e__VW.XView, 0 )+2+31,__view_get( e__VW.YView, 0 )+2+31,0)
    draw_text(__view_get( e__VW.XView, 0 )+2+15,__view_get( e__VW.YView, 0 )+2+12,string_hash_to_newline("-"))

    //Reset text alignment
    draw_set_halign(fa_left)

    //Reset alpha
    draw_set_alpha(1)

}

