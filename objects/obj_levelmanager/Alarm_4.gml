/// @description Kill Mario

//If Mario exists
if instance_exists(obj_mario)
{

    //Kill Mario
    instance_create(obj_mario.x,obj_mario.y,obj_deadmario)
    with obj_mario instance_destroy()

}

//Otherwise, delay the inevitable
else
    alarm[4] = 1

