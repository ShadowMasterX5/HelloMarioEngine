/// @description Mario's swimming step event

//Handles frog and penguin Mario's swim ability if he is not holding anything
if (global.powerup = cs_frog or global.powerup = cs_penguin)
and holding = 0
{

    //If Mario's controls are not disabled
    if disablecontrols = 0
    {

        //Swim upwards
        if keyboard_check(vk_up)
        and not keyboard_check(vk_down)
        {

            //Move up
            vspeed = -1.5

            //Set the swim type
            swimtype = 1

        }

        //Swim downwards
        else if keyboard_check(vk_down)
        and not keyboard_check(vk_up)
        {

            //Move down
            vspeed = 1.5

            //Set the swim type
            swimtype = 2

        }

        //Stop swimming vertically
        else
            vspeed = 0

        //Swim to the left
        if keyboard_check(vk_left)
        and not keyboard_check(vk_right)
        {

            //Move left
            hspeed = -1.5

            //Set the swim type
            swimtype = 0

            //Face left
            direct = -1

        }

        //Swim to the right
        else if keyboard_check(vk_right)
        and not keyboard_check(vk_left)
        {

            //Move right
            hspeed = 1.5

            //Set the swim type
            swimtype = 0

            //Face right
            direct = 1

        }

        //Stop swimming horizontally
        else
            hspeed = 0

    }

    //Stop swimming
    else
        speed = 0

    //If the swim sound is not looping, but Mario is moving, loop the sound
    if speed != 0
    and noisy = 0
    {
        noisy = 1
        audio_play_sound(snd_swim,0,1)
    }

    //If the swim sound is looping, but Mario is not moving, stop the sound
    else if speed = 0
    and noisy = 1
    {
        noisy = 0
        audio_stop_sound(snd_swim)
    }

    //Good swimmers are not affected by gravity
    gravity = 0

    //Perpetual jump state
    state = 2

    //Prevent ducking
    isduck = 0

}

//The default swim script
else
{

    //Figure out Mario's state
    if (collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_solidtop,0,0)
    or collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_slopeparent,1,0))
    and gravity = 0
    {

        //Figure out if Mario is standing or walking
        if hspeed = 0
            state = 0
        else
            state = 1

        //Reset state delay
        statedelay = 0

    }

    //Mario is jumping if there is no ground below him
    else
    {

        //Delay the change to the jump state
        if statedelay > 4
            state = 2
        else
            statedelay++

        //Set gravity
        gravity = 0.125

    }

    //Prevent Mario from falling down too fast
    if vspeed > 1.5
        vspeed = 1.5

    //Handles swimming
    if keyboard_check_pressed(vk_shift)
    and disablecontrols = 0
    {

        //If up is being pressed
        if keyboard_check(vk_up)
        {

            //Swim higher
            vspeed = -3.5

            //Get off of Yoshi if he is on one
            if global.yoshi = 1
                with obj_yoshi event_user(1)

            //Get off of a shoe if he is on one
            else if global.yoshi = 2
                with obj_kuriboshoe event_user(0)

        }

        //Swim lower if down is being pressed
        else if keyboard_check(vk_down)
        and isduck = 0
            vspeed = -1

        //Default swim height
        else
            vspeed = -2.5

        //Play the swim sound
        audio_play_sound(snd_swim,0,0)

        //Switch to the jump state
        state = 2

    }

    //Handles moving right
    if keyboard_check(vk_right)
    and not keyboard_check(vk_left)
    and disablecontrols = 0
    and (isduck = 0 or state = 2)
    {

        //Accelerate more if he is skidding
        if hspeed < 0
            hspeed += 0.075

        //Accelerate
        hspeed += 0.06

        //Face right
        direct = 1

    }

    //Handles moving left
    else if keyboard_check(vk_left)
    and not keyboard_check(vk_right)
    and disablecontrols = 0
    and (isduck = 0 or state = 2)
    {

        //Accelerate more if he is skidding
        if hspeed > 0
            hspeed += -0.075

        //Accelerate
        hspeed += -0.06

        //Fsce left
        direct = -1

    }

    //If Mario is not trying to move to the left or right
    else
    {

        //Slow down Mario's horizontal speed
        if hspeed > 0
            hspeed-=0.05
        if hspeed < 0
            hspeed+=0.05

        //If Mario is slow enough, stop his horizontal speed entirely
        if abs(hspeed) < 0.05
            hspeed = 0

    }

    //Prevent Mario from moving too fast, and let him move faster when not on the ground
    if state = 2
    {
        if hspeed > 1.5
            hspeed = 1.5
        if hspeed < -1.5
            hspeed = -1.5
    }
    else
    {
        if hspeed > 0.5
            hspeed = 0.5
        if hspeed < -0.5
            hspeed = -0.5
    }

    //Make sure that the swim sound is not looping
    if noisy = 1
    {
        noisy = 0
        audio_stop_sound(snd_swim)
    }

}

//If Mario is no longer in water
if not place_meeting(x,y,obj_swim)
{

    //Make Mario stop swimming
    isswim = 0

    //Reset variable jumping
    jumpnow = 0

    //If Mario came out of the water from the top
    if place_meeting(x,y+2,obj_swim)
    {

        //Create the splash effect
        with instance_create(x-8,y+17,obj_smoke)
        {
            sprite_index = spr_splash
            depth = -6
        }

        //Jump out of the water if shift is being held
        if keyboard_check(vk_shift)
        {
            vspeed = -3.85
            jumpnow = 1
        }

    }

    //Make sure that the swim sound is not looping
    if noisy = 1
    {
        noisy = 0
        audio_stop_sound(snd_swim)
    }

}

//Disable the spin jump kill ability if Mario is not in a shoe
if global.yoshi != 2
    stompstyle = 0

