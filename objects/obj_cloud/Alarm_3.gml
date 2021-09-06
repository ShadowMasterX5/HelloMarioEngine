/// @description Linger until Mario lands on ground
if instance_exists(obj_mario)
and obj_mario.state = 2
    alarm[3] = 1
else
    instance_destroy()

