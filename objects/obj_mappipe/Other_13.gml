/// @description Enters the level

//Remember which pipe was entered
global.pipetype = pipetype

//Remember that the pipe was entered
ds_map_replace(global.worldmap,string(id),1)

//Do not display Mario Start!
global.mariostart = 1

//Go to the pipe area
room_goto(rm_mappipearea)

