/// @description Jump at Mario

//Use appropriate image index
image_speed = 0
image_index = 2

//Reset state
alarm[10] = 20

//Move up
vspeed = -3

//Boost jump
y--

//Jump towards Mario
if not instance_exists(obj_mario)
or obj_mario.x < x
    hspeed = -1
else
    hspeed = 1

