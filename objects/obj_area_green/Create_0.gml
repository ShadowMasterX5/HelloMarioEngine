/// @description Green switch palace areas

//Do not animate
image_speed = 0

//Don't be solid if the palace switch has not been pressed
if global.palacegreen = 0
    image_index = 1

//Otherwise, be solid
else
    instance_create(x,y,obj_solid)

