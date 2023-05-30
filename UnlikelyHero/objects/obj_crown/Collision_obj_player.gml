/// @desc pickup logic

global.points+=100;
global.points_room+=100;
audio_play_sound(snd_pickup,6,false);
instance_destroy();
