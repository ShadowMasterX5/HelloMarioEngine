/// @description Friction
if hspeed < 0.000015625
and hspeed > -0.000015625
    hspeed = 0
else if hspeed > 0
    hspeed-=0.003125
else if hspeed < 0
    hspeed+=0.003125

//Destroy outside view
if outside_view()
    instance_destroy()

