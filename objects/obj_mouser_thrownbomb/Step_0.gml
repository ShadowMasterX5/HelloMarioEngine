/// @description Thrown bomb logic

//Previous hspeed
prevhspeed = hspeed

//Default event
event_inherited()

//Prevent bomb from landing on Mouser's head
if not place_meeting(x,y+1,obj_mouser)
{

    //If the direction changed, stop horizontal motion
    if hspeed != prevhspeed
        hspeed = 0

    //Become a bomb after landing
    if gravity = 0
    {
        instance_create(x,round(y),obj_mouser_bomb)
        instance_destroy()
    }

}
else
    vspeed = -1

