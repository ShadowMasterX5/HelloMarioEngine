/// @description Destroy after falling below its original y value
if y > ystart
{
    with instance_create(x,ystart,obj_score) event_user(0)
    instance_create(x+8,ystart-8,obj_sparkletrail)
    instance_destroy()
}

