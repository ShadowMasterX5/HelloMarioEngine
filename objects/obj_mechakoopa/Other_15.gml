/// @description Flip into held mechakoopa
with instance_create(x-8,y-2,obj_mechakoopa_hold)
{
    direct = other.direct
    vspeed = -3
}

//Destroy
instance_destroy()

