/// @desc draw health, ammo and points
if (room != rm_menu) && (instance_exists(obj_player))
{
	//heath
	draw_sprite(spr_healthbar,obj_player.player_health-1,RES_W-2,-1);
	
	//points
	draw_set_text(c_white,fnt_hud,fa_right,fa_top);
	draw_text_transformed(RES_W-10,90,"Points: " + string(global.points),1,1,0);
	
	//ammo
	draw_text_transformed(RES_W-10,110,"Ammo: " + string(global.ammo),1,1,0);
}

//draw end score
if (room == rm_end_scrn)
{
	draw_set_text(c_black,fnt_text,fa_center,fa_top);
	draw_text_transformed((RES_W/2)+5,95,"You defeated the evil slime! \n and you scored " + string(global.points)+ " points!",1.5,1.5,0);
	draw_set_text(c_white,fnt_text,fa_center,fa_top);
	draw_text_transformed(RES_W/2,90,"You defeated the evil slime! \n and you scored " + string(global.points)+ " points!",1.5,1.5,0);
}