/// @description Blow up
if held = 1
and other.hardness < 99
{
    instance_create(x,y,obj_explosion)
    instance_destroy()
}

