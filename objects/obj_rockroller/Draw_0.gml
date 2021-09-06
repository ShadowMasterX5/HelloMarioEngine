/// @description Draws Mario
if instance_exists(obj_mario)
{

    //Make Mario flash
    if obj_mario.isflashing = 1
        shader_set(sha_invert)

    //Draw Mario
    draw_sprite_ext(sprite_index,image_index,round(x),round(y),obj_mario.direct,1,angle,c_white,1)

    //Reset flashing
    if obj_mario.isflashing = 1
        shader_reset()

}

