/// @desc pick up logic
global.ammo++;
audio_play_sound(snd_pickup,6,false);
instance_destroy();
