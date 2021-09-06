/// @description Reznor's fiery projectiles

//Animate
image_speed = 0.15

//Move
speed = 2

//Select a direction to move in
if instance_exists(obj_mario)
    direction = point_direction(x,y,obj_mario.x,obj_mario.y)
else
    direction = random(360)

//Facing direction
if hspeed > 0
    image_xscale = -1

