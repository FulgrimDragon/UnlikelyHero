/// @desc infinite ammo
if(inf_ammo) 
{
	inf_ammo = false; 
	global.ammo = 5;
}
else if(!inf_ammo) 
{
	inf_ammo = true;
	global.ammo = 999999999999999;
}


