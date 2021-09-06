/// @description Spit fire upwards
if fire = 0
or (fire = 1 and random(100) > 75)
{
    fire++
    image_index = 2
    instance_create(x,y,obj_panserfire)
    alarm[1] = 30
}
else
{
    fire = 0
    image_index = 0
    alarm[1] = 16+random(48)
}

