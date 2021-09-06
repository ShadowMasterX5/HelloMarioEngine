/// @description Go after Mario
if instance_exists(obj_mario)
{
    if obj_mario.x < x
    and hspeed > 0
    {
        hspeed = -1
        event_user(15)
    }
    else if obj_mario.x > x
    and hspeed < 0
    {
        hspeed = 1
        event_user(15)
    }
    else
        alarm[0] = 50
}
else
    alarm[0] = 1

