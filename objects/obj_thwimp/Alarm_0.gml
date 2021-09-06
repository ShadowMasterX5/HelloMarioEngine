/// @description Hop

//Move up
vspeed = -7.5

//Boost jump
y--

//Move horizontally
hspeed = 1.425*ready

//Change state
ready = -ready

//Hop again
alarm[0] = 150

