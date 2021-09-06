/// @description Porcu puffer chasing

//Previous hspeed
prevhspeed = hspeed

//Inherit usual step event
event_inherited()

//If the direction changed, speed up
if hspeed != prevhspeed
    hspeed = sign(hspeed)*1.5

//Chase Mario
if instance_exists(obj_mario)
{
    if obj_mario.x > x
    {
        hspeed += 0.05
        direct = 1
    }
    if obj_mario.x < x
    {
        hspeed += -0.05
        direct = -1
    }
}
else if hspeed != 0
    direct = sign(hspeed)

//Cap horizontal speed
if hspeed > 1.5
    hspeed = 1.5
if hspeed < -1.5
    hspeed = -1.5

