/// @description Launch cannonballs
if not outside_view()
{
    audio_play_sound(snd_thwomp,0,0)
    instance_create(x,y,obj_smoke)
    with instance_create(x,y,obj_cannonball)
    {
        if other.image_index = 0
            direction = 135
        else if other.image_index = 1
            direction = 45
        else if other.image_index = 2
            direction = 225
        else if other.image_index = 3
            direction = 315
    }
    alarm[0] = 180
}
else
    alarm[0] = 10

