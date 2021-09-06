/// @description Go after Mario

//Go towards Mario
if instance_exists(obj_mario)
    direction = point_direction(x,y,obj_mario.x,obj_mario.y)

//Move
speed = 1

//Stop moving after a bit
alarm[1] = 200

//If the tail is gone, hide face
if mytails = 0
    image_index = 0

