/// @description End the Mario Start! screen

//Re-activate everything
instance_activate_all()

//Hack the fade script to make it fade out now
obj_persistent.done = 0

//Destroy
instance_destroy()

