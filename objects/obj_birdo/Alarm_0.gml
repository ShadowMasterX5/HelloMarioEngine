/// @description Fire projectiles
if ready = 0
{

    //Change sprite
    sprite_index = spr_birdo_shoot

    //Start animation
    image_index = 0
    image_speed = 0.15

    //Create projectile
    with instance_create(x,y+6,obj_birdo_egg) hspeed = 2*other.direct

    //Play spit sound
    audio_play_sound(snd_spit,0,0)

    //Make more later
    alarm[0] = 200

}

