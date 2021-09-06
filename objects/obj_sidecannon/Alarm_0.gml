/// @description Launch cannonballs
audio_play_sound(snd_thwomp,0,0)
with instance_create(x,y,obj_cannonball)
{
    if other.image_index = 0
    {
        if not instance_exists(obj_mario)
        or x > obj_mario.x
        {
            direction = 225
            y+=16
        }
        else
        {
            direction = 45
            x+=16
        }
    }
    else
    {
        if not instance_exists(obj_mario)
        or x > obj_mario.x
        {
            direction = 135
        }
        else
        {
            direction = 315
            x+=16
            y+=16
        }
    }
    instance_create(x,y,obj_smoke)
}
alarm[0] = 200

