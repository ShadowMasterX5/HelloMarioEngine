/// @description Open the secret exit

//If the animation has not started, and Mario brings a key
if ready = 0
and other.held = 1
and instance_exists(obj_mario)
{

    //Start the animatiob
    ready = 1

    //Stop the music and time
    with obj_levelmanager
    {
        event_user(3)
        alarm[2] = 0
    }

    //Play the key sound
    audio_play_sound(snd_key,1,0)

    //Open up the secret exit
    global.clear = 2

    //Save the state of the key
    kx = round(other.x)
    ky = round(other.y)
    kd = other.direct

    //Delete the key
    with other instance_destroy()

    //Save the state of Mario, and delete him
    with obj_mario
    {
        other.mx = round(x)
        other.my = round(y)
        other.ms = sprite_index
        other.mi = image_index
        other.md = direct
        instance_destroy()
    }

    //Return to the world map after the animation
    alarm[0] = 120

}

