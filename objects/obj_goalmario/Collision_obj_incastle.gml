/// @description Enter the goal castle

//If goal Mario walked far enough
if x > other.x
and ready = 2
and gravity = 0
{

    //Snap to the castle's door
    x = other.x

    //In castle state
    ready = 4

    //Begin countdown state
    event_user(15)

    //Stop moving
    hspeed = 0

    //Fade into the castle
    alarm[1] = 10

    //Use the warp sprite
    sprite_index = scr_mariowarp()

}

