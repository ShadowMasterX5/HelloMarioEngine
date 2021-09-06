/// @description Swoop down
if instance_exists(obj_mario)
and obj_mario.y > y
{
    vspeed = 4
    y++
    sprite_index = spr_swooper_fly
    audio_play_sound(snd_swooper,0,0)
    alarm[1] = 2
}
else
    alarm[0] = 60

