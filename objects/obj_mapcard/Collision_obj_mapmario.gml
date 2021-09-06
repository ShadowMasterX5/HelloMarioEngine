/// @description Force Mario into this game
if ready = 1
and other.ready = 0
and other.speed = 0
{

    //Remember that this game is entered
    ds_map_replace(global.worldmap,"cardgame",2)

    //End the world map properly
    with other event_user(0)

    //Go to the game
    room_goto(rm_cardgame)

}

