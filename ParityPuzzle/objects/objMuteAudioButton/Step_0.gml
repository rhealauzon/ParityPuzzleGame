/// @description Insert description here
// You can write your code in this editor

if (Hover() && mouse_check_button_pressed(mb_left))
{	
	global.musicOn = !global.musicOn;
	
	if (global.musicOn)
		gmwSetGlobalParameter(global.WWP_VOLUME, 1);
	else
		gmwSetGlobalParameter(global.WWP_VOLUME, 0);
}