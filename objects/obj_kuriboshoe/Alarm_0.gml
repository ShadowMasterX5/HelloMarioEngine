/// @description Manage offset values

//If Mario is walking
if instance_exists(obj_mario)
and obj_mario.state = 1
{

    //Offset values
    switch offsetnext
    {
        case 0: offset = 1 break
        case 1: offset = 2 break
        case 2: offset = 3 break
        case 3: offset = 4 break
        case 4: offset = 5 break
        case 5: offset = 4 break
        case 6: offset = 3 break
        case 7: offset = 2 break
        case 8: offset = 1 break
        case 9: offset = 0 break
    }

    //Increment next offset
    offsetnext++

    //Cap offset value
    if offsetnext = 10
        offsetnext = 0

}

//Otherwise, no offset
else
{
    offsetnext = 0
    offset = 0
}

//Keep changing offset values
alarm[0] = 2

