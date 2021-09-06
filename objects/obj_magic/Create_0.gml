/// @description Magical projectiles

//Animate
image_speed = 0.3

//Shoot at Mario
if instance_exists(obj_mario)
    move_towards_point(obj_mario.x,obj_mario.y,1)
else
    instance_destroy()

