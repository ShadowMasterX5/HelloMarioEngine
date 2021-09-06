/// @description Send Mario to the new room if he climbs up above the screen
if other.state = 3
and other.bbox_bottom < 1
    room_goto(myroom)

