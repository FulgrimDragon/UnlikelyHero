/// @desc logic
x = owner.x;
y = owner.y;

if (instance_exists(obj_player))
{	
	if (point_distance(obj_player.x,obj_player.y,x,y) < range)
	{
		image_angle = point_direction(x,y,obj_player.x,obj_player.y);
		countdown--;
		if (countdown <= 0)
		{
			countdown = countdown_rate;	
			if (!collision_line(x,y,obj_player.x,obj_player.y,obj_solid,false,false))
			{
				with (instance_create_layer(x,y,"Bullets",obj_slimeball))
				{
					spd = 8;
					direction = other.image_angle + random_range(-5,5);
					image_angle = direction;
					image_xscale = abs(other.image_xscale);
					image_yscale = abs(other.image_yscale);
				}
			}
		}		
	}
}

