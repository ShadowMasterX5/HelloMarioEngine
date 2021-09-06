/// @description End the boss battle

//Activate end boss object
with obj_endboss alarm[0] = 60

//Stop the music and time
with obj_levelmanager
{
    event_user(3)
    alarm[2] = 0
}

