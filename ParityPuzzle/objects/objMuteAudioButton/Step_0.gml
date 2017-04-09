if (Hover() && mouse_check_button_pressed(mb_left))
{	
	//play a noise
	gmwPostEvent(global.WWE_BUTTON_PRESSED, id);
	
	global.musicOn = !global.musicOn;
	
	if (global.musicOn)
		gmwSetGlobalParameter(global.WWP_VOLUME, 1);
	else
		gmwSetGlobalParameter(global.WWP_VOLUME, 0);
}