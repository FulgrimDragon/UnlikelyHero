/// @desc enemy death
if (hp <= 0)
{
	//add drops
	audio_sound_pitch(snd_enemy_death,choose(0.9,1.0,1.1));
	audio_play_sound(snd_enemy_death,9,false);
	if(shoots) with (my_gun) instance_destroy();
	instance_create_layer(x,y,"Enemy",obj_drops,
	{
		sprite : enemy_drops(sprite_run)
	});
	if (irandom(drop_rate) == 0) instance_create_layer(x,y,"Player",obj_ammo);
	instance_destroy();
}