/// @description Extra large ammunition

//How vulnerable is this enemy to various items?
hardness = 1

//How vulnerable is this enemy to Mario?
stomp = 0

//Facing direction
direct = 1

//Go after Mario, and make smoke
if not instance_exists(obj_mario)
or obj_mario.x < x
{
    hspeed = -1.5
    instance_create(x-8,y,obj_smoke)
    instance_create(x-8,y+16,obj_smoke)
}
else
{
    hspeed = 1.5
    instance_create(x+24,y,obj_smoke)
    instance_create(x+24,y+16,obj_smoke)
}

//Change depth after exiting cannon
alarm[0] = 24

