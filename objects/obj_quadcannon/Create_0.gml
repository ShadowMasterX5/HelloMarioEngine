/// @description Shoots in four different directions at once

//Do not animate
image_speed = 0

//Launch
alarm[0] = 100

//Make solid
with instance_create(x,y,obj_solid)
{
    image_xscale = 2
    image_yscale = 2
}

