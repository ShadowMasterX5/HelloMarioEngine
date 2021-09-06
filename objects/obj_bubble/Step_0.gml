/// @description Destroy when outside water, or when hitting a solid
if not place_meeting(x,y,obj_swim)
or place_meeting(x,y,obj_solid)
    instance_destroy()

