//check if the mouse is hovering over the card
hover = Hover();

//check for clicks
if (hover && mouse_check_button_pressed(mb_left))
{
	//if this card is already selected, then we want to unselect it
	if (selected)
	{
		selected = false;
		objLevelController.selectedCard = noone;
	}
	//otherwise set this card to be selected
	else
	{
		//only swap if there is remaining moves to make
		if (objLevelController.numSwapsRemaining > 0)
		{
			selected = true;
			if (objLevelController.selectedCard == noone)
			{
				objLevelController.selectedCard = id;
			}
			else
			{
				SwapCards(objLevelController.selectedCard, id);
			}
		}
	}
}

//smooth move to the target position
x += SmoothChange(x, target_X, 10);
y += SmoothChange(y, target_Y, 10);

//handle making the card rise up when its selected
if (selected)
{
	target_raise += SmoothChange(target_raise, RAISE_OFFSET, 3);
}
else
{
	target_raise += SmoothChange(target_raise, 0, 3);
}