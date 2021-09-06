/// @description Nipper logic

//Default event
event_inherited()

//Reset sprite after landing
if gravity = 0
    sprite_index = spr_nipper

//Extra gravity
else
    gravity = 0.35

//If Mario exists
if instance_exists(obj_mario)
{

    //Face Mario
    if obj_mario.x > x
        direct = 1
    else
        direct = -1

    //Jump if Mario is above
    if gravity = 0
    and obj_mario.x > x-20
    and obj_mario.x < x+20
    and obj_mario.y < y
    {
        sprite_index = spr_nipper_jump
        vspeed = -6
        y--
    }

}

