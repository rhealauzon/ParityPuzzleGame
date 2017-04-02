//a 2D array of cards
var cards = argument[0];
var state = argument[1];

//start the cards so initially only 0, 0 is enabled
for (var i = 0; i < objLevelController.numRows; i++)
{
	for (var k = 0; k < objLevelController.numColumns; k++)
	{
		objLevelController.cards[i, k].disabled = state;
	}
}