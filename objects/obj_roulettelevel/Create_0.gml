/// @description To play a game of roulette

//Animate!
image_speed = 0.15

//Figure out if this panel has already been used
if ds_map_exists(global.worldmap,string(id))
    instance_destroy()

//Name to display
levelname = "roulette minigame"

//Able to enter
ready = 0

