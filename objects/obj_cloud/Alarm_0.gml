/// @description Destroy

//Create smoke
instance_create(x,y,obj_smoke)
instance_create(x+16,y,obj_smoke)
instance_create(x+32,y,obj_smoke)

//Destroy first 2 clouds
if num < 3
    instance_destroy()

//Lsst cloud will linger
else
{
    x = -1000
    alarm[3] = 8
}

