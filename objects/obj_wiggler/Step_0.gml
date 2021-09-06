/// @description Wiggler hates to walk off ledges

//Remember horizontal speed
prevhspeed = hspeed

//Default event
event_inherited()

//Turn at ledges
event_user(6)

//If wiggler's speed changed, turn around
if prevhspeed != hspeed
    event_user(15)

