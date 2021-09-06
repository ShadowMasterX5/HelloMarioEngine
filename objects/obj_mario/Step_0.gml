/// @description Handles Mario's physics and movement

//If Mario is moving down
if vspeed > 0
{

    //Check for a solidtop below Mario
    var solidtop = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+vspeed,obj_solidtop,0,0)

    //If Mario is above a solidtop
    if solidtop
    and bbox_bottom < solidtop.yprevious+5
    and not collision_rectangle(bbox_left,bbox_top+4,bbox_right,solidtop.y-1,obj_solid,1,0)
    {

        //Snap to position
        y = solidtop.y-32

        //Stop vertical movement
        vspeed = 0
        gravity = 0

        //Allow Mario to jump
        if jumpnow = 2
            jumpnow = 0

        //Reset hit counter
        hitpoint = 0

        //Reset flying
        powerupfly = 0

        //Reset wall jump
        walljump = 0

        //Reset squirrel propel
        squirrelpropel = 0

        //Reset double jump
        doublejump = 0

    }

}

//Embed Mario into the slope if he is walking to ensure correct slope mechanics
if collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+4,obj_slopeparent,1,0)
and not collision_rectangle(bbox_left,bbox_bottom-4,bbox_right,bbox_bottom-4,obj_slopeparent,1,0)
and state = 1
    y+=4

///Handle slope collisions
if collision_rectangle(bbox_left,bbox_bottom-4,bbox_right,bbox_bottom,obj_slopeparent,1,0)
and not collision_rectangle(bbox_left,bbox_bottom-8,bbox_right,bbox_bottom-8,obj_slopeparent,1,0)
{

    //If Mario is moving down onto a slope
    if vspeed > 0
    {

        //Stop vertical movement
        vspeed = 0
        gravity = 0

        //Allow Mario to jump
        if jumpnow = 2
            jumpnow = 0

        //Reset hit counter
        hitpoint = 0

        //Reset flying
        powerupfly = 0

        //Reset wall jump
        walljump = 0

        //Reset squirrel propel
        squirrelpropel = 0

        //Reset double jump
        doublejump = 0

    }

    //Prevent Mario from getting embed inside a slope
    if vspeed > -0.85
        while collision_rectangle(bbox_left,bbox_bottom-4,bbox_right,bbox_bottom,obj_slopeparent,1,0)
            y--

}

//Select a different step event based on Mario's state
if isswim = 0
{

    //Climb script
    if state = 3
        event_user(4)

    //Wall climb/jump script
    else if state = 4
        event_user(5)

    //Default movement script
    else
        event_user(2)

}

//Swim script
else
    event_user(3)

//If Mario is bumping into a wall to the right
if hspeed > 0
and collision_rectangle(bbox_right,bbox_top+4,bbox_right+1,bbox_bottom-1,obj_solid,1,0)
{

    //Stop Mario's horizontal speed
    hspeed = 0

    //Prevent Mario from getting embed into the wall
    while collision_rectangle(bbox_right,bbox_top+4,bbox_right,bbox_bottom-1,obj_solid,1,0)
    and not collision_point(x,bbox_top+4,obj_solid,0,0)
        x--

}

//If Mario is bumping into a wall to the left
else if hspeed < 0
and collision_rectangle(bbox_left-1,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,1,0)
{

    //Stop Mario's horizontal speed
    hspeed = 0

    //Prevent Mario from getting embed into the wall
    while collision_rectangle(bbox_left,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,1,0)
    and not collision_point(x,bbox_top+4,obj_solid,0,0)
        x++

}

//If Mario's head is bumping the ceiling
if vspeed < 0
and collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_solid,1,0)
{

    //Prevent Mario's head from getting embed in the ceiling
    if state > 1
        while collision_rectangle(bbox_left,bbox_top+1,bbox_right,bbox_top+1,obj_solid,1,0)
            y++

    //Stop vertical movement
    vspeed = 0

    //If frog/penguin Mario is not swimming, and Mario is not climbing or wall climbing
    if noisy = 0
    and state < 3
    {

        //Bump sound
        audio_play_sound(snd_bump,0,0)

        //Stop variable jumping
        jumpnow = 2

        //Max out Bee Mario's flight timer
        if global.powerup = cs_bee
            powerupfly = 128

    }

}

//If Mario is not climbing or wall climbing
if state < 3
{

    //If Mario's controls are disabled, and he is not jumping
    if state != 2
    and disablecontrols = 0
    {

        //Makes Mario duck
        if keyboard_check(vk_down)
        and global.powerup != cs_small
        and global.powerup != cs_frog
        and holding = 0
        and noisy = 0
            isduck = 1

        //Stops Mario from ducking
        else if not keyboard_check(vk_down)
        and not collision_rectangle(bbox_left,bbox_top-16,bbox_right,bbox_top,obj_solid,1,0)
            isduck = 0

    }

    //Handles powerup specific projectiles, tail spinning, and statue morphing
    if keyboard_check_pressed(vk_control)
    and obj_levelmanager.barrier = 0
        alarm[10] = 1

}

//If Mario is climbing or wall climbing
else
{

    //Disable ducking
    isduck = 0

    //Disable the spin jump kill ability
    stompstyle = 0

}

//If Mario comes into contact with water, and is not already swimming
if place_meeting(x,y,obj_swim)
and isswim = 0
{

    //Make Mario start swimming
    isswim = 1

    //Reset flying
    powerupfly = 0

    //Reset wall jump
    walljump = 0

    //Reset squirrel propel
    squirrelpropel = 0

    //Reset double jump
    doublejump = 0

    //If Mario is entering from the top
    if collision_point(x,y+33,obj_swim,0,0)
    and not collision_point(x,y,obj_swim,0,0)
    {

        //Reset Mario's vertical speed
        vspeed = 0

        //Create a water splash effect
        with instance_create(x-8,y+17,obj_smoke)
        {
            sprite_index = spr_splash
            depth = -6
        }

    }

    //Disable carrot and bee Mario floating
    isfloating = 0

    //Stop carrot/bee Mario's floating sound
    if floatnow = 1
    {
        audio_stop_sound(snd_spin)
        floatnow = 0
    }

    //Make sure Mario is not climbing
    if state > 2
        state = 2

}

//Prevents Mario from going too high
if y < -96
    y = -96

//If he falls out of the room
else if bbox_top > room_height
{

    //Give crown Mario one last chance to survive
    if global.powerup = cs_crown
    and doublejump != -1
    {
        doublejump = -1
        vspeed = -4.5
        y -= 8
        jumpnow = 1
        audio_play_sound(snd_jump,0,0)
        audio_play_sound(snd_stomp,0,0)
    }

    //Otherwise, kill Mario
    else
    {
        instance_create(x,room_height-32,obj_deadmario)
        instance_destroy()
    }

}

