/// @description Bowser's true genius

//Deal with floor collisions BOWSER'S WAY
if collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_solidtop,0,0)
or ready > 0
{
    gravity = 0
    if ready < 1
        vspeed = 0
}
else
    gravity = 0.05

//If Bowser is ready to ROCK AND ROLL
if ready = 0
{

    //Remember previous facing direction
    var dprev = direct

    //Face Mario
    if instance_exists(obj_mario)
    {
        if x > obj_mario.x
            direct = 1
        else
            direct = -1
    }

    //If he is facing a different direction
    if dprev != direct
    {

        //Turning state
        ready = -1

        //Turn sprite
        sprite_index = spr_bowser_flip

        //Start turning animation
        image_index = 0
        image_speed = 0.15

    }

}

//If Bowser reaches the peak of his jump
else if ready = 1
and y < 17
{

    //Stop moving
    speed = 0

    //Snap to grid
    move_snap(16,16)

    //Change pose
    image_index = 4

    //Get ready to SMASH MARIO'S FACE OFF
    alarm[3] = 10

    //The SMASH MARIO'S FACE state
    ready = -2

}

//If Bowser stomps on the ground
else if ready = 2
and collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_solidtop,0,0)
{

    //His footsteps are like THUNDER
    audio_play_sound(snd_thunder,0,0)

    //Stop falling
    vspeed = 0

    //Snap to grid
    move_snap(16,16)

    //Some kind of limbo state?
    ready = 3

    //Check if bricks were smashed
    alarm[4] = 2

    //Change pose
    image_index = 5

}

//If Bowser is falling after smashing bricks
else if ready = 4
and collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_solidtop,0,0)
{

    //Stop falling
    vspeed = 0

    //Snap to grid
    move_snap(16,16)

    //Finish stomp state
    ready = 5

    //Start turning
    alarm[5] = 20

}

//Bowser will NEVER LET THIS HAPPEN
else if ready = -5
and bbox_top > room_height
    instance_destroy()

