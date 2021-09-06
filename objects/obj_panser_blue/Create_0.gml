/// @description Walks and shoots fire at Mario

//How vulnerable is this enemy to various items?
hardness = 0

//How vulnerable is this enemy to Mario?
stomp = 1

//Start walking towards Mario
alarm[10] = 2

//Do not animate
image_speed = 0

//Animate
alarm[0] = 7

//Fire sequence
fire = 0

//Spit fire
alarm[1] = 32+random(64)

//Follow Mario
alarm[2] = 50

