/// @desc gravity
vsp += grv;

//vrt collisions
if (place_meeting(x,y+vsp,obj_solid))
{
	while (!place_meeting(x,y+sign(vsp),obj_solid))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;