/// @description Pull something subcon style!

//Destroy the spinner if it exists
with obj_spinner instance_destroy()

//Stop Mario's horizontal movement, make him invisible, and disable his controls
with obj_mario
{
    hspeed = 0
    visible = 0
    disablecontrols = 1
}

