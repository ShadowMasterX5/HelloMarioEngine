/// @description Bowser's fiery breath

//Face Mario
if not instance_exists(obj_mario)
or x > obj_mario.x
    direct = -1
else
    direct = 1

//Move towards Mario
hspeed = direct

//Move down
vspeed = 1

//Animate
image_speed = 0.15

