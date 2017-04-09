//UPDATE

//check if the mouse is hovering over the button
hover = Hover();

//check for clicks
if (unlocked && hover && mouse_check_button_pressed(mb_left))
{
	//play a noise
	gmwPostEvent(global.WWE_BUTTON_PRESSED, id);
	
	//move to the level with this level number
	global.activeLevel = levelNum;
	
	room_goto(rmLevel);
}