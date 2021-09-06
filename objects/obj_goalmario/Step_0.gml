/// @description Goal Mario logic

//Destroy all enemies
with obj_enemyparent
{
    instance_create(x,y,obj_smoke)
    instance_destroy()
}

//When in the physics or countdown state
if ready = 2
or ready = 3
{

    //Prevent physics parent from destroying (Hack)
    if bbox_top > room_height
    {
        if ready = 2
            hspeed = -1
        y = room_height-32
        visible = 0
    }

    //Default event
    event_inherited()

    //If Mario reached a wall or fell out of the room when in the physics state
    if ready = 2
    and hspeed < 0
    {

        //Countdown state
        ready = 3

        //Begin countdown state
        event_user(15)

        //Stop walking
        hspeed = 0

    }

    //When on the ground, use walking sprite
    if gravity = 0
        sprite_index = scr_mariowalk()

    //Otherwise
    else
    {

        //Use the jump sprite
        sprite_index = scr_mariojump()

        //Use the correct image index
        image_index = 0

    }

}

