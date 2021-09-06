/// @description Finish direction change

//Increment direction choice
dir++

//Cap direction choice
if dir = 5
    dir = 1

//Choose a direction and image index
if dir = 1
{
    direction = 90
    image_index = 2
}
else if dir = 2
{
    direction = 180
    image_index = 3
}
else if dir = 3
{
    direction = 90
    image_index = 2
}
else if dir = 4
{
    direction = 0
    image_index = 4
}

