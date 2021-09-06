/// @description Red switch palace

//No animation
image_speed = 0

//If the switch was pressed before, press it
if ds_map_exists(global.worldmap,string(id))
    image_index = 1

//Name to display
levelname = "red switch palace"

//Can be entered if not pressed
ready = image_index

