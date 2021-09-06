/// @description End the statue morph

//With Mario
with obj_mario
{

    //Play a magical sound
    audio_play_sound(snd_magic,0,0)

    //Create statue smoke
    instance_create(x,y+8,obj_statuesmoke)

    //Stop the invincibility
    invincible = 0

    //Become visible
    visible = 1

    //Enable controls
    disablecontrols = 0

}

