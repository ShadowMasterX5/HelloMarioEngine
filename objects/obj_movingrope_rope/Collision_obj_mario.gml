/// @description Make Mario follow the rope

//If Mario is climbing
if obj_mario.state = 3
{

    //Make Mario follow along
    obj_mario.x += xspeed
    obj_mario.y += yspeed

    //Mario is on
    ison = 1

}

//Otherwise, Mario is not on
else
    ison = 0

