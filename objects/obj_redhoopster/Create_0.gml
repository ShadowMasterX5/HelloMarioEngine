/// @description Can function as an elevator for Mario

//How vulnerable is this enemy to various items?
hardness = 0

//How vulnerable is this enemy to Mario?
stomp = 4

//Is this enemy heavy?
isheavy = 0

//Facing direction
direct = 1

//Animate
image_speed = 0.15

//A collision object for Mario to ride
mytop = instance_create(x-8,y,obj_solidtop)
mytop.image_yscale = 0.5

//Move up
vspeed = -0.75

