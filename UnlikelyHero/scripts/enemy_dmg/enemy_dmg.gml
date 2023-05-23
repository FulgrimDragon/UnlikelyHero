/// @func					enemy_dmg(val)
/// @arg {any} val			damange value
function enemy_dmg(_val){
		hp -= _val;
		flash = 3;
		audio_play_sound(snd_enemy_hurt,6,false);
		//knockback
		vsp = -5;			
}