/// @description Shuriken logic

//Rotation animation
if hspeed > 0
    image_angle -= 60
else
    image_angle += 60

//Destroy when hitting solids
if place_meeting(x,y,obj_solid)
    event_user(0)

//Destroy outside view
if outside_view()
    instance_destroy()

