/// @description Destroy Yoshi

//Not on Yoshi
global.yoshi = 0

//Reset Mario's holding variable
with obj_mario holding = 0

//Destroy tongue
with obj_tongue instance_destroy()

//If something is in its mouth, spit it out
if instance_exists(obj_mario)
and inmouth != noone
    event_user(0)

