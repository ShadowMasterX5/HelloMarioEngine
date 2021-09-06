/// @description Hop
if instance_exists(obj_mario)
{

    //Jump animation
    image_index = 1

    //Move up
    vspeed = -6

    //Boost jump
    y--

    //Go after Mario
    if obj_mario.x > x
        hspeed = 1
    else
        hspeed = -1

}
else
    alarm[0] = 100

