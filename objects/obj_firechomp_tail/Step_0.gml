/// @description Turn towards parent
if instance_exists(parent)
and not place_meeting(x,y,parent)
{
    if speed = 0
    {
        speed = 1
        direction = point_direction(x,y,parent.x+8,parent.y)
    }
    direct = parent.direct
    turn_towards_direction(point_direction(x,y,parent.x+8,parent.y),8)
}
else
    speed = 0

