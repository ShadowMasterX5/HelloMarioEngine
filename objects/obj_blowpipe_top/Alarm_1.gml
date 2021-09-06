/// @description Bubble generator 2

//Make an upwards moving bubble
with instance_create(x+28-offset2,y,obj_blownbubble) vspeed = -6

//Change the offset
offset2 += delta2

//Make the offset go up and down
if offset2 > 10
    delta2 = -1
else if offset2 < 0
    delta2 = 1

//Randomize the next bubble
alarm[1] = irandom(5)+5

