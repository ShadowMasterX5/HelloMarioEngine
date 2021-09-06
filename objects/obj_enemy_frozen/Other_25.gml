/// @description Prepare sprite

//Select an appropriate ice sprite
if bbox_bottom-bbox_top > 18
and bbox_right-bbox_left > 18
    sprite_index = spr_frozenenemy_big
else if bbox_bottom-bbox_top > 18
    sprite_index = spr_frozenenemy_tall
else if bbox_right-bbox_left > 18
    sprite_index = spr_frozenenemy_wide
else
    sprite_index = spr_frozenenemy

//Stretch the solid top appropriately
if sprite_index = spr_frozenenemy_wide
or sprite_index = spr_frozenenemy_big
    mytop.image_xscale = 2

//Make big ice heavy
if sprite_index = spr_frozenenemy_big
    isheavy = 1

//Prevent frozen enemies from spawning inside solids
if not collision_rectangle(bbox_right,bbox_top,bbox_right,bbox_bottom,obj_solid,1,0)
    while collision_rectangle(bbox_left,bbox_top,bbox_left,bbox_bottom,obj_solid,1,0)
        x++
else if not collision_rectangle(bbox_left,bbox_top,bbox_left,bbox_bottom,obj_solid,1,0)
    while collision_rectangle(bbox_right,bbox_top,bbox_right,bbox_bottom,obj_solid,1,0)
        x--
else if not collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_solid,1,0)
    while collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_solid,1,0)
        y++
else if not collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_solid,1,0)
    while collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_solid,1,0)
        y--

//Solid object
mysolid = instance_create(x,y,obj_solid)

//Make solid the same size as the ice
mysolid.mask_index = sprite_index

//Prevent the solid from messing with floor collisions
if sprite_index = spr_frozenenemy_tall
or sprite_index = spr_frozenenemy_big
    mysolid.image_yscale = 0.8
else
    mysolid.image_yscale = 0.6

