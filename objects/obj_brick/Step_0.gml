/// @description Check for Mario bonking his head on this block
event_inherited()

//Smash the block if Mario spin jumps on it
if global.powerup != cs_small
and global.yoshi = 0
and instance_exists(obj_mario)
and obj_mario.stompstyle = 1
and obj_mario.vspeed > 0
and place_meeting(x,y-obj_mario.vspeed*2.5,obj_mario)
{
    with obj_mario event_user(1)
    alarm[0] = 1
}

