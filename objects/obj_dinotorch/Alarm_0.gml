/// @description Spew flames

//If the dino is on the ground, Mario exists, and is not too close
if gravity = 0
and instance_exists(obj_mario)
and (obj_mario.x < x-32 or obj_mario.x > x+32)
{

    //Change sprite
    sprite_index = spr_dinotorch_blow

    //Do not animate
    image_speed = 0

    //Stop walking
    hspeed = 0

    //If facing right
    if direct = 1
    {

        //Shoot ahead if Mario is on front
        if obj_mario.x > x
        {
            myflames = instance_create(x+6,y,obj_dinoflames)
            myflames.sprite_index = spr_dinoflame_stleft
            image_index = 1
        }

        //Otherwise, shoot up
        else
        {
            myflames = instance_create(x-8,y-45,obj_dinoflames)
            image_index = 0
        }

    }

    //If facing right
    else
    {

        //Shoot ahead if Mario is on front
        if obj_mario.x < x
        {
            myflames = instance_create(x-54,y,obj_dinoflames)
            myflames.sprite_index = spr_dinoflame_stleft
            myflames.otherway = 1
            image_index = 1
        }

        //Otherwise, shoot up
        else
        {
            myflames = instance_create(x-8,y-45,obj_dinoflames)
            image_index = 0
        }

    }

    //Stop spewing flames
    alarm[1] = 100

}

//Otherwise, wait
else
    alarm[0] = 1

