/// @description Boom boom death
with instance_create(round(x),round(y+sprite_height),obj_enemy_dead)
{
    sprite_index = spr_boomboom_misc
    image_xscale = other.direct
}

//Play magic sound
audio_play_sound(snd_magic,0,0)

