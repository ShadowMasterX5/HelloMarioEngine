/// @description Change animation for special sliding

//Change to inshell sprite if shell sliding
if type = 1
    sprite_index = spr_inshell

//Stop animation if penguin sliding
else
{
    image_speed = 0
    image_index = 2
}

