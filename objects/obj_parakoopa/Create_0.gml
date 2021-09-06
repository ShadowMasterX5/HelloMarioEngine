/// @description This koopa can fly based on markers

//How vulnerable is this enemy to various items?
hardness = 0

//How vulnerable is this enemy to Mario?
stomp = 0

//Facing direction
direct = -1

//Check if this is a circle moving parakoopa
if collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_clockwise,0,0)
{
    speed = 1
    direction = 0
    type = 1
}
else if collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_cclockwise,0,0)
{
    speed = 1
    direction = 180
    type = 2
}
else if collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_clockwiseb,0,0)
{
    speed = 1
    direction = 180
    type = 1
}
else if collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_cclockwiseb,0,0)
{
    speed = 1
    direction = 0
    type = 2
}
else
    type = 0

