/// @desc initilise room 
global.points_room = 0;

//set up music
if (room == rm_lvl_end)
{
	audio_stop_sound(msc_main);
	if(audio_is_playing(msc_boss) == false) 
	{
		audio_play_sound(msc_boss,4,true);
	}
}

if (room == rm_menu)
{
	if(audio_is_playing(msc_main) == false) 
	{
			audio_play_sound(msc_main,4,true);
	}
}

