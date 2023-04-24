/// @desc bolt logic

//bullet speed and direction
x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

//bullet collision
if (place_meeting(x,y,obj_solid)) && (image_index != 0)
{
	while (place_meeting(x,y,obj_solid))
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);		
	}
	spd = 0;
}