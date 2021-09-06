/// @description Charge at Mario

//Previous hspeed
prevhspeed = hspeed

//Default event
event_inherited()

//If the direction changed, speed up
if hspeed != prevhspeed
    hspeed = sign(hspeed)*1.5

//Bounce off ground
if gravity = 0
    vspeed = -1
else
    gravity = 0

//If the koopa can charge at Mario
if chargenow = 1
and instance_exists(obj_mario)
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

