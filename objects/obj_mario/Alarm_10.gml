/// @description Handles powerup specific projectiles, tail spinning, and statue morphing
if disablecontrols = 0
and holding = 0
and stompstyle = 0
{

    //Tanooki Statue
    if global.powerup = cs_tanooki
    and not instance_exists(obj_spinner)
    and keyboard_check(vk_down)
        instance_create(x,y,obj_statue)

    //If Mario is not ducking
    else if isduck = 0
    {

        //Fire Ball
        if global.powerup = cs_fire
        and instance_number(obj_fireball) < 2
        {
            firing = 9
            with instance_create(x,y+16,obj_fireball) hspeed = 3*other.direct
        }

        //Hammer
        else if global.powerup = cs_hammer
        and instance_number(obj_hammer) < 2
        {
            firing = 9
            with instance_create(x,y+16,obj_hammer) hspeed = 1.5*other.direct+other.hspeed
        }

        //Tail Spin
        else if (global.powerup = cs_leaf or global.powerup = cs_tanooki)
        and not instance_exists(obj_spinner)
            instance_create(x,y,obj_spinner)

        //Bomb
        else if global.powerup = cs_bomb
        and instance_number(obj_minibomb) < 1
        {
            firing = 9
            with instance_create(x-4,y+16,obj_minibomb) hspeed = 1.5*other.direct+other.hspeed
        }

        //Ice Ball
        else if (global.powerup = cs_ice or (global.powerup = cs_penguin and isswim = 0))
        and not instance_exists(obj_iceball)
        {
            firing = 9
            with instance_create(x,y+16,obj_iceball) hspeed = 3*other.direct
        }

        //Super Ball
        else if global.powerup = cs_super
        and instance_number(obj_superball) < 2
        {
            firing = 9
            with instance_create(x,y+16,obj_superball) hspeed = 2*other.direct
        }

        //Shuriken
        else if global.powerup = cs_ninja
        and instance_number(obj_shuriken) < 2
        {
            firing = 9
            with instance_create(x,y+20,obj_shuriken) hspeed = 5*other.direct
        }

        //Boomerang
        else if global.powerup = cs_boomerang
        and instance_number(obj_boomerang_b) < 2
        {
            firing = 9
            with instance_create(x-8,y+16,obj_boomerang_b) hspeed = 1.5*other.direct
        }

        //Rock Roller
        else if global.powerup = cs_rock
        and not instance_exists(obj_rockroller)
            instance_create(x,y+10,obj_rockroller)

        //Pyre Ball
        else if global.powerup = cs_pyre
        and instance_number(obj_pyreball) < 2
        {
            firing = 9
            with instance_create(x,y+16,obj_pyreball) hspeed = 3*other.direct
        }

        //Karate Attack
        else if global.powerup = cs_karate
        and not instance_exists(obj_karateattack)
            instance_create(x,y,obj_karateattack)

    }

}

