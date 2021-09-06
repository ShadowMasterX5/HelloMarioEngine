/// @description Deals with the pipe areas between world map pipes

//Make sure Mario is in the correct pipe
if global.pipetype = 1
{
    with obj_warpmario
    {
        x = other.x
        y = other.y
    }
}

//Set the clear variable
global.clear = 1

