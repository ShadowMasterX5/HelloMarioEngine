/// @description A sprouting item

//Whether the created item should bounce
bounce = 0

//Do not animate
image_speed = 0

//If there is a solid on top of the block
if position_meeting(x+8,y-8,obj_solid)
{

    //Go down if both sides are blocked
    if position_meeting(x-8,y+8,obj_solid)
    and position_meeting(x+24,y+8,obj_solid)
        vspeed = 0.5

    //Go right if the left side is blocked
    else if position_meeting(x-8,y+8,obj_solid)
        hspeed = 0.5

    //Go left if the right side is blocked
    else if position_meeting(x+24,y+8,obj_solid)
        hspeed = -0.5

    //Otherwise, go towards Mario
    else
    {
        if not instance_exists(obj_mario)
        or x > obj_mario.x
            hspeed = -0.5
        else
            hspeed = 0.5
    }

}

//Otherwise, move up
else
    vspeed = -0.5

//Finish sprouting
alarm[0] = 32

//Item check
alarm[1] = 1

