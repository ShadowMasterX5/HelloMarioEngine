/// @description Create abandoned Yoshi
with instance_create(x,y,obj_yoshi_abandon)
{
    if other.sprite_index = spr_yoshi_lick
        sprite_index = spr_yoshi_walk
    else if other.sprite_index = spr_yoshi_lick_r
        sprite_index = spr_yoshi_walk_r
    else if other.sprite_index = spr_yoshi_lick_y
        sprite_index = spr_yoshi_walk_y
    else if other.sprite_index = spr_yoshi_lick_b
        sprite_index = spr_yoshi_walk_b
}

//Destroy
instance_destroy()

