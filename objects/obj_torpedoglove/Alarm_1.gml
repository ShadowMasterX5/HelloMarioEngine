/// @description Stop moving down
vspeed = 0

//Make sure glove is in the correct position
y = ystart+32

//Make sure the torpedo is stopped in the correct position
with mytorpedo
{
    vspeed = 0
    y = ystart+32
}

//Prepare for launch
alarm[2] = 10

