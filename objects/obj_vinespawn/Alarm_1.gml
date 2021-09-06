/// @description Replace self with a real Mario

//Make a climbing Mario
with instance_create(x,y,obj_mario)
{
    gravity = 0
    state = 3
}

//Destroy
instance_destroy()

