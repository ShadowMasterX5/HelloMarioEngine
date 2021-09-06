/// @description Go down

//If not in cannon mode
if cannon = 0
{

    //Move down
    direction = 270

    //Snap to grid
    move_snap(8,8)

}

//If warp Mario is launched upwards, change into Mario
else if cannon = 1
    event_user(0)

