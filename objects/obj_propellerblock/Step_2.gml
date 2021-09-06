/// @description Propeller block logic

//Default event
event_inherited()

//If held by Mario, who is in the jump state
if held = 1
and instance_exists(obj_mario)
and obj_mario.state = 2
{

    //Animate
    image_speed = 0.15

    //Make Mario float
    obj_mario.vspeed -= obj_mario.gravity/2

}

//Otherwise, do not animate
else
    image_index = 0

