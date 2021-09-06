/// @description Phanto logic

//If it is invisible
if visible = 0
{

    //If the key is taken, chase the key
    if instance_exists(mykey)
    {
        if mykey.held = 1
        {
            chasemode = 0
            direction = point_direction(x,y,mykey.x,mykey.y)
            event_user(15)
        }
    }

    //Otherwise
    else
    {

        //If the key was eaten, chase Yoshi
        if instance_exists(obj_yoshi)
        and obj_yoshi.inmouth = obj_key
        {
            chasemode = 1
            direction = point_direction(x,y,obj_yoshi.x,obj_yoshi.y)
            event_user(15)
        }

        //Otherwise, make a new key
        else if not instance_exists(obj_tongue)
            mykey = instance_create(oldx,oldy,obj_key)

    }

}

//If it is visible
else
{

    //Normal key chase
    if chasemode = 0
    {

        //If it touches the key, return everything back to the way it was
        if position_meeting(x+8,y+8,mykey)
        {
            with mykey instance_destroy()
            mykey = instance_create(oldx,oldy,obj_key)
            event_user(14)
        }

        //If the key still exists, give chase
        else if instance_exists(mykey)
            turn_towards_direction(point_direction(x,y,mykey.x,mykey.y),8)

        //Chase Yoshi if it gets eaten
        else if instance_exists(obj_yoshi)
        and obj_yoshi.inmouth = obj_key
            chasemode = 1

        //Otherwise, make a new one
        else if not instance_exists(obj_tongue)
        {
            mykey = instance_create(oldx,oldy,obj_key)
            event_user(14)
        }

    }

    //Yoshi key chase
    else
    {

        //If Yoshi still has the key, chase Yoshi
        if instance_exists(obj_yoshi)
        and obj_yoshi.inmouth = obj_key
            turn_towards_direction(point_direction(x,y,obj_yoshi.x,obj_yoshi.y),8)

        //If the key was spit out, chase the key
        else
        {
            mykey = instance_nearest(obj_levelmanager.x,obj_levelmanager.y,obj_key)
            chasemode = 0
        }

    }

}

