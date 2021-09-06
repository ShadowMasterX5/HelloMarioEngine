/// @description Land in the lava
if ready = 0
{
    ready = 1
    alarm[0] = 10
    with instance_create(x,y+4,obj_smoke) sprite_index = spr_lavasplash
}

