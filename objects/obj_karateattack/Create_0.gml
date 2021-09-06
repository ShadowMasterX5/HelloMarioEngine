/// @description It's karate time!

//Make Mario invisible and disable his controls
with obj_mario
{
    visible = 0
    disablecontrols = 1
}

//Bump blocks in front
bumper =  instance_create(x,y,obj_blockbumper)
bumper.alarm[0] = 0
bumper.mask_index = spr_bigmask

//Do not animate
image_speed = 0

//Attack variable
attack = 1

//Current combo
combo = 0

//Attack delay
delay = 0

//Airdash
airdash = 0

//Begin attack
event_user(0)

