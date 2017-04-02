/// Undoes the moves taken by the player
var numSwapsRemaining = objLevelController.numSwapsRemaining;

//only undo if a player has taken a move
if (numSwapsRemaining < objLevelController.numSwaps && !objLevelController.levelComplete)
{
	//re-enable all of the cards first
	if (numSwapsRemaining == 0)
		swapCardDisabledState(objLevelController.cards, false);
		
	var card1 = objLevelController.playerMoves[numSwapsRemaining + 1, 0];
	var card2 = objLevelController.playerMoves[numSwapsRemaining + 1, 1];

	//re-swap these cards
	SwapCards(card1, card2);

	//increment the number of swaps left since we undid one!
	objLevelController.numSwapsRemaining++;
	objLevelController.swapMade = true;
} 


