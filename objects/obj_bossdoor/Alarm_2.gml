/// @description Finish boss door animation
image_index = 3
audio_play_sound(snd_castlebreak,0,0)
instance_create(x,y+48,obj_smoke)

//With the level manager
with obj_levelmanager
{

    //Change the music
    levelmusic = snd_music_boss

    //Play the new music
    alarm[0] = 1

}

//Start boss fight
with obj_bossparent alarm[10] = 1

