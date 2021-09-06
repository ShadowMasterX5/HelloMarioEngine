/// @description Let Mario in the door

//If Mario is on the door, not jumping, and visible
if place_meeting(x,y,obj_mario)
and obj_mario.state != 2
and visible = 1
{

    //Play the door sound
    audio_play_sound(snd_door,0,0)

    //Animate
    image_speed = 0.15

    //Create a door Mario
    instance_create(x+8,y-16,obj_doormario)

    //Get rid of the real Mario
    with obj_mario instance_destroy()

    //Mario enters the door after 55 frames
    alarm[0] = 55

}

