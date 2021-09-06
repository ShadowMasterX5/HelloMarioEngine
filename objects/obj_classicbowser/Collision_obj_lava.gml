/// @description Drown in lava
if ready = 0
{

    //Appear behind lava
    depth = 10

    //Stop moving
    hspeed = 0

    //Sink into lava
    vspeed = 0.5

    //Death state
    ready = 1

    //Use appropriate image index
    image_index = 4

    //Play Bowser death sound
    audio_play_sound(snd_bowserfall,0,0)

}

