/// @description Destroy when hitting slopes
if (hspeed > 0 and not position_meeting(other.bbox_left,other.bbox_top,other))
or (hspeed < 0 and not position_meeting(other.bbox_right,other.bbox_top,other))
    event_user(0)

