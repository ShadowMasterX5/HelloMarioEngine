/// @description Collect powerup

//Ignore if small Mario's head will get stuck
if global.powerup = cs_small
and collision_rectangle(other.bbox_left,other.bbox_top-16,other.bbox_right,other.bbox_top,obj_solid,1,0)
    exit

//Get 100 points
with instance_create(x,y,obj_score) event_user(0)

//If Mario is big and the reserve item is empty, get a mushroom on reserve
if global.powerup = cs_big
and global.reserveitem = cs_small
    global.reserveitem = cs_big

//Otherwise, if Mario has a powerup, put that in reserve
else if global.powerup > cs_big
    global.reserveitem = global.powerup

//Get the new powerup
global.powerup = scr_sprite_get_constant(sprite_index)

//Play powerup sound
audio_play_sound(snd_powerup,0,0)

//Gotcha
audio_play_sound(snd_gotcha,0,0)

//Make Mario temporarily invincible
with other event_user(6)

//Destroy
instance_destroy()

