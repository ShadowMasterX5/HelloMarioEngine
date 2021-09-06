/// @description Finish block bump
vspeed = 0
y = ystart

//Use the empty sprite if time is up
if cointime = 2
    sprite_index = spr_qblock_empty

//Otherwise, the block can be hit again
else
    ready = 0

