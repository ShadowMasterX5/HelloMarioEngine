/// @description Change the speed
if speed != other.setspeed
{
    speed = other.setspeed
    myback.speed = other.setspeed
    move_snap(16,16)
    alarm[0] = 15/speed
}

