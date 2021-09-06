/// @description Change direction

//Change sprite back to normal
sprite_index = spr_spiketop

//Figure out the appropriate direction to walk in
if direction = 90
{
    hspeed = 0.5*direct
    dir = 0
}
else if direction = 0
{
    vspeed = 0.5*direct
    dir = 3
}
else if direction = 270
{
    hspeed = -0.5*direct
    dir = 2
}
else if direction = 180
{
    vspeed = -0.5*direct
    dir = 1
}

//Reset state
alarm[1] = 7

