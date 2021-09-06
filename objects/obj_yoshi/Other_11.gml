/// @description Abandon Yoshi
with instance_create(x,y,obj_yoshi_abandon)
{
    if global.ycolor = 1
        sprite_index = spr_yoshi_walk_r
    else if global.ycolor = 2
        sprite_index = spr_yoshi_walk_y
    else if global.ycolor = 3
        sprite_index = spr_yoshi_walk_b
    if instance_exists(obj_mario)
        direct = obj_mario.direct
}

//Make Mario visible and spin jumping
with obj_mario
{
    visible = 1
    stompstyle = 1
}

//Destroy
instance_destroy()

