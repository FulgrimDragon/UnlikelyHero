/// @desc shooting
if (shoots)
{
	my_gun_1 = instance_create_layer(x+30,y,"Ranged",obj_enemy_shooter)
	with (my_gun_1)
	{
		owner = other.id	
	}
	
	my_gun_2 = instance_create_layer(x-30,y+20,"Ranged",obj_enemy_shooter)
	with (my_gun_2)
	{
		owner = other.id	
	}
	
	my_gun_3 = instance_create_layer(x,y+40,"Ranged",obj_enemy_shooter)
	with (my_gun_3)
	{
		owner = other.id	
	}
}
