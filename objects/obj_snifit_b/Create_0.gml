/// @description Spits projectiles while paying attention to his surroundings

//How vulnerable is this enemy to various items?
hardness = 0

//How vulnerable is this enemy to Mario?
stomp = 4

//Is this enemy heavy?
isheavy = 0

//Facing direction
direct = -1

//Start walking towards Mario
alarm[10] = 2

//Animate
image_speed = 0.15

//A collision object for Mario to ride
mytop = instance_create(x-8,y,obj_solidtop)
mytop.image_yscale = 0.5

//Prepare to shoot
alarm[1] = 150

