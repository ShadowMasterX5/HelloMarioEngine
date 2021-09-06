/// @description Collect the coin when visible
if visible = 1
{

    //Play the coin sound
    audio_play_sound(snd_coin,0,0)

    //Increment coins
    global.coins++

    //Get 100 points
    with instance_create(x,y,obj_score) event_user(0)

    //Create sparkles
    instance_create(x+8,y-8,obj_sparkletrail)

    //Destroy
    instance_destroy()

}

