/// @description Let Mario pick up and kick the shell

//If the shell is in pick up mode, and not being spin jumped on
if harmmario = 0
and (other.stompstyle = 0 or other.bbox_bottom >= bbox_top-vspeed+5)
{

    //If the shell was not kicked
    if kicked = 0
    {

        //If Mario is below the enemy, and he can hold it, pick it up
        if other.bbox_bottom >= bbox_top-vspeed+5
        and scr_canhold()
        {
            with instance_create(x,y,obj_shell_held) sprite_index = other.sprite_index
            instance_destroy()
        }

        //Otherwise, kick it
        else
        {

            //Kick it
            kicked = 1

            //Go away from Mario
            if obj_mario.x < x+8
                hspeed = 3
            else
                hspeed = -3

            //Play kick sound
            audio_play_sound(snd_kick,0,0)

            //Make Mario kick it
            with obj_mario event_user(7)

            //Animate
            image_speed = 0.15

            //Start hurting Mario
            alarm[1] = 1

        }

    }

}

//Otherwise, use the default event
else
    event_inherited()

