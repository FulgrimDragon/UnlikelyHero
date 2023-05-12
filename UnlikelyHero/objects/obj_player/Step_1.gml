///@desc restart
if (global.player_health <= 0){
	global.player_health = 6;
	slide_transition(TRANS_MODE.GOTO,room);	
}