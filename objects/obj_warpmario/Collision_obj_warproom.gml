/// @description Warp to a new room

//With the warp object
with other
{

    //If the position needs to be changed in the new room
    if postchange != -1
    {

        //Remember the position and type
        global.postchange = postchange
        global.postx = postx+16
        global.posty = posty

    }

    //Go to the new room
    room_goto(myroom)

}

