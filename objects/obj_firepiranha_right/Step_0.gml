/// @description Look at Mario
if instance_exists(obj_mario)
{
    if obj_mario.x > x
    {
        if obj_mario.y > y
            direct = 315
        else
            direct = 45
    }
    else
    {
        if obj_mario.y > y
            direct = 225
        else
            direct = 135
    }
}

//Select appropriate image index
if direct = 45
    image_index = 2
else if direct = 135
    image_index = 4
else if direct = 225
    image_index = 6
else if direct = 315
    image_index = 0

//Open mouth if there is fire in it
if place_meeting(x,y,fire)
    image_index++

