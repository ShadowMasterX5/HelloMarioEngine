/// @description Draw Kuribo Shoe

//Make sure to offset small Mario sprites
if global.powerup = cs_small
    yoffset = 5
else
    yoffset = 0

//If Mario exists
if instance_exists(obj_mario)
{

    //Make Mario flash
    if obj_mario.isflashing = 1
        shader_set(sha_invert)

    //Draw Mario
    draw_sprite_ext(scr_marioslide(),0,round(x)-obj_mario.direct,y-19-offset-yoffset,obj_mario.direct,1,0,c_white,obj_mario.image_alpha)

    //Draw shoe
    draw_sprite_ext(sprite_index,image_index,round(x)-8*obj_mario.direct,y-offset,obj_mario.direct,1,0,c_white,1)

    //Reset flashing
    if obj_mario.isflashing = 1
        shader_reset()

}
else if instance_exists(obj_warpmario)
{
    //Make Mario flash
    if obj_warpmario.isflashing = 1
        shader_set(sha_invert)

    //Draw Mario
    draw_sprite_ext(scr_marioslide(),0,round(x)-obj_warpmario.direct,y-19-yoffset,obj_warpmario.direct,1,0,c_white,1)

    //Draw shoe
    draw_sprite_ext(sprite_index,0,round(x)-8*obj_warpmario.direct,y,obj_warpmario.direct,1,0,c_white,1)

    //Reset flashing
    if obj_warpmario.isflashing = 1
        shader_reset()

}
else if instance_exists(obj_warpnoteblock)
{

    //Draw Mario
    draw_sprite_ext(scr_marioslide(),0,round(x)-obj_warpnoteblock.direct,y-19-yoffset,obj_warpnoteblock.direct,1,0,c_white,1)

    //Draw shoe
    draw_sprite_ext(sprite_index,image_index,round(x)-8*obj_warpnoteblock.direct,y,obj_warpnoteblock.direct,1,0,c_white,1)

}
else if instance_exists(obj_jumpspawn)
{

    //Draw Mario
    draw_sprite(scr_marioslide(),0,x-1,y-19-yoffset)

    //Draw shoe
    draw_sprite(sprite_index,image_index,round(x)-8,y)

}

