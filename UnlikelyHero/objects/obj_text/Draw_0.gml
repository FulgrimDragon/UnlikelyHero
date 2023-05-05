/// @desc draw text
var _halfw = w * 0.5;

//draw box
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-_halfw-margin,y-h-(margin*2),x+_halfw+margin,y,rad_x,rad_y,false);
draw_sprite(spr_marker,0,x,y);
draw_set_alpha(1);

//draw text
draw_set_text(c_white,fnt_text,fa_center,fa_top);
draw_text(x,y-h-margin,text_current);
