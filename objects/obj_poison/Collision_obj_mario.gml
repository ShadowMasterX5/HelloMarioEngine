/// @description Poison Mario

//Destroy if Mario spins at it
if instance_exists(obj_spinner)
{
    instance_create(x,y,obj_smoke)
    instance_destroy()
}

//Otherwise, hurt Mario
else
    with other event_user(0)

//Destroy if Mario is not a statue
if not instance_exists(obj_statue)
    instance_destroy()

