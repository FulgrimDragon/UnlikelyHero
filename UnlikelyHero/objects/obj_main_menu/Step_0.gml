/// @desc menu controls

//item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

#region //menu controls
if (menu_control)
{
	#region //keyboard controls
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;	
	}
	
		if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;		
	}
	
	if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
	{
		menu_x_target = gui_width+300;
		menu_committed = menu_cursor;
		screen_shake(6,4);
		menu_control = false;
	}
	#endregion
	
	#region //mouse controls
	var _mouse_y_gui = device_mouse_y_to_gui(0);
	if(_mouse_y_gui < menu_y) && (_mouse_y_gui > menu_top)
	{
		menu_cursor = (menu_y - _mouse_y_gui) div (menu_item_height * 1.5);
		
		if (mouse_check_button_pressed(mb_left))
		{
			menu_x_target = gui_width+300;
			menu_committed = menu_cursor;
			screen_shake(6,4)
			menu_control = false;
		}
	}
	#endregion
}
#endregion

#region //menu options
if (menu_x > gui_width+150) && (menu_committed != -1)
{
	/*
	each case corresponds to a menu option
	case number == menu[number]
	put in functions for each option in respected case
	*/
	switch (menu_committed)
	{
		case 4: 
			//load game file when save system in
			if (!file_exists(SAVEFILE))
			{
				slide_transition(TRANS_MODE.GOTO,rm_lvl_1); 
			}
			else
			{
				var _file = file_text_open_read(SAVEFILE);
				var _target = file_text_read_real(_file);
				global.points = file_text_read_real(_file);
				global.ammo = file_text_read_real(_file);
				file_text_close(_file);
				slide_transition(TRANS_MODE.GOTO,_target);
			}
			break;
		case 3: 
			//load first level or intro
			slide_transition(TRANS_MODE.GOTO,rm_lvl_1); 
			break;	
		case 2:
			//goto htp 
			slide_transition(TRANS_MODE.GOTO,rm_htp); 
			break;	
		case 1:
			slide_transition(TRANS_MODE.GOTO,rm_credits);
			break;
		case 0:
			//exit game
			game_end();
			break;
	}
}
#endregion