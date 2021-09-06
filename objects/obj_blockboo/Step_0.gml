/// @description Block boo logic

//If Mario exists, the boo is in the room, and the boo can move
if instance_exists(obj_mario)
and not outside_view()
and ready = 1
{

    //Don't move if Mario is too close
    if image_index = 0
    and collision_rectangle(bbox_left-16,bbox_top-16,bbox_right+16,bbox_bottom,obj_mario,1,1)
        exit

    //Remember last image index
    movenowprev = movenow

    //If Mario is looking away, give chase
    if (obj_mario.x > x+8 and obj_mario.direct = 1)
    or (obj_mario.x < x+8 and obj_mario.direct = -1)
        movenow = 1

    //Otherwise, hide
    else
        movenow = 0

    //If the boo started going after Mario, become a non-block
    if movenowprev = 0
    and movenow = 1
    {
        ready = 0
        alarm[0] = 8
        alarm[1] = 4
        image_index = 1
    }

    //If the boo just stopped moving, become a block
    else if movenowprev = 1
    and movenow = 0
    {
        ready = 0
        alarm[0] = 8
        alarm[2] = 4
        image_index = 1
        speed = 0
    }

    //If the boo is giving chase
    if movenow = 1
    {

        //Turn towards Mario
        turn_towards_direction(point_direction(x,y,obj_mario.x,obj_mario.y),8)

        //Look at Mario
        if obj_mario.x > x+8
            direct = 1
        else
            direct = -1

    }

}

//Otherwise, stop
else if image_index = 2
and ready = 1
{
    ready = 0
    alarm[0] = 8
    alarm[2] = 4
    image_index = 1
    speed = 0
}

