/// @desc player logic

#region//inputs 
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_attack = mouse_check_button_pressed(mb_left);
equip_melee = keyboard_check_pressed(ord("1"));
equip_ranged = keyboard_check_pressed(ord("2"));
#endregion

switch (state)
{
	case PLAYERSTATE.IDLE: player_state_idle(); break;
	case PLAYERSTATE.ATTACK: player_state_attack(); break;		
}