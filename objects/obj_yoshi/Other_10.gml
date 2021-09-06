/// @description Spit out an item

//If Yoshi has fire in its mouth
if inmouth = obj_yoshifire
{

    //Make a fiery sound
    audio_play_sound(snd_flames,0,0)

    //Make Yoshi fire
    with instance_create(x,y,obj_yoshifire)
    {
        hspeed = obj_mario.direct*3
        vspeed = -1
    }
    with instance_create(x,y,obj_yoshifire)
    {
        hspeed = obj_mario.direct*3
        vspeed = 1
    }
    with instance_create(x,y,obj_yoshifire) hspeed = obj_mario.direct*3

}

//Otherwise
else
{

    //Play spit sound
    audio_play_sound(snd_spit,0,0)

    //Spit out the item
    with instance_create(x-8+obj_mario.direct*2,y+1,inmouth)
    {

        //Use the correct sprite
        sprite_index = other.mouthsprite

        //Shells need to be spit in a special way
        if object_index = obj_shell
        {
            hspeed = 3*obj_mario.direct
            event_user(15)
        }

        //Spit out any other item normally
        else
            event_user(2)

    }

}

//Reset mouth item
inmouth = noone

//Reset item sprite
mouthsprite = noone

//Licking
licking = 1

//Stop licking
alarm[2] = 5

//Lick animation
anim = 0

