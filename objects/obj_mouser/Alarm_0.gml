/// @description Throw bombs
if ready = 0
{

    //Change image index
    image_index = 2

    //Throw bomb
    with instance_create(x-8-8*direct,y,obj_mouser_thrownbomb) hspeed = other.direct*(random(2.5)+2.5)

    //Play throw sound
    audio_play_sound(snd_hammer,0,0)

    //Finish throw animation
    alarm[3] = 60

    //Throw more later
    alarm[0] = 210

}

