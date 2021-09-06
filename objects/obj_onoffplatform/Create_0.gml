/// @description On/off platforms

//Animate
image_speed = 0.15

//Be solid if the switch is on
if global.onoffblock = 0
    mysolid = instance_create(x,y,obj_solid)

//Otherwise, be an outline
else
    sprite_index = spr_poutline

