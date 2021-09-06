/// @description Hurl bricks at Mario

//If a brick is in the way
if (hspeed > 0 and collision_rectangle(bbox_right+hspeed*2,bbox_top,bbox_right+hspeed*2,bbox_bottom-1,obj_bluebrick,0,0))
or (hspeed < 0 and collision_rectangle(bbox_left+hspeed*2,bbox_top,bbox_left+hspeed*2,bbox_bottom-1,obj_bluebrick,0,0))
{

    //Stop walking
    hspeed = 0

    //Lift brick
    with instance_create(x+16*direct-8,y,obj_busterpickup)
    {
        hspeed = -other.direct
        parent = other.id
    }

    //Throw sprite
    sprite_index = spr_busterbeetle_throw

}

//Default event
event_inherited()

