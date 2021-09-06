/// @description Net koopa logic

//If the koopa is not turning and climbs off the net
if turnaround = 0
and not place_meeting(x,y,obj_climb)
{

    //Turning
    turnaround = 1

    //Do not animate
    image_speed = 0

    //Stop
    speed = 0

    //Turn sprite
    sprite_index = spr_netkoopaturn

    //Turn image index
    if ready = 0
    or ready = 3
        image_index = 0
    else
        image_index = 1

    //Finish turning
    alarm[0] = 10

}

//Die if Mario smacks the net while on the other side
if stomp = -1
and place_meeting(x,y,obj_mario)
and obj_mario.netsmack = 1
{
    scr_musicalscale(obj_mario.id,id,1)
    event_user(0)
}

