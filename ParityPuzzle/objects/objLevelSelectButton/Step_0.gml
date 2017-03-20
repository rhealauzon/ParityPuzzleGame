//UPDATE

//check if the mouse is hovering over the button
hover = Hover();

//check for clicks
if (hover && mouse_check_button_pressed(mb_left))
{
	//move to the level with this level number
	global.activeLevel = levelNum;
	
	room_goto(rmLevel);
}