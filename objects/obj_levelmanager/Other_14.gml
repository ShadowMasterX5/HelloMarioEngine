/// @description Drop the reserve item

//If a reserve item exists
if global.reserveitem > cs_small
{

    //Create the reserve item
    with instance_create(__view_get( e__VW.XView, 0 )+184,__view_get( e__VW.YView, 0 )+8,obj_reserveitem) sprite_index = scr_constant_get_sprite(global.reserveitem)

    //Remove the reserve item
    global.reserveitem = cs_small

}

