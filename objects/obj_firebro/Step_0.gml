/// @description Bro logic

//Floor collisions if he is not jumping through
if throughsolid = 0
    event_user(4)

//Cap fall speed
else if vspeed > 4
    vspeed = 4

//Face Mario
if instance_exists(obj_mario)
{
    if x > obj_mario.x
        direct = -1
    else
        direct = 1
}

