/// @description Cheep cheep logic

//Inherit usual step event
event_inherited()

//Hop
if gravity = 0
{
    if hopnow > 0
    vspeed = -3
}

//Manage gravity
if hopnow = 0
    gravity = 0
else
    gravity = 0.125

//If the cheep cheep moves down, change hopnow
if hopnow = 1
and vspeed > 0
    hopnow = 2

//If the cheep cheep is in water
if place_meeting(x,y,obj_swim)
{

    //If the cheep cheep is in the swim state
    if hopnow = 0
    {

        //If the cheep cheep is too low, fix its position
        if y > swimspot
            y = swimspot

        //Otherwise, move down
        else if y < swimspot
            vspeed = 1

        //Turn at slopes
        if (hspeed > 0
        and collision_point(bbox_right+hspeed*2,bbox_bottom,obj_slopeparent,1,0))
        or (hspeed < 0
        and collision_point(bbox_left+hspeed*2,bbox_bottom,obj_slopeparent,1,0))
            hspeed = -hspeed

        //If Mario is above, and there is no water or solids above
        if not place_meeting(x,y-40,obj_swim)
        and not place_meeting(x,y-40,obj_solid)
        and instance_exists(obj_mario)
        and obj_mario.x > x-56
        and obj_mario.x < x+56
        and obj_mario.y < y-32
        {

            //Jump out of the water
            vspeed = -5

            //Jump towards Mario
            if obj_mario.x < x
                hspeed = -0.5
            else
                hspeed = 0.5

            //Hop state
            hopnow = 1
        }

    }

    //Remember the water level when re-entering
    else if hopnow = 2
    {
        hopnow = 0
        swimspot = instance_place(x,y,obj_swim).y+16
    }

}

//Otherwise, change hopnow
else
{
    if hopnow = 0
        vspeed = -4
    hopnow = 2
}

