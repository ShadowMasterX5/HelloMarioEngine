/// @description Handles Mario Start, checkpoints, and other stuff

//If the music is not the same as the music used in the last room
if global.levelmusic != levelmusic
{

    //Stop the old music
    audio_stop_sound(global.levelmusic)

    //Set the new music
    global.levelmusic = levelmusic

}

//If the time is set to something, and was not set in a previous room, set it
if leveltime > 0
and global.timer = 0
    global.timer = leveltime

//If the timer was set, begin ticking
if global.timer > 0
    alarm[2] = 60

//If Mario just started the level
if global.mariostart = 0
{

    //The level has started
    global.mariostart = 1

    //Handles checkpoints
    if instance_exists(global.checkpoint)
    {

        //Destroy all player objects
        event_user(0)

        //Create a new Mario at the desired location
        instance_create(global.checkpoint.x+8,global.checkpoint.y+16,obj_mario)

    }

    //Create the Mario Start! effect
    instance_create(0,0,obj_mariostart)

}

//If position changing is enabled
if global.postchange != -1
{

    //Destroy all player objects
    event_user(0)

    //Create the desired object at the desired location
    if global.postchange = 0
        instance_create(global.postx,global.posty,obj_mario)
    else if global.postchange = 1
        instance_create(global.postx,global.posty,obj_warpmario)
    else if global.postchange = 2
        instance_create(global.postx,global.posty,obj_jumpspawn)
    else if global.postchange = 3
        instance_create(global.postx,global.posty,obj_vinespawn)

    //Disable position changing
    global.postchange = -1

}

//Create a Yoshi or shoe if Mario had one in a previous room
if global.yoshi = 1
    instance_create(0,0,obj_yoshi)
else if global.yoshi = 2
    instance_create(0,0,obj_kuriboshoe)

//If Mario is not riding anything, and carried something from a previous room
else if global.carrieditem != noone
{

    //With the newly created item
    with instance_create(x-8,y+15,global.carrieditem)
    {

        //If the item's parent is the subcon carry parent, remember that
        if object_get_parent(object_index) = obj_carryparent
            global.shallihold = 1

        //If the parent is the normal hold parent
        else
        {

            //Remember that
            global.shallihold = 2

            //This item is being held
            held = 1

        }

        //If the item needs a different sprite
        if global.carriedsprite != noone
        {

            //Change its sprite
            sprite_index = global.carriedsprite

            //Reset the variable
            global.carriedsprite = noone

        }
    }

    //If Mario exists
    if instance_exists(obj_mario)
    {

        //Make Mario hold the item appropriately
        obj_mario.holding = global.shallihold

        //Reset the variable
        global.shallihold = 0

    }

    //Reset the variable
    global.carrieditem = noone

}

//If the P-Switch needs to carry over from the previous room
if global.pswitch > 0
{

    //Turn on the P-Switch
    event_user(1)

    //Set the timer, and make sure it is not too short
    alarm[10] = max(global.pswitch,30)

    //Reset the variable
    global.pswitch = 0

}

//If a star needs to carry over from the previous room
if global.star > 0
{

    //With the newly created invincibility object, set its time limit, and make sure it is not too short
    with instance_create(x,y,obj_invincibility) alarm[0] = max(global.star,30)

    //Reset the variable
    global.star = 0

}

