/// @description Jump

//Move up
vspeed = -3.85

//Boost jump
y--

//Move in the direction it is facing
hspeed = direct

//Make tail parts face the same direction and jump
for(var i = 0; i < 4; i++)
{
    with mypart[i]
    {
        x = other.x
        y = other.y
        direct = other.direct
        alarm[0] = 5*(i+1)
    }
}

