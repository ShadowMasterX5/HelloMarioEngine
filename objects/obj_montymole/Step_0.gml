/// @description Get ready to break out if Mario is nearby
if visible = 0
and instance_exists(obj_mario)
and obj_mario.x > x-80
and obj_mario.x < x+80
{
    visible = 1
    alarm[0] = 80
}

