/// @description Mario as he runs on walls and ceilings

//Destroy the spinner if it exists
with obj_spinner instance_destroy()

//Make Mario invisible, and disable his controls
with obj_mario
{
    visible = 0
    disablecontrols = 1
}

//Animate
image_speed = 0.3

//Go up
direction = 90

//Go fast
speed = 3

//Rotational direction (Concave wall triangle corners)
//1: Counterclockwise, -1: Clockwise
direct = 1

