/// @description Mario's wall climbing + wall jumping step event

//If Mario does not have the appropriate powerup
if (global.powerup != cs_ninja and global.powerup != cs_walljump and global.powerup != cs_squirrel)

//Or if ninja Mario is no longer facing a wall to climb
or (global.powerup = cs_ninja
and ((direct = 1 and not collision_rectangle(bbox_right,bbox_top+4,bbox_right+1,bbox_bottom-1,obj_solid,1,0))
or (direct = -1 and not collision_rectangle(bbox_left-1,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,1,0))))

//Or if wall jump Mario moves away from the wall, or is not against a wall
or (global.powerup != cs_ninja
and (direct = -1 and (keyboard_check(vk_left) or not collision_rectangle(bbox_right,bbox_top+4,bbox_right+1,bbox_bottom-1,obj_solid,1,0))
or direct = 1 and (keyboard_check(vk_right) or not collision_rectangle(bbox_left-1,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,1,0))))

//Or if Mario reaches the floor
or collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_solidtop,0,0)
or collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_slopeparent,1,0)
{

    //Switch to the jump state
    state = 2

    //Disable variable jumping
    jumpnow = 0

    //Do not execute the rest of this event
    exit

}

//If Mario is in the ninja suit
if global.powerup = cs_ninja
{
    //Handle moving up
    if keyboard_check(vk_up)
    and not keyboard_check(vk_down)
    and disablecontrols = 0
        vspeed = -1

    //Handle moving down
    else if keyboard_check(vk_down)
    and not keyboard_check(vk_up)
    and disablecontrols = 0
        vspeed = 1

    //Stop moving
    else
        vspeed = 0
}

//If Mario is just wall jumping, and not in the squirrel suit, slide down the wall
else if global.powerup != cs_squirrel
    vspeed = 1

//Handle jumping
if keyboard_check_pressed(vk_shift)
and disablecontrols = 0
{

    //Jump
    vspeed = -3.75

    //Play the jump sound
    audio_play_sound(snd_jump,0,0)

    //Enable variable jumping
    jumpnow = 1

    //Switch to the jump state
    state = 2

    //Reverse direction if Mario is in the ninja suit
    if global.powerup = cs_ninja
        direct = -direct

    //Otherwise, make wall jump effects
    else
    {
        audio_play_sound(snd_stomp,0,0)
        instance_create(x,y+32,obj_spinthump)
    }

    //Move away from the wall
    hspeed = 3*direct

}

