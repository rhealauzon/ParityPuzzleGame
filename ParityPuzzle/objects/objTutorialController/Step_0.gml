/// @description Insert description here
// You can write your code in this editor

//check if an event has been triggered
if (step != global.tutorialStep)
{
	step = global.tutorialStep;
	
	if (step == 1)
	{
		tutorialBox.message = "Great! Now click on a 2nd card to swap them.";
		objLevelController.cards[0,1].disabled = false;
		
		tutorialBox.visible = true;
	}
	
	if (step == 2)
	{
		tutorialBox.message = "Awesome, the cards have now swapped! But we haven't solved the puzzle. Notice the hearts and diamonds? A diamond is an odd, and a heart is an even. The cards on the edges of the board are not-interactable; we want to make it so that each row or column matches what the outter card for that row/column reports. They'll react and report if your row / column has met their even or odd requirement.";
	
		//turn all of the cards back to enabled
		swapCardDisabledState(objLevelController.cards, false);
		
		//make the box visible again
		tutorialBox.visible = true;
	}
	
	if (step == 3)
	{
		tutorialBox.message = "However...you have a limited number of swaps show above the board. You are given the exact number of swaps required to solve the puzzle. Use the undo button in the top right to undo your moves! Good luck!";
		
		//make the box visible again
		tutorialBox.visible = true;
	}

}