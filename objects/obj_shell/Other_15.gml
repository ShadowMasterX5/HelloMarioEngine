/// @description Flip shell
with instance_create(x,y-2,obj_shell)
{
    vspeed = -3
    if other.sprite_index = spr_shell
        sprite_index = spr_shell_down
    else if other.sprite_index = spr_shell_red
        sprite_index = spr_shell_red_down
    else if other.sprite_index = spr_shell_hyper
        sprite_index = spr_shell_hyper_down
    else if other.sprite_index = spr_shell_buzzy
        sprite_index = spr_shell_buzzy_down
    else
        sprite_index = other.sprite_index
}

//Destroy
instance_destroy()

