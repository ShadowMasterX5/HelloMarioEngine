/// @description Alpha blink

//If it blinked enough times, destroy
if count = 0
{
    instance_create(x,y,obj_smoke)
    instance_destroy()
}

//Otherwise, decrement count and blink
else
{
    count--
    image_alpha = 0.6
    alarm[1] = 4
}

