/// @description Become a non-block
image_index = 2

//Destroy solid
with mysolid instance_destroy()

//Move towards Mario
speed = 1
if instance_exists(obj_mario)
    direction = point_direction(x,y,obj_mario.x,obj_mario.y)

