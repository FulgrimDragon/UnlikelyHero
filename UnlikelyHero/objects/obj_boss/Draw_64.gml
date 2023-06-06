//boss health

draw_set_text(c_white,fnt_hud,fa_center,fa_top);
draw_text_transformed(RES_W/2,10,"Mother Of All Slimes",1,1,0);

var _hp;
_hp = (hp/100)*100;
draw_healthbar((RES_W/2)-200,30,(RES_W/2)+200,50,_hp,c_black,c_red,c_red,0,true,true);


