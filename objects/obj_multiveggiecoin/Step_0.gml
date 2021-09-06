/// @description Stop after landing

//Default event
event_inherited()

//Stop when landing
if gravity = 0
    hspeed = 0

//Less gravity
else
    gravity = 0.125

