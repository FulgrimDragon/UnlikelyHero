/// @desc shooting
if (shoots)
{
	my_gun_1 = instance_create_layer(x,y,"Ranged",obj_boss_shooter)
	with (my_gun_1)
	{
		owner = other.id
		x_offset = 100;
		y_offset = 0;
	}
	
	my_gun_2 = instance_create_layer(x-30,y+20,"Ranged",obj_boss_shooter)
	with (my_gun_2)
	{
		owner = other.id	
		x_offset = -100;
		y_offset = 150;
	}
	
	my_gun_3 = instance_create_layer(x,y+40,"Ranged",obj_boss_shooter)
	with (my_gun_3)
	{
		owner = other.id	
		x_offset = 0;
		y_offset = 210;
	}
}
