///@desc restart
if (player_health <= 0){	
	if(audio_is_playing(snd_player_death) == false) {
		audio_play_sound(snd_player_death,10,false);
	}
	slide_transition(TRANS_MODE.GOTO,room);	
}