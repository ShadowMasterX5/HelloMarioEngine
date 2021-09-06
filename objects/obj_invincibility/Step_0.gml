/// @description Invincibility logic

//If Mario exists
if instance_exists(obj_mario)
{

    //Snap to position
    x = obj_mario.x
    y = obj_mario.y

    //Set depth
    depth = -6

    //Make sure Mario is fully invincible
    obj_mario.invincible = -1

}

//If warp Mario exists
else if instance_exists(obj_warpmario)
{

    //Snap to position
    x = obj_warpmario.x
    y = obj_warpmario.y

    //Set depth
    depth = 10

}

//Be invisible if neither exists
else
{
    visible = 0
    exit
}

//Otherwise, be visible
visible = 1

