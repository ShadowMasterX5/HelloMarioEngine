/// @description Mario's victorious cleared level script!

//Find the id of the panel Mario is on
panel = collision_point(x+8,y+8,obj_worldparent,0,0)

//If there is a panel there (Why wouldn't there be?)
if panel
{

    //Call the panel's clear script if the level is beaten normally
    if global.clear = 1
        with panel event_user(2)

    //If the level's secret exit was cleared
    else if global.clear = 2
    {

        //Play the secret exit sound
        audio_play_sound(snd_openpath,0,0)

        //Check above for a lock
        lock = collision_point(x+8,y-8,obj_lock,0,0)

        //If there is a lock
        if lock
        {

            //Unlock the panel's upper path
            panel.open[1] = 1
            with panel event_user(4)

            //Make the lock destroy itself
            with lock event_user(0)

        }

        //Check below for a lock
        lock = collision_point(x+8,y+23,obj_lock,0,0)

        //If there is a lock
        if lock
        {

            //Unlock the panel's lower path
            panel.open[0] = 1
            with panel event_user(4)

            //Make the lock destroy itself
            with lock event_user(0)

        }

        //Check to the left for a lock
        lock = collision_point(x-8,y+8,obj_lock,0,0)

        //If there is a lock
        if lock
        {

            //Unlock the panel's leftward path
            panel.open[3] = 1
            with panel event_user(4)

            //Make the lock destroy itself
            with lock event_user(0)

        }

        //Check to the right for a lock
        lock = collision_point(x+23,y+8,obj_lock,0,0)

        //If there is a lock
        if lock
        {

            //Unlock the panel's rightward path
            panel.open[2] = 1
            with panel event_user(4)

            //Make the lock destroy itself
            with lock event_user(0)

        }

    }

}

//What should happen after the clear animation is done
alarm[1] = 60

