/// @description Spit fire when in view and Mario is around
if instance_exists(obj_mario)
and not outside_view()
{
    audio_play_sound(snd_flames,0,0)
    instance_create(x,y+1,obj_bowserstatue_fire)
}

//Spit more later
alarm[0] = 200

