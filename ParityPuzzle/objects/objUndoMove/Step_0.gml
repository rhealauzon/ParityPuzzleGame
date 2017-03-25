//check if the mouse is hovering over the card
hover = Hover();

//check for clicks
if (hover && mouse_check_button_pressed(mb_left))
{
	UndoMove();
}