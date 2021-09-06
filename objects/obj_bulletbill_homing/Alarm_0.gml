/// @description Launch homing bullet bills
if instance_exists(obj_mario)
and (obj_mario.x < x-32 or obj_mario.x > x+48)
and instance_number(obj_bullet_homing) < 3
{
    audio_play_sound(snd_thwomp,0,0)
    instance_create(x,y,obj_smoke)
    instance_create(x,y,obj_bullet_homing)
}

//Launch more later
alarm[0] = 200

