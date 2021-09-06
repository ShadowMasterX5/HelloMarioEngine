/// @description Finish turning

//Move to the back of the net
if depth = 0
{
    depth = 10
    hardness = 100
    stomp = -1
}

//Move to the front of the net
else
{
    depth = 0
    hardness = 1
    stomp = 1
}

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

