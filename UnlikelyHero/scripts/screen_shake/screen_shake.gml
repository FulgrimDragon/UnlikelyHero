/// @func					screen_shake(magnitude,frames)
/// @arg {any} magnitude	sets the screenshake strength (pxl radius)
/// @arg {any} frames		sets the length of shake in frames
function screen_shake(_magnitude, _frames)
{
	with(obj_cam)
	{
		if(_magnitude > shake_remain)
		{
			shake_magnitude = _magnitude;
			shake_remain = _magnitude;
			shake_length = _frames;
		}
	}
}