/// @description Blargg logic

//Destroy when outside view or outside lava
if outside_view()
or not place_meeting(x,y+4,obj_lava)
    instance_destroy()

//Cap fall speed
if vspeed > 4
    vspeed = 4

