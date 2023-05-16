/// @desc invincible
if(god) 
{
	god = false; 
	obj_player.player_health = 6;
}
else if(!god) 
{
	god = true;
	obj_player.player_health = 999999999999999;
}


