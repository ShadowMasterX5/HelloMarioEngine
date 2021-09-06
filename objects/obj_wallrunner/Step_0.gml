/// @description Handle wall running logic

//Destroy self if Mario does not exist
if not instance_exists(obj_mario)
{
    instance_destroy()
    exit
}

//Use the run sprite
sprite_index = scr_mariorun()

//Snap Mario to self
obj_mario.x = x
obj_mario.y = y-2
obj_mario.speed = 0

//If the jump key is pressed
if keyboard_check_pressed(vk_shift)
{

    //Play the jump sound
    audio_play_sound(snd_jump,0,0)

    //If Mario is running up, jump off the wall
    if direction = 90
    {
        obj_mario.vspeed = vspeed
        obj_mario.hspeed = -3*direct
    }

    //If Mario is running down, jump off the wall
    else if direction = 270
    {
        obj_mario.vspeed = vspeed
        obj_mario.hspeed = 3*direct
    }

    //If Mario is running on the ceiling, jump off
    else
    {
        obj_mario.hspeed = hspeed
        obj_mario.vspeed = 3
    }

    //Destroy
    instance_destroy()

}

//If Mario is running around clockwise
else if direct = 1
{

    //Speed up if the run and right key is being pressed
    if keyboard_check(vk_control)
    and keyboard_check(vk_right)
        speed += 0.1

    //Otherwise, slow down
    else
        speed -= 0.05

    //If Mario is running up a wall on the right
    if direction = 90
    {

        //Destroy self if there is no solid to the right
        if not place_meeting(x+8,y,obj_solid)
        {
            obj_mario.hspeed = -vspeed
            instance_destroy()
        }

    }

    //If Mario is running left on a ceiling
    else if direction = 180
    {

        //Destroy self if there is no solid above
        if not place_meeting(x,y-8,obj_solid)
        {
            obj_mario.hspeed = hspeed
            instance_destroy()
        }

        //Check for an inverted right wall triangle
        var col = instance_position(x,y-8,obj_walltriangle_ir)
        if col
        {
            x = col.x-16
            y = col.y
            direction = 90
        }

    }

    //If Mario is running down a wall on the left
    else if direction = 270
    {

        //Destroy self if there is no solid to the left
        if not place_meeting(x-8,y,obj_solid)
        {
            obj_mario.vspeed = vspeed
            instance_destroy()
        }

        //Check for an inverted left wall triangle
        var col = instance_position(x-24,y+16,obj_walltriangle_il)
        if col
        {
            x = col.x
            y = col.y+16
            direction = 180
        }

    }

}

//If Mario is running around counterclockwise
else if direct = -1
{

    //Speed up if the run and left key is being pressed
    if keyboard_check(vk_control)
    and keyboard_check(vk_left)
        speed += 0.1

    //Otherwise, slow down
    else
        speed -= 0.05

    //If Mario is running up a wall on the left
    if direction = 90
    {

        //Destroy self if there is no solid to the left
        if not place_meeting(x-8,y,obj_solid)
        {
            obj_mario.hspeed = vspeed
            instance_destroy()
        }

    }

    //If Mario is running right on a ceiling
    else if direction = 0
    {

        //Destroy self if there is no solid above
        if not place_meeting(x,y-8,obj_solid)
        {
            obj_mario.hspeed = hspeed
            instance_destroy()
        }

        //Check for an inverted left wall triangle
        var col = instance_position(x,y-8,obj_walltriangle_il)
        if col
        {
            x = col.x+32
            y = col.y
            direction = 90
        }

    }

    //If Mario is running down a wall on the right
    else if direction = 270
    {

        //Destroy self if there is no solid to the right
        if not place_meeting(x+8,y,obj_solid)
        {
            obj_mario.vspeed = vspeed
            instance_destroy()
        }

        //Check for an inverted right wall triangle
        var col = instance_position(x+24,y+16,obj_walltriangle_ir)
        if col
        {
            x = col.x+16
            y = col.y+16
            direction = 0
        }

    }

}

//Destroy self if Mario is too slow, or runs into a solid
if speed < 1.6
or place_meeting(x,y,obj_solid)
{
    obj_mario.speed = speed
    obj_mario.direction = direction
    instance_destroy()
}

//Stop Mario from running too fast
else if speed > 3
    speed = 3

