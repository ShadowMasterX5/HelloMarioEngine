/// @description Hyper net koopa logic

//Turn around when there is no climbable surface to the left
if hspeed < 0
and not collision_point(bbox_left-1,y+8,obj_climb,0,0)
    hspeed = 1.5

//Turn around when there is no climbable surface to the right
else if hspeed > 0
and not collision_point(bbox_right+1,y+8,obj_climb,0,0)
    hspeed = -1.5

//Turn around when there is no climbable surface to the top
else if vspeed < 0
and not collision_point(x+8,bbox_top-1,obj_climb,0,0)
    vspeed = 1.5

//Turn around when there is no climbable surface to the bottom
else if vspeed > 0
and not collision_point(x+8,bbox_bottom+1,obj_climb,0,0)
    vspeed = -1.5

//If Mario exists
if instance_exists(obj_mario)
{

    //Charge at Mario
    if obj_mario.x > x
        hspeed += 0.05
    else
        hspeed += -0.05
    if obj_mario.y > y
        vspeed += 0.05
    else
        vspeed += -0.05

    //Cap speed
    if hspeed > 1.5
        hspeed = 1.5
    if hspeed < -1.5
        hspeed = -1.5
    if vspeed > 1.5
        vspeed = 1.5
    if vspeed < -1.5
        vspeed = -1.5

}

//Animate based on speed
image_speed = speed/4

