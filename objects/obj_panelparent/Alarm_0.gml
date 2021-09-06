/// @description Mark checkpoints

//If a checkpoint was passed in this level
if global.checkpoint != noone
and place_meeting(x,y,obj_mapmario)
{

    //Save that info in this panel
    cpoint = global.checkpoint

    //Forget that info globally
    global.checkpoint = noone

}

