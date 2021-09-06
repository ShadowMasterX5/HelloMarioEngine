/// @description Start boss music when Bowser is on screen
if ready = 0
{
    with obj_classicbowser
    {
        if not outside_view()
        {
            other.ready = 1
            other.alarm[0] = 2
            with obj_levelmanager alarm[1] = 1
        }
    }
}

