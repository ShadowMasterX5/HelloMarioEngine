/// @description Leap and stomp
if ready = 0
and instance_exists(obj_mario)
{

    //Jump state
    ready = 1

    //Boost jump
    y--

    //Face Mario
    if x > obj_mario.x
        direct = 1
    else
        direct = -1

    //Find a position to jump a
    var movex = round(obj_mario.x/16)*16

    //If a solid is there, change where to jump
    if place_meeting(movex,16,obj_solid)
    {
        if x > movex
            movex += 16
        else
            movex -= 16
    }

    //Leap to that point
    move_towards_point(movex,16,4)

    //Change pose
    image_index = 0

}
else
    alarm[2] = 2

