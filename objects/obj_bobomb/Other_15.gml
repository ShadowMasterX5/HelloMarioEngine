/// @description Flip into a holdable bomb
with instance_create(x-8,y-2,obj_bobomb_hold)
{
    direct = other.direct
    vspeed = -3
}

//Destroy
instance_destroy()

