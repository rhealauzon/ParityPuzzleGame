/// @description Insert description here
// You can write your code in this editor

if (Hover() && mouse_check_button_pressed(mb_left))
{
	//play a noise
	gmwPostEvent(global.WWE_BUTTON_PRESSED, id);
	
	//enter fullscreen or come out of fullscreen
	if window_get_fullscreen()
	{
		isFullscreen = false;
		window_set_fullscreen(false);
	}
	else
	{
		isFullscreen = true;
		window_set_fullscreen(true);
	}
}