/// @description Get off the shoe
with instance_create(x-8,y,obj_getshoe)
{

    //Use the appropriate sprite
    if global.ycolor = 1
        sprite_index = spr_baburushoe
    else if global.ycolor = 2
        sprite_index = spr_dossunshoe
    else if global.ycolor = 3
        sprite_index = spr_jugemushoe

    //Face the same direction
    if instance_exists(obj_mario)
        direct = obj_mario.direct

    //Prevent the shoe from getting embed into a wall
    while collision_rectangle(bbox_right,bbox_top+4,bbox_right,bbox_bottom-4,obj_solid,1,0)
        x--
    while collision_rectangle(bbox_left,bbox_top+4,bbox_left,bbox_bottom-4,obj_solid,1,0)
        x++

}

//Make Mario visible and spin jumping
with obj_mario
{
    visible = 1
    stompstyle = 1
}

//Destroy
instance_destroy()

