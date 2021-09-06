/// @description Make Mario bounce off
if other.y < y-20
and other.y > y-25
and other.vspeed > 0
{

    //Animate
    image_speed = 0.5

    //Play spring sound
    audio_play_sound(snd_spring,0,0)

    //Bounce Mario
    with other
    {
        event_user(1)
        vspeed = -5.2
    }

}

