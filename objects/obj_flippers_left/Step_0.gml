/// @description Flipper logic

//If Mario comes from the right, and the flippers are shut
if collision_rectangle(x+15,y,x+19,y+63,obj_mario,0,0)
and ready < 2
{

    //Use the shut tight image
    image_index = 3

    //If the flippers are not shut tight, shut them
    if ready = 0
    {
        ready = 1
        issolid = 1
        audio_play_sound(snd_bump,0,0)
    }

}

//If Mario comes from the left
else if collision_rectangle(x-6,y,x+3,y+63,obj_mario,0,0)
{

    //If the flippers are not open
    if ready != 2
    {

        //Not solid
        issolid = 0

        //Open
        ready = 2

        //Animate the opening
        alarm[0] = 2
        alarm[1] = 4

        //Play the kick sound
        audio_play_sound(snd_kick,0,0)

    }

}

//If Mario leaves while the flippers are open
else if not collision_rectangle(x-4,y,x+16,y+63,obj_mario,0,0)
and ready = 2
{

    //Close them
    ready = 3

    //Animate the closing
    alarm[0] = 2
    alarm[2] = 4

}

//If the flippers are shut tight, and the above did not happen, make them less tight
else if image_index = 3
{
    image_index = 0
    ready = 0
}

//Make sure the flippers are solid when they should be
if issolid = 1
and not instance_exists(mysolid)
{
    mysolid = instance_create(x,y,obj_solid)
    mysolid.image_yscale = 4
}

//Make sure the flippers are not solid when they shouldn't be
else if issolid = 0
and instance_exists(mysolid)
    with mysolid instance_destroy()

