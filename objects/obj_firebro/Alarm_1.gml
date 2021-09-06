/// @description Jump

//Jump higher if a block is above
if collision_rectangle(bbox_left,bbox_top-40,bbox_right,bbox_top-40,obj_blockparent,0,0)
{
    vspeed = -7
    alarm[4] = 2
    alarm[5] = 16
}
else
    vspeed = -4

//Boost jump
y--

//Gravity
gravity = 0.25

//If a block is below, jump through it
if collision_rectangle(bbox_left,bbox_bottom+8,bbox_right,bbox_bottom+8,obj_blockparent,0,0)
{
    alarm[4] = 28
    alarm[5] = 45
}

//Jump again
alarm[1] = 150

