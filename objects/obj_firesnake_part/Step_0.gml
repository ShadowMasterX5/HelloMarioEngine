/// @description Fire snake logic

//Wall collisions
event_user(3)

//Floor collisions
event_user(4)

//If on the ground, land if it is still moving
if gravity = 0
    hspeed = 0

//Use less gravity
else
    gravity = 0.15

