/// @description Pop

//Play pop sound
audio_play_sound(snd_pop,0,0)

//Make the correct item
if item != -1
    scr_sprite_make_object(x+8,y+8,sprite)

//Destroy
instance_destroy()

