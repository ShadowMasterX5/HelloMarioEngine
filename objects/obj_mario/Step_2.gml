/// @description Handles Mario's sprites

//Disable ducking for certain powerups
if global.powerup = cs_small
or global.powerup = cs_frog
    isduck = 0

//If Mario is not ducking
if isduck = 0
{

    //Select Mask
    if global.powerup = cs_small
        mask_index = spr_smallmask
    else
        mask_index = spr_bigmask

    //Shoot Animation
    if global.powerup = cs_fire
    or global.powerup = cs_hammer
    or global.powerup = cs_bomb
    or global.powerup = cs_ice
    or global.powerup = cs_super
    or global.powerup = cs_ninja
    or global.powerup = cs_penguin
    or global.powerup = cs_boomerang
    or global.powerup = cs_pyre
    {
        if firing > 0
            firing--
    }
    else
        firing = 0

    //Tail Wiggling
    if global.powerup = cs_leaf
    or global.powerup = cs_tanooki
    {
        if state = 2
        and stompstyle = 0
        {
            if wiggle > 1
                wiggle--
            if wiggle > 12
                image_index = 3
            else if wiggle > 8
                image_index = 2
            else if wiggle > 4
                image_index = 1
            else if wiggle > 1
                image_index = 2
            else if wiggle = 1
                image_index = 1
            else
                image_index = 0
        }
        else
            wiggle = 0
    }
    else
        wiggle = 0

    //Not Holding Anything
    if holding = 0
    {

        //Standing State
        if state = 0
        {

            //Shooting Projectiles
            if firing > 0
            {
                image_speed = 0
                if firing < 6 and firing > 3
                    image_index = 1
                else
                    image_index = 0
                sprite_index = scr_marioshoot()
            }

            //Default Standing
            else
            {
                image_speed = 0
                image_index = 0.99
                sprite_index = scr_mariowalk()
            }

        }

        //Walking State
        else if state = 1
        {

            //Animate based on horizontal speed
            image_speed = abs(hspeed/10)

            //Frog Mario only walks
            if global.powerup = cs_frog
                sprite_index = scr_mariowalk()

            //Skid when moving and facing in opposite directions
            else if (direct = 1 and hspeed < -0.001)
            or (direct = -1 and hspeed > 0.001)
            {
                sprite_index = scr_marioskid()
                if skidnow = 0
                {
                    skidnow = 1
                    audio_play_sound(snd_skid,1,1)
                }
            }

            //Default Walking
            else
            {

                //Run only when P-Meter is full
                if obj_levelmanager.pmeter < 6
                    sprite_index = scr_mariowalk()
                else
                    sprite_index = scr_mariorun()

            }

        }

        //Jumping State
        else if state = 2
        {

            //Swimming
            if isswim = 1
            {

                //If frog/penguin Mario is not swimming
                if noisy = 0
                {
                    sprite_index = scr_marioswim()
                    image_speed = 0
                    if vspeed < 0
                        image_index = 1
                    else
                        image_index = 0
                }

            }

            //Spin Jumping
            else if stompstyle = 1
            {

                //Propeller Mario Flying
                if global.powerup = cs_propeller
                {

                    //Propeller Mario floating down slowly
                    if vspeed > 0
                    and vspeed < 2
                    {
                        image_speed = 0.3
                        sprite_index = spr_mario_propeller_walk
                    }

                    //Default propeller Mario flying
                    else
                    {
                        image_speed = vspeed/10
                        sprite_index = spr_mario_propeller_fly
                    }

                }

                //Default Spin Jumping
                else
                {
                    image_speed = 0.5
                    sprite_index = scr_mariowarp()
                }

            }

            //Shooting Projectiles
            else if firing > 0
            {
                image_speed = 0
                if firing < 6 and firing > 3
                    image_index = 1
                else
                    image_index = 0

                //Penguin Mario Hotfix
                if global.powerup = cs_penguin
                    sprite_index = spr_mario_penguin_shoot2
                else
                    sprite_index = scr_marioswim()

            }

            //Default Jumping
            else
            {

                //Floating Animation
                if global.powerup = cs_carrot
                or global.powerup = cs_bee
                {
                    if isfloating = 1
                        image_speed = 0.15
                    else
                        image_index = 0
                }

                //Squirrel Mario floating
                if global.powerup = cs_squirrel
                and (squirrelpropel = 1 or (vspeed > 0 and keyboard_check(vk_shift)))
                {
                    sprite_index = spr_mario_squirrel_float
                    if vspeed < 0
                        image_index = 0
                    else if squirrelpropel = 0
                        image_index = 1
                    else
                        image_speed = 0.15
                }

                //Swooper Mario flapping
                else if global.powerup = cs_swooper
                and powerupfly = 1
                {
                    sprite_index = spr_mario_swooper_flap
                    if vspeed > 0
                        image_index = 0
                    else
                        image_index = 1
                }

                //Super Crown Mario floating
                else if global.powerup = cs_crown
                and vspeed >= 0
                {
                    image_speed = 0.15
                    if vspeed > 0
                        sprite_index = spr_mario_crown_fall
                    else
                        sprite_index = spr_mario_crown_float
                }

                //Run only when P-Meter is full
                else if obj_levelmanager.pmeter < 6
                    sprite_index = scr_mariojump()
                else
                    sprite_index = scr_mariorunjump()

            }

        }

        //Special Swimming Animations
        if global.powerup = cs_frog
        or global.powerup = cs_penguin
        {
            if isswim = 1
            {
                if swimtype = 0
                    sprite_index = scr_marioswim()
                if swimtype = 1
                    sprite_index = scr_marioswim2()
                if swimtype = 2
                    sprite_index = scr_marioswim3()
                if noisy = 1
                    image_speed = 0.15
                else
                    image_speed = 0
            }
        }

    }

    //Holding Something
    else
    {

        //Standing State
        if state = 0
        {
            image_speed = 0
            image_index = 0.99
        }

        //Walking State
        if state = 1
            image_speed = abs(hspeed/10)

        //Jumping State
        if state = 2
        {
            image_speed = 0
            if global.powerup = cs_small
                image_index = 1
            else
                image_index = 2
        }

        //Carrying an item above his head
        if holding = 1
            sprite_index = scr_mariocarry()

        //Holding an item on front of him
        else if holding = 2
            sprite_index = scr_mariohold()

    }

    //Climbing
    if state = 3
    {
        if speed = 0
            image_speed = 0
        else
            image_speed = 0.15
        sprite_index = scr_marioclimb()
    }

    //Wall Climbing + Wall Jumping
    else if state = 4
    {

        //Ninja Mario Wall Climbing
        if global.powerup = cs_ninja
        {
            sprite_index = spr_mario_ninja_wallclimb
            if vspeed = 0
                image_speed = 0
            else
                image_speed = 0.15
        }

        //Wall Jumping
        else
        {
            sprite_index = scr_marioskid()
            if skidnow = 0
            and global.powerup != cs_squirrel
            {
                skidnow = 1
                audio_play_sound(snd_skid,1,1)
            }
        }

    }

    //Kicking Animation
    if iamkicking = 1
        sprite_index = scr_mariokick()

}

//If Mario is ducking
else if isduck = 1
{

    //Use Small Mask
    mask_index = spr_smallmask

    //Default Ducking
    sprite_index = scr_marioduck()

}

//Stop the skid sound effect
if sprite_index != scr_marioskid()
and skidnow = 1
{
    audio_stop_sound(snd_skid)
    skidnow = 0
}

