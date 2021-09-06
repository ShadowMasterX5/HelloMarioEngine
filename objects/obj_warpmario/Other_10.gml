/// @description Turn back into Mario

//Create Mario
with instance_create(x,y,obj_mario)
{

    //Retain speed, direction, and holding
    vspeed = other.vspeed
    hspeed = other.hspeed
    direct = other.direct
    holding = other.holding

}

//Destroy
instance_destroy()

