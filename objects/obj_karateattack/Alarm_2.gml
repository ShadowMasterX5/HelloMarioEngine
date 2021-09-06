/// @description Select attack
if combo = 0
{
    combo = 1
    image_index = 1
    alarm[0] = 4
}
else
{
    combo = 0
    image_index = 3
    alarm[0] = 4
}

//Attacking
attack = 2

//Thrust Mario forwards
with obj_mario
{
    if (direct = 1 and keyboard_check(vk_right))
    or (direct = -1 and keyboard_check(vk_left))
        hspeed = 3*direct
    else
        hspeed = 2*direct
}

