/// @description When the coin falls back down, get points, sparkles, and destroy
if y > ystart-16 and vspeed > 0
{
    with instance_create(x,ystart-16,obj_score) event_user(0)
    instance_create(x+8,ystart-24,obj_sparkletrail)
    instance_destroy()
}

