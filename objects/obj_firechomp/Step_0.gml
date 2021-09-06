/// @description Fire chomp logic

//If Mario exists
if instance_exists(obj_mario)
{

    //Turn towards Mario
    turn_towards_direction(point_direction(x,y,obj_mario.x,obj_mario.y),8)

    //Face Mario
    if x+8 > obj_mario.x
        direct = -1
    if x+8 < obj_mario.x
        direct = 1

}

