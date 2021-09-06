/// @description Special floor/ceiling collisions

//If this enemy is falling
if ready = 1
{

    //If the enemy falls ontp a surface, make a shell
    if collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_solidtop,0,0)
    or collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_slopeparent,0,0)
    {
        with instance_create(x-8,y,obj_shell)
        {
            sprite_index = spr_spiny_dead
            hspeed = 3*other.direct
            event_user(15)
        }
        instance_destroy()
    }

    //Cap fall speed
    if vspeed > 4
        vspeed = 4

}

//Otherwise, fall if it walks off the ceiling, or if Mario is below
else if (hspeed > 0 and not position_meeting(x+2,y-4,obj_solid))
or (hspeed < 0 and not position_meeting(x-3,y-4,obj_solid))
or (instance_exists(obj_mario) and obj_mario.x > x-48 and obj_mario.x < x+48 and obj_mario.y > y)
{
    gravity = 0.25
    hspeed = 0
    sprite_index = spr_spiny_dead
    ready = 1
}

