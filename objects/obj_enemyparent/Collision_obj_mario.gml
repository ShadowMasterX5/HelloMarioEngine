/// @description Mario stomp script

//If both can interact with each other, and Mario is not sliding
if stomp != -1
and other.invincible != -1
and not instance_exists(obj_slider)
{

    //If Mario is above the enemy
    if other.bbox_bottom < bbox_top-vspeed+5
    {

        //If Mario is spin jumping
        if stomp != 3
        and stomp != 5
        and other.stompstyle = 1
        {

            //If this enemy is not immune to spin jumps
            if stomp = 0
            or (stomp = 1 and global.yoshi = 2)
            or stomp = 4
            {
                other.vspeed = 0
                instance_create((bbox_left+bbox_right)/2-8,y,obj_spinsmoke)
                instance_destroy()
            }

            //Spin jumping on spiky enemies
            else
            {
                with other event_user(1)
                audio_play_sound(snd_stomp,0,0)
                instance_create(other.x,other.y+32,obj_spinthump)
            }

        }

        //Regular stomp
        else if (stomp = 0 or stomp = 3 or stomp = 5)
        and other.isswim = 0
        {

            //Prevent certain enemies from getting double stomped
            if vspeed < 0
            {
                y = yprevious
                if other.vspeed > 0
                    other.y = other.yprevious
            }

            //Bounce Mario off enemy
            with other event_user(1)

            //Stomp effects
            if stomp = 0
                scr_musicalscale(other.id,id,1)
            else if stomp = 3
                scr_musicalscale(other.id,id,0)
            instance_create(other.x,other.y+32,obj_spinthump)

            //Stomp the enemy
            event_user(1)

        }

    }

    //Hurt Mario otherwise
    else
        with other event_user(0)

}

