/// @desc enemy logic

vsp += grv;


//on floor check
if (place_meeting(x,y+1,obj_solid)) var _onfloor = true; else _onfloor = false;

//avoid ledges
if (grounded) && (avoid_ledges) && (!place_meeting(x+hsp,y+1,obj_solid))
{
	hsp = -hsp;
}

#region collisions
//hrz collisions
if (place_meeting(x+hsp,y,obj_solid))
{
	while (!place_meeting(x+sign(hsp),y,obj_solid))
	{
		x += sign(hsp);
	}
	hsp = -hsp;
}
x += hsp;

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
#endregion

#region animation
if(_onfloor == false)
{
	grounded = false;
	image_speed = 0;
}
else
{
	grounded = true;
	image_speed = 1;
	if(hsp == 0) 
	{
		sprite_index = sprite_still;
	}
	else
	{	
		sprite_index = sprite_run;
	}
}
if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;
#endregion

#region shooting
if (shoots) 
{
	firing_delay = firing_delay - 1;

	if(firing_delay < 0)
	{
		firing_delay = 120;
		with (instance_create_layer(x,y,"Bullets",obj_slimeball))
		{
			spd = 20;
			direction = other.image_angle + random_range(-5,5);
			image_angle = direction;
		}
	}	
}
#endregion