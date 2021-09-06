/// @description End boss logic

//When visible
if visible = 1
{

    //Execute default event
    event_inherited()

    //If Mario touches it
    if place_meeting(x,y,obj_mario)
    {

        //Dissapear
        visible = 0
        instance_create(x,y,obj_smoke)

        //Boss clear music
        audio_play_sound(snd_bossclear,1,0)

        //Disable Mario's controls
        with obj_mario disablecontrols = 1

        //Clear the level
        global.clear = 1

        //Clear checkpoints
        global.checkpoint = noone

        //Stop timer
        obj_levelmanager.alarm[2] = 0

        //Start timer countdown
        alarm[1] = 350

    }

}

