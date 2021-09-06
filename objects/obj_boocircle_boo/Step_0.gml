/// @description Circle trigonometry

//Trigonometry
trig += 0.02*ready
x = xstart+cos(trig)*72
y = ystart+sin(trig)*72

//Face Mario
if instance_exists(obj_mario)
{
    if obj_mario.x > x+8
        direct = 1
    else
        direct = -1
}

