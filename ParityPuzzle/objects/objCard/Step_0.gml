//check if the mouse is hovering over the card
hover = Hover();

//check for clicks
if (!disabled)
{
	if (hover && mouse_check_button_pressed(mb_left))
	{
		//check if we are in the tutorial for various events
		if (global.activeLevel == 0)
		{
			if (global.tutorialStep == 0)
			{
				global.tutorialStep++;
			}
		}
		
		//if this card is already selected, then we want to unselect it
		if (selected)
		{
			selected = false;
			objLevelController.selectedCard = noone;
		}
		//otherwise set this card to be selected
		else
		{
			//post the sound for clicking!
			gmwPostEvent(global.WWE_CARD_SELECT, id);
			
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
					//add this move to the array of moves
					objLevelController.playerMoves[objLevelController.numSwapsRemaining, 0] = objLevelController.selectedCard;
					objLevelController.playerMoves[objLevelController.numSwapsRemaining, 1] = id;
				
					SwapCards(objLevelController.selectedCard, id);
				
					//decrement the number of swaps because we've swapped a card!
					objLevelController.numSwapsRemaining--;
					//setting this to true causes the parity to be re-checked
					objLevelController.swapMade = true;
				}
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