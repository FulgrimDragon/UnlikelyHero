/// @func					slide_transition(mode,target_room)
/// @arg {any} mode			Sets transition mode between NEXT, RESTART and GOTO
/// @arg {any} target_room  Sets target room when using the GOTO mode

function slide_transition(_mode, _target_room)
{
	with (obj_transition)
	{
		mode = _mode;
		target = _target_room;
	}
}