/// @description Create Mario's skid smoke
if skidnow = 1
{

    //If Mario is wall jumping, reverse where the smoke appears
    if (direct = 1 and state != 4)
    or (direct = -1 and state = 4)
    {
        with instance_create(x+1,y+24,obj_smoke)
        {
            sprite_index = spr_skidsmoke
            depth = -6
        }
    }
    else
    {
        with instance_create(x-8,y+24,obj_smoke)
        {
            sprite_index = spr_skidsmoke
            depth = -6
        }
    }

}
alarm[5] = 8

