/// @description World Map Warp Pipes

/*
**  This item uses creation code!
**
**  pipetype = 0 or 1 (Destination pipe must be different from current pipe)
**  destx = X position of new pipe
**  desty = Y position of new pipe
**
*/

//Default Values:
pipetype = 0
destx = 0
desty = 0

//Was this pipe just entered
if ds_map_exists(global.worldmap,string(id))
{

    //Forget that it was entered
    ds_map_delete(global.worldmap,string(id))

    //Deal with that fact
    alarm[0] = 1

}

//Name to display
levelname = "warp pipe"

//Able to enter
ready = 0

/* */
/*  */
