/// @description When the block is hit

//Start the timer
if cointime = 0
{
    cointime = 1
    alarm[2] = 200
}

//If time runs out, create a mushroom later
else if cointime = 2
    cointime = 3

//Make a coin if the time has not run out
if cointime < 2
    instance_create(x,y,obj_blockcoin)

