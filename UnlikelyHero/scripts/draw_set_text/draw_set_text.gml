/// @func					draw_set_text(colour,font,halign,valign)
/// @arg {any} colour		sets colour of text
/// @arg {any} font			sets font of text
/// @arg {any} halign		horizontal align
/// @arg {any} valign		vertical align

function draw_set_text(_colour,_font,_halign,_valign)
{
	draw_set_color(_colour);
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
}