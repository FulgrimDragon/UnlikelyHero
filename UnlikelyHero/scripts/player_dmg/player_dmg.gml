/// @func					player_dmg(val)
/// @arg {any} val			damange value
function player_dmg(_val){
		obj_player.player_health -= _val;
		screen_shake(15,10);
		audio_play_sound(choose(snd_player_hurt1,snd_player_hurt2,snd_player_hurt3),8,false);
		obj_player.player_flash = 3;	
}