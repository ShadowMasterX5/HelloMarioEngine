/// @description Draw Yoshi

//If Mario exists
if instance_exists(obj_mario)
{

    //Make Mario flash
    if obj_mario.isflashing = 1
        shader_set(sha_invert)

    //Draw Yoshi
    draw_sprite_ext(sprite_index,image_index,round(x),y,obj_mario.direct,1,0,c_white,1)

    //Draw Mario
    draw_sprite_ext(scr_marioride(),0,round(x)-5*obj_mario.direct,y-9,obj_mario.direct,1,0,c_white,obj_mario.image_alpha)

    //If blue Yoshi has something in it mouth, draw a wing
    if global.ycolor = 3
    and inmouth != noone
        draw_sprite_ext(spr_wing,flyanim,round(x)-6*obj_mario.direct,y+6,obj_mario.direct,1,0,c_white,obj_mario.image_alpha)

    //Reset flashing
    if obj_mario.isflashing = 1
        shader_reset()

}

//If warp Mario exists
else if instance_exists(obj_warpmario)
{

    //Make Mario flash
    if obj_warpmario.isflashing = 1
        shader_set(sha_invert)

    //Draw Yoshi
    draw_sprite_ext(sprite_index,image_index,round(x),y,obj_warpmario.direct,1,0,c_white,1)

    //Draw Mario
    draw_sprite_ext(scr_marioride(),0,round(x)-5*obj_warpmario.direct,y-9,obj_warpmario.direct,1,0,c_white,1)

    //Reset flashing
    if obj_warpmario.isflashing = 1
        shader_reset()

}

//If note block Mario exists
else if instance_exists(obj_warpnoteblock)
{

    //Draw Yoshi
    draw_sprite_ext(sprite_index,image_index,round(x),y,obj_warpnoteblock.direct,1,0,c_white,1)

    //Draw Mario
    draw_sprite_ext(scr_marioride(),0,round(x)-5*obj_warpnoteblock.direct,y-9,obj_warpnoteblock.direct,1,0,c_white,1)

}

//If jump spawn exists
else if instance_exists(obj_jumpspawn)
{

    //Draw Yoshi
    draw_sprite_ext(sprite_index,image_index,round(x),y,1,1,0,c_white,1)

    //Draw Mario
    draw_sprite_ext(scr_marioride(),0,round(x)-5,y-9,1,1,0,c_white,1)

}

//If goal Mario exists
else if instance_exists(obj_goalmario)
{

    //Draw Yoshi
    draw_sprite_ext(sprite_index,image_index,round(x),y,obj_goalmario.image_xscale,1,0,c_white,obj_goalmario.image_alpha)

    //Draw Mario
    draw_sprite_ext(scr_marioride(),0,round(x)-5*obj_goalmario.image_xscale,y-9,obj_goalmario.image_xscale,1,0,c_white,obj_goalmario.image_alpha)

}

