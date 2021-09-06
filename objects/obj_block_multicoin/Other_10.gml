/// @description Make a coin come out
instance_create(x,y,obj_blockcoin)

//Start the timer
if cointime = 0
{
    cointime = 1
    alarm[2] = 200
}

