/// @description Throw hammers

//If inside view
if not outside_view()
{

    //Play hammer sound
    audio_play_sound(snd_hammer,0,0)

    //Make hammer
    with instance_create(x,y,obj_brohammer) hspeed = 1.5*other.direct

    //Reverse direction
    direct = -direct

}

//Throw more later
alarm[0] = 28

