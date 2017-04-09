//UPDATE

//check if the mouse is hovering over the button
hover = Hover();

//check for left clicks on the button
if (hover && mouse_check_button_pressed(mb_left))
{
	//play a noise
	gmwPostEvent(global.WWE_BUTTON_PRESSED, id);
	
	switch (type)
	{
		case MenuButtonType.TUTORIAL:
			global.activeLevel = 0;
			room_goto(rmLevel);
		break;
		
		case MenuButtonType.LEVEL_SELECT:
			room_goto(rmLevelSelect);
		break;
		
		case MenuButtonType.QUIT:
			game_end();
		break;
		
		default:
		break;
	}
}