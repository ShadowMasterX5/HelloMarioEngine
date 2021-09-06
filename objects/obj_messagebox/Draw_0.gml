/// @description Display the message box

//Draw the screenshot if it exists
if background_exists(back)
{
    draw_enable_alphablend(0)
    draw_background(back,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
    draw_enable_alphablend(1)
}

//Draw the message box
draw_sprite_ext(spr_messagebox,0,__view_get( e__VW.XView, 0 )+80,__view_get( e__VW.YView, 0 )+27,1,1,0,c_white,0.7)

//If the text should be displayed
if showing = 1
{

    //Increment the number of letters that should be displayed
    if a <= string_length(text)
        a++

    //Set the font
    draw_set_font(global.messagefont)

    //Draw the text up to the number of letters that should be displayed
    draw_text(__view_get( e__VW.XView, 0 )+86,__view_get( e__VW.YView, 0 )+31,string_hash_to_newline(string_copy(text,1,a)))

}

