/// @description Come out of pipe

//Wait if Mario does not exist
if not instance_exists(obj_mario)
    alarm[1] = 1

//Otherwise
else
{

    //Come out of pipe
    hspeed = -0.75
    alarm[2] = 43

    //Become vulnerable
    hardness = 0
    stomp = 1

}

