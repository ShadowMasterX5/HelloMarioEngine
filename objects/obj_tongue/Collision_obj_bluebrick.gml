/// @description Eat bricks
if hunger = 0
{

    //Item eaten
    hunger = 1

    //Move tongue back
    ready = 1

    //Put it in Yoshi's mouth
    obj_yoshi.inmouth = obj_thrownbrick

    //Remember its sprite
    obj_yoshi.mouthsprite = other.throwsprite

    //Food sprite
    foodsprite = other.throwsprite

    //Food offset
    foodoffset = 8

    //Destroy food
    with other instance_destroy()

}

