///@desc enemy drops
function enemy_drops(_col_val){
	switch(_col_val)
	{
		case spr_enemy_blue:
			return spr_points;
			break;
			
		case spr_enemy_red:
			return spr_points_red;
			break;
			
		case spr_enemy_green:
			return spr_points_green;
			break;
			
		default:
			return spr_undefined;
			break;
	}
}