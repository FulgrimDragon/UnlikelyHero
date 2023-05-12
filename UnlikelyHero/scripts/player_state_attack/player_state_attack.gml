function player_state_attack(){

	player_movement_attack();

	//start of attack
	if (sprite_index != spr_player_attack)
	{
		sprite_index = spr_player_attack;
		image_index = 0;
		image_speed = 1;
		screen_shake(5,10);
		ds_list_clear(hit_by_attack);
	}
	
	
	//use attack hitbox to check hits
	mask_index = spr_player_attackHB;
	var hit_by_attack_now = ds_list_create();
	var hits = instance_place_list(x,y,obj_enemy,hit_by_attack_now,false);
	if (hits > 0)
	{
		for(var i=0;i<hits;i++)
		{
			//if instance has not been hit yet
			var hitID = hit_by_attack_now[| i];
			if (ds_list_find_index(hit_by_attack,hitID) == -1)
			{
				ds_list_add(hit_by_attack,hitID);	
				with (hitID)
				{
					enemy_dmg(2);				
				}
			}
		}
	}
	ds_list_destroy(hit_by_attack_now);
	mask_index = spr_player;
	
	if (animation_end())
	{
		sprite_index = spr_player;
		state = PLAYERSTATE.IDLE;		
	}
}