//gravity
x += grv;

//bullet collision
if (place_meeting(x,y,obj_solid))
{
	while (place_meeting(x,y,obj_solid))
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);		
	}
	spd = 0;
	instance_destroy();
}

if (place_meeting(x,y,obj_player))
{
	with(instance_place(x,y,obj_player))
	{
		player_dmg(2);	
	}
	instance_destroy();
}

