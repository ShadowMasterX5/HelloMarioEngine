/// @description Create a shell
with instance_create(x,y-16,obj_shell)
{
    hspeed = 3*obj_mario.direct
    sprite_index = spr_smb2shell
    image_speed = 0.15
    event_user(15)
}

//Destroy
instance_destroy()

