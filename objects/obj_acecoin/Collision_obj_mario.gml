/// @description Collect the coin

//If the coin was not touched yet
if image_speed = 0.15
{

    //Play the ace coin sound
    audio_play_sound(snd_acecoin,0,0)

    //Remember that this coin was collected
    ds_map_add(global.acecoins,id,1)

    //If 5 coins were collected
    if ds_map_size(global.acecoins) = 5
    {

        //Extra life
        with instance_create(x,y,obj_score) event_user(7)

        //100 points
        score += 100

    }

    //Otherwise
    else
    {

        //100 points
        with instance_create(x,y,obj_score) event_user(0)

        //Make Mario say "Hoo hoo"!
        audio_play_sound(snd_hoohoo,0,0)

    }

    //Animate faster
    image_speed = 1

    //Destroy when done
    alarm[0] = 30

}

