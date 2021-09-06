/// @description Flip into held galoomba
with instance_create(x-8,y-2,obj_galoomba_hold)
{
    direct = other.direct
    vspeed = -3
}

//Destroy
instance_destroy()

