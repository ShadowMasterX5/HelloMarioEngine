/// @description Chuck logic

//If not hurting and is walking
if ready = 0
and sprite_index = spr_chargingchuck
{

    //Jump when a wall is reached
    if (hspeed > 0 and collision_rectangle(bbox_right+hspeed*2,bbox_top,bbox_right+hspeed*2,bbox_bottom-4,obj_solid,0,0))
    or (hspeed < 0 and collision_rectangle(bbox_left+hspeed*2,bbox_top,bbox_left+hspeed*2,bbox_bottom-4,obj_solid,0,0))
    {
        sprite_index = spr_chargingchuck_jump
        vspeed = -5
        y--
    }

}

//Move away from walls
if hspeed > 0
and collision_rectangle(bbox_right+hspeed,bbox_top,bbox_right+hspeed,bbox_bottom-4,obj_solid,0,0)
    x--
if hspeed < 0
and collision_rectangle(bbox_left+hspeed,bbox_top,bbox_left+hspeed,bbox_bottom-4,obj_solid,0,0)
    x++

//Default floor collisions
event_user(4)

//Change sprite when landing from a jump
if gravity = 0
and sprite_index = spr_chargingchuck_jump
    sprite_index = spr_chargingchuck

