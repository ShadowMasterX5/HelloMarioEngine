/// @description Launch cannonballs
audio_play_sound(snd_thwomp,0,0)
if image_index = 0
{
    with instance_create(x+16,y,obj_cannonball)
    {
        direction = 45
        instance_create(x,y,obj_smoke)
    }
    with instance_create(x,y,obj_cannonball)
    {
        direction = 135
        instance_create(x,y,obj_smoke)
    }
    with instance_create(x,y+16,obj_cannonball)
    {
        direction = 225
        instance_create(x,y,obj_smoke)
    }
    with instance_create(x+16,y+16,obj_cannonball)
    {
        direction = 315
        instance_create(x,y,obj_smoke)
    }
}
else
{
    with instance_create(x+16,y+8,obj_cannonball)
    {
        direction = 0
        instance_create(x,y,obj_smoke)
    }
    with instance_create(x+8,y,obj_cannonball)
    {
        direction = 90
        instance_create(x,y,obj_smoke)
    }
    with instance_create(x,y+8,obj_cannonball)
    {
        direction = 180
        instance_create(x,y,obj_smoke)
    }
    with instance_create(x+8,y+16,obj_cannonball)
    {
        direction = 270
        instance_create(x,y,obj_smoke)
    }
}
alarm[0] = 100
alarm[1] = 50

