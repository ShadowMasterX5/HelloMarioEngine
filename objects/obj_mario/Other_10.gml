/// @description Hurt Mario

//If Mario is not invincible
if invincible = 0
{

    //Make Mario temporarily invincible
    event_user(6)

    //If Mario is not riding anything
    if global.yoshi = 0
    {

        //If Mario is small
        if global.powerup = cs_small
        {

            //Kill Mario
            instance_create(x,y,obj_deadmario)
            instance_destroy()

        }

        //If Mario is not small
        else
        {

            //If Mario is big
            if global.powerup = cs_big
            {

                //Make him small
                global.powerup = cs_small

                //Drop the reserve item
                with obj_levelmanager event_user(4)

            }

            //Otherwise, make him big
            else
                global.powerup = cs_big

            //Play hurt sounds
            audio_play_sound(snd_warp,0,0)
            audio_play_sound(snd_ow,0,0)

        }

    }

    //If Mario is riding something
    else
    {

        //If Mario is on a Yoshi
        if global.yoshi = 1
        {

            //Create runaway Yoshi
            instance_create(obj_yoshi.x,obj_yoshi.y,obj_yoshi_runaway)

            //Destroy Yoshi
            with obj_yoshi instance_destroy()

        }

        //If Mario is on a shoe
        else if global.yoshi = 2
        {

            //No more shoe kill ability
            stompstyle = 0

            //Play hurt sounds
            audio_play_sound(snd_magic,0,0)
            audio_play_sound(snd_ow,0,0)

            //Destroy the shoe
            instance_create(x,y+16,obj_statuesmoke)
            with obj_kuriboshoe instance_destroy()

        }

        //Stop riding
        global.yoshi = 0

        //Reset visibility
        visible = 1

    }

}

