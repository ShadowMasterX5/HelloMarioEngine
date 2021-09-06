/// @description Charge at Mario

//Previous hspeed
prevhspeed = hspeed

//Default event
event_inherited()

//If he is sleeping
if chase = 0
{

    //If Mario is in range, give chase
    if collision_rectangle(x-88,y-80,x+88,y+96,obj_mario,0,0)
    {
        chase = 1
        sprite_index = spr_ripvanfish
    }

}

//If he is giving chase
else
{

    //If the direction changed, speed up
    if hspeed != prevhspeed
        hspeed = sign(hspeed)*1.5

    //Bounce off ground
    if gravity = 0
        vspeed = -1
    else
        gravity = 0

    //If Mario exists
    if instance_exists(obj_mario)
    {

        //Charge at Mario
        if obj_mario.x > x
        {
            hspeed += 0.05
            direct = 1
        }
        else
        {
            hspeed += -0.05
            direct = -1
        }
        if obj_mario.y > y
            vspeed += 0.05
        else
            vspeed += -0.05

        //Cap speed
        if hspeed > 1.5
            hspeed = 1.5
        if hspeed < -1.5
            hspeed = -1.5
        if vspeed > 1.5
            vspeed = 1.5
        if vspeed < -1.5
            vspeed = -1.5

    }

    //Animate based on speed
    image_speed = speed/4

    //If Mario is out of range, stop charging
    if not collision_rectangle(x-88,y-80,x+88,y+96,obj_mario,0,0)
    {
        chase = 0
        sprite_index = spr_ripvanfish_sleep
        image_speed = 0.15
        hspeed = 0
        gravity = 0.25
    }

}

