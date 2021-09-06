/// @description Prepare to move

//Make chains
with instance_create(x,y-16,obj_chains)
{
    ready = other.ready
    hspeed = 0.5*other.ready
}
with instance_create(x,y-32,obj_chains)
{
    ready = other.ready
    hspeed = other.ready
}

//Start moving
hspeed = 1.75*ready

//Move to position
y-=56

