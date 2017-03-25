// ENUMS //
enum ParityType
{
	ROW,
	COLUMN
}

// CONSTANTS //
CARD_SPACING_X = 25 + sprite_get_width(sprCard);
CARD_SPACING_Y = 30 + sprite_get_height(sprCard);

// VARIABLES //
levelNum = global.activeLevel;
cards[0, 0] = noone;
parityCardsRow[0] = noone;
parityCardsColumn[0] = noone;
numRows = -1;
numColumns = -1;

//keeps track of player's actions and swapping events
numSwaps = -1;
numSwapsRemaining = -1;
swapMade = true;
levelComplete = false;
playerMoves[0, 0] = noone;
levelEndTimer = 120;

//keeps track of player's moves
selectedCard = noone;


/////////////////////////////////////////////////////////////
// load the level data
var fileStr = "LevelData/level_" + string(levelNum) + ".txt";
var levelData = file_text_open_read(fileStr);

//get the number of swaps as the first line of the file
numSwaps = file_text_read_real(levelData);
//initialize the number of swaps remaining to the maximum
numSwapsRemaining = numSwaps;

//get the number of rows and columns
numRows = file_text_read_real(levelData);
numColumns = file_text_read_real(levelData);

file_text_readln(levelData);

var cardStartPos_X = (room_width / 2) - (((numColumns + 1)* CARD_SPACING_X) / 2);
var cardStartPos_Y = (room_height / 2) - (((numRows + 1) * CARD_SPACING_Y) / 2);

//loop through the rows and columns to get each data point
for (var i = 0; i < numRows; i++)
{
	for (var k = 0; k < numColumns; k++)
	{
		//create each card
		var value = file_text_read_real(levelData);
	    var card = instance_create_depth(cardStartPos_X + k * CARD_SPACING_X, cardStartPos_Y + (i + 1) * CARD_SPACING_Y, 0, objCard);
		card.cardValue = value;
		card.target_X = cardStartPos_X  + k * CARD_SPACING_X;
		card.target_Y = (cardStartPos_Y + i * CARD_SPACING_Y) + CARD_SPACING_Y;
		card.cardArray_R = i;
		card.cardArray_C = k; 
		
		//add the card to the array of cards
		cards[i, k] = card;
	}
	
	file_text_readln(levelData);
}

//get all of our parity values for the columns
for (var i = 0; i < numColumns; i++)
{
	var parityCard = instance_create_depth(cardStartPos_X + i * CARD_SPACING_X, cardStartPos_Y, 0, objParityCard);
	parityCard.parityValue = GenerateParity(ParityType.COLUMN, i, numRows);
	parityCardsColumn[i] = parityCard;
}

//get all of our parity values for the rows
for (var i = 0; i < numRows; i++)
{
	var parityCard = instance_create_depth(cardStartPos_X +  (numColumns) * CARD_SPACING_X, cardStartPos_Y + (i * CARD_SPACING_Y) + CARD_SPACING_Y, 0, objParityCard);
	parityCard.parityValue = GenerateParity(ParityType.ROW, i, numColumns);
 	parityCardsRow[i] = parityCard;
}


//next get all of the swaps
for (var i = 0; i < numSwaps; i++)
{
	var card1_row = file_text_read_real(levelData);
	var card1_col = file_text_read_real(levelData);
	
	var card2_row = file_text_read_real(levelData);
	var card2_col = file_text_read_real(levelData);

	//perform the swaps
	var tempVal = cards[card1_row, card1_col].cardValue;
	cards[card1_row, card1_col].cardValue = cards[card2_row, card2_col].cardValue;
	cards[card2_row, card2_col].cardValue = tempVal;

	//move to the next line
	file_text_readln(levelData);
}


//close the file now that we are done
file_text_close(levelData);



