/// @description Open up panel directions and stop Mario from moving

//Get the id of the panel he is on
panel = collision_point(x+8,y+8,obj_panelparent,0,0)

//If he is on a panel
if panel
{

    //Open the panel's up direction if he is moving up
    if direction = 90
        panel.open[0] = 1

    //Open the panel's down direction if he is moving down
    else if direction = 270
        panel.open[1] = 1

    //Open the panel's left direction if he is moving left
    else if direction = 180
        panel.open[2] = 1

    //Open the panel's right direction if he is moving right
    else if direction = 0
        panel.open[3] = 1

    //Save open list
    with panel event_user(4)

}

//Stop moving
speed = 0

