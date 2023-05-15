/// @desc vars
hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 4;
jumpsp = 8;
can_jump = 0;
gun_kick_x = 0;
gun_kick_y = 0;
ranged = false;
player_flash = 0;
player_health = 6;

state = PLAYERSTATE.IDLE;
hit_by_attack = ds_list_create();

enum PLAYERSTATE
{
	IDLE,
	ATTACK
}