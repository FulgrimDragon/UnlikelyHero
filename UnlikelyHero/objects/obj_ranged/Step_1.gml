/// @desc gun logic

//gun pos and angle
x = obj_player.x;
y = obj_player.y+5;

image_angle = point_direction(x,y,mouse_x,mouse_y)

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}

//firing gun

firing_delay = firing_delay - 1;

if ((mouse_check_button(mb_left)) 
{
	recoil = 4;
	firing_delay = 5;
	with (instance_create_layer(x,y,"Bullets",obj_bullet))
	{
		spd = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
	
	with(obj_player)
	{
		gun_kick_x = lengthdir_x(3,other.image_angle-180);
		gun_kick_y = lengthdir_y(1,other.image_angle-180);
	}
}

//recoil calc
recoil = max(0,recoil - 1);

x -= lengthdir_x(recoil,image_angle);
y -= lengthdir_y(recoil,image_angle);
