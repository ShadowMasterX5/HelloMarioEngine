/// @description Launch bullet bills
if instance_exists(obj_mario)
and (obj_mario.x < x-32 or obj_mario.x > x+48)
{
    audio_play_sound(snd_thwomp,0,0)
    instance_create(x,y,obj_smoke)
    instance_create(x,y,obj_bullet)
}

//Launch more later
alarm[0] = 200

