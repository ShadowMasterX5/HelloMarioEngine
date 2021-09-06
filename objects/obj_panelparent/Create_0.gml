/// @description Panels with checkpoints that need to be beaten to pass

//Initialise its open list
if not ds_map_exists(global.worldmap,string(id))
    ds_map_replace(global.worldmap,string(id),"0000")

//Load the open list
var value = ds_map_find_value(global.worldmap,string(id))

//If the level should be beaten
if value = "W"
{

    //Mark as beaten
    beaten = 1

    //Prepare the open list
    open[0] = 1
    open[1] = 1
    open[2] = 1
    open[3] = 1

    //Beat the level
    event_user(0)

}

//If the level is unbeaten
else
{

    //Mark as unbeaten
    beaten = 0

    //Prepare the open list
    open[0] = real(string_char_at(value,1))
    open[1] = real(string_char_at(value,2))
    open[2] = real(string_char_at(value,3))
    open[3] = real(string_char_at(value,4))

}

//Able to enter
ready = 0

//No checkpoints yet
cpoint = noone

//Mark checkpoints
alarm[0] = 1

