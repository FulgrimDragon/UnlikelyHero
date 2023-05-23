/// @desc pick up logic
global.ammo += 2;
audio_play_sound(snd_pickup,6,false);
instance_destroy();
