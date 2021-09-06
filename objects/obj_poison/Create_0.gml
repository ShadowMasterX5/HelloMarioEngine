/// @description Death for Mario

//Go towards Mario
if not instance_exists(obj_mario)
or obj_mario.x < x+8
    hspeed = -1
else
    hspeed = 1

