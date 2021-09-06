/// @description Allow Mario to wall run

//If Mario meets the conditions for wall running
if other.state = 1
and other.holding = 0
and other.isduck = 0
and other.isswim = 0
and other.disablecontrols = 0
{

    //If Mario is running left and there is a solid wall there, wall run up
    if other.hspeed < -2.9
    and position_meeting(x-8,y-8,obj_solid)
        with instance_create(x+16,y-32,obj_wallrunner) direct = -1

    //Otherwise, if Mario is runnung right and there is a downward wall there and no floor, run down
    else if other.hspeed > 2.9
    and position_meeting(x+8,y+24,obj_solid)
    and not position_meeting(x+24,y+24,obj_solidtop)
        with instance_create(x+32,y+16,obj_wallrunner) direction = 270

}

