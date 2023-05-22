///@desc restart
if (player_health <= 0){	
	if(audio_is_playing(snd_player_death) == false) {
		audio_play_sound(snd_player_death,10,false);
	}
	
	global.points -= global.points_room;
	
	if (instance_exists(obj_ranged))
	{
		with(obj_ranged) instance_destroy();	
	}
	
	with(obj_cam) instance_destroy();
	
	global.ammo = 5;
	
	instance_destroy()
	slide_transition(TRANS_MODE.GOTO,room);	
}