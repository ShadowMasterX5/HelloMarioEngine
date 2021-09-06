/// @description Boom boom logic

//Default event
event_inherited()

//Land on ground correctly
if gravity = 0
and sprite_index = spr_boomboom_misc
and image_index = 0
{
    sprite_index = spr_boomboom
    image_speed = 0.15
}

