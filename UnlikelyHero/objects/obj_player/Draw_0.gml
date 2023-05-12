/// @desc flash
draw_self();

if(player_flash > 0)
{
	player_flash--;
	shader_set(sha_white);
	draw_self();
	shader_reset();
}