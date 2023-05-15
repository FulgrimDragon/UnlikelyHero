/// @func					player_dmg(val)
/// @arg {any} val			damange value
function player_dmg(_val){
		obj_player.player_health -= _val;
		screen_shake(15,10);
		obj_player.player_flash = 3;	
}