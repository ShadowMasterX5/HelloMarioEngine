/// @description Become a regular mole

//Default event
event_inherited()

//Land on the ground as a regular monty mole
if gravity = 0
{
    if vspeed >= 0
    {
        instance_create(x+8,y,obj_monty)
        instance_destroy()
    }
}

//Use less gravity
else
    gravity = 0.125

