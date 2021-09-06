/// @description Thrown brick logic
if held = 0
{

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

        //Bump blocks
        instance_create(x+prevhspeed,y,obj_blockbumper)

        //Shell bounce effects
        with instance_create(x+prevhspeed+8+8*sign(prevhspeed),y+8,obj_smoke) sprite_index = spr_shellbump

        //Shatter if this is not a green brick
        if sprite_index != spr_greenbrick_th
            event_user(0)

    }

    //Harm Mario after being released
    if harmmario = 0
    and not place_meeting(x,y,obj_mario)
        harmmario = 1

}

