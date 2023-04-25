function player_state_idle(){
	#region//calc movement
	var _move = key_right - key_left;

	hsp = (_move * walksp) + gun_kick_x;
	gun_kick_x = 0;

	vsp += grv + gun_kick_y;
	gun_kick_y = 0;

	//on floor check
	if (place_meeting(x,y+1,obj_solid)) var _onfloor = 1; else _onfloor = 0;

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
	
	#region //animation
	var _aim = sign(mouse_x - x);
	if (_aim != 0) image_xscale = _aim;

	if(_onfloor == 0)
	{
		sprite_index = spr_player_jump;
		image_speed = 0;
		if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	}
	else
	{
		can_jump = 10;
		image_speed = 1;
		if(hsp == 0)
		{
			sprite_index = spr_player;
		}
		else
		{
			sprite_index = spr_player_walk;
			if (_aim != sign(hsp)) sprite_index = spr_player_walk;
		}
	}

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
	if (!ranged && key_attack) state = PLAYERSTATE.ATTACK;
	#endregion
}