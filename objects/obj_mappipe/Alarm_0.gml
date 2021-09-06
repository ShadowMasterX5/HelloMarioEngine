/// @description What happens after the pipe is entered

//If you entered a different pipe
if pipetype != global.pipetype
{

    //Go to the new destination
    obj_mapmario.x = destx
    obj_mapmario.y = desty

}

//Reset return values
with obj_mapmario
{
    returnx = x
    returny = y
}

