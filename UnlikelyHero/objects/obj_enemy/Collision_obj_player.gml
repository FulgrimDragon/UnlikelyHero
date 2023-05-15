/// @desc damage player
if (place_meeting(x,y,obj_player))
{
	if(flash <= 0 && grounded)
	{
		enemy_dmg(1);
		player_dmg(1);
	}
}
