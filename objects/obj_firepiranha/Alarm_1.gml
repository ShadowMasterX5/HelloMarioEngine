/// @description Come out of pipe

//Wait if Mario does not exist, or is above the pipe
if not instance_exists(obj_mario)
or collision_rectangle(x-32,y-64,x+32,y+32,obj_mario,0,0)
    alarm[1] = 1

//Otherwise
else
{

    //Come out of pipe
    vspeed = -0.75
    alarm[2] = 43

    //Become vulnerable
    hardness = 0
    stomp = 1

}

