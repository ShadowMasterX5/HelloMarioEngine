/// @description Sliding Mario logic

//If Mario exists and down is being pressed
if instance_exists(obj_mario)
and keyboard_check(vk_down)
{

    //Give Mario the correct horizontal speed and direction
    obj_mario.hspeed = hspeed
    obj_mario.direct = direct

    //Snap Mario to x
    obj_mario.x = x

    //Snap to Mario's y
    y = obj_mario.y

    //Make sure Mario is invincible
    obj_mario.invincible = 1

}

//Otherwise, destroy
else
{
    instance_destroy()
    exit
}

//If Mario is normal sliding
if type = 0
{

    //Use the slide sprite
    sprite_index = scr_marioslide()

    //Use the appropriate mask
    if global.powerup = cs_small
        mask_index = spr_smallmask
    else
        mask_index = spr_bigmask

}

//If Mario is special sliding
else
{

    //If Mario is shell sliding while not shell Mario, or penguin sliding while not penguin Mario, destroy
    if (type = 1 and global.powerup != cs_shell)
    or (type = 2 and global.powerup != cs_penguin)
        instance_destroy()

    //If Mario is on the ground, and presses shift
    if keyboard_check_pressed(vk_shift)
    and obj_mario.state < 2
    {

        //Play the jump sound
        audio_play_sound(snd_jump,0,0)

        //With Mario
        with obj_mario
        {

            //Move upwards
            vspeed = -3

            //Switch to the jump state
            state = 2

        }

    }

    //If Mario is penguin sliding
    if type = 2
    {

        //Change the direction based on the horizontal speed
        if hspeed > 0
            direct = 1
        else
            direct = -1

    }

    //Make the image speed depend on the speed for the inshell sprite
    else if sprite_index = spr_inshell
        image_speed = speed/6

}

//Move more to the left if on a right slope
if collision_rectangle(bbox_right,bbox_bottom,bbox_right,bbox_bottom+2,obj_slopeparent,1,0)
    hspeed -= 0.1

//Move more to the right if on a left slope
if collision_rectangle(bbox_left,bbox_bottom,bbox_left,bbox_bottom+2,obj_slopeparent,1,0)
    hspeed += 0.1

//Prevent Mario from sliding too fast
if hspeed > 3
    hspeed = 3
if hspeed < -3
    hspeed = -3

//If Mario is on the ground, and not on a slope
if obj_mario.state < 2
and not collision_rectangle(bbox_right,bbox_bottom,bbox_right,bbox_bottom+2,obj_slopeparent,1,0)
and not collision_rectangle(bbox_left,bbox_bottom,bbox_left,bbox_bottom+2,obj_slopeparent,1,0)
{

    //Set the friction based on the sliding type
    if type = 0
        friction = 0.1
    else
        friction = 0.02

    //Destroy if not sliding fast enough
    if abs(hspeed) < 0.05
        instance_destroy()

}

//Otherwise, disable friction
else
    friction = 0

//If Mario slides into a wall
if (hspeed > 0 and collision_rectangle(bbox_right,bbox_top+4,bbox_right+1+hspeed,bbox_bottom-1,obj_solid,0,0))
or (hspeed < 0 and collision_rectangle(bbox_left-1+hspeed,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,0,0))
{

    //If Mario is shell sliding
    if type = 1
    {

        //Play a bump sound
        audio_play_sound(snd_bump,0,0)

        //Bump blocks
        instance_create(x-8,y+16,obj_blockbumper)

        //Shell bounce effects
        with instance_create(x+8*sign(hspeed),y+24,obj_smoke) sprite_index = spr_shellbump

        //Reverse horizontal speed
        hspeed = -hspeed

    }

    //Otherwise, destroy
    else
        instance_destroy()

}

