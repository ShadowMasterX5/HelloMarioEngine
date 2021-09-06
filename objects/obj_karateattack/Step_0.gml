/// @description Check if attack is finished
if attack = 2
and instance_exists(obj_mario)
and obj_mario.hspeed = 0
{

    //Delay over
    if delay = 0
    {

        //Destroy for air combo
        if combo = 2
            instance_destroy()

        //End combo otherwise
        else
        {
            attack = 0
            alarm[1] = 4
            alarm[3] = 8
        }

    }

    //If the delay is not over, and a solid is in the way, or an unkillable enemy is in the way
    else if (obj_mario.direct = 1 and collision_rectangle(obj_mario.bbox_right,obj_mario.bbox_top+4,obj_mario.bbox_right+1,obj_mario.bbox_bottom-1,obj_solid,1,0))
    or (obj_mario.direct = -1 and collision_rectangle(obj_mario.bbox_left,obj_mario.bbox_top+4,obj_mario.bbox_left-1,obj_mario.bbox_bottom-1,obj_solid,1,0))
    {

        //Recoil
        with obj_mario hspeed = -direct*2

        //Cancel airdash
        airdash = 0

        //Animate
        if combo != 2
            image_index = 0

        //Destroy later
        alarm[4] = 20

        //Stop certain alarms
        alarm[0] = 0
        alarm[5] = 0

    }

}

//Step back when an unkillable enemy is in the way
with obj_mario
{
    var enemycheck = collision_rectangle(x,bbox_top+4,x+direct*12,bbox_bottom-1,obj_enemyparent,0,0)
    if enemycheck
    and enemycheck.hardness = 99
        hspeed = -direct
}

