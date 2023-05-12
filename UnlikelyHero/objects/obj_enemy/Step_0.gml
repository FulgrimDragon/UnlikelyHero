/// @desc enemy logic

vsp += grv;

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

if(hsp == 0) 
{
	sprite_index = sprite_still;
}
else
{	
	sprite_index = sprite_run;
}

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;
#endregion