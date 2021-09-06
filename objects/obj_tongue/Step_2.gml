/// @description Tongue logic

//If Mario and Yoshi exist
if instance_exists(obj_mario)
and instance_exists(obj_yoshi)
{

    //Where the tongue should be drawn
    tongue1x = obj_yoshi.x-3+20*obj_mario.direct
    tongue2x = t2*obj_mario.direct+tongue1x
    tongue3x = t3*obj_mario.direct+tongue1x

    //Actual tongue location
    x = round(t4*obj_mario.direct+tongue1x)
    y = obj_yoshi.y+20

    //If Yoshi is moving his tongue out
    if ready = 0
    {

        //Increment tongue offset values
        if t2 != 8
            t2+=2
        if t3 != 16
            t3+=2
        if t4 != 24
            t4+=2

        //If the tongue is all the way out, pull it back in
        else
            ready = 1
    }

    //If Yoshi is pulling back his tongue
    else if ready = 1
    {

        //Decrement tongue offset values
        if t2 != 0
            t2-=2
        if t3 != 0
            t3-=2
        if t4 != 0
            t4-=2

        //If the tongue is all the way in
        else
        {

            //Close Yoshi's mouth
            obj_yoshi.alarm[1] = 5

            //If something was eaten
            if hunger = 1
            {

                //If a powerup was eaten, place it on top of Mario
                if powerup != noone
                    instance_create(obj_yoshi.x,obj_yoshi.y+16,powerup)

                //If Yoshi's mouth is not full, swallow
                else if obj_yoshi.inmouth = noone
                    audio_play_sound(snd_eat,0,0)

            }

            //Destroy
            instance_destroy()

        }

    }

}

//Otherwise, stop licking and destroy
else
{
    with obj_yoshi licking = 0
    instance_destroy()
}

