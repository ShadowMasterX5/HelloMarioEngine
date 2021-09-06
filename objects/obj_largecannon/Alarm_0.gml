/// @description Launch large cannonball
if instance_exists(obj_mario)
and (obj_mario.x < x-32 or obj_mario.x > x+64)
{
    audio_play_sound(snd_thwomp,0,0)
    instance_create(x,y,obj_largeball)
}

//Launch more later
alarm[0] = 200

