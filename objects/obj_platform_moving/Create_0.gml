/// @description Standard issue moving platforms

//No rotations
type = 0

//Start rotations
if place_meeting(x,y,obj_clockwise)
{
    speed = 1
    direction = 0
    type = 1
}
else if place_meeting(x,y,obj_cclockwise)
{
    speed = 1
    direction = 180
    type = 2
}
else if place_meeting(x,y,obj_clockwiseb)
{
    speed = 1
    direction = 180
    type = 1
}
else if place_meeting(x,y,obj_cclockwiseb)
{
    speed = 1
    direction = 0
    type = 2
}

