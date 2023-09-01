/// @desc game set up
#macro RES_W 960
#macro RES_H 540
#macro SAVEFILE "Save.sav"
#macro VERSION "v1.0.1"
display_set_gui_size(RES_W,RES_H);

//variables
global.points = 0;
global.points_room = 0;
global.ammo = 5;

//play game music
audio_stop_all();
if(audio_is_playing(msc_main) == false) 
{
		audio_play_sound(msc_main,4,true);
}


