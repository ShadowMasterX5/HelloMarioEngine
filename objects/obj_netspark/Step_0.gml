/// @description Net spark logic

//If the spark is not turning and climbs off the net
if turnaround = 0
and not place_meeting(x,y,obj_climb)
{

    //Turning
    turnaround = 1

    //Stop
    speed = 0

    //Finish turning
    alarm[0] = 10

}

