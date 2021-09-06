/// @description Turn around
direct = nextdirect
if ready = 0
    hspeed = 0.5*direct
else
    hspeed = direct
x = parent.x-offset*direct

