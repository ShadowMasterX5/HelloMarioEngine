/// @description The title screen

//The selected menu item
menu_choice = 0

//The transparency for the powered by text
fade = 1

//Start fading out the powered by text after 2 seconds
alarm[0] = 120

//Play music
alarm[1] = 2

//Clear all data structures
ds_map_clear(global.worldmap)
ds_map_clear(global.cardgame)

//Menu text
menu[0] = "File A"
menu[1] = "File B"
menu[2] = "File C"

