/// @description Draw the title screen

//Draw the box
draw_sprite_ext(spr_pause,0,x,y,1,1,0,c_white,0.7)

//Set the font
draw_set_font(global.font)

//If the powered by text is not faded out
if fade != 0
{

    //Set the alpha
    draw_set_alpha(fade)

    /*
    **  Powered by Hello Mario Engine text
    **
    **  This engine's license requires attribution!
    **  If you remove this line, give credit for
    **  use of the "Hello Mario Engine" somewhere
    **  else. Thank you. -Hello Fangaming
    */
    draw_text(2,2,string_hash_to_newline("POWERED BY HELLO MARIO ENGINE V6.2.2"))

}

//Center the text
draw_set_halign(fa_center)

//Set the aplha
draw_set_alpha(0.7)

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
    draw_text(x,y-20+i*16,string_hash_to_newline(menu[i]))

}

//Reset text alignment
draw_set_halign(fa_left)

//Reset alpha
draw_set_alpha(1)

/* */
/*  */
