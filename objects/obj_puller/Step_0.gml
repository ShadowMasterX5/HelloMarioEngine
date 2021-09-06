/// @description Snap to Mario if he is still there pulling the item
if instance_exists(obj_mario)
and place_meeting(obj_mario.x,obj_mario.y+4,pulled)
{
    x = obj_mario.x
    y = obj_mario.y
}

//Otherwise, destroy
else
    instance_destroy()

