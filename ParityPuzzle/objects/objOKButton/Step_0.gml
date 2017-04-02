//check if the OK button was clicked 
if (Hover() && mouse_check_button_pressed(mb_left))
{
	//hide the dialog box and this box if so
	parent.visible = false;
	visible = false;
	
	if (global.activeLevel == 0)
	{
		if (global.tutorialStep == 2 || global.tutorialStep == 3)
		{
			global.tutorialStep++;
		}
	}
}