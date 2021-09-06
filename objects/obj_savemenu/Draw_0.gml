/// @description Draw the save menu

//Center the text
draw_set_halign(fa_center)

//Set the alpha
draw_set_alpha(0.7)

//Set the font
draw_set_font(global.font)

//Darken the screen
draw_set_color(c_black)
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
draw_set_color(c_white)

//Draw the box
draw_sprite_ext(spr_pause,2,__view_get( e__VW.XView, 0 )+192,__view_get( e__VW.YView, 0 )+108,1,1,0,c_white,0.7)

//Iterate over the menu items
for(var i = 0; i < 3; i++)
{

    //Make the text gold if it is the selected one
    if menu_choice = i
        menu[i] = string_lower(menu[i])

    //Otherwise, make the text white
    else
        menu[i] = string_upper(menu[i])

    //Draw the text
    draw_text(__view_get( e__VW.XView, 0 )+192,__view_get( e__VW.YView, 0 )+88+i*16,string_hash_to_newline(menu[i]))

}

//Reset text alignment
draw_set_halign(fa_left)

//Reset alpha
draw_set_alpha(1)

