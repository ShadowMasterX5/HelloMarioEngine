/// @description Birdo death
with instance_create(round(x),round(y+sprite_height),obj_enemy_dead)
{
    sprite_index = spr_birdo_hurt
    image_xscale = other.direct
}

//Play magic sound
audio_play_sound(snd_magic,0,0)

//Destroy projectiles
with obj_birdo_egg
{
    instance_create(x,y,obj_smoke)
    instance_destroy()
}

