/// @description Activate boss door when Mario passes
if visible = 0
and instance_exists(obj_mario)
and obj_mario.x > x+26
{

    //Make visible
    visible = 1

    //Create a solid barrier
    with instance_create(x,y,obj_solid) image_yscale = 4

    //Scroll the screen to the right
    with instance_create(obj_levelmanager.x,obj_levelmanager.y,obj_autoscroll) speed = 3

    //Boss door animation 1
    audio_play_sound(snd_castlebreak,0,0)
    instance_create(x,y,obj_smoke)
    alarm[0] = 20

    //Prevent the view from going too far to the right
    alarm[3] = 1

}

