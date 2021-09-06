/// @description Throw as a shell

//Slope fix
while collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_slopeparent,1,0)
    y--

//Make a regular shell
with instance_create(x,y,obj_shell)
{
    sprite_index = other.sprite_index
    hspeed = 3*obj_mario.direct
    event_user(15)
}

//Destroy
instance_destroy()

