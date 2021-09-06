/// @description Eat held items
if hunger = 0
and other.object_index != obj_spring_timed
and other.object_index != obj_spring_blue
{

    //Item eaten
    hunger = 1

    //Move tongue back
    ready = 1

    //Put it in Yoshi's mouth
    obj_yoshi.inmouth = other.object_index

    //Remember its sprite
    obj_yoshi.mouthsprite = other.sprite_index

    //Food sprite
    foodsprite = other.sprite_index

    //Food offset
    foodoffset = 8

    //Destroy food
    with other instance_destroy()

}

