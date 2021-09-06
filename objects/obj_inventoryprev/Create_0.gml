/// @description A preview of the world map inventory

//Play the inventory sound
audio_play_sound(snd_inventory,0,0)

//A hack... Because this inherits from obj_mapmario, and we want it to show the inventory
ready = 1
inventory = 1

//Select the last item
boxselection = global.inventory[0]

