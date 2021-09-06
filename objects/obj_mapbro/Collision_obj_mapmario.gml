/// @description Force Mario into this battle
if other.ready = 0
and other.speed = 0
{

    //No Mario Start!
    global.mariostart = 1

    //Remember the prize
    global.prize[0] = powerup

    //End the world map properly
    with other event_user(0)

    //Go to a battle based on the creation code
    if type = 0
        room_goto(rm_hammerbattle)
    else if type = 1
        room_goto(rm_firebattle)
    else if type = 2
        room_goto(rm_boomerangbattle)
    else
        room_goto(rm_sledgebattle)

}

