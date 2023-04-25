/// @desc cam update

//update pos
if (instance_exists(follow))
{
	x_to = follow.x;
	y_to = follow.y;
	
	if ((follow).object_index == obj_player_dead)
	{
		x = x_to;
		y = y_to;
	}
}

//update obj pos
x += (x_to - x) / 25;
y += (y_to - y) / 25; 

//camera clamping
x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

//screenshake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//update cam view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

//paralax backgrounds
/*
if (room != room_menu)
{
	if (layer_exists(mountain_layer))
	{
		layer_x(mountain_layer,x/2);
	}
*/