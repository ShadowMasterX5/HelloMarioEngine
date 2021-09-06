/// @description Hurt enemies
if other.hardness = 0
{
    scr_musicalscale(id,other.id,1)
    with other event_user(0)
}

//Otherwise, get killed
else if other.hardness < 100
    event_user(0)

