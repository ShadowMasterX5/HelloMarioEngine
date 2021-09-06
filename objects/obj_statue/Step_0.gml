/// @description Snap to Mario if the keys are still being held
if instance_exists(obj_mario)
and keyboard_check(vk_control)
and keyboard_check(vk_down)
{
    x = obj_mario.x
    y = obj_mario.y
    obj_mario.invincible = 1
}

//Otherwise, destroy
else
    instance_destroy()

