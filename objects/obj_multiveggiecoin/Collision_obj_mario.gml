/// @description Collect coin
if vspeed >= 0
{

    //Play coin sound
    audio_play_sound(snd_coin,0,0)

    //Increment coins
    global.coins++

    //100 points
    with instance_create(x,y,obj_score) event_user(0)

    //Fancy effects
    instance_create(x+8,y-8,obj_sparkletrail)

    //Destroy
    instance_destroy()

}

