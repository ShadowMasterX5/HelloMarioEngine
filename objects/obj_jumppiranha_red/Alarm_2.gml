/// @description Jump out of pipe

//Wait if Mario does not exist, or is above the pipe
if not instance_exists(obj_mario)
    alarm[1] = 1

//Otherwise
else
{

    //Jump out of pipe
    vspeed = -3
    alarm[0] = 40

    //Become vulnerable
    hardness = 0
    stomp = 1

}

