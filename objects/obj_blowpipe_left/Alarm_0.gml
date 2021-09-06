/// @description Bubble generator 1

//Make a leftwards moving bubble
with instance_create(x,y+2+offset,obj_blownbubble) hspeed = -6

//Change the offset
offset += delta

//Make the offset go up and down
if offset > 10
    delta = -1
else if offset < 0
    delta = 1

//Randomize the next bubble
alarm[0] = irandom(5)+5

