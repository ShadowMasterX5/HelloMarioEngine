/// @description Draws Mario
if instance_exists(obj_mario)
{

    //Make Mario flash
    if obj_mario.isflashing = 1
        shader_set(sha_invert)

    //Draw Mario
    if direct = 1
    {
        if direction = 90
            draw_sprite_ext(sprite_index,image_index,round(x)-16,round(y)+16,1,1,90,c_white,obj_mario.image_alpha)
        else if direction = 180
            draw_sprite_ext(sprite_index,image_index,round(x),round(y)+32,1,1,180,c_white,obj_mario.image_alpha)
        else
            draw_sprite_ext(sprite_index,image_index,round(x)+16,round(y)+16,1,1,270,c_white,obj_mario.image_alpha)
    }
    else
    {
        if direction = 90
            draw_sprite_ext(sprite_index,image_index,round(x)+16,round(y)+16,-1,1,270,c_white,obj_mario.image_alpha)
        else if direction = 0
            draw_sprite_ext(sprite_index,image_index,round(x),round(y)+32,-1,1,180,c_white,obj_mario.image_alpha)
        else
            draw_sprite_ext(sprite_index,image_index,round(x)-16,round(y)+16,-1,1,90,c_white,obj_mario.image_alpha)
    }

    //Reset flashing
    if obj_mario.isflashing = 1
        shader_reset()

}

