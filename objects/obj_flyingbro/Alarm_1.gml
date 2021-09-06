/// @description Manage offset values
switch offsetnext
{
    case 0: offset = 2 break
    case 1: offset = 4 break
    case 2: offset = 6 break
    case 3: offset = 8 break
    case 4: offset = 6 break
    case 5: offset = 4 break
    case 6: offset = 2 break
}

//Increment next offset
offsetnext++

//Finish animation
if offsetnext = 7
{
    offset = 0
    offsetnext = 0
}

//Otherwise, continue
else
    alarm[1] = 1

