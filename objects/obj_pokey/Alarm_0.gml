/// @description Manage offset values
if instance_exists(mebelow)
    offsetdirect = -mebelow.offsetdirect

switch offsetnext
{
    case 0: offset = offsetdirect break
    case 1: offset = 0 break
    case 2: offset = -offsetdirect break
    case 3: offset = 0 break
}

//Increment next offset
offsetnext++

//Cap offset value
if offsetnext = 4
    offsetnext = 0

//Keep changing offset values
alarm[0] = 10

