/// @description Draw Mario and the World Map HUD

//Show the event sprite for the clear state
if ready = 1
    draw_sprite(spr_mapevent,0,x,y)

//Otherwise, if Mario is not on Yoshi, draw him normally
else if global.yoshi = 0
    draw_sprite(sprite_index,image_index,x,y)

//Otherwise, draw him on Yoshi
else if global.yoshi = 1
{

    //Draw Mario...
    draw_sprite(sprite_index,image_index,x,y-7)

    //..on the appropriately colored Yoshi
    if global.ycolor = 0
        draw_sprite(spr_mapyoshi,image_index,x,y)
    else if global.ycolor = 1
        draw_sprite(spr_mapyoshi_r,image_index,x,y)
    else if global.ycolor = 2
        draw_sprite(spr_mapyoshi_y,image_index,x,y)
    else if global.ycolor = 3
        draw_sprite(spr_mapyoshi_b,image_index,x,y)

}

//Draw the HUD box
draw_sprite_ext(spr_mapscreenbox,inventory,__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.YView, 0 )+186,1,1,0,c_white,0.7)

//If the inventory is not opened up
if inventory = 0
{

    //Set the draw alpha
    draw_set_alpha(0.7)

    //Set the font
    draw_set_font(global.font)

    //Draw the name of the panel Mario is on
    draw_text(__view_get( e__VW.XView, 0 )+164,__view_get( e__VW.YView, 0 )+197,string_hash_to_newline(mytext))

    //Set the font
    draw_set_font(global.wdigits)

    //Draw the lives
    draw_text(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+198,string_hash_to_newline(string_format(lives,2,0)))

    //Draw the score
    draw_text(__view_get( e__VW.XView, 0 )+97,__view_get( e__VW.YView, 0 )+198,string_hash_to_newline(string_add_zeros(score,7)))

    //Draw the reserve item
    if global.reserveitem != cs_small
        draw_sprite_ext(scr_constant_get_sprite(global.reserveitem),0,__view_get( e__VW.XView, 0 )+330,__view_get( e__VW.YView, 0 )+193,1,1,0,c_white,0.7)

    //Reset the draw alpha
    draw_set_alpha(1)

}

//If the inventory is opened
else
{

    //Iterate over the inventory items
    for(var i = 1; i <= global.inventory[0]; i++)
    {

        //Use an outline shader if this item is not selected
        if boxselection = i
            shader_reset()
        else
            shader_set(sha_outline)

        //Draw the item
        draw_sprite_ext(scr_constant_get_sprite(global.inventory[i]),0,__view_get( e__VW.XView, 0 )+39+(i-1)*19,__view_get( e__VW.YView, 0 )+193,1,1,0,c_white,0.7)

    }

    //Use an outline shader if the reserve item is not selected
    if boxselection = 16
        shader_reset()
    else
        shader_set(sha_outline)

    //Draw the reserve item
    if global.reserveitem != cs_small
        draw_sprite_ext(scr_constant_get_sprite(global.reserveitem),0,__view_get( e__VW.XView, 0 )+330,__view_get( e__VW.YView, 0 )+193,1,1,0,c_white,0.7)

    //Reset shaders
    shader_reset()

}

