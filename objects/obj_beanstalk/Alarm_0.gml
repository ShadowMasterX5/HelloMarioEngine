/// @description Make vines

//Snap to the grid
move_snap(1,16)

//Make a vine
instance_create(x,y,obj_vine)

//Make another one 16 pixels up
alarm[0] = 16

