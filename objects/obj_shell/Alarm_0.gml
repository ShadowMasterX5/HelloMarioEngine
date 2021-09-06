/// @description Become vulnerable
if not collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom+8,obj_blockbumper,0,0)
and not collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_blockparent,0,0)
{
    if sprite_index = spr_shell_buzzy
    or sprite_index = spr_shell_buzzy_down
        hardness = 1
    else
        hardness = 0
}
else
    alarm[0] = 1

