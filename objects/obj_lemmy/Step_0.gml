/// @description Charge at Mario

//Previous hspeed
prevhspeed = hspeed

//Default event
event_inherited()

//If the direction changed, speed up
if hspeed != prevhspeed
    hspeed = sign(hspeed)*1.5

//Change sprite after landng
if gravity = 0
and sprite_index = spr_larry_jump
    sprite_index = spr_larry_shell

//If the boss can charge at Mario
if hardness = 2
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
        hspeed -= 0.05
        direct = -1
    }

    //Cap speed
    if hspeed > 1.5
        hspeed = 1.5
    else if hspeed < -1.5
        hspeed = -1.5

}

//Animate based on speed
if sprite_index = spr_lemmy
and gravity = 0
    image_speed = speed/3

