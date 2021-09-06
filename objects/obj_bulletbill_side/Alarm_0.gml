/// @description Launch sideways bullet bills
if instance_exists(obj_mario)
and (obj_mario.y < y-32 or obj_mario.y > y+48)
{
    audio_play_sound(snd_thwomp,0,0)
    instance_create(x,y,obj_smoke)
    instance_create(x,y,obj_bullet_side)
}

//Launch more later
alarm[0] = 200

