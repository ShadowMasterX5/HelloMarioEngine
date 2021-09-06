/// @description Bigger social problems and bigger brain too

//How vulnerable is this enemy to various items?
hardness = 0

//How vulnerable is this enemy to Mario?
stomp = 4

//Is this enemy heavy?
isheavy = 1

//Facing direction
direct = -1

//Start walking towards Mario
alarm[10] = 2

//Animate
image_speed = 0.15

//A collision object for Mario to ride
mytop = instance_create(x-16,y,obj_solidtop)
mytop.image_xscale = 2

