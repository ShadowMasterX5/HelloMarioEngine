/// @description Ninji logic

//Default event
event_inherited()

//Finish hop animation
if gravity = 0
    image_index = 0

//Look at Mario
if instance_exists(obj_mario)
{
    if obj_mario.x > x
        direct = 1
    else
        direct = -1
}

