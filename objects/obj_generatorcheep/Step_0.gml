/// @description Cap fall speed
if vspeed > 4
    vspeed = 4

//Destroy outside room
if y > room_height
    instance_destroy()

