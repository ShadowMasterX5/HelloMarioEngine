/// @description What happens after Mario enters the door

//Check for a warp room
mywarp = instance_place(x,y,obj_warproom)

//If a warp room object exists
if mywarp
{

    //With the warp room object
    with mywarp
    {

        //If the position needs to be changed in the next room
        if postchange != -1
        {

            //Remember what needs to be created at what coordinates
            global.postchange = postchange
            global.postx = postx+8
            global.posty = posty

        }

        //Go to the set room
        room_goto(myroom)

    }

}

//If no warp room object is there
else
{

    //Check for a position change
    mywarp = instance_place(x,y,obj_postchange)

    //If the position change exists, create Mario at that position
    if mywarp
        instance_create(mywarp.postx+8,mywarp.posty,obj_mario)

    //Otherwise, have Mario come out the same door
    else
        instance_create(x+8,y-16,obj_mario)

    //Remember if something is being held
    obj_mario.holding = obj_doormario.holding

    //Notify the level manager
    with obj_levelmanager
    {
        barrier = 1
        alarm[6] = 2
    }

    //Get rid of door Mario
    with obj_doormario instance_destroy()

    //Fade the screen
    with obj_persistent event_user(0)

}

