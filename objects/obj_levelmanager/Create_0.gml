/// @description Manages the level, and required for all levels

/*
**  This item uses creation code!
**
**  leveltime = The time limit in seconds (Optional)
**  levelmusic = The level music (Any sound resource you load in)
**
*/

//Default Values:
leveltime = 0
levelmusic = 0

//Begin playing the music if you did not carry over a star/switch effect from a previous room
if global.pswitch = 0
and global.star = 0
    alarm[0] = 2

//Make the view follow along
__view_set( e__VW.Object, 0, obj_levelmanager )

//Music not disabled
musicdisabled = 0

//Animation variable
anim = 0

//Increment animation variable
alarm[5] = 7

//Barrier not enforced
barrier = 1

//Enforce barrier
alarm[6] = 3

//P-Switch is off
switchon = 0

//P-Meter state
pmeter = 0

//P-Meter slowdown
slowdown = 0

//Enable P-Meter
alarm[7] = 15

/* */
/*  */
