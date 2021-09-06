/// @description Shatter when hit with a shell
var shell = collision_rectangle(bbox_left-4,bbox_top,bbox_right+4,bbox_bottom,obj_shell,0,0)
if shell
and shell.hspeed != 0
    event_user(0)

