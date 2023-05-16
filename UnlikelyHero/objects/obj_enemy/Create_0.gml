/// @desc shooting
if (shoots)
{
	my_gun = instance_create_layer(x,y,"Ranged",obj_enemy_shooter)
	with (my_gun)
	{
		owner = other.id	
	}
}
