/// @description Parakoopa logic

//If this is a vertical koopa
if hspeed = 0
{

    //If Mario exists, face him
    if instance_exists(obj_mario)
    {
        if obj_mario.x > x
            direct = 1
        else
            direct = -1
    }
}

//Otherwise, look where you are going
else if hspeed > 0
    direct = 1
else
    direct = -1

//Animate based on speed
image_speed = speed/6

//Handle circular movement
if type = 1
    direction += -0.89625
if type = 2
    direction += 0.89625

