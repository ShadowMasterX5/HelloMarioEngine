/// @description Default step script

//Turn at enemies
event_user(2)

//Wall collisions
event_user(3)

//Floor collisions
event_user(4)

//Update facing direction
if hspeed != 0
    direct = sign(hspeed)

