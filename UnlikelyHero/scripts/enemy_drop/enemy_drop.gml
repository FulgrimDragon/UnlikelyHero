///@desc enemy drops
function enemy_drop(_sprite){
	switch(_sprite)
	{
		case spr_enemy_blue:
			return spr_points;
			break;
			
		case spr_enemy_green: 
			return spr_points_green;
			break;
			
		case spr_enemy_red:
			return spr_points_red;
			break;	
			
		default:
			return spr_undefined;
			break;
	}
}