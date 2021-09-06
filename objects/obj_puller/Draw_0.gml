/// @description Draw Mario
if instance_exists(obj_mario)
{

    //Make Mario flash
    if obj_mario.isflashing = 1
        shader_set(sha_invert)

    //Draw Mario
    draw_sprite_ext(spr_mario_pull,global.powerup,round(x),y,obj_mario.direct,1,0,c_white,obj_mario.image_alpha)

    //Reset flashing
    if obj_mario.isflashing = 1
        shader_reset()

}

