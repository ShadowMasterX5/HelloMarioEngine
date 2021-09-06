/// @description Shell logic

//Previous hspeed
prevhspeed = hspeed

//Wall collisions
event_user(3)

//Floor collisions
event_user(4)

//If the direction changed
if hspeed != prevhspeed
{

    //Play bump sound when inside view
    if not outside_view()
        audio_play_sound(snd_bump,0,0)

    //Become invulnerable
    hardness = 100

    //Become vulnerable after bumping
    alarm[0] = 2

    //Bump blocks
    instance_create(x+prevhspeed,y,obj_blockbumper)

    //Shell bounce effects
    with instance_create(x+prevhspeed+8+8*sign(prevhspeed),y+8,obj_smoke) sprite_index = spr_shellbump

}

