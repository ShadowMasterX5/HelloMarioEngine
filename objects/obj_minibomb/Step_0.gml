/// @description Mini-bomb logic

//Default event
event_inherited()

//Stop moving on ground
if gravity = 0
    hspeed = 0

//Less gravity
else
    gravity = 0.1

//Destroy outside view
if outside_view()
    instance_destroy()

