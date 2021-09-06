/// @description Throw brick

//Activate parent
instance_activate_object(parent)

//If the parent died, destroy
if not instance_exists(parent)
{
    instance_create(x,y,obj_smoke)
    instance_destroy()
}

//Otherwise, if Mario is low enough to be hit
else if instance_exists(obj_mario)
and obj_mario.y > y-48
{

    //Make brick
    myblock = instance_create(x,y,obj_thrownbrick)
    myblock.sprite_index = sprite_index
    myblock.vspeed = -3

    //Choose speed and change parent's direction based on where Mario is
    if obj_mario.x > x
    {
        myblock.hspeed = 3
        parent.direct = 1
    }
    else
    {
        myblock.hspeed = -3
        parent.direct = -1
    }

    //Make parent continue walking
    with parent event_user(15)

    //Destroy
    instance_destroy()

}

//Otherwise, wait to throw
else
    alarm[1] = 1

