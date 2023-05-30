/// @desc pickup logic

global.points+=1000;
global.points_room+=1000;
audio_play_sound(snd_pickup,6,false);
instance_destroy();
