/// @description Get healthy

//Ignore if small Mario's head will get stuck
if global.powerup = cs_small
and collision_rectangle(other.bbox_left,other.bbox_top-16,other.bbox_right,other.bbox_top,obj_solid,1,0)
    exit

//Get 100 points
with instance_create(x,y,obj_score) event_user(0)

//If Mario is small, make him big
if global.powerup = cs_small
    global.powerup = cs_big

//Otherwise, if he has no reserve item, give him a reserve mushroom
else if global.reserveitem = cs_small
    global.reserveitem = cs_big

//Play powerup sound
audio_play_sound(snd_powerup,0,0)

//Just what Mario needed
audio_play_sound(snd_jwin,0,0)

//Make Mario temporarily invincible
with other event_user(6)

//Destroy
instance_destroy()

