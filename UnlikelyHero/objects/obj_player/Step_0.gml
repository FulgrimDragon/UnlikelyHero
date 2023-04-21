/// @desc player logic

#region//inputs 
if (has_control) {
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
} else {
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}
#endregion

#region//calc movement
var _move = key_right - key_left;
hsp = _move * walksp
vsp = vsp + grv

//on floor check
if (place_meeting(x,y+1,obj_wall)) var _onfloor = 1; else _onfloor = 0;

//jump
can_jump -= 1;
if(can_jump > 0) && (key_jump) {
	vsp = -jumpsp;	
	can_jump = 0;
}
#endregion

