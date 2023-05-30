/// @desc enemy death
if (hp <= 0)
{
	//add drops
	audio_sound_pitch(snd_enemy_death,choose(0.9,1.0,1.1));
	audio_play_sound(snd_enemy_death,9,false);
	if(shoots)
	{	
		with (my_gun_1) instance_destroy();
		with (my_gun_2) instance_destroy();
		with (my_gun_3) instance_destroy();
	}
	audio_stop_sound(msc_boss);
	if (instance_exists(obj_slimeball))
	{
		with(obj_slimeball) instance_destroy();
	}
	instance_create_layer(x,y,"Player",obj_crown);
	layer_sequence_create("Sequence",obj_cam.x,obj_cam.y,seq_whiteout);
	instance_destroy();
}