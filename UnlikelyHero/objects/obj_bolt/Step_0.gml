/// @desc bolt logic

//bullet speed and direction
x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

//bullet collision
if (place_meeting(x,y,obj_solid))
{
	while (place_meeting(x,y,obj_solid))
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);		
	}
	spd = 0;
	screen_shake(3,10);
	instance_change(obj_bolt_ground,true);
}

if (place_meeting(x,y,obj_enemy))
{
	with(instance_place(x,y,obj_enemy))
	{
		enemy_dmg(4);	
	}
	instance_destroy();
}