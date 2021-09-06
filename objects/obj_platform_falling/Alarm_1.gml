/// @description Reappear at the starting location when outside view
y = ystart
if outside_view()
{
    ready = 0
    vspeed = 0
    y = ystart
}
else
{
    y = room_height+64
    alarm[1] = 1
}

