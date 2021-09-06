/// @description Remember that the P-Switch is on for the next room

//If the switch is on, remember the time limit
if switchon = 1
    global.pswitch = alarm[10]

//Stop the P-Meter sound if it is looping
if audio_is_playing(snd_pmeter)
    audio_stop_sound(snd_pmeter)

