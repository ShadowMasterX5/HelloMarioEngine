/// @description Brick lifted by buster beetle

//Animate
image_speed = 0.5

//Move up
vspeed = -1

//Lift a brick
with instance_place(x,y,obj_bluebrick)
{
    other.sprite_index = throwsprite
    instance_destroy()
}

//Finish lifting
alarm[0] = 16

