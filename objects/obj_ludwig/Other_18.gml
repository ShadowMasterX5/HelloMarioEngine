/// @description Ludwig death
with instance_create(round(x),round(y),obj_enemy_dead)
{
    sprite_index = spr_larry_jump
    image_xscale = other.direct
    image_yscale = 1
    image_speed = 0.15
}

//Play magic sound
audio_play_sound(snd_magic,0,0)

//Destroy projectiles
with obj_magiccircle
{
    instance_create(x,y,obj_smoke)
    instance_destroy()
}

