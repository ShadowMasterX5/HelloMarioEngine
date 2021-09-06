/// @description Blargg jumping out of lava

//How vulnerable is this enemy to various items?
hardness = 2

//How vulnerable is this enemy to Mario?
stomp = 2

//Facing direction
if not instance_exists(obj_mario)
or obj_mario.x < x
    direct = -1
else
    direct = 1

//Animate
image_speed = 0.15

//Jump out of lava
vspeed = -3.2

//Jump towards Mario
hspeed = direct*1.5

//Gravity
gravity = 0.15

