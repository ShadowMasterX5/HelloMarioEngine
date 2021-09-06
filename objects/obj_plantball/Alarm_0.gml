/// @description Reverse direction
vspeed = -vspeed

//Activate parent
instance_activate_object(parent)

//Animate parent
with parent event_user(15)

//Reverse direction again later
alarm[0] = 100

