//transition back to the previous room if the back button is pressed at any time
if (Hover() && mouse_check_button_pressed(mb_left))
{
	//play a noise
	gmwPostEvent(global.WWE_BUTTON_PRESSED, id);
	
	if (global.activeLevel == 0)
		room_goto(rmMainMenu);
	else
		room_goto_previous();
}
