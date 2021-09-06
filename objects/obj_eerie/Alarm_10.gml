/// @description Detect Mario, and move towards him
event_inherited()

//Face Mario
if obj_mario.x < x
    direct = -1
else
    direct = 1

