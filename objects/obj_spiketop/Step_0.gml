/// @description Spiketop logic

//Turn at enemies
if (hspeed > 0 and collision_rectangle(bbox_right,bbox_top,bbox_right+hspeed*2,bbox_bottom,obj_enemyparent,0,1))
or (hspeed < 0 and collision_rectangle(bbox_left+hspeed*2,bbox_top,bbox_left,bbox_bottom,obj_enemyparent,0,1))
{
    hspeed = -hspeed
    direct = -direct
}
if (vspeed > 0 and collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+vspeed*2,obj_enemyparent,0,1))
or (vspeed < 0 and collision_rectangle(bbox_left,bbox_top+vspeed*2,bbox_right,bbox_top,obj_enemyparent,0,1))
{
    vspeed = -vspeed
    direct = -direct
}

//Turn at walls
if (hspeed > 0 and collision_rectangle(bbox_right+hspeed,bbox_top,bbox_right+hspeed,bbox_bottom,obj_solid,0,0))
or (hspeed < 0 and collision_rectangle(bbox_left+hspeed,bbox_top,bbox_left+hspeed,bbox_bottom,obj_solid,0,0))
{
    hspeed = -hspeed
    direct = -direct
}
if (vspeed > 0 and collision_rectangle(bbox_left,bbox_bottom+vspeed,bbox_right,bbox_bottom+vspeed,obj_solidtop,0,0))
or (vspeed < 0 and collision_rectangle(bbox_left,bbox_top+vspeed,bbox_right,bbox_top+vspeed,obj_solid,0,0))
{
    vspeed = -0.5
    direct = -direct
}

//If the enemy is not turning, and is not on a surface
if ready = 0
and not collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_bottom+1,obj_solidtop,0,0)
and not collision_rectangle(bbox_left-1,bbox_top,bbox_right+1,bbox_bottom,obj_solid,0,0)
{

    //Turn state
    ready = 1

    //Stop moving
    speed = 0

    //Change sprite
    sprite_index = spr_spiketop_turn

    //Change direction later
    alarm[0] = 7

}

