/// @desc flash
draw_self();

if(flash > 0)
{
	flash--;
	shader_set(sha_white);
	draw_self();
	shader_reset();
}