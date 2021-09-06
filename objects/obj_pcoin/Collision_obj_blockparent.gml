/// @description Get collected by a block bump when visible
if visible = 1
and other.vspeed < 0
{
    with instance_create(x,y,obj_veggiecoin) sprite_index = spr_pcoin
    instance_destroy()
}

