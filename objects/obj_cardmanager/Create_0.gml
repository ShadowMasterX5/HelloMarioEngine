/// @description A game of card matching

//Check if the previous card count exists
if not ds_map_exists(global.cardgame,"COUNT")
    ds_map_add(global.cardgame,"COUNT",0)

//Remember the previous card count
count = ds_map_find_value(global.cardgame,"COUNT")

//The game is waiting for input
ready = 0

//Number of cards flipped in the current pair
cardcount = 0

//Number of wrong matches
wrong = 0

//The image on the last card flipped
oncard = -1

//The id of the last card flipped
lastcard = 0

//Play music
alarm[1] = 2

