/// @description Drown in lava
if ready > 0
{

    //Appear behind lava
    depth = 10

    //Sink into lava
    vspeed = 0.5

    //Death state
    ready = -5

    //Use appropriate image index
    image_speed = 0
    image_index = 4

    //Play Bowser death sound
    audio_play_sound(snd_bowserfall,0,0)

    //End boss battle
    event_user(6)

}

