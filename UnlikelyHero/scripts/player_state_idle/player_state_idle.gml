function player_state_idle(){
	#region//calc movement
	var _move = key_right - key_left;

	hsp = (_move * walksp) + gun_kick_x;
	gun_kick_x = 0;

	vsp += grv + gun_kick_y;
	gun_kick_y = 0;

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
	
	#region //equip weapons
	if (equip_melee)
	{
		ranged = false;
		with(obj_ranged) instance_destroy();		
	}
	else if (equip_ranged)
	{
		if (!ranged) 
		{
			instance_create_layer(x,y,"Ranged",obj_ranged);
			ranged = true;
		}
	}
	#endregion
	
	#region //melee attack
	if (key_attack) state = PLAYERSTATE.ATTACK;
	#endregion
}