/// @description Launch bombs
if not outside_view()
{
    audio_play_sound(snd_thwomp,0,0)
    instance_create(x,y,obj_smoke)
    with instance_create(x+8,y-17,obj_cannonbomb)
    {
        vspeed = -4
        if other.image_index = 0
            hspeed = -1
        else
            hspeed = 1
    }
    alarm[0] = 180
}
else
    alarm[0] = 10

