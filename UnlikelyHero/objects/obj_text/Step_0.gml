/// @desc text progession
letters += spd;
text_current = string_copy(text,1,floor(letters));

draw_set_font(fnt_text);
if (h == 0) h = string_height(text);
w = string_width(text_current);

//destry once done
if (letters >= length) && (keyboard_check_pressed(vk_anykey))
{
	instance_destroy();
	with (obj_cam) follow = obj_player;	
}