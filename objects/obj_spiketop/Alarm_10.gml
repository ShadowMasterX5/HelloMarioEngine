/// @description Detect Mario, and walk towards him
if not instance_exists(obj_mario)
or obj_mario.x < x
    direct = -1
else
    direct = 1

//Select a surface to walk on
if position_meeting(x,y+20,obj_solidtop)
{
    hspeed = 0.5*direct
    dir = 0
}
else if position_meeting(x,y-1,obj_solid)
{
    hspeed = -0.5*direct
    dir = 2
}
else if position_meeting(x-9,y+8,obj_solid)
{
    vspeed = 0.5*direct
    dir = 3
}
else if position_meeting(x+8,y+8,obj_solid)
{
    vspeed = -0.5*direct
    dir = 1
}

