/// @description Item check

//If this is a leaf, replace with a real leaf
if sprite_index = spr_leaf
    instance_create(xstart,ystart,obj_leaf)

//Otherwise
else
{

    //Play sprout sound
    audio_play_sound(snd_sprout,0,0)

    //If this is a beanstalk, replace with a real beanstalk
    if sprite_index = spr_beanstalk
        instance_create(x,ystart,obj_beanstalk)

    //Otherwise, do not destroy
    else
        exit

}

//Destroy
instance_destroy()

