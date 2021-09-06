/// @description A heroic death

//Stop the music and time
with obj_levelmanager
{
    event_user(3)
    alarm[2] = 0
}

//Decrement lives
lives--

//Remember the death
global.died = 1

//Lose powerup
global.powerup = cs_small

//Begin the death animation
alarm[0] = 60

//Play the death song
audio_play_sound(snd_dead,1,0)

//Oh, mama mia!
audio_play_sound(snd_mamamia,0,0)

