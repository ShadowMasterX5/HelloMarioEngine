/// @description Enters the level

//If no checkpoint was gotten, just enter normally
if cpoint = noone
    room_goto(myroom)

//If a checkpoint was reached
else
{

    //Remember it globally
    global.checkpoint = cpoint

    //Go to the checkpoint room
    room_goto(global.checkpointroom)

}

