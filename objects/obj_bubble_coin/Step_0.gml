/// @description Bubble logic

//If the bubble is outside the view, stop movement
if outside_view()
    speed = 0

//Otherwise, if the bubble has not moved yet
else if speed = 0
{

    //Move towards Mario if he exists
    if instance_exists(obj_mario)
        move_towards_point(obj_mario.x,obj_mario.y,0.5)

    //Move towards the camera otherwise
    else if instance_exists(obj_levelmanager)
        move_towards_point(obj_levelmanager.x,obj_levelmanager.y,0.5)

}

