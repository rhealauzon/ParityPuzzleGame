/// @description Insert description here
// You can write your code in this editor

if (Hover() && mouse_check_button_pressed(mb_left))
{
	//enter fullscreen or come out of fullscreen
	if window_get_fullscreen()
	{
		window_set_fullscreen(false);
	}
	else
	{
		window_set_fullscreen(true);
	}
}