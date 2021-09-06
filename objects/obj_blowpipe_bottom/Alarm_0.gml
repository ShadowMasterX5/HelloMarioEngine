/// @description Bubble generator 1

//Make a downwards moving bubble
with instance_create(x+2+offset,y+16,obj_blownbubble) vspeed = 6

//Change the offset
offset += delta

//Make the offset go up and down
if offset > 10
    delta = -1
else if offset < 0
    delta = 1

//Randomize the next bubble
alarm[0] = irandom(5)+5

