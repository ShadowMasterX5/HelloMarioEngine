/// @description Red net koopa logic

//Turn around when there is no climbable surface to the left
if hspeed < 0
and not collision_point(bbox_left-1,y+8,obj_climb,0,0)
    hspeed = 0.75

//Turn around when there is no climbable surface to the right
else if hspeed > 0
and not collision_point(bbox_right+1,y+8,obj_climb,0,0)
    hspeed = -0.75

//Turn around when there is no climbable surface to the top
else if vspeed < 0
and not collision_point(x+8,bbox_top-1,obj_climb,0,0)
    vspeed = 0.75

//Turn around when there is no climbable surface to the bottom
else if vspeed > 0
and not collision_point(x+8,bbox_bottom+1,obj_climb,0,0)
    vspeed = -0.75

