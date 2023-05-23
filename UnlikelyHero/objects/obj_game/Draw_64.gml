/// @desc draw health, ammo and points
if (room != rm_menu) && (instance_exists(obj_player))
{
	//heath
	draw_sprite(spr_healthbar,obj_player.player_health-1,10,RES_H-55);
	
	//points
	draw_set_text(c_white,fnt_dev,fa_right,fa_top);
	draw_text_transformed(RES_W-10,10,"Points: " + string(global.points),1,1,0);
	
	//ammo
	draw_set_text(c_white,fnt_dev,fa_right,fa_top);
	draw_text_transformed(RES_W-10,30,"Ammo: " + string(global.ammo),1,1,0);
}
