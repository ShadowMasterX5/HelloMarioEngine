/// @description Finish turning

//Move to the back of the net
if depth = 0
{
    depth = 10
    sprite_index = spr_netkoopa2
    hardness = 100
    stomp = -1
}

//Move to the front of the net
else
{
    depth = 0
    sprite_index = spr_netkoopa
    hardness = 0
    stomp = 0
}

//Animate
image_speed = 0.15

//Choose new direction
if ready = 2
{
    ready = 0
    vspeed = 0.75
}
else if ready = 3
{
    ready = 1
    hspeed = 0.75
}
else if ready = 0
{
    ready = 2
    vspeed = -0.75
}
else if ready = 1
{
    ready = 3
    hspeed = -0.75
}

//Can turn again
alarm[1] = 10

