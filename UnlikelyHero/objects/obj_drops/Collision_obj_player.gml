/// @desc pickup logic

global.points++;
global.points_room++;
audio_play_sound(snd_pickup,6,false);
instance_destroy();
