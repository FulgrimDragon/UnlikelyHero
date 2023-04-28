/// @desc gui initilise
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 25;

menu_x = gui_width + 300;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fnt_text;
menu_item_height = font_get_size(menu_font);
menu_committed = -1;
menu_control = true;

menu[3] = "Continue";
menu[2] = "New Game";
menu[1] = "How To Play";
menu[0] = "Exit";

menu_items = array_length_1d(menu);

menu_top = menu_y - ((menu_item_height * 1.5) * menu_items);

menu_cursor = 0;