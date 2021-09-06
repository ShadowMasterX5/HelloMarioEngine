/// @description Manage offset values
switch offsetnext
{
    case 0: offset = 1 break
    case 1: offset = 0 break
    case 2: offset = -1 break
    case 3: offset = -2 break
    case 4: offset = -1 break
    case 5: offset = 0 break
    case 6: offset = 1 break
    case 7: offset = 2 break
}

//Increment next offset
offsetnext++

//Cap offset value
if offsetnext = 8
    offsetnext = 0

//Keep changing offset values
alarm[0] = 10

