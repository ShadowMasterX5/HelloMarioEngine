/// @description Get smashed by Bowser
var bowser = collision_point(x+8,y-1,obj_bowser,0,0)

//Check collision, and shatter
if bowser
and bowser.ready = 3
{
    with instance_create(x+8,y,obj_shard) direction = 45
    with instance_create(x+8,y,obj_shard) direction = 60
    with instance_create(x,y,obj_shard) direction = 120
    with instance_create(x,y,obj_shard) direction = 135
    instance_destroy()
}

