/// @description Chain chomp logic

//If the chain chomp is not charging at Mario
if ready = 0
{

    //Return to the starting position
    if x > xstart
        x -= 0.5
    else if x < xstart
        x += 0.5
    if y > ystart
        y -= 0.5
    else if y < ystart
        y += 0.5

    //If it is in its starting position
    if x = xstart
    and y = ystart
    {

        //Face Mario
        if instance_exists(obj_mario)
        {
            if x+8 > obj_mario.x
                direct = -1
            if x+8 < obj_mario.x
                direct = 1
        }

        //Close mouth
        image_index = 1

    }

}

//Otherwise, charge at Mario up to 40 pixels
else
{
    if direct = -1
    {
        if x > xstart-40
        and xtarget < x
            x-=8
    }
    else
    {
        if x < xstart+40
        and xtarget > x
            x+=8
    }
    if y > ystart-40
    and ytarget < y
        y-=8
    else if y < ystart+40
    and ytarget > y
        y+=8
}

