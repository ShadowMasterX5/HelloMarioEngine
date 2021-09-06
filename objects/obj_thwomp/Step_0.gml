/// @description Thwomp logic

//Fall down if Mario gets close
if ready = 0
and instance_exists(obj_mario)
and obj_mario.x > x-40
and obj_mario.x < x+72
and y < obj_mario.y
{
    ready = 1
    image_index = 1
}

//Land on the ground
else if ready = 1
{

    //Floor collisions
    event_user(4)

    //When on ground
    if gravity = 0
    {

        //State variable
        ready = 2

        //Thwomp sound
        audio_play_sound(snd_thwomp,0,0)

        //Smoke effects
        instance_create(x-4,y+16,obj_smoke)
        instance_create(x+20,y+16,obj_smoke)

        //Rise
        alarm[0] = 60

    }

}

//Stop after returning
else if ready = 3
and y < ystart+1
{
    ready = 0
    vspeed = 0
    y = ystart
}

