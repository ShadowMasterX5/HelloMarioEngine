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
with instance_create(x,y-48,obj_firebarball)
{
    hspeed = 1.5*other.ready
    ready = other.ready
}
with instance_create(x,y-56,obj_firebarball)
{
    hspeed = 1.75*other.ready
    ready = other.ready
}
with instance_create(x,y-64,obj_firebarball)
{
    hspeed = 2*other.ready
    ready = other.ready
}
with instance_create(x,y-72,obj_firebarball)
{
    hspeed = 2.25*other.ready
    ready = other.ready
}
with instance_create(x,y-80,obj_firebarball)
{
    hspeed = 2.5*other.ready
    ready = other.ready
}

