//check the parity of the cards
//get all of our parity values for the columns
for (var i = 0; i < numColumns; i++)
{
	//calculate the parity of this column
	var calculatedParity = GenerateParity(ParityType.COLUMN, i, numRows);
	
	//see if it matches the value
	if (parityCardsColumn[i].parityValue == calculatedParity)
		parityCardsColumn[i].valid = true;
	else
		parityCardsColumn[i].valid = false;
}

//get all of our parity values for the rows
for (var i = 0; i < numRows; i++)
{
	var calculatedParity = GenerateParity(ParityType.ROW, i, numColumns);
	
 	if (parityCardsRow[i].parityValue == calculatedParity)
		parityCardsRow[i].valid = true;
	else
		parityCardsRow[i].valid = false;
}
