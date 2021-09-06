/// @description Charge at Mario

//Previous hspeed
prevhspeed = hspeed

//Previous gravity
prevgravity = gravity

//Default event
event_inherited()

//If the direction changed, speed up
if hspeed != prevhspeed
    hspeed = sign(hspeed)*1.5

//Hop after landng
if gravity = 0
and sprite_index = spr_roy_jump
{

    //Move up
    vspeed = -3

    //Boost jump
    y--

}

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

//When on ground
if gravity = 0
{

    //Animate based on speed
    if sprite_index = spr_roy
        image_speed = speed/3

    //Play stomp sound when landing
    if prevgravity != 0
        audio_play_sound(snd_thwomp,0,0)

}

