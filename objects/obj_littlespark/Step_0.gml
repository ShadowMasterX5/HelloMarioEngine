/// @description Spark logic

//If the spark can turn
if ready = 0
{

    //Remember previous direction
    prevdir = direction

    //If it runs into a wall, turn
    if direction = 90
    and place_meeting(x-3,y-1,obj_solid)
        direction = 180
    else if direction = 0
    and place_meeting(x+1,y-3,obj_solid)
        direction = 90
    else if direction = 270
    and place_meeting(x+3,y+1,obj_solid)
        direction = 0
    else if direction = 180
    and place_meeting(x-1,y+3,obj_solid)
        direction = 270

    //If it runs off a wall, turn
    else if not collision_rectangle(bbox_left+3,bbox_top-1,bbox_right-3,bbox_bottom+1,obj_solidtop,0,0)
    and not collision_rectangle(bbox_left-1,bbox_top+3,bbox_right+1,bbox_bottom-3,obj_solid,0,0)
    {
        if direction = 90
            direction = 0
        else if direction = 0
            direction = 270
        else if direction = 270
            direction = 180
        else if direction = 180
            direction = 90
    }

    //If the direction changed, don't allow direction changes for a bit
    if prevdir != direction
    {
        ready = 1
        alarm[0] = 4
    }

}

