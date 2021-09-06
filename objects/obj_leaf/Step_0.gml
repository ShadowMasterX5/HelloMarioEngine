/// @description Leaf logic

//If the leaf is falling, use the appropriate image index
if ready = 1
{
    if x > xprevprev
        image_index = 2
    else
        image_index = 1
    xprevprev = xprevious
}

//Destroy when it falls out of the level
if bbox_top > room_height
    instance_destroy()

