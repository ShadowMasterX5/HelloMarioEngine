/// @description A frozen enemy

//How vulnerable is this enemy to various items?
hardness = 2

//How vulnerable is this enemy to Mario?
stomp = -1

//Is this enemy heavy?
isheavy = 0

//A collision object for Mario to ride
mytop = instance_create(x,y,obj_slippery)

//Alpha blink before shattering
alarm[0] = 400

//Shatter and destroy after a while
alarm[2] = 500

