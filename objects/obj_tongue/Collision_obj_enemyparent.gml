/// @description Eat enemies
if hunger = 0
and other.hardness < 2
{

    ///If the enemy is one of the following, flip it
    if other.object_index = obj_galoomba
    or other.object_index = obj_koopa
    or other.object_index = obj_koopa_red
    or other.object_index = obj_koopa_hyper
    or other.object_index = obj_parakoopa
    or other.object_index = obj_parakoopa_red
    or other.object_index = obj_parakoopa_hyper
    or other.object_index = obj_jumpingkoopa
    or other.object_index = obj_buzzybeetle
    or other.object_index = obj_spiny
    or other.object_index = obj_buzzy_ceiling
    or other.object_index = obj_spiny_ceiling
    or other.object_index = obj_nokobon
    or other.object_index = obj_mechakoopa
    or other.object_index = obj_bobomb
        with other event_user(5)

    //Otherwise, eat it
    else
    {

        //Enemy eaten
        hunger = 1

        //Move tongue back
        ready = 1

        //Put shells in Yoshi's mouth
        if other.object_index = obj_shell
        {

            //Put it in Yoshi's mouth
            obj_yoshi.inmouth = other.object_index

            //Remember its sprite
            obj_yoshi.mouthsprite = other.sprite_index

        }

        //Put fire in red Yoshi's mouth
        else if global.ycolor = 1
            obj_yoshi.inmouth = obj_yoshifire

        //Food sprite
        foodsprite = other.sprite_index

        //Food image index
        foodindex = other.image_index

        //Food offset
        with other other.foodoffset = (bbox_left+bbox_right)/2-x

        //Make sure brick goombas look right
        if foodsprite = spr_kuribohead
            foodsprite = spr_kuriboshoe

        //Destroy food
        with other instance_destroy()

    }

}

