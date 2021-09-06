/// @description Finish block bump
vspeed = 0
y = ystart

//If the time is up, use the empty sprite and sprout a mushroom
if cointime = 3
{
    sprite_index = spr_qblock_empty
    with instance_create(x,y,obj_powerupsprout) sprite_index = spr_mushroom
}

//Otherwise, the block can be hit again
else
    ready = 0

