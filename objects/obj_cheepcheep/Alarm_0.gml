/// @description Manage offset values

//If the cheep cheep is swimming in its spot
if hopnow = 0
and round(y) = swimspot
{
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
}

//Otherwise, no offset
else
    offset = 0

//Increment next offset
offsetnext++

//Cap offset value
if offsetnext = 8
    offsetnext = 0

//Keep changing offset values
alarm[0] = 10

