/// @desc enemy death
if (hp <= 0)
{
	//add drops
	audio_sound_pitch(snd_enemy_death,choose(0.9,1.0,1.1));
	audio_play_sound(snd_enemy_death,9,false);
	instance_destroy();
}