/// @description Build firebar
with instance_create(x,y-8,obj_firebarball)
{
    hspeed = 0.25*other.ready
    ready = other.ready
}
with instance_create(x,y-16,obj_firebarball)
{
    hspeed = 0.5*other.ready
    ready = other.ready
}
with instance_create(x,y-24,obj_firebarball)
{
    hspeed = 0.75*other.ready
    ready = other.ready
}
with instance_create(x,y-32,obj_firebarball)
{
    hspeed = other.ready
    ready = other.ready
}
with instance_create(x,y-40,obj_firebarball)
{
    hspeed = 1.25*other.ready
    ready = other.ready
}

