/// @description Stop moving at solids and end markers
if (vspeed > 0 and place_meeting(x,y,obj_solidtop))
or place_meeting(x,y,obj_solid)
or place_meeting(x,y,obj_endmarker)
{
    speed = 0
    move_snap(16,16)
    alarm[0] = 60
}

