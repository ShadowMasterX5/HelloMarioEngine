/// @description Beats the level

//If the level is not beaten
if beaten = 0
{

    //Beat it!
    beaten = 1

    //Remember it!
    ds_map_replace(global.worldmap,string(id),"W")

    //Show it!
    event_user(1)

}

