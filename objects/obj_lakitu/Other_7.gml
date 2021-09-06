/// @description Finish throw animation
if sprite_index = spr_lakitu_throw
{
    sprite_index = spr_lakitu
    with instance_create(x,y,obj_lakitu_egg) hspeed = other.hspeed
    audio_play_sound(snd_hammer,0,0)
}

