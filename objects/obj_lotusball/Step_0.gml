/// @description Friction
if hspeed < 0.00025
and hspeed > -0.00025
    hspeed = 0
else if hspeed > 0
    hspeed-=0.05
else if hspeed < 0
    hspeed+=0.05

//Destroy outside view
if outside_view()
    instance_destroy()

