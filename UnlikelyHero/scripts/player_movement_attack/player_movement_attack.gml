// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_movement_attack(){
	#region//calc movement
	var _move = key_right - key_left;

	hsp = _move * walksp;

	vsp += grv;

	//jump
	if key_jump && place_meeting(x,y+1,obj_solid){
		vsp = -jumpsp;
	}
	#endregion

	#region //collisions
	//hrz collisions
	if (place_meeting(x+hsp,y,obj_solid))
	{
		while (!place_meeting(x+sign(hsp),y,obj_solid))
		{
			x += sign(hsp);
		}
		hsp = 0;
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
}