/// @description Spit fire at Mario
if fire = 0
or (fire = 1 and random(100) > 75)
{
    fire++
    image_index = 2
    with instance_create(x,y,obj_panserfire)
    {
        if instance_exists(obj_mario)
        {
            if obj_mario.x > x+8
                hspeed = 1
            else
                hspeed = -1
        }
    }
    alarm[1] = 30
}
else
{
    fire = 0
    image_index = 0
    alarm[1] = 16+random(48)
}

